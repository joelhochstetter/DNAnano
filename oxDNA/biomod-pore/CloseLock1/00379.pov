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
	<24.169712, 35.194592, 34.846760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.220531, 34.962452, 35.168518>,  <24.251024, 34.823170, 35.361572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.220531, 34.962452, 35.168518>,  <24.169712, 35.194592, 34.846760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.220531, 34.962452, 35.168518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989148, 0.013804, -0.146272,
		0.073785, 0.814252, 0.575803,
		0.127050, -0.580347, 0.804398,
		24.258646, 34.788349, 35.409836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.728346, 35.436497, 35.358841>,  <24.169712, 35.194592, 34.846760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.728346, 35.436497, 35.358841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.712200, 35.036831, 35.361126>,  <24.702513, 34.797031, 35.362495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.712200, 35.036831, 35.361126>,  <24.728346, 35.436497, 35.358841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.712200, 35.036831, 35.361126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983966, -0.040743, -0.173640,
		0.173728, -0.001389, 0.984793,
		-0.040365, -0.999169, 0.005712,
		24.700090, 34.737080, 35.362839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.279417, 35.092476, 35.657017>,  <24.728346, 35.436497, 35.358841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.279417, 35.092476, 35.657017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.166170, 34.779835, 35.434685>,  <25.098221, 34.592251, 35.301285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.166170, 34.779835, 35.434685>,  <25.279417, 35.092476, 35.657017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.166170, 34.779835, 35.434685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958541, -0.250106, -0.136548,
		-0.032290, -0.571443, 0.820006,
		-0.283118, -0.781601, -0.555827,
		25.081234, 34.545353, 35.267937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.357172, 35.849991, 35.502956>,  <25.279417, 35.092476, 35.657017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.357172, 35.849991, 35.502956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.689148, 35.987633, 35.327328>,  <25.888334, 36.070217, 35.221951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.689148, 35.987633, 35.327328>,  <25.357172, 35.849991, 35.502956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.689148, 35.987633, 35.327328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285191, -0.414729, -0.864098,
		-0.479439, 0.842372, -0.246065,
		0.829942, 0.344107, -0.439074,
		25.938131, 36.090866, 35.195606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.257257, 36.340019, 34.901119>,  <25.357172, 35.849991, 35.502956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.257257, 36.340019, 34.901119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.574278, 36.115955, 34.804722>,  <25.764490, 35.981518, 34.746883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.574278, 36.115955, 34.804722>,  <25.257257, 36.340019, 34.901119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.574278, 36.115955, 34.804722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416513, -0.208614, -0.884871,
		0.445398, 0.801683, -0.398653,
		0.792551, -0.560164, -0.240995,
		25.812044, 35.947906, 34.732422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.297907, 36.434307, 34.065369>,  <25.257257, 36.340019, 34.901119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.297907, 36.434307, 34.065369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.559687, 36.144840, 34.153004>,  <25.716755, 35.971161, 34.205585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.559687, 36.144840, 34.153004>,  <25.297907, 36.434307, 34.065369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.559687, 36.144840, 34.153004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358720, -0.552247, -0.752558,
		0.665594, 0.413919, -0.621012,
		0.654450, -0.723668, 0.219091,
		25.756021, 35.927738, 34.218731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.647516, 36.250042, 33.509331>,  <25.297907, 36.434307, 34.065369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.647516, 36.250042, 33.509331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.681496, 35.906406, 33.711220>,  <25.701883, 35.700226, 33.832352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.681496, 35.906406, 33.711220>,  <25.647516, 36.250042, 33.509331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.681496, 35.906406, 33.711220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366205, -0.498019, -0.786048,
		0.926649, -0.118057, -0.356910,
		0.084950, -0.859092, 0.504722,
		25.706980, 35.648678, 33.862637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.879213, 35.758873, 33.033588>,  <25.647516, 36.250042, 33.509331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.879213, 35.758873, 33.033588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.738609, 35.524693, 33.325802>,  <25.654247, 35.384182, 33.501129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.738609, 35.524693, 33.325802>,  <25.879213, 35.758873, 33.033588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.738609, 35.524693, 33.325802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267161, -0.685156, -0.677633,
		0.897254, -0.433367, 0.084430,
		-0.351511, -0.585453, 0.730537,
		25.633156, 35.349056, 33.544964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.036179, 35.127190, 32.815807>,  <25.879213, 35.758873, 33.033588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.036179, 35.127190, 32.815807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.751680, 35.068596, 33.090813>,  <25.580982, 35.033440, 33.255817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.751680, 35.068596, 33.090813>,  <26.036179, 35.127190, 32.815807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.751680, 35.068596, 33.090813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386734, -0.735182, -0.556726,
		0.587001, -0.661852, 0.466242,
		-0.711243, -0.146488, 0.687513,
		25.538307, 35.024651, 33.297066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.031729, 34.453899, 33.015858>,  <26.036179, 35.127190, 32.815807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.031729, 34.453899, 33.015858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.663504, 34.580311, 33.107677>,  <25.442568, 34.656158, 33.162769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.663504, 34.580311, 33.107677>,  <26.031729, 34.453899, 33.015858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.663504, 34.580311, 33.107677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390507, -0.732285, -0.557909,
		-0.008220, -0.603229, 0.797525,
		-0.920563, 0.316026, 0.229546,
		25.387335, 34.675117, 33.176540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.696402, 33.920017, 33.347542>,  <26.031729, 34.453899, 33.015858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.696402, 33.920017, 33.347542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.425213, 34.163910, 33.183304>,  <25.262501, 34.310246, 33.084763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.425213, 34.163910, 33.183304>,  <25.696402, 33.920017, 33.347542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.425213, 34.163910, 33.183304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337978, -0.754580, -0.562477,
		-0.652784, -0.242571, 0.717658,
		-0.677971, 0.609728, -0.410594,
		25.221821, 34.346828, 33.060127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.052139, 33.487190, 33.231159>,  <25.696402, 33.920017, 33.347542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.052139, 33.487190, 33.231159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.017229, 33.801285, 32.985954>,  <24.996283, 33.989742, 32.838833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.017229, 33.801285, 32.985954>,  <25.052139, 33.487190, 33.231159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.017229, 33.801285, 32.985954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467579, -0.575655, -0.670814,
		-0.879632, 0.228087, 0.417400,
		-0.087275, 0.785237, -0.613014,
		24.991047, 34.036858, 32.802052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.432745, 33.298744, 32.800297>,  <25.052139, 33.487190, 33.231159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.432745, 33.298744, 32.800297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.607157, 33.597038, 32.598797>,  <24.711803, 33.776012, 32.477898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.607157, 33.597038, 32.598797>,  <24.432745, 33.298744, 32.800297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.607157, 33.597038, 32.598797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324556, -0.391787, -0.860910,
		-0.839370, 0.538877, 0.071201,
		0.436030, 0.745731, -0.503750,
		24.737967, 33.820759, 32.447674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.952074, 33.649406, 32.204491>,  <24.432745, 33.298744, 32.800297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.952074, 33.649406, 32.204491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.341461, 33.691547, 32.123238>,  <24.575092, 33.716831, 32.074486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.341461, 33.691547, 32.123238>,  <23.952074, 33.649406, 32.204491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.341461, 33.691547, 32.123238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132139, -0.465942, -0.874893,
		-0.186826, 0.878521, -0.439657,
		0.973466, 0.105357, -0.203137,
		24.633501, 33.723156, 32.062298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.968828, 33.700012, 31.465105>,  <23.952074, 33.649406, 32.204491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.968828, 33.700012, 31.465105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.352407, 33.633713, 31.557144>,  <24.582556, 33.593933, 31.612368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.352407, 33.633713, 31.557144>,  <23.968828, 33.700012, 31.465105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.352407, 33.633713, 31.557144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122248, -0.490507, -0.862820,
		0.255879, 0.855528, -0.450108,
		0.958948, -0.165753, 0.230097,
		24.640091, 33.583988, 31.626173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.116812, 33.422073, 30.842447>,  <23.968828, 33.700012, 31.465105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.116812, 33.422073, 30.842447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.429371, 33.361080, 31.084496>,  <24.616905, 33.324486, 31.229725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.429371, 33.361080, 31.084496>,  <24.116812, 33.422073, 30.842447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.429371, 33.361080, 31.084496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361570, -0.679707, -0.638173,
		0.508613, 0.717459, -0.475988,
		0.781396, -0.152481, 0.605120,
		24.663790, 33.315334, 31.266031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.664261, 33.463184, 30.443354>,  <24.116812, 33.422073, 30.842447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.664261, 33.463184, 30.443354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.772390, 33.236221, 30.754475>,  <24.837267, 33.100044, 30.941147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.772390, 33.236221, 30.754475>,  <24.664261, 33.463184, 30.443354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.772390, 33.236221, 30.754475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332585, -0.703114, -0.628505,
		0.903500, 0.428585, -0.001358,
		0.270323, -0.567403, 0.777804,
		24.853487, 33.066002, 30.987816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.326107, 33.209721, 30.371565>,  <24.664261, 33.463184, 30.443354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.326107, 33.209721, 30.371565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.148180, 32.945408, 30.613394>,  <25.041424, 32.786819, 30.758492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.148180, 32.945408, 30.613394>,  <25.326107, 33.209721, 30.371565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.148180, 32.945408, 30.613394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120438, -0.713031, -0.690711,
		0.887485, -0.234428, 0.396754,
		-0.444820, -0.660780, 0.604571,
		25.014734, 32.747173, 30.794765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.750433, 32.631161, 30.348633>,  <25.326107, 33.209721, 30.371565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.750433, 32.631161, 30.348633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.402367, 32.498947, 30.494814>,  <25.193527, 32.419617, 30.582523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.402367, 32.498947, 30.494814>,  <25.750433, 32.631161, 30.348633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.402367, 32.498947, 30.494814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014560, -0.758572, -0.651426,
		0.492544, -0.561528, 0.664896,
		-0.870166, -0.330537, 0.365454,
		25.141317, 32.399788, 30.604450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.834118, 31.858814, 30.497217>,  <25.750433, 32.631161, 30.348633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.834118, 31.858814, 30.497217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.438829, 31.915964, 30.475306>,  <25.201656, 31.950254, 30.462158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.438829, 31.915964, 30.475306>,  <25.834118, 31.858814, 30.497217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.438829, 31.915964, 30.475306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072945, -0.754567, -0.652156,
		-0.134512, -0.640480, 0.756103,
		-0.988223, 0.142877, -0.054778,
		25.142363, 31.958828, 30.458872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.615540, 31.241756, 30.585772>,  <25.834118, 31.858814, 30.497217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.615540, 31.241756, 30.585772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.326065, 31.443232, 30.397058>,  <25.152380, 31.564116, 30.283831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.326065, 31.443232, 30.397058>,  <25.615540, 31.241756, 30.585772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.326065, 31.443232, 30.397058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101509, -0.753869, -0.649136,
		-0.682623, -0.421881, 0.596693,
		-0.723686, 0.503685, -0.471783,
		25.108959, 31.594337, 30.255524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.110943, 30.785185, 30.458427>,  <25.615540, 31.241756, 30.585772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.110943, 30.785185, 30.458427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.072971, 31.077812, 30.188377>,  <25.050188, 31.253389, 30.026348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.072971, 31.077812, 30.188377>,  <25.110943, 30.785185, 30.458427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.072971, 31.077812, 30.188377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099916, -0.681765, -0.724716,
		-0.990457, -0.001342, 0.137815,
		-0.094930, 0.731570, -0.675125,
		25.044493, 31.297283, 29.985840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.751051, 30.449902, 29.909302>,  <25.110943, 30.785185, 30.458427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.751051, 30.449902, 29.909302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.865503, 30.796988, 29.746723>,  <24.934174, 31.005239, 29.649176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.865503, 30.796988, 29.746723>,  <24.751051, 30.449902, 29.909302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.865503, 30.796988, 29.746723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185511, -0.466321, -0.864945,
		-0.940062, 0.172086, -0.294399,
		0.286130, 0.867716, -0.406447,
		24.951342, 31.057302, 29.624788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.311476, 30.532225, 29.275715>,  <24.751051, 30.449902, 29.909302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.311476, 30.532225, 29.275715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.627373, 30.774801, 29.238762>,  <24.816912, 30.920347, 29.216591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.627373, 30.774801, 29.238762>,  <24.311476, 30.532225, 29.275715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.627373, 30.774801, 29.238762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232013, -0.434699, -0.870176,
		-0.567871, 0.665781, -0.484003,
		0.789742, 0.606443, -0.092383,
		24.864296, 30.956734, 29.211046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.336803, 30.779747, 28.557196>,  <24.311476, 30.532225, 29.275715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.336803, 30.779747, 28.557196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.702389, 30.806055, 28.717367>,  <24.921740, 30.821840, 28.813469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.702389, 30.806055, 28.717367>,  <24.336803, 30.779747, 28.557196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.702389, 30.806055, 28.717367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379090, -0.490427, -0.784711,
		0.144770, 0.868997, -0.473166,
		0.913965, 0.065770, 0.400427,
		24.976578, 30.825787, 28.837496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.856794, 31.177677, 28.163490>,  <24.336803, 30.779747, 28.557196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.856794, 31.177677, 28.163490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.018263, 30.867739, 28.358084>,  <25.115145, 30.681776, 28.474840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.018263, 30.867739, 28.358084>,  <24.856794, 31.177677, 28.163490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.018263, 30.867739, 28.358084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261047, -0.412080, -0.872952,
		0.876872, 0.479380, 0.035926,
		0.403671, -0.774845, 0.486482,
		25.139364, 30.635284, 28.504028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.549520, 31.218340, 28.062946>,  <24.856794, 31.177677, 28.163490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.549520, 31.218340, 28.062946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.345026, 30.875561, 28.089117>,  <25.222330, 30.669893, 28.104818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.345026, 30.875561, 28.089117>,  <25.549520, 31.218340, 28.062946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.345026, 30.875561, 28.089117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028383, -0.092919, -0.995269,
		0.858973, -0.506958, 0.071826,
		-0.511234, -0.856948, 0.065426,
		25.191656, 30.618477, 28.108746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.808680, 30.758602, 27.583389>,  <25.549520, 31.218340, 28.062946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.808680, 30.758602, 27.583389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.421007, 30.668110, 27.622395>,  <25.188404, 30.613813, 27.645798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.421007, 30.668110, 27.622395>,  <25.808680, 30.758602, 27.583389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.421007, 30.668110, 27.622395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089232, -0.046566, -0.994922,
		0.229626, -0.972959, 0.024943,
		-0.969180, -0.226234, 0.097512,
		25.130253, 30.600241, 27.651648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.546867, 30.075596, 27.211187>,  <25.808680, 30.758602, 27.583389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.546867, 30.075596, 27.211187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.261541, 30.355822, 27.219088>,  <25.090345, 30.523958, 27.223827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.261541, 30.355822, 27.219088>,  <25.546867, 30.075596, 27.211187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.261541, 30.355822, 27.219088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115393, -0.089603, -0.989270,
		-0.691280, -0.707939, 0.144755,
		-0.713313, 0.700567, 0.019750,
		25.047546, 30.565992, 27.225012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.319559, 30.090492, 26.603426>,  <25.546867, 30.075596, 27.211187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.319559, 30.090492, 26.603426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.040796, 30.355864, 26.712376>,  <24.873539, 30.515085, 26.777744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.040796, 30.355864, 26.712376>,  <25.319559, 30.090492, 26.603426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.040796, 30.355864, 26.712376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407792, -0.054165, -0.911467,
		-0.589938, -0.746278, 0.308289,
		-0.696906, 0.663427, 0.272372,
		24.831724, 30.554892, 26.794086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.078014, 30.071020, 26.295954>,  <25.319559, 30.090492, 26.603426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.078014, 30.071020, 26.295954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.011139, 30.440170, 26.157188>,  <25.971014, 30.661661, 26.073929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.011139, 30.440170, 26.157188>,  <26.078014, 30.071020, 26.295954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.011139, 30.440170, 26.157188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539096, 0.380177, 0.751560,
		0.825484, -0.061367, -0.561079,
		-0.167188, 0.922876, -0.346912,
		25.960983, 30.717033, 26.053114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.735977, 30.458027, 26.353497>,  <26.078014, 30.071020, 26.295954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.735977, 30.458027, 26.353497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.427885, 30.712662, 26.369019>,  <26.243031, 30.865442, 26.378332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.427885, 30.712662, 26.369019>,  <26.735977, 30.458027, 26.353497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.427885, 30.712662, 26.369019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515623, 0.585757, 0.625317,
		0.375339, 0.501645, -0.779405,
		-0.770229, 0.636586, 0.038803,
		26.196815, 30.903637, 26.380659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.831858, 31.116755, 26.143726>,  <26.735977, 30.458027, 26.353497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.831858, 31.116755, 26.143726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.554474, 31.094236, 26.431044>,  <26.388042, 31.080725, 26.603434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.554474, 31.094236, 26.431044>,  <26.831858, 31.116755, 26.143726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.554474, 31.094236, 26.431044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529664, 0.636011, 0.561201,
		-0.488435, 0.769624, -0.411230,
		-0.693460, -0.056297, 0.718292,
		26.346436, 31.077347, 26.646532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.054951, 31.702030, 25.832357>,  <26.831858, 31.116755, 26.143726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.054951, 31.702030, 25.832357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.376633, 31.877163, 25.671581>,  <27.569643, 31.982243, 25.575115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.376633, 31.877163, 25.671581>,  <27.054951, 31.702030, 25.832357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.376633, 31.877163, 25.671581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413534, 0.073538, 0.907514,
		0.426896, -0.896044, -0.121919,
		0.804207, 0.437832, -0.401938,
		27.617895, 32.008511, 25.551001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.662893, 31.423166, 26.119511>,  <27.054951, 31.702030, 25.832357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.662893, 31.423166, 26.119511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.638420, 31.817440, 26.056673>,  <27.623735, 32.054005, 26.018970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.638420, 31.817440, 26.056673>,  <27.662893, 31.423166, 26.119511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.638420, 31.817440, 26.056673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028289, 0.155614, 0.987413,
		0.997726, 0.064856, 0.018363,
		-0.061182, 0.985686, -0.157095,
		27.620066, 32.113148, 26.009544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.990635, 31.710758, 26.666897>,  <27.662893, 31.423166, 26.119511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.990635, 31.710758, 26.666897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.808331, 32.029751, 26.508757>,  <27.698948, 32.221146, 26.413872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.808331, 32.029751, 26.508757>,  <27.990635, 31.710758, 26.666897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.808331, 32.029751, 26.508757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127140, 0.381282, 0.915674,
		0.880974, 0.467595, -0.072382,
		-0.455763, 0.797483, -0.395350,
		27.671602, 32.268997, 26.390152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.266550, 32.260418, 26.921305>,  <27.990635, 31.710758, 26.666897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.266550, 32.260418, 26.921305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.894434, 32.366211, 26.819632>,  <27.671164, 32.429688, 26.758629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.894434, 32.366211, 26.819632>,  <28.266550, 32.260418, 26.921305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.894434, 32.366211, 26.819632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179866, 0.275014, 0.944466,
		0.319701, 0.924345, -0.208271,
		-0.930290, 0.264485, -0.254181,
		27.615347, 32.445557, 26.743378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.134106, 32.958561, 27.157368>,  <28.266550, 32.260418, 26.921305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.134106, 32.958561, 27.157368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.763466, 32.816509, 27.107891>,  <27.541082, 32.731277, 27.078205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.763466, 32.816509, 27.107891>,  <28.134106, 32.958561, 27.157368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.763466, 32.816509, 27.107891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252870, 0.344955, 0.903915,
		-0.278341, 0.868843, -0.409436,
		-0.926597, -0.355131, -0.123689,
		27.485487, 32.709969, 27.070784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.765188, 33.510010, 27.449482>,  <28.134106, 32.958561, 27.157368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.765188, 33.510010, 27.449482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.532322, 33.185291, 27.467659>,  <27.392601, 32.990459, 27.478565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.532322, 33.185291, 27.467659>,  <27.765188, 33.510010, 27.449482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.532322, 33.185291, 27.467659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181884, 0.184501, 0.965856,
		-0.792464, 0.554024, -0.255064,
		-0.582167, -0.811798, 0.045442,
		27.357672, 32.941753, 27.481291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.201242, 33.653698, 27.832304>,  <27.765188, 33.510010, 27.449482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.201242, 33.653698, 27.832304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.209135, 33.255028, 27.863930>,  <27.213871, 33.015827, 27.882906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.209135, 33.255028, 27.863930>,  <27.201242, 33.653698, 27.832304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.209135, 33.255028, 27.863930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115082, 0.076292, 0.990422,
		-0.993160, -0.028640, -0.113194,
		0.019730, -0.996674, 0.079066,
		27.215054, 32.956024, 27.887650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.567221, 33.297920, 28.174854>,  <27.201242, 33.653698, 27.832304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.567221, 33.297920, 28.174854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.869158, 33.043385, 28.238455>,  <27.050320, 32.890663, 28.276615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.869158, 33.043385, 28.238455>,  <26.567221, 33.297920, 28.174854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.869158, 33.043385, 28.238455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084258, 0.146329, 0.985641,
		-0.650472, -0.757401, 0.056838,
		0.754842, -0.636343, 0.159000,
		27.095610, 32.852482, 28.286156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.337374, 32.697342, 28.641228>,  <26.567221, 33.297920, 28.174854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.337374, 32.697342, 28.641228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.734995, 32.701004, 28.684633>,  <26.973568, 32.703201, 28.710676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.734995, 32.701004, 28.684633>,  <26.337374, 32.697342, 28.641228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.734995, 32.701004, 28.684633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108897, 0.082103, 0.990657,
		0.000155, -0.996582, 0.082611,
		0.994053, 0.009149, 0.108512,
		27.033211, 32.703751, 28.717186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.478851, 32.423798, 29.377687>,  <26.337374, 32.697342, 28.641228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.478851, 32.423798, 29.377687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.829487, 32.585476, 29.273216>,  <27.039867, 32.682484, 29.210533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.829487, 32.585476, 29.273216>,  <26.478851, 32.423798, 29.377687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.829487, 32.585476, 29.273216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210260, 0.166499, 0.963363,
		0.432876, -0.899389, 0.060965,
		0.876589, 0.404198, -0.261180,
		27.092464, 32.706734, 29.194862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.959202, 32.107185, 29.782990>,  <26.478851, 32.423798, 29.377687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.959202, 32.107185, 29.782990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.144712, 32.443459, 29.671156>,  <27.256018, 32.645222, 29.604055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.144712, 32.443459, 29.671156>,  <26.959202, 32.107185, 29.782990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.144712, 32.443459, 29.671156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260452, 0.172255, 0.949996,
		0.846804, -0.513402, -0.139070,
		0.463774, 0.840682, -0.279583,
		27.283844, 32.695663, 29.587280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.577127, 32.047203, 30.105923>,  <26.959202, 32.107185, 29.782990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.577127, 32.047203, 30.105923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.504368, 32.432816, 30.028414>,  <27.460712, 32.664185, 29.981909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.504368, 32.432816, 30.028414>,  <27.577127, 32.047203, 30.105923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.504368, 32.432816, 30.028414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261409, 0.237379, 0.935583,
		0.947933, 0.119529, -0.295187,
		-0.181901, 0.964035, -0.193774,
		27.449799, 32.722027, 29.970282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.080687, 32.430901, 30.484737>,  <27.577127, 32.047203, 30.105923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.080687, 32.430901, 30.484737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.781860, 32.690857, 30.428837>,  <27.602564, 32.846832, 30.395296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.781860, 32.690857, 30.428837>,  <28.080687, 32.430901, 30.484737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.781860, 32.690857, 30.428837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161722, 0.381602, 0.910069,
		0.644778, 0.657281, -0.390184,
		-0.747066, 0.649894, -0.139751,
		27.557741, 32.885826, 30.386911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.373117, 33.122440, 30.648310>,  <28.080687, 32.430901, 30.484737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.373117, 33.122440, 30.648310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.978733, 33.185921, 30.669065>,  <27.742102, 33.224010, 30.681519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.978733, 33.185921, 30.669065>,  <28.373117, 33.122440, 30.648310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.978733, 33.185921, 30.669065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122157, 0.473764, 0.872138,
		0.113827, 0.866234, -0.486500,
		-0.985962, 0.158703, 0.051889,
		27.682945, 33.233532, 30.684633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.335215, 33.794975, 30.745852>,  <28.373117, 33.122440, 30.648310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.335215, 33.794975, 30.745852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.985172, 33.646862, 30.870481>,  <27.775146, 33.557995, 30.945259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.985172, 33.646862, 30.870481>,  <28.335215, 33.794975, 30.745852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.985172, 33.646862, 30.870481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029915, 0.601221, 0.798523,
		-0.483003, 0.708114, -0.515056,
		-0.875107, -0.370281, 0.311575,
		27.722641, 33.535778, 30.963953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.971569, 34.362640, 30.908903>,  <28.335215, 33.794975, 30.745852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.971569, 34.362640, 30.908903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.812342, 34.049709, 31.100527>,  <27.716805, 33.861950, 31.215502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.812342, 34.049709, 31.100527>,  <27.971569, 34.362640, 30.908903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.812342, 34.049709, 31.100527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023860, 0.513211, 0.857930,
		-0.917046, 0.352945, -0.185626,
		-0.398068, -0.782332, 0.479060,
		27.692921, 33.815010, 31.244246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.415482, 34.686996, 31.315565>,  <27.971569, 34.362640, 30.908903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.415482, 34.686996, 31.315565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.486017, 34.341064, 31.503597>,  <27.528339, 34.133507, 31.616417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.486017, 34.341064, 31.503597>,  <27.415482, 34.686996, 31.315565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.486017, 34.341064, 31.503597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073350, 0.487782, 0.869879,
		-0.981592, -0.118915, 0.149451,
		0.176341, -0.864829, 0.470080,
		27.538919, 34.081615, 31.644621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.962339, 34.734245, 31.906887>,  <27.415482, 34.686996, 31.315565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.962339, 34.734245, 31.906887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.230227, 34.454506, 32.006798>,  <27.390959, 34.286663, 32.066746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.230227, 34.454506, 32.006798>,  <26.962339, 34.734245, 31.906887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.230227, 34.454506, 32.006798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063171, 0.281477, 0.957486,
		-0.739925, -0.657023, 0.144331,
		0.669717, -0.699351, 0.249777,
		27.431141, 34.244701, 32.081730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.706911, 34.397427, 32.519993>,  <26.962339, 34.734245, 31.906887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.706911, 34.397427, 32.519993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.096569, 34.309669, 32.498421>,  <27.330364, 34.257015, 32.485477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.096569, 34.309669, 32.498421>,  <26.706911, 34.397427, 32.519993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.096569, 34.309669, 32.498421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088743, 0.152077, 0.984377,
		-0.207760, -0.963712, 0.167614,
		0.974146, -0.219389, -0.053927,
		27.388813, 34.243855, 32.482243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.844355, 33.928452, 33.100498>,  <26.706911, 34.397427, 32.519993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.844355, 33.928452, 33.100498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.206799, 34.054981, 32.988136>,  <27.424265, 34.130898, 32.920719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.206799, 34.054981, 32.988136>,  <26.844355, 33.928452, 33.100498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.206799, 34.054981, 32.988136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303172, -0.022430, 0.952672,
		0.295053, -0.948386, -0.116225,
		0.906107, 0.316325, -0.280906,
		27.478630, 34.149879, 32.903866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.216282, 33.546658, 33.520477>,  <26.844355, 33.928452, 33.100498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.216282, 33.546658, 33.520477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.438583, 33.853043, 33.391205>,  <27.571964, 34.036873, 33.313641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.438583, 33.853043, 33.391205>,  <27.216282, 33.546658, 33.520477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.438583, 33.853043, 33.391205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482386, 0.019503, 0.875742,
		0.677085, -0.642594, -0.358649,
		0.555751, 0.765959, -0.323183,
		27.605309, 34.082829, 33.294250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.945824, 33.311516, 33.478493>,  <27.216282, 33.546658, 33.520477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.945824, 33.311516, 33.478493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.879768, 33.701302, 33.539341>,  <27.840136, 33.935173, 33.575848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.879768, 33.701302, 33.539341>,  <27.945824, 33.311516, 33.478493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.879768, 33.701302, 33.539341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521032, -0.044759, 0.852363,
		0.837409, 0.220018, -0.500338,
		-0.165140, 0.974468, 0.152119,
		27.830227, 33.993641, 33.584976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.808208, 33.032780, 34.213524>,  <27.945824, 33.311516, 33.478493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.808208, 33.032780, 34.213524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.510695, 33.248947, 34.370865>,  <27.332186, 33.378647, 34.465267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.510695, 33.248947, 34.370865>,  <27.808208, 33.032780, 34.213524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.510695, 33.248947, 34.370865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104067, -0.487678, 0.866799,
		0.660265, 0.685649, 0.306489,
		-0.743787, 0.540422, 0.393351,
		27.287558, 33.411076, 34.488869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.890720, 33.368443, 34.885258>,  <27.808208, 33.032780, 34.213524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.890720, 33.368443, 34.885258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.495274, 33.308655, 34.878407>,  <27.258005, 33.272781, 34.874298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.495274, 33.308655, 34.878407>,  <27.890720, 33.368443, 34.885258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.495274, 33.308655, 34.878407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060034, -0.496288, 0.866080,
		-0.137952, 0.855194, 0.499613,
		-0.988618, -0.149471, -0.017124,
		27.198689, 33.263813, 34.873268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.079212, 33.843258, 35.366966>,  <27.890720, 33.368443, 34.885258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.079212, 33.843258, 35.366966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.411522, 34.029068, 35.244305>,  <28.610907, 34.140553, 35.170708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.411522, 34.029068, 35.244305>,  <28.079212, 33.843258, 35.366966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.411522, 34.029068, 35.244305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000255, 0.550614, 0.834760,
		0.556636, -0.693561, 0.457307,
		0.830756, 0.464541, -0.306668,
		28.660753, 34.168423, 35.152309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.509027, 34.038055, 35.958397>,  <28.079212, 33.843258, 35.366966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.509027, 34.038055, 35.958397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.823462, 33.809891, 36.053642>,  <29.012121, 33.672993, 36.110790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.823462, 33.809891, 36.053642>,  <28.509027, 34.038055, 35.958397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.823462, 33.809891, 36.053642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049825, 0.442446, 0.895410,
		-0.616107, -0.692004, 0.376220,
		0.786085, -0.570414, 0.238115,
		29.059286, 33.638767, 36.125076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.894035, 34.623154, 35.602783>,  <28.509027, 34.038055, 35.958397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.894035, 34.623154, 35.602783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.019379, 34.332466, 35.847305>,  <29.094584, 34.158054, 35.994019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.019379, 34.332466, 35.847305>,  <28.894035, 34.623154, 35.602783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.019379, 34.332466, 35.847305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940328, 0.327355, -0.092855,
		-0.132634, 0.603921, 0.785931,
		0.313356, -0.726717, 0.611302,
		29.113386, 34.114452, 36.030697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.317329, 34.809223, 36.260036>,  <28.894035, 34.623154, 35.602783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.317329, 34.809223, 36.260036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.415524, 34.456749, 36.098419>,  <29.474440, 34.245266, 36.001450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.415524, 34.456749, 36.098419>,  <29.317329, 34.809223, 36.260036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.415524, 34.456749, 36.098419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809243, 0.415756, -0.415057,
		0.533725, -0.225078, 0.815155,
		0.245485, -0.881185, -0.404042,
		29.489168, 34.192394, 35.977207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.013729, 34.754009, 36.467598>,  <29.317329, 34.809223, 36.260036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.013729, 34.754009, 36.467598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.881166, 34.574699, 36.135521>,  <29.801628, 34.467113, 35.936275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.881166, 34.574699, 36.135521>,  <30.013729, 34.754009, 36.467598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.881166, 34.574699, 36.135521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676852, 0.500053, -0.540203,
		0.657298, -0.740945, 0.137692,
		-0.331408, -0.448272, -0.830194,
		29.781744, 34.440216, 35.886463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.556311, 34.634605, 36.107170>,  <30.013729, 34.754009, 36.467598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.556311, 34.634605, 36.107170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.256624, 34.599064, 35.844635>,  <30.076813, 34.577740, 35.687115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.256624, 34.599064, 35.844635>,  <30.556311, 34.634605, 36.107170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.256624, 34.599064, 35.844635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535123, 0.502721, -0.678908,
		0.390280, -0.859870, -0.329098,
		-0.749216, -0.088856, -0.656338,
		30.031858, 34.572407, 35.647732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.838650, 34.433872, 36.904842>,  <30.556311, 34.634605, 36.107170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.838650, 34.433872, 36.904842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.185200, 34.323723, 36.738197>,  <31.393129, 34.257633, 36.638210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.185200, 34.323723, 36.738197>,  <30.838650, 34.433872, 36.904842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.185200, 34.323723, 36.738197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498664, 0.522178, 0.691855,
		0.027026, -0.807155, 0.589721,
		0.866374, -0.275375, -0.416612,
		31.445112, 34.241112, 36.613213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271002, 34.157242, 37.426334>,  <30.838650, 34.433872, 36.904842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271002, 34.157242, 37.426334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.539759, 34.269749, 37.152267>,  <31.701014, 34.337254, 36.987827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.539759, 34.269749, 37.152267>,  <31.271002, 34.157242, 37.426334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.539759, 34.269749, 37.152267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498542, 0.512386, 0.699226,
		0.547739, -0.811387, 0.204043,
		0.671891, 0.281269, -0.685164,
		31.741325, 34.354130, 36.946720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.874956, 34.081188, 37.749615>,  <31.271002, 34.157242, 37.426334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.874956, 34.081188, 37.749615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966970, 34.340115, 37.458942>,  <32.022179, 34.495472, 37.284538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966970, 34.340115, 37.458942>,  <31.874956, 34.081188, 37.749615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966970, 34.340115, 37.458942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720426, 0.388740, 0.574341,
		0.654270, -0.655640, -0.376919,
		0.230038, 0.647316, -0.726681,
		32.035980, 34.534309, 37.240940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619293, 33.986996, 37.620262>,  <31.874956, 34.081188, 37.749615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.619293, 33.986996, 37.620262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.482857, 34.340054, 37.490902>,  <32.400993, 34.551888, 37.413284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.482857, 34.340054, 37.490902>,  <32.619293, 33.986996, 37.620262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.482857, 34.340054, 37.490902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790637, 0.455465, 0.409201,
		0.508480, -0.116121, -0.853208,
		-0.341090, 0.882648, -0.323404,
		32.380531, 34.604847, 37.393879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.085747, 34.243977, 37.244675>,  <32.619293, 33.986996, 37.620262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.085747, 34.243977, 37.244675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876431, 34.560421, 37.371357>,  <32.750839, 34.750290, 37.447365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876431, 34.560421, 37.371357>,  <33.085747, 34.243977, 37.244675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876431, 34.560421, 37.371357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766519, 0.274609, 0.580551,
		0.372312, 0.546558, -0.750105,
		-0.523290, 0.791116, 0.316707,
		32.719444, 34.797756, 37.466370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603920, 34.693798, 37.407410>,  <33.085747, 34.243977, 37.244675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.603920, 34.693798, 37.407410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.284409, 34.844120, 37.595337>,  <33.092701, 34.934315, 37.708092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.284409, 34.844120, 37.595337>,  <33.603920, 34.693798, 37.407410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.284409, 34.844120, 37.595337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582179, 0.285852, 0.761155,
		0.151748, 0.881509, -0.447117,
		-0.798774, 0.375806, 0.469819,
		33.044777, 34.956863, 37.736282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757137, 35.458164, 37.552582>,  <33.603920, 34.693798, 37.407410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757137, 35.458164, 37.552582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.458771, 35.391495, 37.810520>,  <33.279751, 35.351494, 37.965282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.458771, 35.391495, 37.810520>,  <33.757137, 35.458164, 37.552582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458771, 35.391495, 37.810520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567881, 0.346731, 0.746518,
		-0.348016, 0.923036, -0.163980,
		-0.745920, -0.166678, 0.644843,
		33.234993, 35.341492, 38.003971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698727, 36.055374, 37.969376>,  <33.757137, 35.458164, 37.552582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698727, 36.055374, 37.969376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.517010, 35.765198, 38.176201>,  <33.407982, 35.591091, 38.300297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.517010, 35.765198, 38.176201>,  <33.698727, 36.055374, 37.969376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517010, 35.765198, 38.176201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573731, 0.205770, 0.792775,
		-0.681509, 0.656803, 0.322731,
		-0.454289, -0.725444, 0.517062,
		33.380722, 35.547565, 38.331318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811199, 36.262863, 38.698875>,  <33.698727, 36.055374, 37.969376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811199, 36.262863, 38.698875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713512, 35.876930, 38.737759>,  <33.654900, 35.645370, 38.761089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713512, 35.876930, 38.737759>,  <33.811199, 36.262863, 38.698875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713512, 35.876930, 38.737759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565758, -0.060354, 0.822359,
		-0.787575, 0.255832, 0.560603,
		-0.244220, -0.964836, 0.097205,
		33.640247, 35.587479, 38.766922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.589233, 36.152950, 39.416134>,  <33.811199, 36.262863, 38.698875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.589233, 36.152950, 39.416134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690674, 35.805393, 39.246090>,  <33.751537, 35.596859, 39.144066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690674, 35.805393, 39.246090>,  <33.589233, 36.152950, 39.416134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690674, 35.805393, 39.246090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518990, -0.248641, 0.817819,
		-0.816293, -0.428028, 0.387888,
		0.253604, -0.868890, -0.425106,
		33.766754, 35.544727, 39.118557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.443810, 35.650894, 39.935112>,  <33.589233, 36.152950, 39.416134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.443810, 35.650894, 39.935112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717907, 35.492958, 39.690311>,  <33.882366, 35.398197, 39.543430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717907, 35.492958, 39.690311>,  <33.443810, 35.650894, 39.935112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717907, 35.492958, 39.690311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508501, -0.342212, 0.790138,
		-0.521412, -0.852638, -0.033722,
		0.685242, -0.394840, -0.612001,
		33.923481, 35.374508, 39.506710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494003, 34.856693, 40.017139>,  <33.443810, 35.650894, 39.935112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494003, 34.856693, 40.017139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843685, 34.980400, 39.867413>,  <34.053493, 35.054626, 39.777576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843685, 34.980400, 39.867413>,  <33.494003, 34.856693, 40.017139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843685, 34.980400, 39.867413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480736, -0.442953, 0.756760,
		0.068238, -0.841513, -0.535910,
		0.874206, 0.309272, -0.374319,
		34.105946, 35.073181, 39.755116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867798, 34.273430, 39.923069>,  <33.494003, 34.856693, 40.017139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867798, 34.273430, 39.923069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191216, 34.507275, 39.896278>,  <34.385265, 34.647583, 39.880203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191216, 34.507275, 39.896278>,  <33.867798, 34.273430, 39.923069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191216, 34.507275, 39.896278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378665, -0.429798, 0.819687,
		0.450413, -0.688114, -0.568882,
		0.808542, 0.584613, -0.066978,
		34.433777, 34.682659, 39.876186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417240, 33.809193, 39.853462>,  <33.867798, 34.273430, 39.923069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417240, 33.809193, 39.853462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.561832, 34.147907, 40.009560>,  <34.648586, 34.351135, 40.103218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.561832, 34.147907, 40.009560>,  <34.417240, 33.809193, 39.853462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561832, 34.147907, 40.009560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472192, -0.527165, 0.706492,
		0.803969, -0.071113, -0.590404,
		0.361481, 0.846782, 0.390245,
		34.670277, 34.401943, 40.126633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025131, 33.599201, 40.109993>,  <34.417240, 33.809193, 39.853462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025131, 33.599201, 40.109993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966236, 33.941475, 40.308434>,  <34.930901, 34.146839, 40.427498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966236, 33.941475, 40.308434>,  <35.025131, 33.599201, 40.109993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966236, 33.941475, 40.308434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347564, -0.424826, 0.835896,
		0.926024, 0.295505, -0.234855,
		-0.147239, 0.855687, 0.496106,
		34.922066, 34.198181, 40.457264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705719, 33.829796, 40.519455>,  <35.025131, 33.599201, 40.109993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705719, 33.829796, 40.519455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.401920, 33.990814, 40.723858>,  <35.219643, 34.087425, 40.846500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.401920, 33.990814, 40.723858>,  <35.705719, 33.829796, 40.519455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.401920, 33.990814, 40.723858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288741, -0.495309, 0.819327,
		0.582921, 0.769823, 0.259954,
		-0.759495, 0.402543, 0.511006,
		35.174072, 34.111576, 40.877159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992821, 33.957310, 41.125965>,  <35.705719, 33.829796, 40.519455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992821, 33.957310, 41.125965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616058, 34.034809, 41.235710>,  <35.389999, 34.081306, 41.301556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616058, 34.034809, 41.235710>,  <35.992821, 33.957310, 41.125965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616058, 34.034809, 41.235710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175784, -0.411702, 0.894204,
		0.286204, 0.890485, 0.353728,
		-0.941906, 0.193745, 0.274364,
		35.333485, 34.092934, 41.318020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987400, 34.104027, 41.810444>,  <35.992821, 33.957310, 41.125965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987400, 34.104027, 41.810444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.607944, 33.990799, 41.753952>,  <35.380272, 33.922863, 41.720058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.607944, 33.990799, 41.753952>,  <35.987400, 34.104027, 41.810444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607944, 33.990799, 41.753952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014929, -0.485997, 0.873833,
		-0.315995, 0.826847, 0.465264,
		-0.948643, -0.283073, -0.141228,
		35.323353, 33.905876, 41.711582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.585690, 34.418812, 42.411530>,  <35.987400, 34.104027, 41.810444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.585690, 34.418812, 42.411530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378334, 34.116833, 42.250866>,  <35.253922, 33.935646, 42.154469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378334, 34.116833, 42.250866>,  <35.585690, 34.418812, 42.411530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378334, 34.116833, 42.250866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034555, -0.450818, 0.891947,
		-0.854445, 0.476256, 0.207613,
		-0.518391, -0.754946, -0.401657,
		35.222816, 33.890350, 42.130367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899578, 34.355839, 42.796391>,  <35.585690, 34.418812, 42.411530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899578, 34.355839, 42.796391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.979042, 34.007965, 42.615646>,  <35.026722, 33.799240, 42.507202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.979042, 34.007965, 42.615646>,  <34.899578, 34.355839, 42.796391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979042, 34.007965, 42.615646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130697, -0.480437, 0.867236,
		-0.971314, -0.113231, -0.209111,
		0.198663, -0.869689, -0.451857,
		35.038643, 33.747059, 42.480091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323341, 33.999462, 42.989872>,  <34.899578, 34.355839, 42.796391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323341, 33.999462, 42.989872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.608368, 33.755848, 42.850544>,  <34.779385, 33.609680, 42.766945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.608368, 33.755848, 42.850544>,  <34.323341, 33.999462, 42.989872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.608368, 33.755848, 42.850544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022595, -0.516128, 0.856213,
		-0.701240, -0.602239, -0.381537,
		0.712567, -0.609032, -0.348322,
		34.822140, 33.573139, 42.746048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091393, 33.404942, 43.284134>,  <34.323341, 33.999462, 42.989872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.091393, 33.404942, 43.284134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.468639, 33.328148, 43.175568>,  <34.694988, 33.282074, 43.110428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.468639, 33.328148, 43.175568>,  <34.091393, 33.404942, 43.284134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468639, 33.328148, 43.175568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117802, -0.570451, 0.812840,
		-0.310881, -0.798579, -0.515388,
		0.943120, -0.191983, -0.271416,
		34.751575, 33.270554, 43.094143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134712, 32.646450, 43.083599>,  <34.091393, 33.404942, 43.284134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134712, 32.646450, 43.083599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.470238, 32.816223, 43.219978>,  <34.671555, 32.918087, 43.301807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.470238, 32.816223, 43.219978>,  <34.134712, 32.646450, 43.083599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470238, 32.816223, 43.219978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019153, -0.602870, 0.797610,
		0.544080, -0.675577, -0.497567,
		0.838815, 0.424433, 0.340948,
		34.721882, 32.943554, 43.322262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408947, 32.180267, 43.436451>,  <34.134712, 32.646450, 43.083599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408947, 32.180267, 43.436451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.609085, 32.487610, 43.596096>,  <34.729168, 32.672016, 43.691883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.609085, 32.487610, 43.596096>,  <34.408947, 32.180267, 43.436451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609085, 32.487610, 43.596096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031314, -0.476715, 0.878500,
		0.865259, -0.427056, -0.262583,
		0.500346, 0.768353, 0.399109,
		34.759190, 32.718117, 43.715828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.825108, 31.872452, 43.679310>,  <34.408947, 32.180267, 43.436451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.825108, 31.872452, 43.679310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827984, 32.217068, 43.882366>,  <34.829708, 32.423836, 44.004200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827984, 32.217068, 43.882366>,  <34.825108, 31.872452, 43.679310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827984, 32.217068, 43.882366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229338, -0.495539, 0.837762,
		0.973320, 0.110396, -0.201148,
		0.007191, 0.861541, 0.507636,
		34.830143, 32.475529, 44.034657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342941, 31.699919, 44.153965>,  <34.825108, 31.872452, 43.679310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342941, 31.699919, 44.153965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177032, 32.027672, 44.312244>,  <35.077488, 32.224323, 44.407211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177032, 32.027672, 44.312244>,  <35.342941, 31.699919, 44.153965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177032, 32.027672, 44.312244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243636, -0.318980, 0.915911,
		0.876700, 0.476303, -0.067326,
		-0.414776, 0.819382, 0.395695,
		35.052601, 32.273487, 44.430954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834267, 31.951370, 44.623314>,  <35.342941, 31.699919, 44.153965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834267, 31.951370, 44.623314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500027, 32.137245, 44.740501>,  <35.299480, 32.248772, 44.810814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500027, 32.137245, 44.740501>,  <35.834267, 31.951370, 44.623314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500027, 32.137245, 44.740501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211972, -0.219265, 0.952361,
		0.506790, 0.857897, 0.084717,
		-0.835603, 0.464689, 0.292971,
		35.249348, 32.276653, 44.828392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896305, 32.560226, 45.193684>,  <35.834267, 31.951370, 44.623314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896305, 32.560226, 45.193684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508038, 32.466747, 45.216240>,  <35.275078, 32.410660, 45.229774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508038, 32.466747, 45.216240>,  <35.896305, 32.560226, 45.193684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508038, 32.466747, 45.216240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078928, -0.088232, 0.992968,
		-0.227082, 0.968297, 0.104090,
		-0.970672, -0.233700, 0.056390,
		35.216835, 32.396637, 45.233158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625889, 32.940376, 45.749416>,  <35.896305, 32.560226, 45.193684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625889, 32.940376, 45.749416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.353085, 32.652313, 45.698441>,  <35.189404, 32.479477, 45.667854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.353085, 32.652313, 45.698441>,  <35.625889, 32.940376, 45.749416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353085, 32.652313, 45.698441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044594, -0.214876, 0.975623,
		-0.729983, 0.659701, 0.178662,
		-0.682009, -0.720155, -0.127437,
		35.148483, 32.436268, 45.660210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206425, 32.968399, 46.426674>,  <35.625889, 32.940376, 45.749416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206425, 32.968399, 46.426674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.149796, 32.602226, 46.275974>,  <35.115818, 32.382523, 46.185555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.149796, 32.602226, 46.275974>,  <35.206425, 32.968399, 46.426674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149796, 32.602226, 46.275974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107814, -0.392577, 0.913378,
		-0.984039, 0.088691, 0.154274,
		-0.141573, -0.915433, -0.376749,
		35.107323, 32.327595, 46.162949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644821, 32.729156, 46.776176>,  <35.206425, 32.968399, 46.426674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644821, 32.729156, 46.776176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842552, 32.404320, 46.652153>,  <34.961193, 32.209415, 46.577740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842552, 32.404320, 46.652153>,  <34.644821, 32.729156, 46.776176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842552, 32.404320, 46.652153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007177, -0.352866, 0.935646,
		-0.869245, -0.464742, -0.168604,
		0.494329, -0.812096, -0.310062,
		34.990852, 32.160690, 46.559135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355740, 32.188431, 47.223969>,  <34.644821, 32.729156, 46.776176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355740, 32.188431, 47.223969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715485, 32.098454, 47.074009>,  <34.931332, 32.044468, 46.984032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715485, 32.098454, 47.074009>,  <34.355740, 32.188431, 47.223969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715485, 32.098454, 47.074009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282224, -0.356221, 0.890762,
		-0.333913, -0.906924, -0.256889,
		0.899362, -0.224936, -0.374902,
		34.985294, 32.030972, 46.961536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440304, 31.440657, 47.446625>,  <34.355740, 32.188431, 47.223969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440304, 31.440657, 47.446625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794701, 31.592340, 47.339878>,  <35.007339, 31.683350, 47.275829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794701, 31.592340, 47.339878>,  <34.440304, 31.440657, 47.446625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794701, 31.592340, 47.339878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438461, -0.497856, 0.748259,
		0.150887, -0.779962, -0.607366,
		0.885994, 0.379208, -0.266862,
		35.060497, 31.706102, 47.259819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928146, 30.887003, 47.588329>,  <34.440304, 31.440657, 47.446625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928146, 30.887003, 47.588329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.181171, 31.193295, 47.541828>,  <35.332989, 31.377069, 47.513927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.181171, 31.193295, 47.541828>,  <34.928146, 30.887003, 47.588329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181171, 31.193295, 47.541828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563483, -0.352019, 0.747375,
		0.531364, -0.538273, -0.654152,
		0.632566, 0.765731, -0.116257,
		35.370941, 31.423014, 47.506950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579388, 30.586239, 47.436459>,  <34.928146, 30.887003, 47.588329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579388, 30.586239, 47.436459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.657436, 30.940844, 47.604279>,  <35.704266, 31.153606, 47.704971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.657436, 30.940844, 47.604279>,  <35.579388, 30.586239, 47.436459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657436, 30.940844, 47.604279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567496, -0.450941, 0.688913,
		0.799924, 0.103676, -0.591078,
		0.195118, 0.886512, 0.419554,
		35.715973, 31.206797, 47.730145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264751, 30.560621, 47.584435>,  <35.579388, 30.586239, 47.436459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264751, 30.560621, 47.584435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114075, 30.844110, 47.823036>,  <36.023670, 31.014204, 47.966198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114075, 30.844110, 47.823036>,  <36.264751, 30.560621, 47.584435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114075, 30.844110, 47.823036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372499, -0.473687, 0.798038,
		0.848144, 0.522809, -0.085566,
		-0.376690, 0.708725, 0.596501,
		36.001068, 31.056728, 48.001987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863071, 30.769156, 48.123245>,  <36.264751, 30.560621, 47.584435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863071, 30.769156, 48.123245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.501816, 30.864721, 48.265942>,  <36.285065, 30.922060, 48.351559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.501816, 30.864721, 48.265942>,  <36.863071, 30.769156, 48.123245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501816, 30.864721, 48.265942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253394, -0.374166, 0.892071,
		0.346611, 0.896058, 0.277383,
		-0.903135, 0.238915, 0.356745,
		36.230877, 30.936396, 48.372967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950905, 30.985651, 48.935230>,  <36.863071, 30.769156, 48.123245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950905, 30.985651, 48.935230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559418, 30.906187, 48.914680>,  <36.324524, 30.858509, 48.902351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559418, 30.906187, 48.914680>,  <36.950905, 30.985651, 48.935230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559418, 30.906187, 48.914680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031236, -0.391707, 0.919560,
		-0.202807, 0.898387, 0.389577,
		-0.978720, -0.198662, -0.051379,
		36.265800, 30.846588, 48.899265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769588, 31.121374, 49.688076>,  <36.950905, 30.985651, 48.935230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769588, 31.121374, 49.688076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.500587, 30.899607, 49.491974>,  <36.339188, 30.766546, 49.374313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.500587, 30.899607, 49.491974>,  <36.769588, 31.121374, 49.688076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500587, 30.899607, 49.491974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192446, -0.508644, 0.839194,
		-0.714632, 0.658712, 0.235371,
		-0.672507, -0.554419, -0.490259,
		36.298836, 30.733282, 49.344894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113449, 31.122498, 50.053917>,  <36.769588, 31.121374, 49.688076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.113449, 31.122498, 50.053917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087269, 30.801628, 49.816517>,  <36.071560, 30.609106, 49.674076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087269, 30.801628, 49.816517>,  <36.113449, 31.122498, 50.053917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087269, 30.801628, 49.816517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012495, -0.595384, 0.803345,
		-0.997778, 0.045165, 0.048992,
		-0.065452, -0.802171, -0.593496,
		36.067635, 30.560976, 49.638470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.783279, 30.749399, 50.478161>,  <36.113449, 31.122498, 50.053917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.783279, 30.749399, 50.478161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882030, 30.471182, 50.208267>,  <35.941280, 30.304251, 50.046329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882030, 30.471182, 50.208267>,  <35.783279, 30.749399, 50.478161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882030, 30.471182, 50.208267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215855, -0.718265, 0.661439,
		-0.944700, -0.017648, -0.327460,
		0.246876, -0.695546, -0.674736,
		35.956093, 30.262518, 50.005848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354198, 30.213179, 50.565956>,  <35.783279, 30.749399, 50.478161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354198, 30.213179, 50.565956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695053, 30.058006, 50.425461>,  <35.899567, 29.964903, 50.341164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695053, 30.058006, 50.425461>,  <35.354198, 30.213179, 50.565956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695053, 30.058006, 50.425461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009125, -0.660058, 0.751159,
		-0.523235, -0.643297, -0.558922,
		0.852139, -0.387933, -0.351235,
		35.950695, 29.941626, 50.320091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.844753, 30.002262, 50.941154>,  <35.354198, 30.213179, 50.565956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.844753, 30.002262, 50.941154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.003036, 29.659779, 51.074013>,  <36.098007, 29.454288, 51.153728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.003036, 29.659779, 51.074013>,  <35.844753, 30.002262, 50.941154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003036, 29.659779, 51.074013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846059, 0.480542, 0.230788,
		-0.357213, 0.189690, 0.914558,
		0.395706, -0.856211, 0.332144,
		36.121750, 29.402916, 51.173656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148041, 30.047686, 51.671627>,  <35.844753, 30.002262, 50.941154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148041, 30.047686, 51.671627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.338352, 29.767752, 51.458511>,  <36.452538, 29.599791, 51.330643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.338352, 29.767752, 51.458511>,  <36.148041, 30.047686, 51.671627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338352, 29.767752, 51.458511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878965, 0.355922, 0.317396,
		-0.032494, -0.619312, 0.784472,
		0.475778, -0.699837, -0.532789,
		36.481087, 29.557800, 51.298676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504082, 29.440453, 51.962372>,  <36.148041, 30.047686, 51.671627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504082, 29.440453, 51.962372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699390, 29.537722, 51.627121>,  <36.816574, 29.596083, 51.425968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699390, 29.537722, 51.627121>,  <36.504082, 29.440453, 51.962372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699390, 29.537722, 51.627121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859205, 0.034252, 0.510483,
		0.152843, -0.969378, -0.192212,
		0.488267, 0.243174, -0.838130,
		36.845871, 29.610674, 51.375683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110550, 29.061646, 51.975315>,  <36.504082, 29.440453, 51.962372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.110550, 29.061646, 51.975315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.165108, 29.383175, 51.743706>,  <37.197842, 29.576092, 51.604740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.165108, 29.383175, 51.743706>,  <37.110550, 29.061646, 51.975315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165108, 29.383175, 51.743706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892858, 0.153470, 0.423380,
		0.429185, -0.574732, -0.696766,
		0.136398, 0.803822, -0.579021,
		37.206028, 29.624321, 51.570000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787415, 29.066475, 51.576317>,  <37.110550, 29.061646, 51.975315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787415, 29.066475, 51.576317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.682907, 29.448612, 51.631542>,  <37.620205, 29.677895, 51.664677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.682907, 29.448612, 51.631542>,  <37.787415, 29.066475, 51.576317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.682907, 29.448612, 51.631542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938533, 0.217985, 0.267654,
		0.225605, 0.199509, -0.953571,
		-0.261264, 0.955342, 0.138068,
		37.604527, 29.735214, 51.672962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190639, 29.436287, 52.062294>,  <37.787415, 29.066475, 51.576317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190639, 29.436287, 52.062294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455914, 29.306791, 51.792370>,  <38.615078, 29.229094, 51.630413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455914, 29.306791, 51.792370>,  <38.190639, 29.436287, 52.062294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455914, 29.306791, 51.792370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715869, -0.537501, -0.445673,
		-0.218433, 0.778644, -0.588218,
		0.663188, -0.323738, -0.674815,
		38.654869, 29.209671, 51.589924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195080, 29.613359, 51.371429>,  <38.190639, 29.436287, 52.062294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195080, 29.613359, 51.371429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.375000, 29.259632, 51.321377>,  <38.482952, 29.047396, 51.291344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.375000, 29.259632, 51.321377>,  <38.195080, 29.613359, 51.371429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375000, 29.259632, 51.321377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656728, -0.232529, -0.717383,
		0.605299, 0.404858, -0.685349,
		0.449802, -0.884319, -0.125132,
		38.509941, 28.994337, 51.283836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315048, 29.466295, 50.621838>,  <38.195080, 29.613359, 51.371429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315048, 29.466295, 50.621838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.287365, 29.121004, 50.821857>,  <38.270756, 28.913830, 50.941868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.287365, 29.121004, 50.821857>,  <38.315048, 29.466295, 50.621838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.287365, 29.121004, 50.821857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507626, -0.401032, -0.762555,
		0.858793, -0.306615, -0.410440,
		-0.069211, -0.863227, 0.500049,
		38.266602, 28.862036, 50.971870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541679, 28.952822, 50.217041>,  <38.315048, 29.466295, 50.621838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541679, 28.952822, 50.217041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.272022, 28.796879, 50.467976>,  <38.110229, 28.703312, 50.618534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.272022, 28.796879, 50.467976>,  <38.541679, 28.952822, 50.217041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272022, 28.796879, 50.467976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586055, -0.234593, -0.775568,
		0.449530, -0.890492, -0.070330,
		-0.674139, -0.389859, 0.627334,
		38.069782, 28.679922, 50.656178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.405064, 28.234627, 50.191700>,  <38.541679, 28.952822, 50.217041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.405064, 28.234627, 50.191700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.080017, 28.450142, 50.280567>,  <37.884987, 28.579451, 50.333885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.080017, 28.450142, 50.280567>,  <38.405064, 28.234627, 50.191700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080017, 28.450142, 50.280567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341882, -0.131980, -0.930429,
		-0.471983, -0.832039, 0.291452,
		-0.812618, 0.538789, 0.222166,
		37.836231, 28.611778, 50.347218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843506, 27.954330, 49.928898>,  <38.405064, 28.234627, 50.191700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843506, 27.954330, 49.928898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.742863, 28.339706, 49.892063>,  <37.682476, 28.570932, 49.869961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.742863, 28.339706, 49.892063>,  <37.843506, 27.954330, 49.928898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742863, 28.339706, 49.892063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149572, -0.132715, -0.979803,
		-0.956202, -0.232751, 0.177496,
		-0.251606, 0.963438, -0.092090,
		37.667381, 28.628738, 49.864437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469223, 27.951567, 49.359333>,  <37.843506, 27.954330, 49.928898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.469223, 27.951567, 49.359333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523331, 28.345064, 49.406582>,  <37.555794, 28.581161, 49.434933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523331, 28.345064, 49.406582>,  <37.469223, 27.951567, 49.359333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523331, 28.345064, 49.406582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009254, 0.120468, -0.992674,
		-0.990766, 0.133183, 0.025399,
		0.135268, 0.983742, 0.118123,
		37.563911, 28.640186, 49.442020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935799, 28.269510, 48.984379>,  <37.469223, 27.951567, 49.359333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935799, 28.269510, 48.984379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.241043, 28.527191, 49.005051>,  <37.424191, 28.681799, 49.017456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.241043, 28.527191, 49.005051>,  <36.935799, 28.269510, 48.984379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241043, 28.527191, 49.005051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121184, 0.221188, -0.967673,
		-0.634807, 0.732176, 0.246857,
		0.763108, 0.644201, 0.051684,
		37.469975, 28.720451, 49.020557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709202, 28.897408, 48.691887>,  <36.935799, 28.269510, 48.984379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709202, 28.897408, 48.691887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107056, 28.893400, 48.650719>,  <37.345768, 28.890995, 48.626019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107056, 28.893400, 48.650719>,  <36.709202, 28.897408, 48.691887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107056, 28.893400, 48.650719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086060, 0.471611, -0.877597,
		0.057331, 0.881750, 0.468221,
		0.994639, -0.010018, -0.102922,
		37.405449, 28.890394, 48.619843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818996, 29.439240, 48.185970>,  <36.709202, 28.897408, 48.691887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818996, 29.439240, 48.185970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.191200, 29.298002, 48.224911>,  <37.414524, 29.213259, 48.248276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.191200, 29.298002, 48.224911>,  <36.818996, 29.439240, 48.185970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.191200, 29.298002, 48.224911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166332, 0.170568, -0.971206,
		0.326323, 0.919908, 0.217446,
		0.930509, -0.353095, 0.097349,
		37.470352, 29.192074, 48.254116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220886, 29.966347, 48.043304>,  <36.818996, 29.439240, 48.185970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220886, 29.966347, 48.043304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.415897, 29.625481, 47.967270>,  <37.532902, 29.420961, 47.921650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.415897, 29.625481, 47.967270>,  <37.220886, 29.966347, 48.043304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415897, 29.625481, 47.967270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218314, 0.329778, -0.918469,
		0.845375, 0.406277, 0.346814,
		0.487524, -0.852165, -0.190090,
		37.562153, 29.369831, 47.910244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874626, 30.160973, 47.765545>,  <37.220886, 29.966347, 48.043304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.874626, 30.160973, 47.765545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.789581, 29.785528, 47.656879>,  <37.738556, 29.560261, 47.591679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.789581, 29.785528, 47.656879>,  <37.874626, 30.160973, 47.765545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789581, 29.785528, 47.656879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324971, 0.194276, -0.925554,
		0.921515, -0.285068, 0.263717,
		-0.212612, -0.938612, -0.271667,
		37.725800, 29.503944, 47.575378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337845, 30.015228, 47.213215>,  <37.874626, 30.160973, 47.765545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337845, 30.015228, 47.213215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.060268, 29.730595, 47.169231>,  <37.893723, 29.559814, 47.142841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.060268, 29.730595, 47.169231>,  <38.337845, 30.015228, 47.213215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060268, 29.730595, 47.169231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270709, -0.116325, -0.955607,
		0.667203, -0.692905, 0.273355,
		-0.693943, -0.711584, -0.109963,
		37.852085, 29.517120, 47.136242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732471, 29.476210, 46.862995>,  <38.337845, 30.015228, 47.213215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732471, 29.476210, 46.862995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.334946, 29.438541, 46.839436>,  <38.096432, 29.415939, 46.825298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.334946, 29.438541, 46.839436>,  <38.732471, 29.476210, 46.862995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334946, 29.438541, 46.839436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057312, 0.019460, -0.998167,
		0.095150, -0.995365, -0.013942,
		-0.993812, -0.094176, -0.058898,
		38.036800, 29.410290, 46.821766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666718, 28.918539, 46.403599>,  <38.732471, 29.476210, 46.862995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666718, 28.918539, 46.403599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.340225, 29.149632, 46.403515>,  <38.144329, 29.288286, 46.403465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.340225, 29.149632, 46.403515>,  <38.666718, 28.918539, 46.403599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340225, 29.149632, 46.403515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006358, -0.009341, -0.999936,
		-0.577695, -0.816175, 0.011297,
		-0.816228, 0.577730, -0.000207,
		38.095356, 29.322950, 46.403454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237785, 28.590578, 45.988522>,  <38.666718, 28.918539, 46.403599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237785, 28.590578, 45.988522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132202, 28.975994, 46.006012>,  <38.068851, 29.207245, 46.016506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132202, 28.975994, 46.006012>,  <38.237785, 28.590578, 45.988522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132202, 28.975994, 46.006012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100065, 0.017738, -0.994823,
		-0.959330, -0.266967, 0.091735,
		-0.263958, 0.963542, 0.043731,
		38.053017, 29.265057, 46.019131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760456, 28.585314, 45.471710>,  <38.237785, 28.590578, 45.988522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760456, 28.585314, 45.471710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.820782, 28.974539, 45.541454>,  <37.856976, 29.208075, 45.583302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.820782, 28.974539, 45.541454>,  <37.760456, 28.585314, 45.471710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.820782, 28.974539, 45.541454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240767, 0.207220, -0.948204,
		-0.958794, 0.101021, 0.265533,
		0.150812, 0.973065, 0.174358,
		37.866024, 29.266459, 45.593761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153332, 28.876545, 45.231323>,  <37.760456, 28.585314, 45.471710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153332, 28.876545, 45.231323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.433041, 29.162483, 45.230442>,  <37.600868, 29.334047, 45.229912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.433041, 29.162483, 45.230442>,  <37.153332, 28.876545, 45.231323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433041, 29.162483, 45.230442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303204, 0.293808, -0.906501,
		-0.647363, 0.634563, 0.422198,
		0.699277, 0.714848, -0.002202,
		37.642822, 29.376938, 45.229782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884235, 29.535442, 45.009964>,  <37.153332, 28.876545, 45.231323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884235, 29.535442, 45.009964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.277779, 29.584803, 44.958138>,  <37.513905, 29.614418, 44.927040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.277779, 29.584803, 44.958138>,  <36.884235, 29.535442, 45.009964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277779, 29.584803, 44.958138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169366, 0.408692, -0.896820,
		-0.057714, 0.904292, 0.422997,
		0.983862, 0.123401, -0.129569,
		37.572937, 29.621822, 44.919266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997662, 30.195395, 44.818153>,  <36.884235, 29.535442, 45.009964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.997662, 30.195395, 44.818153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335766, 30.031433, 44.681034>,  <37.538628, 29.933056, 44.598763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335766, 30.031433, 44.681034>,  <36.997662, 30.195395, 44.818153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335766, 30.031433, 44.681034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169209, 0.403190, -0.899337,
		0.506854, 0.818180, 0.271442,
		0.845262, -0.409901, -0.342802,
		37.589344, 29.908463, 44.578194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302261, 30.773680, 44.570099>,  <36.997662, 30.195395, 44.818153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302261, 30.773680, 44.570099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.467106, 30.450684, 44.401283>,  <37.566013, 30.256886, 44.299992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.467106, 30.450684, 44.401283>,  <37.302261, 30.773680, 44.570099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467106, 30.450684, 44.401283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191877, 0.375904, -0.906576,
		0.890700, 0.454591, -0.000025,
		0.412111, -0.807492, -0.422044,
		37.590740, 30.208435, 44.274670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817730, 30.923645, 43.889130>,  <37.302261, 30.773680, 44.570099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817730, 30.923645, 43.889130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729229, 30.536072, 43.844921>,  <37.676128, 30.303528, 43.818398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729229, 30.536072, 43.844921>,  <37.817730, 30.923645, 43.889130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729229, 30.536072, 43.844921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311016, 0.177517, -0.933679,
		0.924293, -0.172202, -0.340630,
		-0.221249, -0.968935, -0.110520,
		37.662853, 30.245392, 43.811764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097305, 30.721703, 43.301247>,  <37.817730, 30.923645, 43.889130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097305, 30.721703, 43.301247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808437, 30.451908, 43.362625>,  <37.635117, 30.290031, 43.399452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808437, 30.451908, 43.362625>,  <38.097305, 30.721703, 43.301247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808437, 30.451908, 43.362625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238404, 0.034459, -0.970554,
		0.649338, -0.737483, -0.185685,
		-0.722166, -0.674486, 0.153443,
		37.591789, 30.249563, 43.408657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136242, 30.312176, 42.731403>,  <38.097305, 30.721703, 43.301247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136242, 30.312176, 42.731403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.771263, 30.229898, 42.872902>,  <37.552277, 30.180532, 42.957802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.771263, 30.229898, 42.872902>,  <38.136242, 30.312176, 42.731403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771263, 30.229898, 42.872902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372225, 0.058123, -0.926321,
		0.169982, -0.976888, -0.129600,
		-0.912445, -0.205699, 0.353742,
		37.497528, 30.168190, 42.979023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830822, 29.805494, 42.256340>,  <38.136242, 30.312176, 42.731403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.830822, 29.805494, 42.256340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.511097, 29.928490, 42.462856>,  <37.319263, 30.002287, 42.586765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.511097, 29.928490, 42.462856>,  <37.830822, 29.805494, 42.256340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511097, 29.928490, 42.462856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490129, 0.163483, -0.856182,
		-0.347669, -0.937403, 0.020035,
		-0.799312, 0.307487, 0.516286,
		37.271305, 30.020737, 42.617741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142860, 29.385090, 42.025951>,  <37.830822, 29.805494, 42.256340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.142860, 29.385090, 42.025951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.042782, 29.734047, 42.193920>,  <36.982735, 29.943422, 42.294701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.042782, 29.734047, 42.193920>,  <37.142860, 29.385090, 42.025951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042782, 29.734047, 42.193920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509605, 0.250116, -0.823252,
		-0.823229, -0.419965, 0.382000,
		-0.250193, 0.872394, 0.419919,
		36.967724, 29.995766, 42.319897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509644, 29.412834, 41.836346>,  <37.142860, 29.385090, 42.025951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509644, 29.412834, 41.836346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.586731, 29.778421, 41.979183>,  <36.632984, 29.997774, 42.064888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.586731, 29.778421, 41.979183>,  <36.509644, 29.412834, 41.836346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586731, 29.778421, 41.979183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716947, 0.379623, -0.584700,
		-0.669960, -0.143335, 0.728429,
		0.192720, 0.913970, 0.357096,
		36.644547, 30.052612, 42.086311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845440, 29.718283, 41.864651>,  <36.509644, 29.412834, 41.836346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845440, 29.718283, 41.864651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.111366, 30.017052, 41.859993>,  <36.270920, 30.196312, 41.857201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.111366, 30.017052, 41.859993>,  <35.845440, 29.718283, 41.864651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111366, 30.017052, 41.859993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530060, 0.460694, -0.711897,
		-0.526367, 0.479448, 0.702188,
		0.664811, 0.746921, -0.011642,
		36.310810, 30.241127, 41.856499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517258, 30.278736, 41.883877>,  <35.845440, 29.718283, 41.864651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517258, 30.278736, 41.883877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862114, 30.421959, 41.740482>,  <36.069027, 30.507893, 41.654446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862114, 30.421959, 41.740482>,  <35.517258, 30.278736, 41.883877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862114, 30.421959, 41.740482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504990, 0.549621, -0.665508,
		-0.041258, 0.754792, 0.654665,
		0.862139, 0.358057, -0.358487,
		36.120754, 30.529375, 41.632935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415398, 31.047892, 41.776379>,  <35.517258, 30.278736, 41.883877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415398, 31.047892, 41.776379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.717045, 30.918102, 41.547985>,  <35.898033, 30.840229, 41.410950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.717045, 30.918102, 41.547985>,  <35.415398, 31.047892, 41.776379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717045, 30.918102, 41.547985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362843, 0.518836, -0.774050,
		0.547407, 0.790903, 0.273530,
		0.754115, -0.324472, -0.570988,
		35.943279, 30.820761, 41.376690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772614, 31.710716, 41.467926>,  <35.415398, 31.047892, 41.776379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772614, 31.710716, 41.467926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.858315, 31.386946, 41.249229>,  <35.909737, 31.192684, 41.118011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.858315, 31.386946, 41.249229>,  <35.772614, 31.710716, 41.467926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.858315, 31.386946, 41.249229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238151, 0.499559, -0.832901,
		0.947302, 0.308657, -0.085735,
		0.214252, -0.809426, -0.546741,
		35.922588, 31.144117, 41.085209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300030, 32.010448, 40.842796>,  <35.772614, 31.710716, 41.467926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300030, 32.010448, 40.842796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114769, 31.671581, 40.738651>,  <36.003613, 31.468260, 40.676163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114769, 31.671581, 40.738651>,  <36.300030, 32.010448, 40.842796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114769, 31.671581, 40.738651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132489, 0.356653, -0.924795,
		0.876318, -0.393828, -0.277427,
		-0.463155, -0.847170, -0.260364,
		35.975822, 31.417431, 40.660542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502171, 31.901285, 40.189060>,  <36.300030, 32.010448, 40.842796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502171, 31.901285, 40.189060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.167648, 31.684546, 40.222496>,  <35.966934, 31.554502, 40.242558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.167648, 31.684546, 40.222496>,  <36.502171, 31.901285, 40.189060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167648, 31.684546, 40.222496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215468, 0.184640, -0.958896,
		0.504142, -0.819945, -0.271167,
		-0.836310, -0.541847, 0.083587,
		35.916756, 31.521992, 40.247574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416767, 31.584538, 39.538193>,  <36.502171, 31.901285, 40.189060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416767, 31.584538, 39.538193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.045692, 31.530354, 39.677357>,  <35.823048, 31.497843, 39.760853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.045692, 31.530354, 39.677357>,  <36.416767, 31.584538, 39.538193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045692, 31.530354, 39.677357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367081, 0.160919, -0.916164,
		0.068116, -0.977628, -0.199006,
		-0.927692, -0.135457, 0.347908,
		35.767384, 31.489716, 39.781731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179943, 31.085331, 39.121960>,  <36.416767, 31.584538, 39.538193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179943, 31.085331, 39.121960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.865318, 31.279148, 39.275078>,  <35.676544, 31.395439, 39.366947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.865318, 31.279148, 39.275078>,  <36.179943, 31.085331, 39.121960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865318, 31.279148, 39.275078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343423, 0.171942, -0.923307,
		-0.513201, -0.857703, 0.031159,
		-0.786565, 0.484543, 0.382796,
		35.629349, 31.424511, 39.389915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642384, 30.953892, 38.698391>,  <36.179943, 31.085331, 39.121960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642384, 30.953892, 38.698391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.476646, 31.262516, 38.891479>,  <35.377205, 31.447691, 39.007332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.476646, 31.262516, 38.891479>,  <35.642384, 30.953892, 38.698391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476646, 31.262516, 38.891479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377455, 0.336948, -0.862551,
		-0.828161, -0.539594, 0.151619,
		-0.414339, 0.771560, 0.482719,
		35.352345, 31.493984, 39.036297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001942, 31.066530, 38.379116>,  <35.642384, 30.953892, 38.698391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001942, 31.066530, 38.379116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.055679, 31.411150, 38.574947>,  <35.087921, 31.617922, 38.692444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.055679, 31.411150, 38.574947>,  <35.001942, 31.066530, 38.379116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055679, 31.411150, 38.574947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384180, 0.500695, -0.775700,
		-0.913432, -0.083873, 0.398256,
		0.134345, 0.861550, 0.489573,
		35.095982, 31.669615, 38.721821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339539, 31.436573, 38.390995>,  <35.001942, 31.066530, 38.379116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339539, 31.436573, 38.390995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.616344, 31.723139, 38.426468>,  <34.782429, 31.895079, 38.447750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.616344, 31.723139, 38.426468>,  <34.339539, 31.436573, 38.390995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616344, 31.723139, 38.426468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431933, 0.509359, -0.744303,
		-0.578399, 0.476767, 0.661928,
		0.692018, 0.716412, 0.088682,
		34.823948, 31.938063, 38.453072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986969, 32.076302, 38.440254>,  <34.339539, 31.436573, 38.390995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986969, 32.076302, 38.440254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362980, 32.186142, 38.359318>,  <34.588589, 32.252045, 38.310757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362980, 32.186142, 38.359318>,  <33.986969, 32.076302, 38.440254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362980, 32.186142, 38.359318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331030, 0.591405, -0.735295,
		-0.082244, 0.758180, 0.646837,
		0.940029, 0.274597, -0.202341,
		34.644989, 32.268520, 38.298615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050400, 32.799946, 38.476593>,  <33.986969, 32.076302, 38.440254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050400, 32.799946, 38.476593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354839, 32.685493, 38.243748>,  <34.537502, 32.616821, 38.104038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354839, 32.685493, 38.243748>,  <34.050400, 32.799946, 38.476593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354839, 32.685493, 38.243748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286470, 0.656901, -0.697435,
		0.581948, 0.697576, 0.418000,
		0.761099, -0.286127, -0.582117,
		34.583168, 32.599655, 38.069111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415749, 33.355476, 38.287224>,  <34.050400, 32.799946, 38.476593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415749, 33.355476, 38.287224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528790, 33.091751, 38.008530>,  <34.596615, 32.933514, 37.841312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528790, 33.091751, 38.008530>,  <34.415749, 33.355476, 38.287224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528790, 33.091751, 38.008530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141024, 0.689891, -0.710044,
		0.948814, 0.298915, 0.101984,
		0.282601, -0.659318, -0.696733,
		34.613571, 32.893955, 37.799511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738239, 33.749832, 37.802464>,  <34.415749, 33.355476, 38.287224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738239, 33.749832, 37.802464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.639500, 33.409916, 37.616165>,  <34.580254, 33.205967, 37.504387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.639500, 33.409916, 37.616165>,  <34.738239, 33.749832, 37.802464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639500, 33.409916, 37.616165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118101, 0.503423, -0.855931,
		0.961830, -0.156283, -0.224632,
		-0.246853, -0.849789, -0.465750,
		34.565445, 33.154980, 37.476440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222324, 33.695724, 37.216103>,  <34.738239, 33.749832, 37.802464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.222324, 33.695724, 37.216103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895687, 33.482803, 37.126823>,  <34.699703, 33.355049, 37.073257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895687, 33.482803, 37.126823>,  <35.222324, 33.695724, 37.216103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895687, 33.482803, 37.126823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024223, 0.354740, -0.934651,
		0.576699, -0.768641, -0.276786,
		-0.816598, -0.532308, -0.223197,
		34.650707, 33.323112, 37.059864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357353, 33.316513, 36.655979>,  <35.222324, 33.695724, 37.216103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.357353, 33.316513, 36.655979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967190, 33.404213, 36.664989>,  <34.733093, 33.456833, 36.670395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967190, 33.404213, 36.664989>,  <35.357353, 33.316513, 36.655979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967190, 33.404213, 36.664989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021946, 0.198314, -0.979893,
		-0.219308, -0.955302, -0.198249,
		-0.975409, 0.219249, 0.022526,
		34.674568, 33.469986, 36.671749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082565, 33.340092, 36.551781>,  <35.357353, 33.316513, 36.655979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082565, 33.340092, 36.551781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.264896, 33.684975, 36.640156>,  <36.374294, 33.891907, 36.693180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.264896, 33.684975, 36.640156>,  <36.082565, 33.340092, 36.551781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264896, 33.684975, 36.640156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889365, -0.431358, -0.151528,
		-0.035347, 0.265562, -0.963446,
		0.455830, 0.862211, 0.220934,
		36.401646, 33.943638, 36.706436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802292, 33.421043, 36.202904>,  <36.082565, 33.340092, 36.551781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802292, 33.421043, 36.202904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100639, 33.322216, 35.955475>,  <37.279648, 33.262920, 35.807018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100639, 33.322216, 35.955475>,  <36.802292, 33.421043, 36.202904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100639, 33.322216, 35.955475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624285, -0.064533, 0.778527,
		-0.232270, -0.966846, 0.106109,
		0.745868, -0.247071, -0.618577,
		37.324398, 33.248096, 35.769901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127499, 32.758408, 36.345234>,  <36.802292, 33.421043, 36.202904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127499, 32.758408, 36.345234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.390301, 33.016846, 36.189850>,  <37.547981, 33.171909, 36.096619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.390301, 33.016846, 36.189850>,  <37.127499, 32.758408, 36.345234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390301, 33.016846, 36.189850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542629, -0.047578, 0.838624,
		0.523352, -0.761770, -0.381850,
		0.657006, 0.646098, -0.388458,
		37.587402, 33.210674, 36.073311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685352, 32.489468, 36.248020>,  <37.127499, 32.758408, 36.345234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685352, 32.489468, 36.248020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.793407, 32.871475, 36.296944>,  <37.858242, 33.100681, 36.326298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.793407, 32.871475, 36.296944>,  <37.685352, 32.489468, 36.248020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793407, 32.871475, 36.296944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565461, -0.260183, 0.782661,
		0.779281, -0.142267, -0.610313,
		0.270139, 0.955021, 0.122309,
		37.874451, 33.157982, 36.333637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348034, 32.507580, 36.470364>,  <37.685352, 32.489468, 36.248020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348034, 32.507580, 36.470364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214035, 32.868652, 36.578392>,  <38.133636, 33.085297, 36.643208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214035, 32.868652, 36.578392>,  <38.348034, 32.507580, 36.470364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214035, 32.868652, 36.578392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437990, -0.104592, 0.892875,
		0.834232, 0.417397, -0.360329,
		-0.334995, 0.902685, 0.270070,
		38.113537, 33.139458, 36.659412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926910, 32.812866, 36.736393>,  <38.348034, 32.507580, 36.470364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926910, 32.812866, 36.736393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.598072, 32.948410, 36.919407>,  <38.400768, 33.029736, 37.029213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.598072, 32.948410, 36.919407>,  <38.926910, 32.812866, 36.736393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598072, 32.948410, 36.919407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500582, 0.047332, 0.864394,
		0.271249, 0.939647, -0.208537,
		-0.822095, 0.338856, 0.457532,
		38.351444, 33.050068, 37.056667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205719, 33.353607, 37.185715>,  <38.926910, 32.812866, 36.736393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.205719, 33.353607, 37.185715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.845322, 33.227650, 37.305084>,  <38.629086, 33.152077, 37.376705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.845322, 33.227650, 37.305084>,  <39.205719, 33.353607, 37.185715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845322, 33.227650, 37.305084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357245, -0.148216, 0.922176,
		-0.246153, 0.937484, 0.246035,
		-0.900991, -0.314891, 0.298427,
		38.575024, 33.133183, 37.394611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302643, 33.328377, 37.771240>,  <39.205719, 33.353607, 37.185715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302643, 33.328377, 37.771240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.947861, 33.144455, 37.788643>,  <38.734993, 33.034103, 37.799084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.947861, 33.144455, 37.788643>,  <39.302643, 33.328377, 37.771240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947861, 33.144455, 37.788643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256115, -0.411269, 0.874793,
		-0.384339, 0.787045, 0.482540,
		-0.886955, -0.459803, 0.043507,
		38.681774, 33.006516, 37.801697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273949, 33.329269, 38.413834>,  <39.302643, 33.328377, 37.771240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.273949, 33.329269, 38.413834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.015053, 33.049690, 38.292145>,  <38.859715, 32.881943, 38.219131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.015053, 33.049690, 38.292145>,  <39.273949, 33.329269, 38.413834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.015053, 33.049690, 38.292145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330978, -0.617187, 0.713816,
		-0.686683, 0.361319, 0.630804,
		-0.647240, -0.698948, -0.304224,
		38.820881, 32.840004, 38.200878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944584, 33.082069, 39.032036>,  <39.273949, 33.329269, 38.413834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.944584, 33.082069, 39.032036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.866703, 32.791454, 38.768452>,  <38.819973, 32.617085, 38.610302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.866703, 32.791454, 38.768452>,  <38.944584, 33.082069, 39.032036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866703, 32.791454, 38.768452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238175, -0.686731, 0.686785,
		-0.951506, -0.023229, 0.306753,
		-0.194703, -0.726540, -0.658961,
		38.808292, 32.573494, 38.570763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539597, 32.498199, 39.393837>,  <38.944584, 33.082069, 39.032036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539597, 32.498199, 39.393837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.744930, 32.356926, 39.080978>,  <38.868130, 32.272163, 38.893265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.744930, 32.356926, 39.080978>,  <38.539597, 32.498199, 39.393837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744930, 32.356926, 39.080978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390524, -0.715425, 0.579360,
		-0.764189, -0.602850, -0.229321,
		0.513328, -0.353185, -0.782147,
		38.898930, 32.250973, 38.846333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385040, 31.731825, 39.388592>,  <38.539597, 32.498199, 39.393837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385040, 31.731825, 39.388592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.723446, 31.758728, 39.177029>,  <38.926487, 31.774870, 39.050091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.723446, 31.758728, 39.177029>,  <38.385040, 31.731825, 39.388592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723446, 31.758728, 39.177029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441977, -0.643297, 0.625161,
		-0.298195, -0.762657, -0.573964,
		0.846012, 0.067259, -0.528904,
		38.977249, 31.778906, 39.018356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642807, 31.038319, 39.118301>,  <38.385040, 31.731825, 39.388592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.642807, 31.038319, 39.118301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972610, 31.264126, 39.102772>,  <39.170490, 31.399611, 39.093456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972610, 31.264126, 39.102772>,  <38.642807, 31.038319, 39.118301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972610, 31.264126, 39.102772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540075, -0.764619, 0.351677,
		0.168846, -0.310926, -0.935316,
		0.824506, 0.564520, -0.038820,
		39.219963, 31.433481, 39.091125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206211, 30.705154, 38.835484>,  <38.642807, 31.038319, 39.118301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206211, 30.705154, 38.835484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.406837, 30.978460, 39.047741>,  <39.527214, 31.142443, 39.175095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.406837, 30.978460, 39.047741>,  <39.206211, 30.705154, 38.835484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406837, 30.978460, 39.047741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458272, -0.730089, 0.506910,
		0.733770, -0.011070, -0.679308,
		0.501567, 0.683263, 0.530644,
		39.557308, 31.183439, 39.206936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.807400, 30.408962, 38.885818>,  <39.206211, 30.705154, 38.835484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.807400, 30.408962, 38.885818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.850368, 30.707901, 39.148098>,  <39.876152, 30.887264, 39.305466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.850368, 30.707901, 39.148098>,  <39.807400, 30.408962, 38.885818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850368, 30.707901, 39.148098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335570, -0.648064, 0.683671,
		0.935870, 0.146588, -0.320404,
		0.107424, 0.747345, 0.655695,
		39.882595, 30.932104, 39.344807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385704, 30.279303, 39.401138>,  <39.807400, 30.408962, 38.885818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.385704, 30.279303, 39.401138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178593, 30.546921, 39.614410>,  <40.054325, 30.707493, 39.742374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178593, 30.546921, 39.614410>,  <40.385704, 30.279303, 39.401138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178593, 30.546921, 39.614410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235359, -0.487779, 0.840641,
		0.822502, 0.560756, 0.095096,
		-0.517780, 0.669047, 0.533178,
		40.023258, 30.747635, 39.774364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.800835, 30.462545, 39.988815>,  <40.385704, 30.279303, 39.401138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.800835, 30.462545, 39.988815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.423733, 30.554497, 40.085453>,  <40.197472, 30.609667, 40.143436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.423733, 30.554497, 40.085453>,  <40.800835, 30.462545, 39.988815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.423733, 30.554497, 40.085453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136828, -0.394027, 0.908857,
		0.304121, 0.889887, 0.340018,
		-0.942756, 0.229878, 0.241593,
		40.140907, 30.623461, 40.157932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.841553, 30.886703, 40.619667>,  <40.800835, 30.462545, 39.988815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.841553, 30.886703, 40.619667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472454, 30.733927, 40.599022>,  <40.250996, 30.642262, 40.586636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472454, 30.733927, 40.599022>,  <40.841553, 30.886703, 40.619667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.472454, 30.733927, 40.599022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076039, -0.311693, 0.947135,
		-0.377838, 0.870039, 0.316655,
		-0.922744, -0.381941, -0.051613,
		40.195629, 30.619345, 40.583538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566338, 30.883633, 41.294487>,  <40.841553, 30.886703, 40.619667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.566338, 30.883633, 41.294487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.319626, 30.615831, 41.128910>,  <40.171600, 30.455151, 41.029564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.319626, 30.615831, 41.128910>,  <40.566338, 30.883633, 41.294487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.319626, 30.615831, 41.128910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226449, -0.352734, 0.907910,
		-0.753863, 0.653714, 0.065948,
		-0.616775, -0.669506, -0.413946,
		40.134594, 30.414980, 41.004726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841980, 30.968830, 41.575493>,  <40.566338, 30.883633, 41.294487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.841980, 30.968830, 41.575493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.868603, 30.587053, 41.459141>,  <39.884575, 30.357986, 41.389328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.868603, 30.587053, 41.459141>,  <39.841980, 30.968830, 41.575493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.868603, 30.587053, 41.459141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267310, -0.297925, 0.916399,
		-0.961309, 0.016764, -0.274960,
		0.066555, -0.954442, -0.290879,
		39.888569, 30.300720, 41.371876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303764, 30.709261, 41.792297>,  <39.841980, 30.968830, 41.575493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303764, 30.709261, 41.792297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558815, 30.403744, 41.752205>,  <39.711845, 30.220434, 41.728149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558815, 30.403744, 41.752205>,  <39.303764, 30.709261, 41.792297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558815, 30.403744, 41.752205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104265, -0.214491, 0.971145,
		-0.763254, -0.608780, -0.216403,
		0.637630, -0.763793, -0.100236,
		39.750103, 30.174606, 41.722134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022675, 30.117020, 42.242233>,  <39.303764, 30.709261, 41.792297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.022675, 30.117020, 42.242233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.403149, 30.013508, 42.174957>,  <39.631432, 29.951401, 42.134590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.403149, 30.013508, 42.174957>,  <39.022675, 30.117020, 42.242233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.403149, 30.013508, 42.174957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069208, -0.352230, 0.933351,
		-0.300771, -0.899427, -0.317126,
		0.951182, -0.258777, -0.168188,
		39.688503, 29.935875, 42.124500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045151, 29.486122, 42.552113>,  <39.022675, 30.117020, 42.242233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.045151, 29.486122, 42.552113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.421745, 29.615721, 42.514950>,  <39.647701, 29.693480, 42.492653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.421745, 29.615721, 42.514950>,  <39.045151, 29.486122, 42.552113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.421745, 29.615721, 42.514950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183677, -0.262056, 0.947412,
		0.282611, -0.909040, -0.306232,
		0.941485, 0.323996, -0.092910,
		39.704189, 29.712919, 42.487076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382378, 28.982430, 43.058121>,  <39.045151, 29.486122, 42.552113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.382378, 28.982430, 43.058121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.657825, 29.265779, 42.996136>,  <39.823093, 29.435789, 42.958946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.657825, 29.265779, 42.996136>,  <39.382378, 28.982430, 43.058121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657825, 29.265779, 42.996136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324525, -0.109964, 0.939463,
		0.648452, -0.697218, -0.305608,
		0.688617, 0.708375, -0.154958,
		39.864410, 29.478292, 42.949650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039097, 28.699371, 43.376938>,  <39.382378, 28.982430, 43.058121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.039097, 28.699371, 43.376938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.075809, 29.097235, 43.358051>,  <40.097836, 29.335953, 43.346722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.075809, 29.097235, 43.358051>,  <40.039097, 28.699371, 43.376938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075809, 29.097235, 43.358051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307365, 0.016801, 0.951443,
		0.947155, -0.101837, -0.304182,
		0.091781, 0.994659, -0.047215,
		40.103344, 29.395632, 43.343887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.609734, 28.756859, 43.802719>,  <40.039097, 28.699371, 43.376938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.609734, 28.756859, 43.802719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.426151, 29.110516, 43.767738>,  <40.316002, 29.322710, 43.746750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.426151, 29.110516, 43.767738>,  <40.609734, 28.756859, 43.802719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.426151, 29.110516, 43.767738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322482, 0.257495, 0.910880,
		0.827866, 0.389855, -0.403300,
		-0.458959, 0.884143, -0.087451,
		40.288464, 29.375759, 43.741505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074062, 29.243286, 43.797935>,  <40.609734, 28.756859, 43.802719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.074062, 29.243286, 43.797935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.744522, 29.414618, 43.946426>,  <40.546799, 29.517416, 44.035522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.744522, 29.414618, 43.946426>,  <41.074062, 29.243286, 43.797935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.744522, 29.414618, 43.946426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473981, 0.161436, 0.865610,
		0.310834, 0.889086, -0.336017,
		-0.823847, 0.428327, 0.371231,
		40.497368, 29.543116, 44.057796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.273247, 29.913139, 44.161110>,  <41.074062, 29.243286, 43.797935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.273247, 29.913139, 44.161110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.922035, 29.815510, 44.325787>,  <40.711308, 29.756933, 44.424591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.922035, 29.815510, 44.325787>,  <41.273247, 29.913139, 44.161110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.922035, 29.815510, 44.325787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372443, 0.191772, 0.908025,
		-0.300574, 0.950606, -0.077479,
		-0.878033, -0.244072, 0.411688,
		40.658627, 29.742289, 44.449291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.226650, 30.384319, 44.747234>,  <41.273247, 29.913139, 44.161110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.226650, 30.384319, 44.747234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.935383, 30.133444, 44.857800>,  <40.760620, 29.982918, 44.924137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.935383, 30.133444, 44.857800>,  <41.226650, 30.384319, 44.747234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935383, 30.133444, 44.857800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045305, 0.358357, 0.932485,
		-0.683897, 0.691530, -0.232530,
		-0.728170, -0.627189, 0.276409,
		40.716930, 29.945288, 44.940723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.752464, 30.718367, 45.107445>,  <41.226650, 30.384319, 44.747234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.752464, 30.718367, 45.107445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.709648, 30.339041, 45.226940>,  <40.683960, 30.111444, 45.298637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.709648, 30.339041, 45.226940>,  <40.752464, 30.718367, 45.107445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.709648, 30.339041, 45.226940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126077, 0.310981, 0.942017,
		-0.986229, 0.063171, -0.152848,
		-0.107041, -0.948315, 0.298734,
		40.677536, 30.054546, 45.316559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242302, 30.693871, 45.544243>,  <40.752464, 30.718367, 45.107445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.242302, 30.693871, 45.544243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.456577, 30.372528, 45.648289>,  <40.585144, 30.179724, 45.710716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.456577, 30.372528, 45.648289>,  <40.242302, 30.693871, 45.544243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.456577, 30.372528, 45.648289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239150, 0.151090, 0.959155,
		-0.809842, -0.576015, -0.111185,
		0.535689, -0.803354, 0.260113,
		40.617283, 30.131521, 45.726322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659363, 30.278732, 45.947849>,  <40.242302, 30.693871, 45.544243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659363, 30.278732, 45.947849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.028904, 30.175816, 46.061199>,  <40.250629, 30.114065, 46.129208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.028904, 30.175816, 46.061199>,  <39.659363, 30.278732, 45.947849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.028904, 30.175816, 46.061199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289060, 0.016274, 0.957173,
		-0.250885, -0.966196, -0.059338,
		0.923851, -0.257292, 0.283372,
		40.306061, 30.098627, 46.146210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591862, 29.770741, 46.470455>,  <39.659363, 30.278732, 45.947849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591862, 29.770741, 46.470455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969189, 29.867872, 46.560955>,  <40.195583, 29.926151, 46.615253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969189, 29.867872, 46.560955>,  <39.591862, 29.770741, 46.470455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.969189, 29.867872, 46.560955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164488, -0.250037, 0.954162,
		0.288269, -0.937292, -0.195921,
		0.943316, 0.242829, 0.226251,
		40.252182, 29.940722, 46.628830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.793816, 29.383167, 46.982922>,  <39.591862, 29.770741, 46.470455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.793816, 29.383167, 46.982922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.078308, 29.660496, 47.029331>,  <40.249004, 29.826893, 47.057178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.078308, 29.660496, 47.029331>,  <39.793816, 29.383167, 46.982922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078308, 29.660496, 47.029331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056029, -0.108613, 0.992504,
		0.700726, -0.712396, -0.038403,
		0.711227, 0.693321, 0.116023,
		40.291676, 29.868492, 47.064137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098595, 29.164282, 47.595394>,  <39.793816, 29.383167, 46.982922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098595, 29.164282, 47.595394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.213070, 29.542351, 47.532467>,  <40.281754, 29.769192, 47.494709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.213070, 29.542351, 47.532467>,  <40.098595, 29.164282, 47.595394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.213070, 29.542351, 47.532467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073236, 0.185286, 0.979952,
		0.955372, -0.268925, 0.122246,
		0.286184, 0.945171, -0.157322,
		40.298923, 29.825903, 47.485271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551430, 29.308270, 48.116695>,  <40.098595, 29.164282, 47.595394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.551430, 29.308270, 48.116695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.401329, 29.658737, 47.995693>,  <40.311268, 29.869019, 47.923092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.401329, 29.658737, 47.995693>,  <40.551430, 29.308270, 48.116695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.401329, 29.658737, 47.995693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196478, 0.243756, 0.949726,
		0.905859, 0.415826, 0.080677,
		-0.375255, 0.876169, -0.302509,
		40.288754, 29.921587, 47.904942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.831402, 29.766491, 48.632641>,  <40.551430, 29.308270, 48.116695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.831402, 29.766491, 48.632641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.541058, 29.973022, 48.450855>,  <40.366852, 30.096941, 48.341785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.541058, 29.973022, 48.450855>,  <40.831402, 29.766491, 48.632641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.541058, 29.973022, 48.450855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221640, 0.449894, 0.865142,
		0.651156, 0.728698, -0.212121,
		-0.725859, 0.516328, -0.454460,
		40.323299, 30.127920, 48.314518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.823540, 30.532471, 48.808708>,  <40.831402, 29.766491, 48.632641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.823540, 30.532471, 48.808708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.448055, 30.433004, 48.713226>,  <40.222763, 30.373323, 48.655937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.448055, 30.433004, 48.713226>,  <40.823540, 30.532471, 48.808708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.448055, 30.433004, 48.713226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338852, 0.538688, 0.771359,
		-0.063223, 0.804972, -0.589935,
		-0.938713, -0.248668, -0.238708,
		40.166443, 30.358404, 48.641613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.450150, 30.835592, 49.314629>,  <40.823540, 30.532471, 48.808708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.450150, 30.835592, 49.314629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.160713, 30.663931, 49.098392>,  <39.987053, 30.560934, 48.968651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.160713, 30.663931, 49.098392>,  <40.450150, 30.835592, 49.314629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.160713, 30.663931, 49.098392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651406, 0.165632, 0.740430,
		-0.228220, 0.887915, -0.399404,
		-0.723592, -0.429155, -0.540592,
		39.943634, 30.535185, 48.936214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084152, 31.430376, 49.428761>,  <40.450150, 30.835592, 49.314629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.084152, 31.430376, 49.428761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.202995, 31.772976, 49.597584>,  <40.274300, 31.978537, 49.698879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.202995, 31.772976, 49.597584>,  <40.084152, 31.430376, 49.428761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.202995, 31.772976, 49.597584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057739, 0.457327, -0.887422,
		-0.953097, 0.239289, 0.185328,
		0.297106, 0.856500, 0.422061,
		40.292126, 32.029926, 49.724201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685898, 31.894712, 49.097019>,  <40.084152, 31.430376, 49.428761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685898, 31.894712, 49.097019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.977348, 32.105461, 49.272068>,  <40.152218, 32.231911, 49.377098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.977348, 32.105461, 49.272068>,  <39.685898, 31.894712, 49.097019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.977348, 32.105461, 49.272068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021691, 0.620871, -0.783613,
		-0.684570, 0.580452, 0.440953,
		0.728625, 0.526873, 0.437620,
		40.195934, 32.263523, 49.403355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398544, 32.460884, 49.040478>,  <39.685898, 31.894712, 49.097019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.398544, 32.460884, 49.040478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.792923, 32.506405, 49.089405>,  <40.029549, 32.533718, 49.118763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.792923, 32.506405, 49.089405>,  <39.398544, 32.460884, 49.040478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.792923, 32.506405, 49.089405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047455, 0.511237, -0.858129,
		-0.160189, 0.851873, 0.498651,
		0.985945, 0.113799, 0.122320,
		40.088707, 32.540546, 49.126102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.468388, 33.015453, 48.692463>,  <39.398544, 32.460884, 49.040478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.468388, 33.015453, 48.692463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845772, 32.891975, 48.740795>,  <40.072201, 32.817890, 48.769794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845772, 32.891975, 48.740795>,  <39.468388, 33.015453, 48.692463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845772, 32.891975, 48.740795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254102, 0.439355, -0.861626,
		0.212890, 0.843609, 0.492952,
		0.943456, -0.308692, 0.120828,
		40.128807, 32.799366, 48.777042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864571, 33.605812, 48.475418>,  <39.468388, 33.015453, 48.692463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.864571, 33.605812, 48.475418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.080193, 33.269310, 48.458927>,  <40.209568, 33.067410, 48.449032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.080193, 33.269310, 48.458927>,  <39.864571, 33.605812, 48.475418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.080193, 33.269310, 48.458927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222751, 0.189597, -0.956261,
		0.812281, 0.506295, 0.289595,
		0.539057, -0.841260, -0.041228,
		40.241909, 33.016933, 48.446560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495987, 33.726589, 47.999546>,  <39.864571, 33.605812, 48.475418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.495987, 33.726589, 47.999546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.452141, 33.329037, 48.004993>,  <40.425835, 33.090504, 48.008263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.452141, 33.329037, 48.004993>,  <40.495987, 33.726589, 47.999546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.452141, 33.329037, 48.004993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115129, -0.026308, -0.993002,
		0.987284, -0.107279, 0.117309,
		-0.109614, -0.993881, 0.013623,
		40.419258, 33.030872, 48.009079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.913410, 33.433712, 47.466854>,  <40.495987, 33.726589, 47.999546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.913410, 33.433712, 47.466854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.718590, 33.089611, 47.527176>,  <40.601696, 32.883148, 47.563370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.718590, 33.089611, 47.527176>,  <40.913410, 33.433712, 47.466854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.718590, 33.089611, 47.527176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123200, -0.238617, -0.963267,
		0.864640, -0.450582, 0.222202,
		-0.487052, -0.860255, 0.150806,
		40.572475, 32.831535, 47.572418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173027, 33.025379, 46.931820>,  <40.913410, 33.433712, 47.466854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.173027, 33.025379, 46.931820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.858841, 32.830120, 47.084007>,  <40.670330, 32.712967, 47.175320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.858841, 32.830120, 47.084007>,  <41.173027, 33.025379, 46.931820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.858841, 32.830120, 47.084007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167929, -0.423591, -0.890152,
		0.595686, -0.763077, 0.250743,
		-0.785467, -0.488144, 0.380470,
		40.623199, 32.683678, 47.198147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.275845, 32.312386, 46.794712>,  <41.173027, 33.025379, 46.931820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.275845, 32.312386, 46.794712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.888309, 32.403816, 46.832886>,  <40.655788, 32.458675, 46.855789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.888309, 32.403816, 46.832886>,  <41.275845, 32.312386, 46.794712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.888309, 32.403816, 46.832886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151319, -0.241128, -0.958624,
		-0.196112, -0.943190, 0.268202,
		-0.968836, 0.228581, 0.095435,
		40.597660, 32.472389, 46.861515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.918011, 31.731680, 46.395000>,  <41.275845, 32.312386, 46.794712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.918011, 31.731680, 46.395000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.656631, 32.033520, 46.418976>,  <40.499805, 32.214622, 46.433361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.656631, 32.033520, 46.418976>,  <40.918011, 31.731680, 46.395000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.656631, 32.033520, 46.418976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252439, -0.142579, -0.957051,
		-0.713643, -0.640510, 0.283657,
		-0.653444, 0.754598, 0.059940,
		40.460598, 32.259899, 46.436958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.396080, 31.419380, 46.013405>,  <40.918011, 31.731680, 46.395000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.396080, 31.419380, 46.013405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.352032, 31.815569, 46.046474>,  <40.325603, 32.053284, 46.066319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.352032, 31.815569, 46.046474>,  <40.396080, 31.419380, 46.013405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.352032, 31.815569, 46.046474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357545, 0.038137, -0.933117,
		-0.927381, -0.132320, 0.349939,
		-0.110124, 0.990473, 0.082678,
		40.318993, 32.112709, 46.071278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713413, 31.591345, 45.646511>,  <40.396080, 31.419380, 46.013405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.713413, 31.591345, 45.646511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.931881, 31.926407, 45.644005>,  <40.062962, 32.127445, 45.642502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.931881, 31.926407, 45.644005>,  <39.713413, 31.591345, 45.646511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931881, 31.926407, 45.644005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156232, 0.094515, -0.983188,
		-0.822979, 0.537963, 0.182489,
		0.546166, 0.837653, -0.006263,
		40.095730, 32.177704, 45.642124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290657, 31.958532, 45.152649>,  <39.713413, 31.591345, 45.646511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290657, 31.958532, 45.152649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.638546, 32.155945, 45.154232>,  <39.847279, 32.274391, 45.155182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.638546, 32.155945, 45.154232>,  <39.290657, 31.958532, 45.152649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.638546, 32.155945, 45.154232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051953, 0.099526, -0.993678,
		-0.490805, 0.864015, 0.112200,
		0.869719, 0.493531, 0.003960,
		39.899460, 32.304005, 45.155418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065598, 32.523621, 44.760628>,  <39.290657, 31.958532, 45.152649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065598, 32.523621, 44.760628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463242, 32.480553, 44.755695>,  <39.701828, 32.454712, 44.752735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463242, 32.480553, 44.755695>,  <39.065598, 32.523621, 44.760628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463242, 32.480553, 44.755695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011964, 0.004085, -0.999920,
		0.107711, 0.994178, 0.002773,
		0.994110, -0.107669, -0.012335,
		39.761475, 32.448254, 44.751995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343769, 33.104805, 44.532452>,  <39.065598, 32.523621, 44.760628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.343769, 33.104805, 44.532452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.588215, 32.796463, 44.460533>,  <39.734882, 32.611458, 44.417381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.588215, 32.796463, 44.460533>,  <39.343769, 33.104805, 44.532452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.588215, 32.796463, 44.460533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032246, 0.202708, -0.978708,
		0.790886, 0.603899, 0.099021,
		0.611113, -0.770853, -0.179792,
		39.771549, 32.565208, 44.406597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705086, 33.340336, 43.997227>,  <39.343769, 33.104805, 44.532452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.705086, 33.340336, 43.997227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.822655, 32.958199, 43.985004>,  <39.893196, 32.728916, 43.977673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.822655, 32.958199, 43.985004>,  <39.705086, 33.340336, 43.997227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.822655, 32.958199, 43.985004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062266, 0.012764, -0.997978,
		0.953799, 0.295231, -0.055734,
		0.293923, -0.955341, -0.030557,
		39.910831, 32.671597, 43.975838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255981, 33.282085, 43.660004>,  <39.705086, 33.340336, 43.997227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.255981, 33.282085, 43.660004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.096149, 32.919353, 43.606339>,  <40.000252, 32.701714, 43.574139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.096149, 32.919353, 43.606339>,  <40.255981, 33.282085, 43.660004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.096149, 32.919353, 43.606339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048389, 0.125285, -0.990940,
		0.915422, -0.402448, -0.006180,
		-0.399576, -0.906829, -0.134163,
		39.976276, 32.647305, 43.566090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570976, 33.098061, 43.057060>,  <40.255981, 33.282085, 43.660004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570976, 33.098061, 43.057060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.268272, 32.840675, 43.103134>,  <40.086651, 32.686245, 43.130779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.268272, 32.840675, 43.103134>,  <40.570976, 33.098061, 43.057060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.268272, 32.840675, 43.103134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083050, -0.080145, -0.993318,
		0.648393, -0.761271, 0.007211,
		-0.756762, -0.643462, 0.115189,
		40.041245, 32.647636, 43.137691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.749599, 32.563335, 42.687946>,  <40.570976, 33.098061, 43.057060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.749599, 32.563335, 42.687946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.351555, 32.525829, 42.700382>,  <40.112728, 32.503326, 42.707844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.351555, 32.525829, 42.700382>,  <40.749599, 32.563335, 42.687946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351555, 32.525829, 42.700382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021739, -0.099167, -0.994833,
		0.096369, -0.990643, 0.096644,
		-0.995108, -0.093770, 0.031092,
		40.053020, 32.497700, 42.709709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596813, 32.068771, 42.128262>,  <40.749599, 32.563335, 42.687946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.596813, 32.068771, 42.128262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.249149, 32.239666, 42.227882>,  <40.040550, 32.342201, 42.287655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.249149, 32.239666, 42.227882>,  <40.596813, 32.068771, 42.128262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.249149, 32.239666, 42.227882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201486, 0.153986, -0.967312,
		-0.451621, -0.890931, -0.047757,
		-0.869162, 0.427236, 0.249053,
		39.988400, 32.367836, 42.302597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109764, 31.727760, 41.684212>,  <40.596813, 32.068771, 42.128262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.109764, 31.727760, 41.684212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996861, 32.091969, 41.805061>,  <39.929119, 32.310493, 41.877571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996861, 32.091969, 41.805061>,  <40.109764, 31.727760, 41.684212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996861, 32.091969, 41.805061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060226, 0.297488, -0.952824,
		-0.957446, -0.287139, -0.029132,
		-0.282260, 0.910523, 0.302122,
		39.912182, 32.365124, 41.895699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541618, 31.916836, 41.158855>,  <40.109764, 31.727760, 41.684212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541618, 31.916836, 41.158855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.683235, 32.260452, 41.306747>,  <39.768204, 32.466621, 41.395485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.683235, 32.260452, 41.306747>,  <39.541618, 31.916836, 41.158855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683235, 32.260452, 41.306747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074196, 0.368294, -0.926744,
		-0.932282, 0.355538, 0.066654,
		0.354041, 0.859041, 0.369734,
		39.789448, 32.518166, 41.417667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237217, 32.392754, 40.718529>,  <39.541618, 31.916836, 41.158855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237217, 32.392754, 40.718529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.517765, 32.611145, 40.901825>,  <39.686096, 32.742180, 41.011803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.517765, 32.611145, 40.901825>,  <39.237217, 32.392754, 40.718529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517765, 32.611145, 40.901825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153479, 0.512127, -0.845086,
		-0.696073, 0.663053, 0.275397,
		0.701375, 0.545974, 0.458242,
		39.728176, 32.774937, 41.039299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.061745, 33.080078, 40.582077>,  <39.237217, 32.392754, 40.718529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.061745, 33.080078, 40.582077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450130, 33.079372, 40.677765>,  <39.683163, 33.078949, 40.735176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450130, 33.079372, 40.677765>,  <39.061745, 33.080078, 40.582077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.450130, 33.079372, 40.677765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187140, 0.628521, -0.754944,
		-0.149017, 0.777790, 0.610603,
		0.970965, -0.001768, 0.239216,
		39.741421, 33.078842, 40.749531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288563, 33.808258, 40.705524>,  <39.061745, 33.080078, 40.582077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288563, 33.808258, 40.705524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.637489, 33.621567, 40.647236>,  <39.846844, 33.509552, 40.612263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.637489, 33.621567, 40.647236>,  <39.288563, 33.808258, 40.705524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637489, 33.621567, 40.647236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315078, 0.764481, -0.562401,
		0.373889, 0.444676, 0.813923,
		0.872315, -0.466724, -0.145723,
		39.899185, 33.481548, 40.603519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738461, 34.358051, 40.600876>,  <39.288563, 33.808258, 40.705524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738461, 34.358051, 40.600876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.938744, 34.047878, 40.446995>,  <40.058914, 33.861774, 40.354668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.938744, 34.047878, 40.446995>,  <39.738461, 34.358051, 40.600876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.938744, 34.047878, 40.446995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495802, 0.621215, -0.606855,
		0.709558, 0.113120, 0.695508,
		0.500707, -0.775433, -0.384703,
		40.088955, 33.815247, 40.331585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.468628, 34.621227, 40.477921>,  <39.738461, 34.358051, 40.600876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.468628, 34.621227, 40.477921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.400867, 34.299198, 40.250530>,  <40.360210, 34.105980, 40.114094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.400867, 34.299198, 40.250530>,  <40.468628, 34.621227, 40.477921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.400867, 34.299198, 40.250530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506550, 0.423671, -0.750939,
		0.845406, -0.415171, 0.336039,
		-0.169399, -0.805069, -0.568479,
		40.350048, 34.057678, 40.079987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048149, 34.488903, 40.163036>,  <40.468628, 34.621227, 40.477921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.048149, 34.488903, 40.163036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.793468, 34.283829, 39.932640>,  <40.640659, 34.160786, 39.794403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.793468, 34.283829, 39.932640>,  <41.048149, 34.488903, 40.163036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.793468, 34.283829, 39.932640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397098, 0.422302, -0.814846,
		0.661001, -0.747538, -0.065295,
		-0.636702, -0.512686, -0.575989,
		40.602459, 34.130024, 39.759842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.444565, 34.351810, 39.600288>,  <41.048149, 34.488903, 40.163036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.444565, 34.351810, 39.600288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.069649, 34.290379, 39.475128>,  <40.844700, 34.253521, 39.400032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.069649, 34.290379, 39.475128>,  <41.444565, 34.351810, 39.600288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.069649, 34.290379, 39.475128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250161, 0.328715, -0.910695,
		0.242716, -0.931859, -0.269682,
		-0.937288, -0.153576, -0.312899,
		40.788464, 34.244305, 39.381260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.487137, 34.029339, 38.979935>,  <41.444565, 34.351810, 39.600288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.487137, 34.029339, 38.979935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.131844, 34.212570, 38.966038>,  <40.918667, 34.322510, 38.957699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.131844, 34.212570, 38.966038>,  <41.487137, 34.029339, 38.979935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.131844, 34.212570, 38.966038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294985, 0.510738, -0.807546,
		-0.352176, -0.727537, -0.588781,
		-0.888232, 0.458079, -0.034743,
		40.865376, 34.349995, 38.955616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.354275, 34.042595, 38.298698>,  <41.487137, 34.029339, 38.979935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.354275, 34.042595, 38.298698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.110535, 34.326393, 38.440296>,  <40.964291, 34.496670, 38.525253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.110535, 34.326393, 38.440296>,  <41.354275, 34.042595, 38.298698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.110535, 34.326393, 38.440296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156635, 0.545368, -0.823431,
		-0.777276, -0.446310, -0.443452,
		-0.609350, 0.709494, 0.353994,
		40.927731, 34.539242, 38.546494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.196697, 34.234032, 37.679382>,  <41.354275, 34.042595, 38.298698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.196697, 34.234032, 37.679382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.071918, 34.520344, 37.929291>,  <40.997051, 34.692131, 38.079235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.071918, 34.520344, 37.929291>,  <41.196697, 34.234032, 37.679382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.071918, 34.520344, 37.929291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089764, 0.676851, -0.730626,
		-0.945849, -0.171836, -0.275394,
		-0.311948, 0.715783, 0.624775,
		40.978333, 34.735077, 38.116722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699154, 34.723263, 37.295502>,  <41.196697, 34.234032, 37.679382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.699154, 34.723263, 37.295502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.819099, 34.945477, 37.605717>,  <40.891068, 35.078804, 37.791847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.819099, 34.945477, 37.605717>,  <40.699154, 34.723263, 37.295502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.819099, 34.945477, 37.605717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057442, 0.821990, -0.566598,
		-0.952251, 0.125354, 0.278396,
		0.299864, 0.555535, 0.775540,
		40.909058, 35.112137, 37.838379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238491, 35.274487, 37.270184>,  <40.699154, 34.723263, 37.295502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238491, 35.274487, 37.270184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.546925, 35.382080, 37.501034>,  <40.731983, 35.446636, 37.639545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.546925, 35.382080, 37.501034>,  <40.238491, 35.274487, 37.270184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.546925, 35.382080, 37.501034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007808, 0.902328, -0.430980,
		-0.636686, 0.336828, 0.693670,
		0.771083, 0.268983, 0.577130,
		40.778248, 35.462776, 37.674171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076481, 35.887066, 37.686951>,  <40.238491, 35.274487, 37.270184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.076481, 35.887066, 37.686951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472031, 35.880440, 37.627827>,  <40.709362, 35.876465, 37.592354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472031, 35.880440, 37.627827>,  <40.076481, 35.887066, 37.686951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.472031, 35.880440, 37.627827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034476, 0.941171, -0.336167,
		0.144681, 0.337524, 0.930132,
		0.988878, -0.016570, -0.147806,
		40.768692, 35.875469, 37.583485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.239941, 36.574306, 37.721401>,  <40.076481, 35.887066, 37.686951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.239941, 36.574306, 37.721401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.587910, 36.428768, 37.588223>,  <40.796692, 36.341446, 37.508316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.587910, 36.428768, 37.588223>,  <40.239941, 36.574306, 37.721401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.587910, 36.428768, 37.588223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182628, 0.864747, -0.467824,
		0.458128, 0.346165, 0.818711,
		0.869923, -0.363843, -0.332946,
		40.848885, 36.319614, 37.488338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.721497, 37.154030, 37.693302>,  <40.239941, 36.574306, 37.721401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.721497, 37.154030, 37.693302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.879456, 36.887409, 37.440395>,  <40.974232, 36.727436, 37.288651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.879456, 36.887409, 37.440395>,  <40.721497, 37.154030, 37.693302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.879456, 36.887409, 37.440395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120365, 0.719807, -0.683660,
		0.910808, 0.193870, 0.364477,
		0.394894, -0.666553, -0.632271,
		40.997925, 36.687443, 37.250713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.305172, 37.419395, 37.461601>,  <40.721497, 37.154030, 37.693302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.305172, 37.419395, 37.461601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.182770, 37.165131, 37.178108>,  <41.109329, 37.012573, 37.008015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.182770, 37.165131, 37.178108>,  <41.305172, 37.419395, 37.461601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.182770, 37.165131, 37.178108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101378, 0.761965, -0.639634,
		0.946616, -0.123882, -0.297608,
		-0.306006, -0.635659, -0.708730,
		41.090969, 36.974434, 36.965488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.874737, 37.467468, 36.939468>,  <41.305172, 37.419395, 37.461601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.874737, 37.467468, 36.939468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.546352, 37.327370, 36.759094>,  <41.349319, 37.243309, 36.650871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.546352, 37.327370, 36.759094>,  <41.874737, 37.467468, 36.939468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.546352, 37.327370, 36.759094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067349, 0.724843, -0.685614,
		0.566994, -0.593235, -0.571481,
		-0.820964, -0.350250, -0.450935,
		41.300064, 37.222294, 36.623814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.460651, 37.707565, 36.465897>,  <41.874737, 37.467468, 36.939468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.460651, 37.707565, 36.465897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.711716, 37.801079, 36.168877>,  <42.862354, 37.857185, 35.990665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.711716, 37.801079, 36.168877>,  <42.460651, 37.707565, 36.465897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.711716, 37.801079, 36.168877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369149, -0.929165, 0.019495,
		-0.685398, -0.286350, -0.669502,
		0.627661, 0.233785, -0.742554,
		42.900013, 37.871216, 35.946110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.328983, 37.302502, 35.822987>,  <42.460651, 37.707565, 36.465897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.328983, 37.302502, 35.822987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.711487, 37.411793, 35.864765>,  <42.940990, 37.477367, 35.889832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.711487, 37.411793, 35.864765>,  <42.328983, 37.302502, 35.822987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.711487, 37.411793, 35.864765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277315, -0.960413, -0.026533,
		0.093062, 0.054337, -0.994176,
		0.956261, 0.273231, 0.104446,
		42.998363, 37.493763, 35.896099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.785252, 36.895981, 35.323288>,  <42.328983, 37.302502, 35.822987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.785252, 36.895981, 35.323288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.030235, 37.010883, 35.617874>,  <43.177227, 37.079823, 35.794624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.030235, 37.010883, 35.617874>,  <42.785252, 36.895981, 35.323288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.030235, 37.010883, 35.617874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427633, -0.903947, -0.003052,
		0.664846, 0.316805, -0.676472,
		0.612462, 0.287253, 0.736462,
		43.213974, 37.097057, 35.838814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.500595, 36.848335, 35.068264>,  <42.785252, 36.895981, 35.323288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.500595, 36.848335, 35.068264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.467499, 36.798409, 35.463753>,  <43.447643, 36.768452, 35.701046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.467499, 36.798409, 35.463753>,  <43.500595, 36.848335, 35.068264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.467499, 36.798409, 35.463753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491356, -0.868261, -0.068495,
		0.867020, 0.480148, 0.133169,
		-0.082738, -0.124820, 0.988724,
		43.442677, 36.760963, 35.760368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.190754, 36.653439, 35.259148>,  <43.500595, 36.848335, 35.068264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.190754, 36.653439, 35.259148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.895065, 36.519650, 35.492962>,  <43.717651, 36.439377, 35.633251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.895065, 36.519650, 35.492962>,  <44.190754, 36.653439, 35.259148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.895065, 36.519650, 35.492962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198397, -0.937590, -0.285593,
		0.643579, -0.095145, 0.759443,
		-0.739219, -0.334473, 0.584537,
		43.673298, 36.419308, 35.668324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.430729, 35.938610, 35.494797>,  <44.190754, 36.653439, 35.259148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.430729, 35.938610, 35.494797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.034492, 35.975483, 35.535263>,  <43.796749, 35.997608, 35.559544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.034492, 35.975483, 35.535263>,  <44.430729, 35.938610, 35.494797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.034492, 35.975483, 35.535263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116161, -0.957154, -0.265261,
		0.072379, -0.274517, 0.958854,
		-0.990590, 0.092182, 0.101166,
		43.737316, 36.003136, 35.565613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.080746, 35.350220, 35.781845>,  <44.430729, 35.938610, 35.494797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.080746, 35.350220, 35.781845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.822361, 35.547089, 35.548435>,  <43.667332, 35.665211, 35.408390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.822361, 35.547089, 35.548435>,  <44.080746, 35.350220, 35.781845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.822361, 35.547089, 35.548435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223641, -0.852879, -0.471787,
		-0.729874, -0.174258, 0.660998,
		-0.645963, 0.492171, -0.583523,
		43.628571, 35.694740, 35.373379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.435455, 35.012657, 35.768238>,  <44.080746, 35.350220, 35.781845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.435455, 35.012657, 35.768238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.509167, 35.220478, 35.434505>,  <43.553394, 35.345173, 35.234268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.509167, 35.220478, 35.434505>,  <43.435455, 35.012657, 35.768238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.509167, 35.220478, 35.434505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311499, -0.774234, -0.550934,
		-0.932207, 0.361419, 0.019165,
		0.184280, 0.519555, -0.834328,
		43.564449, 35.376343, 35.184208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.847214, 34.897453, 35.317013>,  <43.435455, 35.012657, 35.768238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.847214, 34.897453, 35.317013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.170933, 34.956318, 35.089550>,  <43.365166, 34.991638, 34.953072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.170933, 34.956318, 35.089550>,  <42.847214, 34.897453, 35.317013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.170933, 34.956318, 35.089550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239787, -0.800999, -0.548547,
		-0.536220, 0.580297, -0.612963,
		0.809302, 0.147162, -0.568659,
		43.413723, 35.000465, 34.918953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.677216, 35.021767, 34.536930>,  <42.847214, 34.897453, 35.317013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.677216, 35.021767, 34.536930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.040295, 34.863369, 34.592457>,  <43.258144, 34.768330, 34.625771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.040295, 34.863369, 34.592457>,  <42.677216, 35.021767, 34.536930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.040295, 34.863369, 34.592457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195955, -0.692541, -0.694254,
		0.371051, 0.602975, -0.706217,
		0.907702, -0.395990, 0.138813,
		43.312607, 34.744572, 34.634102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.873703, 34.729809, 33.947308>,  <42.677216, 35.021767, 34.536930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.873703, 34.729809, 33.947308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.146549, 34.545280, 34.174252>,  <43.310257, 34.434563, 34.310417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.146549, 34.545280, 34.174252>,  <42.873703, 34.729809, 33.947308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.146549, 34.545280, 34.174252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107744, -0.830828, -0.546001,
		0.723260, 0.311307, -0.616427,
		0.682119, -0.461317, 0.567363,
		43.351185, 34.406887, 34.344460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.265205, 34.391151, 33.529194>,  <42.873703, 34.729809, 33.947308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.265205, 34.391151, 33.529194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.343525, 34.191566, 33.866879>,  <43.390514, 34.071815, 34.069489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.343525, 34.191566, 33.866879>,  <43.265205, 34.391151, 33.529194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.343525, 34.191566, 33.866879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011671, -0.859631, -0.510783,
		0.980576, 0.109861, -0.162488,
		0.195795, -0.498965, 0.844215,
		43.402264, 34.041878, 34.120144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.461681, 33.742226, 33.314972>,  <43.265205, 34.391151, 33.529194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.461681, 33.742226, 33.314972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.392262, 33.625702, 33.691273>,  <43.350609, 33.555790, 33.917053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.392262, 33.625702, 33.691273>,  <43.461681, 33.742226, 33.314972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.392262, 33.625702, 33.691273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107122, -0.943999, -0.312074,
		0.978981, -0.154937, 0.132628,
		-0.173553, -0.291307, 0.940755,
		43.340195, 33.538311, 33.973499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.903820, 33.167141, 33.455269>,  <43.461681, 33.742226, 33.314972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.903820, 33.167141, 33.455269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.599583, 33.153126, 33.714581>,  <43.417042, 33.144714, 33.870167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.599583, 33.153126, 33.714581>,  <43.903820, 33.167141, 33.455269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.599583, 33.153126, 33.714581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193878, -0.940719, -0.278314,
		0.619603, -0.337371, 0.708712,
		-0.760594, -0.035040, 0.648281,
		43.371403, 33.142612, 33.909065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.077030, 32.552235, 33.792622>,  <43.903820, 33.167141, 33.455269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.077030, 32.552235, 33.792622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.691055, 32.653400, 33.820713>,  <43.459469, 32.714100, 33.837566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.691055, 32.653400, 33.820713>,  <44.077030, 32.552235, 33.792622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.691055, 32.653400, 33.820713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261672, -0.905884, -0.333019,
		-0.020604, -0.339720, 0.940301,
		-0.964937, 0.252912, 0.070230,
		43.401573, 32.729275, 33.841782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.821850, 31.881603, 34.111622>,  <44.077030, 32.552235, 33.792622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.821850, 31.881603, 34.111622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.520912, 32.104786, 33.971527>,  <43.340351, 32.238693, 33.887470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.520912, 32.104786, 33.971527>,  <43.821850, 31.881603, 34.111622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.520912, 32.104786, 33.971527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407068, -0.811749, -0.418760,
		-0.517950, -0.172483, 0.837841,
		-0.752345, 0.557955, -0.350233,
		43.295208, 32.272171, 33.866459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.193512, 31.628525, 34.439125>,  <43.821850, 31.881603, 34.111622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.193512, 31.628525, 34.439125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.100765, 31.790459, 34.085323>,  <43.045116, 31.887619, 33.873043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.100765, 31.790459, 34.085323>,  <43.193512, 31.628525, 34.439125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.100765, 31.790459, 34.085323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552292, -0.803302, -0.222888,
		-0.800752, 0.436817, 0.409862,
		-0.231882, 0.404842, -0.884497,
		43.031204, 31.911909, 33.819973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.630661, 31.249823, 34.297523>,  <43.193512, 31.628525, 34.439125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.630661, 31.249823, 34.297523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.703499, 31.430126, 33.947975>,  <42.747200, 31.538309, 33.738243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.703499, 31.430126, 33.947975>,  <42.630661, 31.249823, 34.297523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.703499, 31.430126, 33.947975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644428, -0.616548, -0.452306,
		-0.742668, 0.645511, 0.178214,
		0.182091, 0.450760, -0.873876,
		42.758125, 31.565353, 33.685814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.010918, 31.180883, 33.898170>,  <42.630661, 31.249823, 34.297523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.010918, 31.180883, 33.898170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.291592, 31.249592, 33.621582>,  <42.459995, 31.290817, 33.455627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.291592, 31.249592, 33.621582>,  <42.010918, 31.180883, 33.898170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.291592, 31.249592, 33.621582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463801, -0.626603, -0.626305,
		-0.540860, 0.760173, -0.360009,
		0.701683, 0.171771, -0.691473,
		42.502098, 31.301123, 33.414139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.579170, 31.295681, 33.206997>,  <42.010918, 31.180883, 33.898170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.579170, 31.295681, 33.206997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.954525, 31.197384, 33.109802>,  <42.179737, 31.138405, 33.051487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.954525, 31.197384, 33.109802>,  <41.579170, 31.295681, 33.206997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.954525, 31.197384, 33.109802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345172, -0.701063, -0.623993,
		-0.017005, 0.669418, -0.742691,
		0.938385, -0.245745, -0.242986,
		42.236042, 31.123661, 33.036907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.607109, 31.355001, 32.479286>,  <41.579170, 31.295681, 33.206997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.607109, 31.355001, 32.479286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.925697, 31.134726, 32.579178>,  <42.116852, 31.002560, 32.639114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.925697, 31.134726, 32.579178>,  <41.607109, 31.355001, 32.479286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.925697, 31.134726, 32.579178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316030, -0.731223, -0.604515,
		0.515511, 0.402558, -0.756436,
		0.796475, -0.550691, 0.249733,
		42.164639, 30.969519, 32.654099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.899418, 31.180017, 31.855936>,  <41.607109, 31.355001, 32.479286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.899418, 31.180017, 31.855936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.037106, 30.919846, 32.126774>,  <42.119720, 30.763742, 32.289276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.037106, 30.919846, 32.126774>,  <41.899418, 31.180017, 31.855936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.037106, 30.919846, 32.126774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129207, -0.747120, -0.652011,
		0.929955, 0.136952, -0.341216,
		0.344223, -0.650428, 0.677093,
		42.140373, 30.724718, 32.329903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.544891, 30.800312, 31.603106>,  <41.899418, 31.180017, 31.855936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.544891, 30.800312, 31.603106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.410309, 30.567226, 31.899010>,  <42.329559, 30.427376, 32.076553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.410309, 30.567226, 31.899010>,  <42.544891, 30.800312, 31.603106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.410309, 30.567226, 31.899010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224036, -0.812534, -0.538142,
		0.914662, -0.015326, 0.403928,
		-0.336453, -0.582713, 0.739760,
		42.309372, 30.392412, 32.120937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.922058, 30.256855, 31.430445>,  <42.544891, 30.800312, 31.603106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.922058, 30.256855, 31.430445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.640221, 30.125717, 31.682182>,  <42.471119, 30.047033, 31.833225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.640221, 30.125717, 31.682182>,  <42.922058, 30.256855, 31.430445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.640221, 30.125717, 31.682182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132106, -0.931975, -0.337596,
		0.697210, -0.154727, 0.699970,
		-0.704589, -0.327846, 0.629342,
		42.428844, 30.027363, 31.870985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.143116, 29.598879, 31.741884>,  <42.922058, 30.256855, 31.430445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.143116, 29.598879, 31.741884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.745228, 29.598593, 31.782934>,  <42.506496, 29.598421, 31.807564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.745228, 29.598593, 31.782934>,  <43.143116, 29.598879, 31.741884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.745228, 29.598593, 31.782934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043161, -0.904338, -0.424629,
		0.093112, -0.426817, 0.899532,
		-0.994720, -0.000713, 0.102627,
		42.446812, 29.598379, 31.813723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.939869, 28.950159, 32.056934>,  <43.143116, 29.598879, 31.741884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.939869, 28.950159, 32.056934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.604309, 29.077684, 31.880478>,  <42.402973, 29.154200, 31.774605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.604309, 29.077684, 31.880478>,  <42.939869, 28.950159, 32.056934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.604309, 29.077684, 31.880478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091656, -0.881667, -0.462886,
		-0.536512, -0.347882, 0.768852,
		-0.838901, 0.318813, -0.441139,
		42.352638, 29.173328, 31.748137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.528996, 28.365904, 32.145760>,  <42.939869, 28.950159, 32.056934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.528996, 28.365904, 32.145760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.367264, 28.580395, 31.849388>,  <42.270226, 28.709089, 31.671566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.367264, 28.580395, 31.849388>,  <42.528996, 28.365904, 32.145760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.367264, 28.580395, 31.849388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156563, -0.838724, -0.521566,
		-0.901112, -0.094884, 0.423077,
		-0.404333, 0.536227, -0.740929,
		42.245964, 28.741262, 31.627110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.957836, 27.926916, 31.923594>,  <42.528996, 28.365904, 32.145760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.957836, 27.926916, 31.923594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.007092, 28.204494, 31.639826>,  <42.036644, 28.371042, 31.469564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.007092, 28.204494, 31.639826>,  <41.957836, 27.926916, 31.923594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.007092, 28.204494, 31.639826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059613, -0.708398, -0.703292,
		-0.990598, 0.128891, -0.045860,
		0.123135, 0.693945, -0.709421,
		42.044033, 28.412678, 31.427000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.341869, 27.823023, 31.551828>,  <41.957836, 27.926916, 31.923594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.341869, 27.823023, 31.551828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.611233, 28.003853, 31.317856>,  <41.772850, 28.112350, 31.177473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.611233, 28.003853, 31.317856>,  <41.341869, 27.823023, 31.551828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.611233, 28.003853, 31.317856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004500, -0.793722, -0.608264,
		-0.739253, 0.406980, -0.536537,
		0.673413, 0.452075, -0.584930,
		41.813255, 28.139475, 31.142376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.184898, 27.607998, 30.811302>,  <41.341869, 27.823023, 31.551828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.184898, 27.607998, 30.811302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.572620, 27.686037, 30.871149>,  <41.805252, 27.732861, 30.907057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.572620, 27.686037, 30.871149>,  <41.184898, 27.607998, 30.811302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.572620, 27.686037, 30.871149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245296, -0.808707, -0.534624,
		0.016692, 0.554914, -0.831740,
		0.969305, 0.195098, 0.149617,
		41.863411, 27.744566, 30.916035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.525272, 27.554316, 30.264750>,  <41.184898, 27.607998, 30.811302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.525272, 27.554316, 30.264750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.832623, 27.517065, 30.518023>,  <42.017033, 27.494715, 30.669987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.832623, 27.517065, 30.518023>,  <41.525272, 27.554316, 30.264750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.832623, 27.517065, 30.518023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381220, -0.728086, -0.569703,
		0.514066, 0.679130, -0.523944,
		0.768379, -0.093127, 0.633183,
		42.063137, 27.489126, 30.707977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.057636, 27.686424, 29.901144>,  <41.525272, 27.554316, 30.264750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.057636, 27.686424, 29.901144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.133842, 27.405148, 30.175144>,  <42.179565, 27.236382, 30.339544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.133842, 27.405148, 30.175144>,  <42.057636, 27.686424, 29.901144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.133842, 27.405148, 30.175144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317335, -0.616202, -0.720828,
		0.928980, 0.354702, 0.105752,
		0.190514, -0.703194, 0.684999,
		42.190998, 27.194189, 30.380644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.715225, 27.389307, 29.749950>,  <42.057636, 27.686424, 29.901144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.715225, 27.389307, 29.749950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.502445, 27.118809, 29.953802>,  <42.374779, 26.956511, 30.076113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.502445, 27.118809, 29.953802>,  <42.715225, 27.389307, 29.749950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.502445, 27.118809, 29.953802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236756, -0.696622, -0.677248,
		0.813004, -0.239604, 0.530673,
		-0.531950, -0.676245, 0.509629,
		42.342861, 26.915936, 30.106691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.199795, 26.975517, 30.208334>,  <42.715225, 27.389307, 29.749950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.199795, 26.975517, 30.208334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.262516, 26.734823, 29.895075>,  <43.300148, 26.590406, 29.707119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.262516, 26.734823, 29.895075>,  <43.199795, 26.975517, 30.208334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.262516, 26.734823, 29.895075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819184, 0.522182, -0.237199,
		0.551678, -0.604350, 0.574816,
		0.156807, -0.601737, -0.783150,
		43.309559, 26.554302, 29.660130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.905434, 26.731667, 30.176622>,  <43.199795, 26.975517, 30.208334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.905434, 26.731667, 30.176622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.757648, 26.722103, 29.805048>,  <43.668976, 26.716366, 29.582104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.757648, 26.722103, 29.805048>,  <43.905434, 26.731667, 30.176622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.757648, 26.722103, 29.805048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885488, 0.294090, -0.359752,
		0.281792, -0.955478, -0.087487,
		-0.369464, -0.023907, -0.928937,
		43.646809, 26.714930, 29.526367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.312447, 26.191990, 29.859144>,  <43.905434, 26.731667, 30.176622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.312447, 26.191990, 29.859144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.184208, 26.521595, 29.672287>,  <44.107265, 26.719358, 29.560173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.184208, 26.521595, 29.672287>,  <44.312447, 26.191990, 29.859144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.184208, 26.521595, 29.672287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924666, 0.165290, -0.343034,
		-0.205450, -0.541926, -0.814927,
		-0.320599, 0.824012, -0.467142,
		44.088028, 26.768799, 29.532145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.863609, 26.635885, 30.193821>,  <44.312447, 26.191990, 29.859144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.863609, 26.635885, 30.193821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.007771, 26.860571, 29.895939>,  <45.094269, 26.995382, 29.717211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.007771, 26.860571, 29.895939>,  <44.863609, 26.635885, 30.193821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.007771, 26.860571, 29.895939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647766, 0.423748, 0.633116,
		0.671198, -0.710572, -0.211140,
		0.360405, 0.561716, -0.744703,
		45.115891, 27.029085, 29.672527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.531864, 26.509438, 30.363274>,  <44.863609, 26.635885, 30.193821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.531864, 26.509438, 30.363274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.464161, 26.861826, 30.186531>,  <45.423538, 27.073259, 30.080484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.464161, 26.861826, 30.186531>,  <45.531864, 26.509438, 30.363274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.464161, 26.861826, 30.186531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704912, 0.421541, 0.570440,
		0.688804, -0.214918, -0.692358,
		-0.169260, 0.880973, -0.441858,
		45.413383, 27.126118, 30.053974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.207199, 26.840176, 30.392467>,  <45.531864, 26.509438, 30.363274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.207199, 26.840176, 30.392467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.938587, 27.122437, 30.302044>,  <45.777420, 27.291792, 30.247789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.938587, 27.122437, 30.302044>,  <46.207199, 26.840176, 30.392467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.938587, 27.122437, 30.302044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563648, 0.684505, 0.462335,
		0.480985, 0.183055, -0.857406,
		-0.671532, 0.705651, -0.226058,
		45.737129, 27.334131, 30.234226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.529999, 27.441843, 30.080700>,  <46.207199, 26.840176, 30.392467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.529999, 27.441843, 30.080700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.188610, 27.549849, 30.258995>,  <45.983776, 27.614653, 30.365973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.188610, 27.549849, 30.258995>,  <46.529999, 27.441843, 30.080700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.188610, 27.549849, 30.258995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474312, 0.756820, 0.449724,
		-0.215910, 0.595244, -0.773995,
		-0.853470, 0.270015, 0.445736,
		45.932568, 27.630854, 30.392715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.658493, 28.090685, 30.334545>,  <46.529999, 27.441843, 30.080700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.658493, 28.090685, 30.334545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.294323, 28.059736, 30.497091>,  <46.075821, 28.041168, 30.594620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.294323, 28.059736, 30.497091>,  <46.658493, 28.090685, 30.334545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.294323, 28.059736, 30.497091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126010, 0.883796, 0.450584,
		-0.394007, 0.461431, -0.794884,
		-0.910429, -0.077370, 0.406367,
		46.021194, 28.036526, 30.619001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.384739, 28.817957, 30.376757>,  <46.658493, 28.090685, 30.334545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.384739, 28.817957, 30.376757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.143871, 28.620935, 30.628082>,  <45.999352, 28.502722, 30.778877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.143871, 28.620935, 30.628082>,  <46.384739, 28.817957, 30.376757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.143871, 28.620935, 30.628082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023302, 0.797508, 0.602858,
		-0.798027, 0.348383, -0.491714,
		-0.602172, -0.492555, 0.628314,
		45.963219, 28.473169, 30.816576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.764530, 29.242544, 30.467670>,  <46.384739, 28.817957, 30.376757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.764530, 29.242544, 30.467670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.779671, 28.987833, 30.775717>,  <45.788757, 28.835007, 30.960545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.779671, 28.987833, 30.775717>,  <45.764530, 29.242544, 30.467670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.779671, 28.987833, 30.775717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242263, 0.741829, 0.625298,
		-0.969472, -0.210241, -0.126187,
		0.037854, -0.636780, 0.770116,
		45.791027, 28.796799, 31.006752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.133919, 29.264362, 30.821119>,  <45.764530, 29.242544, 30.467670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.133919, 29.264362, 30.821119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.406094, 29.151104, 31.091476>,  <45.569401, 29.083149, 31.253691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.406094, 29.151104, 31.091476>,  <45.133919, 29.264362, 30.821119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.406094, 29.151104, 31.091476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347681, 0.687174, 0.637894,
		-0.645072, -0.669044, 0.369137,
		0.680441, -0.283146, 0.675891,
		45.610226, 29.066160, 31.294243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.866051, 29.321581, 31.452414>,  <45.133919, 29.264362, 30.821119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.866051, 29.321581, 31.452414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.241966, 29.306843, 31.588318>,  <45.467514, 29.298000, 31.669861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.241966, 29.306843, 31.588318>,  <44.866051, 29.321581, 31.452414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.241966, 29.306843, 31.588318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222827, 0.687730, 0.690923,
		-0.259120, -0.725031, 0.638112,
		0.939790, -0.036843, 0.339761,
		45.523903, 29.295790, 31.690247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.907799, 29.413223, 32.235790>,  <44.866051, 29.321581, 31.452414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.907799, 29.413223, 32.235790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.279442, 29.515457, 32.128883>,  <45.502430, 29.576797, 32.064739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.279442, 29.515457, 32.128883>,  <44.907799, 29.413223, 32.235790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.279442, 29.515457, 32.128883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006215, 0.711838, 0.702317,
		0.369752, -0.654190, 0.659787,
		0.929109, 0.255583, -0.267269,
		45.558174, 29.592133, 32.048702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.142273, 29.626238, 32.818203>,  <44.907799, 29.413223, 32.235790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.142273, 29.626238, 32.818203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.389244, 29.793964, 32.551987>,  <45.537426, 29.894600, 32.392258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.389244, 29.793964, 32.551987>,  <45.142273, 29.626238, 32.818203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.389244, 29.793964, 32.551987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236629, 0.707883, 0.665514,
		0.750192, -0.568395, 0.337845,
		0.617430, 0.419319, -0.665546,
		45.574474, 29.919760, 32.352322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.767036, 29.801176, 33.175060>,  <45.142273, 29.626238, 32.818203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.767036, 29.801176, 33.175060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.786041, 30.016457, 32.838470>,  <45.797443, 30.145624, 32.636517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.786041, 30.016457, 32.838470>,  <45.767036, 29.801176, 33.175060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.786041, 30.016457, 32.838470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269388, 0.804309, 0.529639,
		0.961859, -0.251848, -0.106770,
		0.047513, 0.538201, -0.841476,
		45.800297, 30.177917, 32.586029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.255222, 30.231073, 33.386395>,  <45.767036, 29.801176, 33.175060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.255222, 30.231073, 33.386395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.102875, 30.395397, 33.055050>,  <46.011467, 30.493992, 32.856243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.102875, 30.395397, 33.055050>,  <46.255222, 30.231073, 33.386395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.102875, 30.395397, 33.055050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276068, 0.905541, 0.322152,
		0.882454, -0.105985, -0.458304,
		-0.380870, 0.410808, -0.828357,
		45.988613, 30.518639, 32.806541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.790150, 30.639719, 33.113613>,  <46.255222, 30.231073, 33.386395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.790150, 30.639719, 33.113613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.443356, 30.781473, 32.973469>,  <46.235279, 30.866526, 32.889381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.443356, 30.781473, 32.973469>,  <46.790150, 30.639719, 33.113613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.443356, 30.781473, 32.973469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243878, 0.914837, 0.321865,
		0.434588, 0.193605, -0.879574,
		-0.866981, 0.354388, -0.350361,
		46.183262, 30.887789, 32.868359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.899570, 31.245249, 32.750645>,  <46.790150, 30.639719, 33.113613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.899570, 31.245249, 32.750645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.514832, 31.286625, 32.851955>,  <46.283989, 31.311451, 32.912743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.514832, 31.286625, 32.851955>,  <46.899570, 31.245249, 32.750645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.514832, 31.286625, 32.851955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162279, 0.961037, 0.223773,
		-0.220258, 0.256337, -0.941158,
		-0.961848, 0.103442, 0.253274,
		46.226276, 31.317657, 32.927937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.655205, 31.848045, 32.352570>,  <46.899570, 31.245249, 32.750645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.655205, 31.848045, 32.352570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.413689, 31.772053, 32.662239>,  <46.268780, 31.726458, 32.848042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.413689, 31.772053, 32.662239>,  <46.655205, 31.848045, 32.352570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.413689, 31.772053, 32.662239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141372, 0.930269, 0.338546,
		-0.784505, 0.313858, -0.534832,
		-0.603793, -0.189981, 0.774171,
		46.232552, 31.715059, 32.894489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.038223, 32.304546, 32.333153>,  <46.655205, 31.848045, 32.352570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.038223, 32.304546, 32.333153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.086365, 32.183296, 32.711281>,  <46.115250, 32.110546, 32.938156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.086365, 32.183296, 32.711281>,  <46.038223, 32.304546, 32.333153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.086365, 32.183296, 32.711281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157036, 0.934438, 0.319633,
		-0.980232, -0.186919, 0.064864,
		0.120357, -0.303128, 0.945319,
		46.122471, 32.092358, 32.994877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.530464, 32.566654, 32.704353>,  <46.038223, 32.304546, 32.333153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.530464, 32.566654, 32.704353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.782261, 32.498905, 33.007683>,  <45.933338, 32.458256, 33.189678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.782261, 32.498905, 33.007683>,  <45.530464, 32.566654, 32.704353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.782261, 32.498905, 33.007683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212539, 0.901199, 0.377714,
		-0.747371, -0.398942, 0.531302,
		0.629494, -0.169370, 0.758321,
		45.971107, 32.448093, 33.235180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.206135, 32.665276, 33.277931>,  <45.530464, 32.566654, 32.704353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.206135, 32.665276, 33.277931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.580620, 32.725269, 33.405056>,  <45.805313, 32.761265, 33.481331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.580620, 32.725269, 33.405056>,  <45.206135, 32.665276, 33.277931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.580620, 32.725269, 33.405056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282373, 0.859415, 0.426229,
		-0.209206, -0.488784, 0.846950,
		0.936215, 0.149986, 0.317814,
		45.861485, 32.770264, 33.500401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.164383, 32.829273, 33.997223>,  <45.206135, 32.665276, 33.277931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.164383, 32.829273, 33.997223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.527637, 32.979637, 33.923485>,  <45.745590, 33.069855, 33.879242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.527637, 32.979637, 33.923485>,  <45.164383, 32.829273, 33.997223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.527637, 32.979637, 33.923485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157024, 0.713957, 0.682356,
		0.388121, -0.590724, 0.707395,
		0.908133, 0.375915, -0.184344,
		45.800079, 33.092411, 33.868183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.302311, 33.069729, 34.551556>,  <45.164383, 32.829273, 33.997223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.302311, 33.069729, 34.551556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.580769, 33.236729, 34.317947>,  <45.747845, 33.336929, 34.177784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.580769, 33.236729, 34.317947>,  <45.302311, 33.069729, 34.551556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.580769, 33.236729, 34.317947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122493, 0.870657, 0.476394,
		0.707374, -0.260101, 0.657244,
		0.696145, 0.417496, -0.584020,
		45.789612, 33.361977, 34.142742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.765480, 33.415203, 34.964218>,  <45.302311, 33.069729, 34.551556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.765480, 33.415203, 34.964218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.777721, 33.608337, 34.614147>,  <45.785069, 33.724220, 34.404106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.777721, 33.608337, 34.614147>,  <45.765480, 33.415203, 34.964218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.777721, 33.608337, 34.614147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253447, 0.850718, 0.460481,
		0.966865, 0.207716, 0.148412,
		0.030607, 0.482838, -0.875175,
		45.786903, 33.753189, 34.351593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.317318, 33.915855, 34.987904>,  <45.765480, 33.415203, 34.964218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.317318, 33.915855, 34.987904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.039494, 34.023434, 34.720993>,  <45.872799, 34.087978, 34.560848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.039494, 34.023434, 34.720993>,  <46.317318, 33.915855, 34.987904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.039494, 34.023434, 34.720993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125026, 0.868264, 0.480090,
		0.708484, 0.416879, -0.569440,
		-0.694564, 0.268942, -0.667272,
		45.831123, 34.104115, 34.520813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.506905, 34.460602, 34.622391>,  <46.317318, 33.915855, 34.987904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.506905, 34.460602, 34.622391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.107807, 34.484390, 34.634808>,  <45.868347, 34.498661, 34.642258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.107807, 34.484390, 34.634808>,  <46.506905, 34.460602, 34.622391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.107807, 34.484390, 34.634808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067006, 0.861789, 0.502822,
		0.003153, 0.503769, -0.863832,
		-0.997748, 0.059468, 0.031038,
		45.808483, 34.502232, 34.644119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.304062, 35.146744, 34.642086>,  <46.506905, 34.460602, 34.622391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.304062, 35.146744, 34.642086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.954559, 34.981144, 34.744183>,  <45.744858, 34.881783, 34.805439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.954559, 34.981144, 34.744183>,  <46.304062, 35.146744, 34.642086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.954559, 34.981144, 34.744183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180827, 0.763707, 0.619720,
		-0.451497, 0.495330, -0.742158,
		-0.873757, -0.414004, 0.255242,
		45.692432, 34.856941, 34.820755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.947872, 35.225010, 34.314190>,  <46.304062, 35.146744, 34.642086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.947872, 35.225010, 34.314190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.228386, 34.943596, 34.268185>,  <47.396694, 34.774746, 34.240582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.228386, 34.943596, 34.268185>,  <46.947872, 35.225010, 34.314190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.228386, 34.943596, 34.268185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485413, 0.353109, 0.799805,
		-0.522083, -0.616722, 0.589138,
		0.701288, -0.703539, -0.115012,
		47.438774, 34.732533, 34.233681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.174664, 34.807087, 34.915981>,  <46.947872, 35.225010, 34.314190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.174664, 34.807087, 34.915981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.476353, 34.875889, 34.662506>,  <47.657368, 34.917168, 34.510422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.476353, 34.875889, 34.662506>,  <47.174664, 34.807087, 34.915981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.476353, 34.875889, 34.662506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480229, 0.513676, 0.710998,
		0.447804, -0.840566, 0.304826,
		0.754223, 0.172002, -0.633691,
		47.702618, 34.927490, 34.472401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.848732, 34.689068, 35.148602>,  <47.174664, 34.807087, 34.915981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.848732, 34.689068, 35.148602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.816322, 34.975945, 34.871742>,  <47.796879, 35.148071, 34.705627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.816322, 34.975945, 34.871742>,  <47.848732, 34.689068, 35.148602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.816322, 34.975945, 34.871742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384837, 0.663088, 0.642039,
		0.919422, -0.214345, -0.329727,
		-0.081020, 0.717196, -0.692145,
		47.792015, 35.191105, 34.664097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.739468, 36.063076, 45.222408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.360451, 35.935532, 45.231232>,  <36.133041, 35.859005, 45.236526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.360451, 35.935532, 45.231232>,  <36.739468, 36.063076, 45.222408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360451, 35.935532, 45.231232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061433, 0.113956, -0.991585,
		0.313668, -0.940924, -0.127567,
		-0.947543, -0.318865, 0.022059,
		36.076187, 35.839870, 45.237850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658447, 35.481750, 44.695011>,  <36.739468, 36.063076, 45.222408>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.658447, 35.481750, 44.695011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.296528, 35.636433, 44.766346>,  <36.079376, 35.729240, 44.809147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.296528, 35.636433, 44.766346>,  <36.658447, 35.481750, 44.695011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296528, 35.636433, 44.766346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096748, 0.221168, -0.970425,
		-0.414709, -0.895291, -0.162699,
		-0.904796, 0.386703, 0.178338,
		36.025089, 35.752445, 44.819847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225925, 35.139122, 44.210278>,  <36.658447, 35.481750, 44.695011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225925, 35.139122, 44.210278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.015491, 35.468758, 44.294292>,  <35.889229, 35.666538, 44.344700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.015491, 35.468758, 44.294292>,  <36.225925, 35.139122, 44.210278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015491, 35.468758, 44.294292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162143, 0.145249, -0.976019,
		-0.834830, -0.547528, 0.057206,
		-0.526089, 0.824085, 0.210036,
		35.857666, 35.715984, 44.357304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674740, 35.104515, 43.764881>,  <36.225925, 35.139122, 44.210278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674740, 35.104515, 43.764881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.675850, 35.486916, 43.882217>,  <35.676517, 35.716358, 43.952618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.675850, 35.486916, 43.882217>,  <35.674740, 35.104515, 43.764881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675850, 35.486916, 43.882217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353158, 0.275377, -0.894118,
		-0.935560, -0.101113, 0.338384,
		0.002776, 0.956004, 0.293341,
		35.676682, 35.773716, 43.970219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987938, 35.379154, 43.590382>,  <35.674740, 35.104515, 43.764881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987938, 35.379154, 43.590382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.244892, 35.682720, 43.633064>,  <35.399063, 35.864861, 43.658676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.244892, 35.682720, 43.633064>,  <34.987938, 35.379154, 43.590382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244892, 35.682720, 43.633064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333454, 0.402148, -0.852693,
		-0.690037, 0.512173, 0.511397,
		0.642384, 0.758917, 0.106711,
		35.437607, 35.910397, 43.665077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661346, 36.064846, 43.342361>,  <34.987938, 35.379154, 43.590382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661346, 36.064846, 43.342361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.057014, 36.118954, 43.319546>,  <35.294415, 36.151421, 43.305859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.057014, 36.118954, 43.319546>,  <34.661346, 36.064846, 43.342361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057014, 36.118954, 43.319546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112136, 0.445448, -0.888258,
		-0.094750, 0.885030, 0.455791,
		0.989165, 0.135273, -0.057038,
		35.353764, 36.159534, 43.302433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725578, 36.724789, 42.971386>,  <34.661346, 36.064846, 43.342361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725578, 36.724789, 42.971386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.072563, 36.526867, 42.950676>,  <35.280754, 36.408115, 42.938251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.072563, 36.526867, 42.950676>,  <34.725578, 36.724789, 42.971386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072563, 36.526867, 42.950676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172494, 0.396743, -0.901577,
		0.466641, 0.773154, 0.429510,
		0.867463, -0.494801, -0.051772,
		35.332802, 36.378426, 42.935143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160740, 37.222454, 42.647346>,  <34.725578, 36.724789, 42.971386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160740, 37.222454, 42.647346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.358452, 36.877575, 42.602985>,  <35.477077, 36.670647, 42.576366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.358452, 36.877575, 42.602985>,  <35.160740, 37.222454, 42.647346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358452, 36.877575, 42.602985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307539, 0.292766, -0.905377,
		0.813086, 0.413400, 0.409868,
		0.494278, -0.862200, -0.110907,
		35.506737, 36.618916, 42.569714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662594, 37.441223, 42.181667>,  <35.160740, 37.222454, 42.647346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662594, 37.441223, 42.181667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.679710, 37.042629, 42.152885>,  <35.689980, 36.803471, 42.135616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.679710, 37.042629, 42.152885>,  <35.662594, 37.441223, 42.181667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679710, 37.042629, 42.152885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349376, 0.082401, -0.933352,
		0.936005, 0.014803, 0.351676,
		0.042795, -0.996489, -0.071956,
		35.692551, 36.743683, 42.131298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284805, 37.283634, 41.979992>,  <35.662594, 37.441223, 42.181667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284805, 37.283634, 41.979992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.070026, 36.973083, 41.847977>,  <35.941158, 36.786755, 41.768768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.070026, 36.973083, 41.847977>,  <36.284805, 37.283634, 41.979992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070026, 36.973083, 41.847977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337513, 0.160847, -0.927477,
		0.773157, -0.609401, 0.175670,
		-0.536949, -0.776376, -0.330041,
		35.908943, 36.740170, 41.748966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638634, 36.947620, 41.518204>,  <36.284805, 37.283634, 41.979992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638634, 36.947620, 41.518204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.292980, 36.785015, 41.399536>,  <36.085587, 36.687454, 41.328335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.292980, 36.785015, 41.399536>,  <36.638634, 36.947620, 41.518204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292980, 36.785015, 41.399536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209059, 0.246271, -0.946385,
		0.457776, -0.879830, -0.127828,
		-0.864138, -0.406509, -0.296674,
		36.033737, 36.663063, 41.310535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769119, 36.559669, 40.909817>,  <36.638634, 36.947620, 41.518204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769119, 36.559669, 40.909817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.380886, 36.655334, 40.898720>,  <36.147945, 36.712734, 40.892059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.380886, 36.655334, 40.898720>,  <36.769119, 36.559669, 40.909817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380886, 36.655334, 40.898720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082277, 0.221169, -0.971758,
		-0.226270, -0.945455, -0.234341,
		-0.970583, 0.239161, -0.027745,
		36.089710, 36.727081, 40.890396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640484, 36.414436, 40.217785>,  <36.769119, 36.559669, 40.909817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640484, 36.414436, 40.217785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.334255, 36.637581, 40.345966>,  <36.150520, 36.771469, 40.422874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.334255, 36.637581, 40.345966>,  <36.640484, 36.414436, 40.217785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334255, 36.637581, 40.345966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231053, 0.226464, -0.946218,
		-0.600434, -0.798437, -0.044478,
		-0.765568, 0.557864, 0.320458,
		36.104584, 36.804939, 40.442104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230556, 36.275188, 39.690357>,  <36.640484, 36.414436, 40.217785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.230556, 36.275188, 39.690357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.077248, 36.576885, 39.903610>,  <35.985264, 36.757904, 40.031563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.077248, 36.576885, 39.903610>,  <36.230556, 36.275188, 39.690357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077248, 36.576885, 39.903610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169096, 0.510154, -0.843297,
		-0.908026, -0.413360, -0.067987,
		-0.383269, 0.754239, 0.533130,
		35.962265, 36.803158, 40.063549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657513, 36.434071, 39.283318>,  <36.230556, 36.275188, 39.690357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657513, 36.434071, 39.283318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.752808, 36.740421, 39.522205>,  <35.809986, 36.924232, 39.665539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.752808, 36.740421, 39.522205>,  <35.657513, 36.434071, 39.283318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752808, 36.740421, 39.522205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070673, 0.626967, -0.775834,
		-0.968632, 0.142625, 0.203494,
		0.238237, 0.765879, 0.597220,
		35.824280, 36.970184, 39.701370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218056, 37.066479, 39.071442>,  <35.657513, 36.434071, 39.283318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218056, 37.066479, 39.071442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.563511, 37.161335, 39.249378>,  <35.770786, 37.218250, 39.356140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.563511, 37.161335, 39.249378>,  <35.218056, 37.066479, 39.071442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563511, 37.161335, 39.249378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183745, 0.673647, -0.715847,
		-0.469429, 0.699973, 0.538215,
		0.863640, 0.237145, 0.444846,
		35.822601, 37.232479, 39.382832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170460, 37.719093, 38.930168>,  <35.218056, 37.066479, 39.071442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170460, 37.719093, 38.930168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.556046, 37.678452, 39.028511>,  <35.787395, 37.654068, 39.087517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.556046, 37.678452, 39.028511>,  <35.170460, 37.719093, 38.930168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556046, 37.678452, 39.028511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262989, 0.503241, -0.823156,
		-0.040091, 0.858152, 0.511827,
		0.963966, -0.101604, 0.245860,
		35.845234, 37.647972, 39.102268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428745, 38.324318, 38.814445>,  <35.170460, 37.719093, 38.930168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428745, 38.324318, 38.814445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.753288, 38.092094, 38.787197>,  <35.948013, 37.952759, 38.770847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.753288, 38.092094, 38.787197>,  <35.428745, 38.324318, 38.814445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753288, 38.092094, 38.787197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361741, 0.590228, -0.721647,
		0.459169, 0.560873, 0.688901,
		0.811361, -0.580562, -0.068124,
		35.996696, 37.917927, 38.766762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046055, 38.757580, 38.831356>,  <35.428745, 38.324318, 38.814445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046055, 38.757580, 38.831356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.199429, 38.419750, 38.681866>,  <36.291451, 38.217052, 38.592171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.199429, 38.419750, 38.681866>,  <36.046055, 38.757580, 38.831356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199429, 38.419750, 38.681866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440189, 0.522852, -0.729972,
		0.811919, 0.115386, 0.572253,
		0.383432, -0.844578, -0.373722,
		36.314457, 38.166378, 38.569748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781864, 38.828022, 38.684929>,  <36.046055, 38.757580, 38.831356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781864, 38.828022, 38.684929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.665012, 38.536552, 38.437153>,  <36.594902, 38.361671, 38.288486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.665012, 38.536552, 38.437153>,  <36.781864, 38.828022, 38.684929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665012, 38.536552, 38.437153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414046, 0.487486, -0.768715,
		0.862107, -0.481036, 0.159296,
		-0.292125, -0.728671, -0.619437,
		36.577374, 38.317951, 38.251324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401958, 38.613644, 38.229893>,  <36.781864, 38.828022, 38.684929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401958, 38.613644, 38.229893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.089844, 38.455563, 38.036003>,  <36.902573, 38.360714, 37.919670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.089844, 38.455563, 38.036003>,  <37.401958, 38.613644, 38.229893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089844, 38.455563, 38.036003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288269, 0.460533, -0.839530,
		0.555022, -0.794807, -0.245422,
		-0.780290, -0.395210, -0.484724,
		36.855755, 38.337002, 37.890587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735970, 38.616562, 37.659328>,  <37.401958, 38.613644, 38.229893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735970, 38.616562, 37.659328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.355957, 38.531284, 37.568130>,  <37.127949, 38.480118, 37.513412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.355957, 38.531284, 37.568130>,  <37.735970, 38.616562, 37.659328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355957, 38.531284, 37.568130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159116, 0.297641, -0.941324,
		0.268539, -0.930570, -0.248849,
		-0.950036, -0.213186, -0.227997,
		37.070946, 38.467327, 37.499729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367844, 38.748146, 37.149014>,  <37.735970, 38.616562, 37.659328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367844, 38.748146, 37.149014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.741451, 38.887249, 37.181679>,  <38.965618, 38.970711, 37.201279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.741451, 38.887249, 37.181679>,  <38.367844, 38.748146, 37.149014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741451, 38.887249, 37.181679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123566, -0.529035, 0.839555,
		0.335160, -0.774073, -0.537102,
		0.934023, 0.347753, 0.081662,
		39.021660, 38.991573, 37.206177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658615, 38.136406, 37.300491>,  <38.367844, 38.748146, 37.149014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658615, 38.136406, 37.300491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.910191, 38.424393, 37.417858>,  <39.061134, 38.597183, 37.488277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.910191, 38.424393, 37.417858>,  <38.658615, 38.136406, 37.300491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910191, 38.424393, 37.417858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147861, -0.481282, 0.864005,
		0.763266, -0.500021, -0.409151,
		0.628938, 0.719963, 0.293412,
		39.098873, 38.640381, 37.505882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151871, 37.772999, 37.687988>,  <38.658615, 38.136406, 37.300491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.151871, 37.772999, 37.687988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.214657, 38.155872, 37.785282>,  <39.252327, 38.385597, 37.843658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.214657, 38.155872, 37.785282>,  <39.151871, 37.772999, 37.687988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214657, 38.155872, 37.785282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172384, -0.269060, 0.947571,
		0.972443, -0.106806, -0.207236,
		0.156965, 0.957183, 0.243234,
		39.261745, 38.443027, 37.858253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730770, 37.778309, 38.026409>,  <39.151871, 37.772999, 37.687988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.730770, 37.778309, 38.026409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.522533, 38.099804, 38.141640>,  <39.397591, 38.292702, 38.210777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.522533, 38.099804, 38.141640>,  <39.730770, 37.778309, 38.026409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.522533, 38.099804, 38.141640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089107, -0.284417, 0.954551,
		0.849143, 0.522601, 0.076447,
		-0.520591, 0.803738, 0.288078,
		39.366356, 38.340927, 38.228062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.015705, 37.939053, 38.743046>,  <39.730770, 37.778309, 38.026409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.015705, 37.939053, 38.743046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.673988, 38.146709, 38.753510>,  <39.468960, 38.271301, 38.759789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.673988, 38.146709, 38.753510>,  <40.015705, 37.939053, 38.743046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673988, 38.146709, 38.753510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038440, -0.113289, 0.992818,
		0.518374, 0.847149, 0.116738,
		-0.854290, 0.519138, 0.026161,
		39.417702, 38.302452, 38.761356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965500, 38.291859, 39.536930>,  <40.015705, 37.939053, 38.743046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965500, 38.291859, 39.536930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.598423, 38.277298, 39.378685>,  <39.378178, 38.268562, 39.283737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.598423, 38.277298, 39.378685>,  <39.965500, 38.291859, 39.536930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598423, 38.277298, 39.378685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375315, -0.247096, 0.893355,
		-0.130276, 0.968307, 0.213096,
		-0.917697, -0.036405, -0.395611,
		39.323112, 38.266376, 39.260002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559593, 38.648640, 39.899033>,  <39.965500, 38.291859, 39.536930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.559593, 38.648640, 39.899033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.285179, 38.428188, 39.709042>,  <39.120529, 38.295918, 39.595047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.285179, 38.428188, 39.709042>,  <39.559593, 38.648640, 39.899033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285179, 38.428188, 39.709042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449714, -0.191978, 0.872297,
		-0.571935, 0.812035, -0.116146,
		-0.686038, -0.551129, -0.474982,
		39.079369, 38.262848, 39.566547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924889, 38.899979, 40.128384>,  <39.559593, 38.648640, 39.899033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924889, 38.899979, 40.128384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.852531, 38.523296, 40.014915>,  <38.809116, 38.297287, 39.946835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.852531, 38.523296, 40.014915>,  <38.924889, 38.899979, 40.128384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852531, 38.523296, 40.014915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318004, -0.216928, 0.922938,
		-0.930672, 0.257165, -0.260224,
		-0.180897, -0.941705, -0.283669,
		38.798264, 38.240784, 39.929813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278412, 38.761497, 40.315224>,  <38.924889, 38.899979, 40.128384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.278412, 38.761497, 40.315224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.434101, 38.393627, 40.294426>,  <38.527515, 38.172905, 40.281948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.434101, 38.393627, 40.294426>,  <38.278412, 38.761497, 40.315224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434101, 38.393627, 40.294426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298154, -0.179194, 0.937546,
		-0.871556, -0.349411, -0.343951,
		0.389223, -0.919674, -0.051999,
		38.550869, 38.117725, 40.278828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763027, 38.381729, 40.608547>,  <38.278412, 38.761497, 40.315224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.763027, 38.381729, 40.608547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.087517, 38.147888, 40.613636>,  <38.282211, 38.007584, 40.616688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.087517, 38.147888, 40.613636>,  <37.763027, 38.381729, 40.608547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087517, 38.147888, 40.613636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279260, -0.368223, 0.886806,
		-0.513744, -0.722949, -0.461966,
		0.811222, -0.584600, 0.012719,
		38.330883, 37.972507, 40.617451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497242, 37.729603, 40.790955>,  <37.763027, 38.381729, 40.608547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497242, 37.729603, 40.790955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.886074, 37.714092, 40.883530>,  <38.119373, 37.704784, 40.939075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.886074, 37.714092, 40.883530>,  <37.497242, 37.729603, 40.790955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886074, 37.714092, 40.883530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230885, -0.334410, 0.913708,
		0.041964, -0.941629, -0.334026,
		0.972076, -0.038779, 0.231441,
		38.177696, 37.702457, 40.952961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697651, 36.990776, 41.055817>,  <37.497242, 37.729603, 40.790955>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697651, 36.990776, 41.055817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.983734, 37.236641, 41.188889>,  <38.155384, 37.384159, 41.268730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.983734, 37.236641, 41.188889>,  <37.697651, 36.990776, 41.055817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983734, 37.236641, 41.188889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029483, -0.502104, 0.864305,
		0.698294, -0.608345, -0.377228,
		0.715203, 0.614661, 0.332680,
		38.198296, 37.421040, 41.288692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077953, 36.520447, 41.205097>,  <37.697651, 36.990776, 41.055817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.077953, 36.520447, 41.205097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.199722, 36.838924, 41.414249>,  <38.272781, 37.030010, 41.539742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.199722, 36.838924, 41.414249>,  <38.077953, 36.520447, 41.205097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199722, 36.838924, 41.414249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078676, -0.568071, 0.819210,
		0.949283, -0.208246, -0.235573,
		0.304419, 0.796197, 0.522877,
		38.291050, 37.077782, 41.571114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648361, 36.389652, 41.656895>,  <38.077953, 36.520447, 41.205097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.648361, 36.389652, 41.656895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.504173, 36.727413, 41.815407>,  <38.417660, 36.930069, 41.910515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.504173, 36.727413, 41.815407>,  <38.648361, 36.389652, 41.656895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504173, 36.727413, 41.815407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070088, -0.399124, 0.914214,
		0.930133, 0.357325, 0.084691,
		-0.360474, 0.844405, 0.396282,
		38.396030, 36.980736, 41.934292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179932, 36.606190, 42.217957>,  <38.648361, 36.389652, 41.656895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.179932, 36.606190, 42.217957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.856415, 36.822266, 42.310947>,  <38.662304, 36.951912, 42.366741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.856415, 36.822266, 42.310947>,  <39.179932, 36.606190, 42.217957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.856415, 36.822266, 42.310947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044229, -0.338308, 0.939996,
		0.586425, 0.770546, 0.249730,
		-0.808795, 0.540191, 0.232473,
		38.613777, 36.984322, 42.380688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354225, 36.923664, 42.895531>,  <39.179932, 36.606190, 42.217957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.354225, 36.923664, 42.895531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.956875, 36.924698, 42.849567>,  <38.718464, 36.925320, 42.821991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.956875, 36.924698, 42.849567>,  <39.354225, 36.923664, 42.895531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956875, 36.924698, 42.849567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113234, -0.193438, 0.974556,
		-0.019708, 0.981109, 0.192449,
		-0.993373, 0.002585, -0.114907,
		38.658863, 36.925472, 42.815094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094341, 37.349617, 43.496971>,  <39.354225, 36.923664, 42.895531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094341, 37.349617, 43.496971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.788147, 37.114624, 43.391979>,  <38.604431, 36.973629, 43.328983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.788147, 37.114624, 43.391979>,  <39.094341, 37.349617, 43.496971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788147, 37.114624, 43.391979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101514, -0.292554, 0.950845,
		-0.635398, 0.754502, 0.164307,
		-0.765483, -0.587486, -0.262481,
		38.558502, 36.938377, 43.313236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616035, 37.440365, 43.991779>,  <39.094341, 37.349617, 43.496971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.616035, 37.440365, 43.991779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.501896, 37.089237, 43.837894>,  <38.433411, 36.878559, 43.745564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.501896, 37.089237, 43.837894>,  <38.616035, 37.440365, 43.991779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501896, 37.089237, 43.837894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141812, -0.358316, 0.922767,
		-0.947874, 0.317867, -0.022241,
		-0.285348, -0.877821, -0.384716,
		38.416290, 36.825890, 43.722481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.984241, 37.243958, 44.295494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.128712, 36.894588, 44.164841>,  <38.215393, 36.684967, 44.086449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.128712, 36.894588, 44.164841>,  <37.984241, 37.243958, 44.295494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128712, 36.894588, 44.164841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101503, -0.385017, 0.917311,
		-0.926956, -0.298159, -0.227714,
		0.361178, -0.873421, -0.326630,
		38.237064, 36.632561, 44.066853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494068, 36.704006, 44.569664>,  <37.984241, 37.243958, 44.295494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494068, 36.704006, 44.569664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.849846, 36.543182, 44.482731>,  <38.063313, 36.446690, 44.430573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.849846, 36.543182, 44.482731>,  <37.494068, 36.704006, 44.569664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.849846, 36.543182, 44.482731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001078, -0.477365, 0.878704,
		-0.457026, -0.781332, -0.425027,
		0.889453, -0.402049, -0.217326,
		38.116680, 36.422565, 44.417530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412560, 35.988274, 44.690723>,  <37.494068, 36.704006, 44.569664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412560, 35.988274, 44.690723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.811771, 36.011341, 44.700630>,  <38.051300, 36.025181, 44.706573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.811771, 36.011341, 44.700630>,  <37.412560, 35.988274, 44.690723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811771, 36.011341, 44.700630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013621, -0.584239, 0.811468,
		0.061263, -0.809531, -0.583872,
		0.998028, 0.057666, 0.024766,
		38.111179, 36.028641, 44.708061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673771, 35.382870, 44.883152>,  <37.412560, 35.988274, 44.690723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673771, 35.382870, 44.883152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.984718, 35.627071, 44.943794>,  <38.171288, 35.773594, 44.980179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.984718, 35.627071, 44.943794>,  <37.673771, 35.382870, 44.883152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.984718, 35.627071, 44.943794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136247, -0.398700, 0.906904,
		0.614118, -0.684339, -0.393115,
		0.777364, 0.610507, 0.151610,
		38.217926, 35.810223, 44.989277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.113811, 35.008743, 45.202908>,  <37.673771, 35.382870, 44.883152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.113811, 35.008743, 45.202908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.252197, 35.378529, 45.267002>,  <38.335228, 35.600399, 45.305458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.252197, 35.378529, 45.267002>,  <38.113811, 35.008743, 45.202908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252197, 35.378529, 45.267002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031494, -0.159243, 0.986737,
		0.937718, -0.346425, -0.025977,
		0.345967, 0.924463, 0.160235,
		38.355988, 35.655869, 45.315071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704868, 34.874828, 45.660278>,  <38.113811, 35.008743, 45.202908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.704868, 34.874828, 45.660278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.637135, 35.262989, 45.729156>,  <38.596497, 35.495884, 45.770481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.637135, 35.262989, 45.729156>,  <38.704868, 34.874828, 45.660278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637135, 35.262989, 45.729156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268167, -0.122756, 0.955519,
		0.948374, 0.207976, -0.239443,
		-0.169331, 0.970400, 0.172191,
		38.586334, 35.554108, 45.780815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250374, 35.225231, 46.106785>,  <38.704868, 34.874828, 45.660278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250374, 35.225231, 46.106785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.927448, 35.455536, 46.158554>,  <38.733692, 35.593719, 46.189617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.927448, 35.455536, 46.158554>,  <39.250374, 35.225231, 46.106785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927448, 35.455536, 46.158554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126827, -0.044909, 0.990908,
		0.576337, 0.816385, -0.036767,
		-0.807311, 0.575760, 0.129422,
		38.685253, 35.628265, 46.197380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.405315, 35.818863, 46.611782>,  <39.250374, 35.225231, 46.106785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.405315, 35.818863, 46.611782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.007050, 35.784447, 46.597645>,  <38.768089, 35.763798, 46.589165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.007050, 35.784447, 46.597645>,  <39.405315, 35.818863, 46.611782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007050, 35.784447, 46.597645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033263, -0.025455, 0.999122,
		-0.086866, 0.995966, 0.022483,
		-0.995665, -0.086042, -0.035340,
		38.708351, 35.758633, 46.587044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149181, 36.332367, 46.956215>,  <39.405315, 35.818863, 46.611782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149181, 36.332367, 46.956215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.862682, 36.053463, 46.967659>,  <38.690781, 35.886120, 46.974525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.862682, 36.053463, 46.967659>,  <39.149181, 36.332367, 46.956215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.862682, 36.053463, 46.967659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055870, 0.098159, 0.993601,
		-0.695603, 0.710069, -0.109262,
		-0.716250, -0.697257, 0.028608,
		38.647808, 35.844288, 46.976242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676571, 36.536808, 47.564007>,  <39.149181, 36.332367, 46.956215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676571, 36.536808, 47.564007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.632103, 36.143993, 47.503014>,  <38.605423, 35.908306, 47.466419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.632103, 36.143993, 47.503014>,  <38.676571, 36.536808, 47.564007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632103, 36.143993, 47.503014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010685, -0.152240, 0.988286,
		-0.993744, 0.111498, 0.006432,
		-0.111171, -0.982034, -0.152479,
		38.598751, 35.849384, 47.457272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098682, 36.376282, 47.979351>,  <38.676571, 36.536808, 47.564007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.098682, 36.376282, 47.979351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.294563, 36.029289, 47.944305>,  <38.412090, 35.821095, 47.923279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.294563, 36.029289, 47.944305>,  <38.098682, 36.376282, 47.979351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294563, 36.029289, 47.944305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044747, -0.125362, 0.991102,
		-0.870742, -0.481421, -0.100206,
		0.489700, -0.867478, -0.087616,
		38.441475, 35.769047, 47.918022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822193, 35.971127, 48.542942>,  <38.098682, 36.376282, 47.979351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.822193, 35.971127, 48.542942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.137409, 35.750668, 48.433231>,  <38.326538, 35.618393, 48.367405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.137409, 35.750668, 48.433231>,  <37.822193, 35.971127, 48.542942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137409, 35.750668, 48.433231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006512, -0.438036, 0.898934,
		-0.615587, -0.710183, -0.341602,
		0.788042, -0.551148, -0.274274,
		38.373821, 35.585323, 48.350948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659779, 35.304115, 48.745605>,  <37.822193, 35.971127, 48.542942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659779, 35.304115, 48.745605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.057865, 35.332455, 48.718681>,  <38.296715, 35.349457, 48.702526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.057865, 35.332455, 48.718681>,  <37.659779, 35.304115, 48.745605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057865, 35.332455, 48.718681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096146, -0.586646, 0.804116,
		0.017480, -0.806738, -0.590650,
		0.995214, 0.070845, -0.067310,
		38.356430, 35.353706, 48.698490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974960, 34.577072, 48.886311>,  <37.659779, 35.304115, 48.745605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974960, 34.577072, 48.886311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.264984, 34.843708, 48.955540>,  <38.438999, 35.003689, 48.997078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.264984, 34.843708, 48.955540>,  <37.974960, 34.577072, 48.886311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264984, 34.843708, 48.955540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294279, -0.527083, 0.797235,
		0.622652, -0.527107, -0.578328,
		0.725055, 0.666589, 0.173072,
		38.482502, 35.043686, 49.007462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545933, 34.224785, 48.961555>,  <37.974960, 34.577072, 48.886311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545933, 34.224785, 48.961555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.653408, 34.571449, 49.129700>,  <38.717892, 34.779449, 49.230587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.653408, 34.571449, 49.129700>,  <38.545933, 34.224785, 48.961555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653408, 34.571449, 49.129700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164516, -0.471287, 0.866501,
		0.949075, -0.163659, -0.269207,
		0.268684, 0.866663, 0.420362,
		38.734013, 34.831448, 49.255810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994350, 33.966370, 49.398487>,  <38.545933, 34.224785, 48.961555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994350, 33.966370, 49.398487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.957348, 34.334759, 49.549881>,  <38.935146, 34.555794, 49.640717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.957348, 34.334759, 49.549881>,  <38.994350, 33.966370, 49.398487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957348, 34.334759, 49.549881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180394, -0.358320, 0.916005,
		0.979235, 0.153013, -0.132991,
		-0.092507, 0.920975, 0.378482,
		38.929596, 34.611050, 49.663425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574627, 34.089573, 49.842407>,  <38.994350, 33.966370, 49.398487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574627, 34.089573, 49.842407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.276825, 34.333900, 49.950199>,  <39.098145, 34.480495, 50.014874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.276825, 34.333900, 49.950199>,  <39.574627, 34.089573, 49.842407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.276825, 34.333900, 49.950199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115324, -0.279907, 0.953075,
		0.657584, 0.740644, 0.137949,
		-0.744502, 0.610818, 0.269476,
		39.053474, 34.517147, 50.031040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869377, 34.288502, 50.440697>,  <39.574627, 34.089573, 49.842407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869377, 34.288502, 50.440697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.472366, 34.337215, 50.437534>,  <39.234161, 34.366444, 50.435638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.472366, 34.337215, 50.437534>,  <39.869377, 34.288502, 50.440697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472366, 34.337215, 50.437534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054166, -0.381552, 0.922759,
		0.109356, 0.916290, 0.385297,
		-0.992526, 0.121780, -0.007907,
		39.174610, 34.373749, 50.435162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744362, 34.521000, 51.198536>,  <39.869377, 34.288502, 50.440697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744362, 34.521000, 51.198536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.408108, 34.381695, 51.032623>,  <39.206356, 34.298111, 50.933075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.408108, 34.381695, 51.032623>,  <39.744362, 34.521000, 51.198536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408108, 34.381695, 51.032623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269598, -0.395142, 0.878168,
		-0.469729, 0.850045, 0.238281,
		-0.840638, -0.348261, -0.414780,
		39.155918, 34.277218, 50.908188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273506, 34.507721, 51.727924>,  <39.744362, 34.521000, 51.198536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.273506, 34.507721, 51.727924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.071976, 34.275406, 51.472160>,  <38.951057, 34.136017, 51.318703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.071976, 34.275406, 51.472160>,  <39.273506, 34.507721, 51.727924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071976, 34.275406, 51.472160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341835, -0.545739, 0.765061,
		-0.793287, 0.604032, 0.076426,
		-0.503830, -0.580787, -0.639407,
		38.920826, 34.101170, 51.280338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504036, 34.540359, 51.899029>,  <39.273506, 34.507721, 51.727924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504036, 34.540359, 51.899029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.596050, 34.196194, 51.717144>,  <38.651260, 33.989693, 51.608013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.596050, 34.196194, 51.717144>,  <38.504036, 34.540359, 51.899029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596050, 34.196194, 51.717144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416785, -0.509325, 0.752913,
		-0.879416, 0.016316, -0.475775,
		0.230040, -0.860419, -0.454709,
		38.665062, 33.938068, 51.580730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912933, 34.123020, 51.891792>,  <38.504036, 34.540359, 51.899029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912933, 34.123020, 51.891792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.203991, 33.854477, 51.835484>,  <38.378624, 33.693352, 51.801697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.203991, 33.854477, 51.835484>,  <37.912933, 34.123020, 51.891792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203991, 33.854477, 51.835484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464662, -0.633374, 0.618810,
		-0.504605, -0.384860, -0.772824,
		0.727642, -0.671357, -0.140774,
		38.422283, 33.653069, 51.793251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562195, 33.431690, 51.617290>,  <37.912933, 34.123020, 51.891792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562195, 33.431690, 51.617290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.906963, 33.359863, 51.806965>,  <38.113823, 33.316769, 51.920769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.906963, 33.359863, 51.806965>,  <37.562195, 33.431690, 51.617290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906963, 33.359863, 51.806965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485564, -0.561641, 0.669916,
		0.146027, -0.807660, -0.571280,
		0.861919, -0.179567, 0.474186,
		38.165539, 33.305992, 51.949219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508568, 32.768940, 51.839565>,  <37.562195, 33.431690, 51.617290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508568, 32.768940, 51.839565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.780968, 32.956875, 52.064240>,  <37.944408, 33.069637, 52.199043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.780968, 32.956875, 52.064240>,  <37.508568, 32.768940, 51.839565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780968, 32.956875, 52.064240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445601, -0.342797, 0.827001,
		0.581101, -0.813475, -0.024085,
		0.681001, 0.469838, 0.561685,
		37.985268, 33.097828, 52.232746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801918, 32.189575, 52.126545>,  <37.508568, 32.768940, 51.839565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801918, 32.189575, 52.126545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.407017, 32.194942, 52.189991>,  <37.170078, 32.198162, 52.228058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.407017, 32.194942, 52.189991>,  <37.801918, 32.189575, 52.126545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407017, 32.194942, 52.189991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158232, 0.025892, -0.987062,
		-0.017353, -0.999575, -0.023438,
		-0.987249, 0.013420, 0.158614,
		37.110844, 32.198967, 52.237576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422127, 31.747652, 51.683575>,  <37.801918, 32.189575, 52.126545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422127, 31.747652, 51.683575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.132244, 32.009758, 51.768829>,  <36.958313, 32.167023, 51.819981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.132244, 32.009758, 51.768829>,  <37.422127, 31.747652, 51.683575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132244, 32.009758, 51.768829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239671, 0.050294, -0.969551,
		-0.646033, -0.753722, 0.120600,
		-0.724706, 0.655266, 0.213137,
		36.914833, 32.206337, 51.832771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909473, 31.537159, 51.191307>,  <37.422127, 31.747652, 51.683575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909473, 31.537159, 51.191307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.829964, 31.913221, 51.302013>,  <36.782257, 32.138859, 51.368435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.829964, 31.913221, 51.302013>,  <36.909473, 31.537159, 51.191307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829964, 31.913221, 51.302013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365485, 0.190914, -0.911028,
		-0.909345, -0.282244, 0.305663,
		-0.198777, 0.940154, 0.276762,
		36.770332, 32.195267, 51.385040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238609, 31.660641, 50.976761>,  <36.909473, 31.537159, 51.191307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238609, 31.660641, 50.976761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.388378, 32.026505, 51.037689>,  <36.478241, 32.246025, 51.074245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.388378, 32.026505, 51.037689>,  <36.238609, 31.660641, 50.976761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388378, 32.026505, 51.037689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378287, 0.300654, -0.875503,
		-0.846585, 0.270187, 0.458576,
		0.374423, 0.914662, 0.152320,
		36.500706, 32.300903, 51.083385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714878, 32.087917, 50.713108>,  <36.238609, 31.660641, 50.976761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714878, 32.087917, 50.713108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.019157, 32.344963, 50.749722>,  <36.201725, 32.499191, 50.771690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.019157, 32.344963, 50.749722>,  <35.714878, 32.087917, 50.713108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019157, 32.344963, 50.749722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367083, 0.542200, -0.755824,
		-0.535337, 0.541353, 0.648345,
		0.760700, 0.642617, 0.091538,
		36.247368, 32.537746, 50.777184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454483, 32.841072, 50.643501>,  <35.714878, 32.087917, 50.713108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454483, 32.841072, 50.643501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.844059, 32.828106, 50.553711>,  <36.077805, 32.820328, 50.499836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.844059, 32.828106, 50.553711>,  <35.454483, 32.841072, 50.643501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844059, 32.828106, 50.553711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173858, 0.528866, -0.830707,
		0.145643, 0.848086, 0.509448,
		0.973941, -0.032415, -0.224472,
		36.136242, 32.818382, 50.486370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536716, 33.452541, 50.454300>,  <35.454483, 32.841072, 50.643501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536716, 33.452541, 50.454300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.855469, 33.258522, 50.310238>,  <36.046719, 33.142109, 50.223801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.855469, 33.258522, 50.310238>,  <35.536716, 33.452541, 50.454300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855469, 33.258522, 50.310238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057128, 0.532976, -0.844199,
		0.601433, 0.693299, 0.397008,
		0.796879, -0.485049, -0.360156,
		36.094532, 33.113007, 50.202190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748642, 33.922215, 50.034664>,  <35.536716, 33.452541, 50.454300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748642, 33.922215, 50.034664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.969402, 33.610645, 49.915543>,  <36.101860, 33.423702, 49.844070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.969402, 33.610645, 49.915543>,  <35.748642, 33.922215, 50.034664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969402, 33.610645, 49.915543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063775, 0.395494, -0.916252,
		0.831468, 0.486688, 0.267949,
		0.551901, -0.778922, -0.297802,
		36.134972, 33.376968, 49.826202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283333, 34.162220, 49.768898>,  <35.748642, 33.922215, 50.034664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283333, 34.162220, 49.768898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.247780, 33.803204, 49.596149>,  <36.226448, 33.587791, 49.492500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.247780, 33.803204, 49.596149>,  <36.283333, 34.162220, 49.768898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247780, 33.803204, 49.596149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120983, 0.420648, -0.899121,
		0.988667, -0.132168, 0.071198,
		-0.088886, -0.897545, -0.431870,
		36.221115, 33.533939, 49.466587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826801, 34.130569, 49.295521>,  <36.283333, 34.162220, 49.768898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826801, 34.130569, 49.295521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.568447, 33.856258, 49.161339>,  <36.413433, 33.691669, 49.080830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.568447, 33.856258, 49.161339>,  <36.826801, 34.130569, 49.295521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568447, 33.856258, 49.161339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066456, 0.387236, -0.919582,
		0.760533, -0.616242, -0.204537,
		-0.645890, -0.685780, -0.335459,
		36.374680, 33.650524, 49.060699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169186, 33.863266, 48.711861>,  <36.826801, 34.130569, 49.295521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169186, 33.863266, 48.711861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.774387, 33.807850, 48.679268>,  <36.537506, 33.774601, 48.659710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.774387, 33.807850, 48.679268>,  <37.169186, 33.863266, 48.711861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774387, 33.807850, 48.679268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025954, 0.362940, -0.931451,
		0.158620, -0.921456, -0.354626,
		-0.986998, -0.138543, -0.081485,
		36.478287, 33.766289, 48.654823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109989, 33.606236, 48.007526>,  <37.169186, 33.863266, 48.711861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109989, 33.606236, 48.007526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.732876, 33.699936, 48.102428>,  <36.506607, 33.756157, 48.159370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.732876, 33.699936, 48.102428>,  <37.109989, 33.606236, 48.007526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732876, 33.699936, 48.102428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099812, 0.480669, -0.871203,
		-0.318125, -0.845034, -0.429784,
		-0.942781, 0.234254, 0.237258,
		36.450043, 33.770210, 48.173607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663452, 33.369286, 47.473583>,  <37.109989, 33.606236, 48.007526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663452, 33.369286, 47.473583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.473793, 33.668518, 47.659298>,  <36.359997, 33.848057, 47.770725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.473793, 33.668518, 47.659298>,  <36.663452, 33.369286, 47.473583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473793, 33.668518, 47.659298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129572, 0.462298, -0.877206,
		-0.870860, -0.476082, -0.122266,
		-0.474146, 0.748082, 0.464284,
		36.331551, 33.892944, 47.798584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092964, 33.583199, 46.946163>,  <36.663452, 33.369286, 47.473583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092964, 33.583199, 46.946163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.122269, 33.888123, 47.203384>,  <36.139851, 34.071075, 47.357719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.122269, 33.888123, 47.203384>,  <36.092964, 33.583199, 46.946163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122269, 33.888123, 47.203384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056274, 0.646920, -0.760479,
		-0.995724, 0.019525, 0.090291,
		0.073260, 0.762308, 0.643055,
		36.144245, 34.116814, 47.396301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430290, 34.014000, 46.884892>,  <36.092964, 33.583199, 46.946163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430290, 34.014000, 46.884892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.703388, 34.271458, 47.023212>,  <35.867249, 34.425930, 47.106205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.703388, 34.271458, 47.023212>,  <35.430290, 34.014000, 46.884892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703388, 34.271458, 47.023212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216592, 0.630300, -0.745526,
		-0.697812, 0.434108, 0.569744,
		0.682749, 0.643640, 0.345806,
		35.908215, 34.464550, 47.126953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082756, 34.698383, 46.850834>,  <35.430290, 34.014000, 46.884892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082756, 34.698383, 46.850834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.471977, 34.788261, 46.871555>,  <35.705509, 34.842186, 46.883987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.471977, 34.788261, 46.871555>,  <35.082756, 34.698383, 46.850834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471977, 34.788261, 46.871555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141775, 0.760159, -0.634080,
		-0.181849, 0.609649, 0.771530,
		0.973052, 0.224691, 0.051801,
		35.763893, 34.855667, 46.887096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169216, 35.379223, 46.915421>,  <35.082756, 34.698383, 46.850834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169216, 35.379223, 46.915421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.534359, 35.279980, 46.785717>,  <35.753445, 35.220432, 46.707897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.534359, 35.279980, 46.785717>,  <35.169216, 35.379223, 46.915421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534359, 35.279980, 46.785717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099180, 0.635640, -0.765588,
		0.396059, 0.731028, 0.555639,
		0.912853, -0.248110, -0.324254,
		35.808216, 35.205547, 46.688442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453163, 36.088703, 46.824223>,  <35.169216, 35.379223, 46.915421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453163, 36.088703, 46.824223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.659492, 35.810738, 46.623814>,  <35.783291, 35.643959, 46.503571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.659492, 35.810738, 46.623814>,  <35.453163, 36.088703, 46.824223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659492, 35.810738, 46.623814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141356, 0.507772, -0.849815,
		0.844955, 0.509173, 0.163688,
		0.515819, -0.694918, -0.501019,
		35.814240, 35.602261, 46.473507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915161, 36.516766, 46.412079>,  <35.453163, 36.088703, 46.824223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915161, 36.516766, 46.412079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.863136, 36.153305, 46.253365>,  <35.831921, 35.935230, 46.158134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.863136, 36.153305, 46.253365>,  <35.915161, 36.516766, 46.412079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863136, 36.153305, 46.253365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230876, 0.416940, -0.879123,
		0.964251, -0.022730, -0.264013,
		-0.130060, -0.908650, -0.396787,
		35.824120, 35.880711, 46.134327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360100, 36.500359, 45.834106>,  <35.915161, 36.516766, 46.412079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360100, 36.500359, 45.834106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.135281, 36.176815, 45.764992>,  <36.000389, 35.982689, 45.723522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.135281, 36.176815, 45.764992>,  <36.360100, 36.500359, 45.834106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135281, 36.176815, 45.764992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069265, 0.254201, -0.964668,
		0.824201, -0.530219, -0.198899,
		-0.562045, -0.808857, -0.172787,
		35.966667, 35.934158, 45.713154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.699551, 28.602499, 30.375051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.417160, 28.448046, 30.612535>,  <42.247726, 28.355373, 30.755026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.417160, 28.448046, 30.612535>,  <42.699551, 28.602499, 30.375051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.417160, 28.448046, 30.612535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226614, 0.917389, 0.327175,
		-0.670997, 0.096436, -0.735162,
		-0.705981, -0.386131, 0.593712,
		42.205364, 28.332207, 30.790649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.162136, 29.136366, 30.352797>,  <42.699551, 28.602499, 30.375051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.162136, 29.136366, 30.352797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.114601, 28.912624, 30.680943>,  <42.086082, 28.778379, 30.877831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.114601, 28.912624, 30.680943>,  <42.162136, 29.136366, 30.352797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.114601, 28.912624, 30.680943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221525, 0.820330, 0.527242,
		-0.967887, -0.119077, -0.221395,
		-0.118835, -0.559355, 0.820365,
		42.078949, 28.744818, 30.927052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.619328, 29.374586, 30.678894>,  <42.162136, 29.136366, 30.352797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.619328, 29.374586, 30.678894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.814034, 29.190842, 30.976093>,  <41.930859, 29.080595, 31.154413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.814034, 29.190842, 30.976093>,  <41.619328, 29.374586, 30.678894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.814034, 29.190842, 30.976093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081479, 0.822984, 0.562190,
		-0.869725, -0.334193, 0.363171,
		0.486764, -0.459360, 0.743000,
		41.960064, 29.053034, 31.198994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.269474, 29.589811, 31.188810>,  <41.619328, 29.374586, 30.678894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.269474, 29.589811, 31.188810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.608280, 29.450079, 31.349073>,  <41.811565, 29.366240, 31.445230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.608280, 29.450079, 31.349073>,  <41.269474, 29.589811, 31.188810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.608280, 29.450079, 31.349073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057872, 0.688652, 0.722779,
		-0.528404, -0.635394, 0.563084,
		0.847018, -0.349333, 0.400658,
		41.862385, 29.345280, 31.469271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.168022, 29.453533, 31.907814>,  <41.269474, 29.589811, 31.188810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.168022, 29.453533, 31.907814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.560318, 29.517822, 31.863426>,  <41.795696, 29.556395, 31.836794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.560318, 29.517822, 31.863426>,  <41.168022, 29.453533, 31.907814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.560318, 29.517822, 31.863426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030836, 0.688466, 0.724613,
		0.192857, -0.707236, 0.680163,
		0.980742, 0.160721, -0.110967,
		41.854542, 29.566038, 31.830135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.365536, 29.644913, 32.497284>,  <41.168022, 29.453533, 31.907814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.365536, 29.644913, 32.497284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.705803, 29.754854, 32.318031>,  <41.909962, 29.820820, 32.210480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.705803, 29.754854, 32.318031>,  <41.365536, 29.644913, 32.497284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.705803, 29.754854, 32.318031> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232350, 0.568094, 0.789483,
		0.471575, -0.775709, 0.419395,
		0.850665, 0.274854, -0.448135,
		41.961002, 29.837311, 32.183590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.824356, 29.655441, 33.081131>,  <41.365536, 29.644913, 32.497284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.824356, 29.655441, 33.081131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.986694, 29.858984, 32.777458>,  <42.084099, 29.981110, 32.595257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.986694, 29.858984, 32.777458>,  <41.824356, 29.655441, 33.081131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.986694, 29.858984, 32.777458> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353006, 0.678923, 0.643778,
		0.843015, -0.529270, 0.095909,
		0.405847, 0.508858, -0.759178,
		42.108448, 30.011641, 32.549706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.612198, 29.789980, 33.135582>,  <41.824356, 29.655441, 33.081131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.612198, 29.789980, 33.135582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.478703, 30.081121, 32.895966>,  <42.398605, 30.255806, 32.752197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.478703, 30.081121, 32.895966>,  <42.612198, 29.789980, 33.135582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.478703, 30.081121, 32.895966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554674, 0.665447, 0.499517,
		0.762204, -0.165564, -0.625807,
		-0.333739, 0.727852, -0.599040,
		42.378582, 30.299477, 32.716255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.150562, 30.207298, 32.960316>,  <42.612198, 29.789980, 33.135582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.150562, 30.207298, 32.960316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.831120, 30.432373, 32.874889>,  <42.639454, 30.567417, 32.823635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.831120, 30.432373, 32.874889>,  <43.150562, 30.207298, 32.960316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.831120, 30.432373, 32.874889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360069, 0.731028, 0.579610,
		0.482262, 0.385982, -0.786411,
		-0.798607, 0.562686, -0.213567,
		42.591537, 30.601179, 32.810818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.482796, 30.802721, 32.914295>,  <43.150562, 30.207298, 32.960316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.482796, 30.802721, 32.914295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.098385, 30.912649, 32.926247>,  <42.867737, 30.978605, 32.933418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.098385, 30.912649, 32.926247>,  <43.482796, 30.802721, 32.914295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.098385, 30.912649, 32.926247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268896, 0.904250, 0.331704,
		0.064142, 0.326812, -0.942910,
		-0.961031, 0.274821, 0.029878,
		42.810074, 30.995096, 32.935211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.465599, 31.435394, 32.604244>,  <43.482796, 30.802721, 32.914295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.465599, 31.435394, 32.604244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.135353, 31.415001, 32.829014>,  <42.937206, 31.402765, 32.963875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.135353, 31.415001, 32.829014>,  <43.465599, 31.435394, 32.604244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.135353, 31.415001, 32.829014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162207, 0.932421, 0.322924,
		-0.540413, 0.357760, -0.761552,
		-0.825617, -0.050983, 0.561924,
		42.887669, 31.399706, 32.997589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.155674, 32.088154, 32.572071>,  <43.465599, 31.435394, 32.604244>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.155674, 32.088154, 32.572071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.002995, 31.934460, 32.908325>,  <42.911388, 31.842243, 33.110077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.002995, 31.934460, 32.908325>,  <43.155674, 32.088154, 32.572071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.002995, 31.934460, 32.908325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136695, 0.876029, 0.462480,
		-0.914124, 0.291437, -0.281853,
		-0.381695, -0.384236, 0.840637,
		42.888485, 31.819189, 33.160515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.630890, 32.597141, 32.794617>,  <43.155674, 32.088154, 32.572071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.630890, 32.597141, 32.794617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.755947, 32.394497, 33.116013>,  <42.830982, 32.272911, 33.308849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.755947, 32.394497, 33.116013>,  <42.630890, 32.597141, 32.794617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.755947, 32.394497, 33.116013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251150, 0.859880, 0.444444,
		-0.916066, 0.062844, 0.396072,
		0.312644, -0.506614, 0.803490,
		42.849739, 32.242512, 33.357059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.364719, 33.049202, 33.371861>,  <42.630890, 32.597141, 32.794617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.364719, 33.049202, 33.371861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.618889, 32.788738, 33.537857>,  <42.771393, 32.632458, 33.637455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.618889, 32.788738, 33.537857>,  <42.364719, 33.049202, 33.371861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.618889, 32.788738, 33.537857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242972, 0.678758, 0.693002,
		-0.732938, -0.339520, 0.589515,
		0.635426, -0.651163, 0.414994,
		42.809517, 32.593388, 33.662354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.161495, 32.988670, 34.137405>,  <42.364719, 33.049202, 33.371861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.161495, 32.988670, 34.137405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.543304, 32.894627, 34.064075>,  <42.772392, 32.838200, 34.020077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.543304, 32.894627, 34.064075>,  <42.161495, 32.988670, 34.137405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.543304, 32.894627, 34.064075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298070, 0.740382, 0.602485,
		-0.005921, -0.629730, 0.776792,
		0.954526, -0.235106, -0.183320,
		42.829662, 32.824097, 34.009079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.426949, 33.111618, 34.804008>,  <42.161495, 32.988670, 34.137405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.426949, 33.111618, 34.804008> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.717670, 33.110008, 34.529278>,  <42.892105, 33.109043, 34.364437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.717670, 33.110008, 34.529278>,  <42.426949, 33.111618, 34.804008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.717670, 33.110008, 34.529278> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384375, 0.831116, 0.401874,
		0.569217, -0.556085, 0.605608,
		0.726806, -0.004027, -0.686831,
		42.935711, 33.108799, 34.323227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.982800, 33.371761, 35.211750>,  <42.426949, 33.111618, 34.804008>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.982800, 33.371761, 35.211750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.103302, 33.417294, 34.833061>,  <43.175602, 33.444614, 34.605846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.103302, 33.417294, 34.833061>,  <42.982800, 33.371761, 35.211750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.103302, 33.417294, 34.833061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412313, 0.879683, 0.236973,
		0.859793, -0.461736, 0.218073,
		0.301254, 0.113834, -0.946725,
		43.193680, 33.451443, 34.549046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.666019, 33.403782, 35.272182>,  <42.982800, 33.371761, 35.211750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.666019, 33.403782, 35.272182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.591053, 33.596317, 34.929676>,  <43.546074, 33.711838, 34.724174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.591053, 33.596317, 34.929676>,  <43.666019, 33.403782, 35.272182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.591053, 33.596317, 34.929676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345027, 0.848424, 0.401414,
		0.919691, -0.220203, -0.325083,
		-0.187416, 0.481339, -0.856264,
		43.534828, 33.740719, 34.672798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.227631, 33.777122, 35.094685>,  <43.666019, 33.403782, 35.272182>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.227631, 33.777122, 35.094685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.950386, 33.952751, 34.866016>,  <43.784039, 34.058128, 34.728813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.950386, 33.952751, 34.866016>,  <44.227631, 33.777122, 35.094685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.950386, 33.952751, 34.866016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302477, 0.897034, 0.322239,
		0.654299, 0.050429, -0.754553,
		-0.693110, 0.439076, -0.571674,
		43.742455, 34.084473, 34.694515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.578445, 34.332916, 34.930004>,  <44.227631, 33.777122, 35.094685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.578445, 34.332916, 34.930004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.213539, 34.457150, 34.823189>,  <43.994595, 34.531689, 34.759098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.213539, 34.457150, 34.823189>,  <44.578445, 34.332916, 34.930004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.213539, 34.457150, 34.823189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283909, 0.949396, 0.134326,
		0.295248, 0.046726, -0.954277,
		-0.912263, 0.310587, -0.267042,
		43.939861, 34.550327, 34.743076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.608292, 34.844086, 34.448151>,  <44.578445, 34.332916, 34.930004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.608292, 34.844086, 34.448151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.249165, 34.903263, 34.614059>,  <44.033688, 34.938770, 34.713604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.249165, 34.903263, 34.614059>,  <44.608292, 34.844086, 34.448151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.249165, 34.903263, 34.614059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166507, 0.986002, 0.008727,
		-0.407677, 0.076899, -0.909882,
		-0.897816, 0.147944, 0.414775,
		43.979820, 34.947647, 34.738491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.996315, 34.464703, 33.904018>,  <44.608292, 34.844086, 34.448151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.996315, 34.464703, 33.904018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.351265, 34.593834, 34.035686>,  <45.564236, 34.671310, 34.114685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.351265, 34.593834, 34.035686>,  <44.996315, 34.464703, 33.904018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.351265, 34.593834, 34.035686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454362, -0.733482, -0.505529,
		0.078242, 0.598154, -0.797552,
		0.887374, 0.322824, 0.329168,
		45.617477, 34.690681, 34.134438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.459496, 34.661808, 33.282715>,  <44.996315, 34.464703, 33.904018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.459496, 34.661808, 33.282715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.637794, 34.537743, 33.618599>,  <45.744774, 34.463303, 33.820129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.637794, 34.537743, 33.618599>,  <45.459496, 34.661808, 33.282715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.637794, 34.537743, 33.618599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452119, -0.731607, -0.510234,
		0.772589, 0.607085, -0.185886,
		0.445751, -0.310159, 0.839707,
		45.771519, 34.444695, 33.870510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.044186, 34.255932, 32.995441>,  <45.459496, 34.661808, 33.282715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.044186, 34.255932, 32.995441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.003670, 34.155838, 33.380592>,  <45.979362, 34.095783, 33.611683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.003670, 34.155838, 33.380592>,  <46.044186, 34.255932, 32.995441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.003670, 34.155838, 33.380592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547054, -0.822399, -0.156178,
		0.830947, 0.510925, 0.220187,
		-0.101286, -0.250230, 0.962874,
		45.973286, 34.080769, 33.669453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.629993, 33.918575, 33.318611>,  <46.044186, 34.255932, 32.995441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.629993, 33.918575, 33.318611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.374172, 33.741112, 33.569733>,  <46.220680, 33.634636, 33.720406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.374172, 33.741112, 33.569733>,  <46.629993, 33.918575, 33.318611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.374172, 33.741112, 33.569733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325057, -0.896131, -0.302137,
		0.696638, 0.010838, 0.717341,
		-0.639557, -0.443657, 0.627802,
		46.182304, 33.608013, 33.758072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.023899, 33.325294, 33.512569>,  <46.629993, 33.918575, 33.318611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.023899, 33.325294, 33.512569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.645000, 33.244061, 33.611748>,  <46.417660, 33.195320, 33.671253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.645000, 33.244061, 33.611748>,  <47.023899, 33.325294, 33.512569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.645000, 33.244061, 33.611748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151163, -0.965264, -0.213109,
		0.282610, -0.164387, 0.945044,
		-0.947249, -0.203083, 0.247944,
		46.360825, 33.183136, 33.686131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.064331, 32.709797, 33.922924>,  <47.023899, 33.325294, 33.512569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.064331, 32.709797, 33.922924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.676765, 32.733814, 33.826927>,  <46.444225, 32.748226, 33.769329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.676765, 32.733814, 33.826927>,  <47.064331, 32.709797, 33.922924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.676765, 32.733814, 33.826927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026245, -0.989573, -0.141622,
		-0.245990, -0.130922, 0.960390,
		-0.968917, 0.060043, -0.239989,
		46.386089, 32.751827, 33.754929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.709881, 32.198143, 34.306644>,  <47.064331, 32.709797, 33.922924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.709881, 32.198143, 34.306644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.477505, 32.267334, 33.988503>,  <46.338078, 32.308849, 33.797619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.477505, 32.267334, 33.988503>,  <46.709881, 32.198143, 34.306644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.477505, 32.267334, 33.988503> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034033, -0.971141, -0.236065,
		-0.813234, -0.164209, 0.558289,
		-0.580942, 0.172976, -0.795353,
		46.303223, 32.319225, 33.749897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.149029, 31.710722, 34.258831>,  <46.709881, 32.198143, 34.306644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.149029, 31.710722, 34.258831> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.136024, 31.826509, 33.876179>,  <46.128223, 31.895983, 33.646587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.136024, 31.826509, 33.876179>,  <46.149029, 31.710722, 34.258831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.136024, 31.826509, 33.876179> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168713, -0.944995, -0.280215,
		-0.985129, 0.152287, 0.079560,
		-0.032511, 0.289471, -0.956635,
		46.126270, 31.913351, 33.589188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.433079, 31.443560, 33.943031>,  <46.149029, 31.710722, 34.258831>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.433079, 31.443560, 33.943031> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.667259, 31.539953, 33.633404>,  <45.807766, 31.597790, 33.447628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.667259, 31.539953, 33.633404>,  <45.433079, 31.443560, 33.943031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.667259, 31.539953, 33.633404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506274, -0.637060, -0.581241,
		-0.633194, 0.732177, -0.250964,
		0.585450, 0.240982, -0.774065,
		45.842896, 31.612247, 33.401184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.024864, 31.388756, 33.295044>,  <45.433079, 31.443560, 33.943031>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.024864, 31.388756, 33.295044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.408306, 31.366901, 33.183270>,  <45.638371, 31.353788, 33.116207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.408306, 31.366901, 33.183270>,  <45.024864, 31.388756, 33.295044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.408306, 31.366901, 33.183270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230524, -0.724957, -0.649073,
		-0.167115, 0.686624, -0.707546,
		0.958609, -0.054636, -0.279434,
		45.695889, 31.350510, 33.099438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.053581, 31.424620, 32.501369>,  <45.024864, 31.388756, 33.295044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.053581, 31.424620, 32.501369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.399059, 31.254183, 32.609051>,  <45.606346, 31.151920, 32.673660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.399059, 31.254183, 32.609051>,  <45.053581, 31.424620, 32.501369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.399059, 31.254183, 32.609051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070409, -0.630891, -0.772670,
		0.499065, 0.648400, -0.574901,
		0.863699, -0.426091, 0.269203,
		45.658169, 31.126356, 32.689812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.493263, 31.274210, 31.869225>,  <45.053581, 31.424620, 32.501369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.493263, 31.274210, 31.869225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.644939, 31.026834, 32.144543>,  <45.735943, 30.878410, 32.309734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.644939, 31.026834, 32.144543>,  <45.493263, 31.274210, 31.869225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.644939, 31.026834, 32.144543> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005612, -0.745370, -0.666627,
		0.925303, 0.248914, -0.286106,
		0.379188, -0.618438, 0.688296,
		45.758698, 30.841303, 32.351032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.865452, 30.854504, 31.445089>,  <45.493263, 31.274210, 31.869225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.865452, 30.854504, 31.445089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.852718, 30.657003, 31.792698>,  <45.845078, 30.538504, 32.001263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.852718, 30.657003, 31.792698>,  <45.865452, 30.854504, 31.445089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.852718, 30.657003, 31.792698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016481, -0.869602, -0.493479,
		0.999357, -0.001388, 0.035821,
		-0.031835, -0.493752, 0.869020,
		45.843166, 30.508879, 32.053406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.423298, 30.284004, 31.502728>,  <45.865452, 30.854504, 31.445089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.423298, 30.284004, 31.502728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.134434, 30.182505, 31.760126>,  <45.961113, 30.121605, 31.914566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.134434, 30.182505, 31.760126>,  <46.423298, 30.284004, 31.502728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.134434, 30.182505, 31.760126> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128166, -0.963262, -0.236009,
		0.679745, -0.087962, 0.728155,
		-0.722164, -0.253751, 0.643499,
		45.917786, 30.106379, 31.953176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.751266, 29.828218, 31.752821>,  <46.423298, 30.284004, 31.502728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.751266, 29.828218, 31.752821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.372677, 29.736828, 31.844027>,  <46.145523, 29.681993, 31.898750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.372677, 29.736828, 31.844027>,  <46.751266, 29.828218, 31.752821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.372677, 29.736828, 31.844027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161494, -0.946799, -0.278372,
		0.279487, -0.226648, 0.933016,
		-0.946471, -0.228478, 0.228015,
		46.088737, 29.668285, 31.912432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.738491, 29.159769, 32.061115>,  <46.751266, 29.828218, 31.752821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.738491, 29.159769, 32.061115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.365223, 29.211054, 31.926804>,  <46.141262, 29.241825, 31.846216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.365223, 29.211054, 31.926804>,  <46.738491, 29.159769, 32.061115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.365223, 29.211054, 31.926804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069173, -0.852686, -0.517825,
		-0.352709, -0.506447, 0.786834,
		-0.933173, 0.128214, -0.335782,
		46.085270, 29.249517, 31.826069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.559128, 28.477776, 32.000992>,  <46.738491, 29.159769, 32.061115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.559128, 28.477776, 32.000992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.252502, 28.665482, 31.825647>,  <46.068527, 28.778105, 31.720440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.252502, 28.665482, 31.825647>,  <46.559128, 28.477776, 32.000992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.252502, 28.665482, 31.825647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170066, -0.806616, -0.566082,
		-0.619235, -0.359389, 0.698131,
		-0.766567, 0.469266, -0.438365,
		46.022533, 28.806261, 31.694138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.029518, 28.074680, 32.001522>,  <46.559128, 28.477776, 32.000992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.029518, 28.074680, 32.001522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.971935, 28.317936, 31.689257>,  <45.937386, 28.463890, 31.501896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.971935, 28.317936, 31.689257>,  <46.029518, 28.074680, 32.001522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.971935, 28.317936, 31.689257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157979, -0.792890, -0.588530,
		-0.976893, 0.038608, 0.210214,
		-0.143955, 0.608140, -0.780668,
		45.928749, 28.500378, 31.455057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.414715, 27.739016, 31.744221>,  <46.029518, 28.074680, 32.001522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.414715, 27.739016, 31.744221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.577374, 27.963770, 31.456074>,  <45.674969, 28.098621, 31.283186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.577374, 27.963770, 31.456074>,  <45.414715, 27.739016, 31.744221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.577374, 27.963770, 31.456074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257888, -0.685838, -0.680529,
		-0.876433, 0.462506, -0.133988,
		0.406643, 0.561885, -0.720366,
		45.699368, 28.132336, 31.239964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.885487, 27.845911, 31.264826>,  <45.414715, 27.739016, 31.744221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.885487, 27.845911, 31.264826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.222813, 27.913340, 31.060707>,  <45.425209, 27.953796, 30.938236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.222813, 27.913340, 31.060707>,  <44.885487, 27.845911, 31.264826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.222813, 27.913340, 31.060707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289255, -0.657888, -0.695353,
		-0.452935, 0.734007, -0.506046,
		0.843316, 0.168573, -0.510296,
		45.475807, 27.963911, 30.907618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.761566, 28.119463, 30.593262>,  <44.885487, 27.845911, 31.264826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.761566, 28.119463, 30.593262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.109974, 27.923269, 30.582308>,  <45.319019, 27.805553, 30.575735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.109974, 27.923269, 30.582308>,  <44.761566, 28.119463, 30.593262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.109974, 27.923269, 30.582308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396743, -0.669485, -0.628000,
		0.289690, 0.557865, -0.777731,
		0.871019, -0.490485, -0.027386,
		45.371281, 27.776123, 30.574093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.107414, 38.154610, 41.799747> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828480, 37.919773, 41.635284>,  <38.661118, 37.778873, 41.536606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828480, 37.919773, 41.635284>,  <39.107414, 38.154610, 41.799747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828480, 37.919773, 41.635284> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118852, 0.470985, -0.874098,
		0.706820, -0.658408, -0.258659,
		-0.697338, -0.587087, -0.411154,
		38.619278, 37.743649, 41.511940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443600, 37.686520, 41.246819>,  <39.107414, 38.154610, 41.799747>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.443600, 37.686520, 41.246819> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053761, 37.678635, 41.157585>,  <38.819855, 37.673904, 41.104046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053761, 37.678635, 41.157585>,  <39.443600, 37.686520, 41.246819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053761, 37.678635, 41.157585> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217661, 0.151012, -0.964271,
		0.052693, -0.988335, -0.142887,
		-0.974601, -0.019709, -0.223079,
		38.761379, 37.672722, 41.090660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331600, 37.184509, 40.720688>,  <39.443600, 37.686520, 41.246819>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331600, 37.184509, 40.720688> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025005, 37.438057, 40.679310>,  <38.841049, 37.590187, 40.654484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025005, 37.438057, 40.679310>,  <39.331600, 37.184509, 40.720688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025005, 37.438057, 40.679310> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214173, 0.100415, -0.971621,
		-0.605492, -0.766894, -0.212725,
		-0.766491, 0.633869, -0.103448,
		38.795059, 37.628216, 40.648277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997135, 36.938507, 40.091240>,  <39.331600, 37.184509, 40.720688>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997135, 36.938507, 40.091240> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865967, 37.310459, 40.157932>,  <38.787266, 37.533630, 40.197948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865967, 37.310459, 40.157932>,  <38.997135, 36.938507, 40.091240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.865967, 37.310459, 40.157932> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048240, 0.159783, -0.985973,
		-0.943474, -0.331360, -0.007538,
		-0.327916, 0.929877, 0.166736,
		38.767593, 37.589420, 40.207954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628502, 37.025707, 39.522518>,  <38.997135, 36.938507, 40.091240>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628502, 37.025707, 39.522518> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677170, 37.404778, 39.640572>,  <38.706371, 37.632221, 39.711403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677170, 37.404778, 39.640572>,  <38.628502, 37.025707, 39.522518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677170, 37.404778, 39.640572> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030948, 0.293576, -0.955435,
		-0.992089, 0.125377, 0.006389,
		0.121665, 0.947678, 0.295133,
		38.713669, 37.689079, 39.729111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217747, 37.410625, 38.977436>,  <38.628502, 37.025707, 39.522518>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217747, 37.410625, 38.977436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471500, 37.663208, 39.155788>,  <38.623753, 37.814758, 39.262798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471500, 37.663208, 39.155788>,  <38.217747, 37.410625, 38.977436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471500, 37.663208, 39.155788> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120394, 0.489057, -0.863903,
		-0.763582, 0.601731, 0.234228,
		0.634388, 0.631461, 0.445880,
		38.661816, 37.852646, 39.289551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102894, 38.215881, 38.651211>,  <38.217747, 37.410625, 38.977436>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102894, 38.215881, 38.651211> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456249, 38.240314, 38.837067>,  <38.668262, 38.254974, 38.948582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456249, 38.240314, 38.837067>,  <38.102894, 38.215881, 38.651211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456249, 38.240314, 38.837067> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319566, 0.646685, -0.692587,
		-0.342782, 0.760307, 0.551755,
		0.883390, 0.061084, 0.464640,
		38.721268, 38.258640, 38.976460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308693, 38.829937, 38.712410>,  <38.102894, 38.215881, 38.651211>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308693, 38.829937, 38.712410> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674236, 38.667568, 38.716141>,  <38.893562, 38.570148, 38.718380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674236, 38.667568, 38.716141>,  <38.308693, 38.829937, 38.712410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.674236, 38.667568, 38.716141> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281700, 0.617318, -0.734550,
		0.292413, 0.673903, 0.678491,
		0.913860, -0.405923, 0.009327,
		38.948395, 38.545792, 38.718937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750607, 39.395123, 38.676460>,  <38.308693, 38.829937, 38.712410>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750607, 39.395123, 38.676460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932484, 39.074657, 38.520821>,  <39.041611, 38.882378, 38.427437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932484, 39.074657, 38.520821>,  <38.750607, 39.395123, 38.676460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932484, 39.074657, 38.520821> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122540, 0.488985, -0.863642,
		0.882179, 0.345010, 0.320512,
		0.454691, -0.801162, -0.389095,
		39.068890, 38.834309, 38.404091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347370, 39.659763, 38.210468>,  <38.750607, 39.395123, 38.676460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347370, 39.659763, 38.210468> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333828, 39.273060, 38.109097>,  <39.325703, 39.041039, 38.048275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333828, 39.273060, 38.109097>,  <39.347370, 39.659763, 38.210468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333828, 39.273060, 38.109097> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268723, 0.235427, -0.934003,
		0.962622, -0.099721, 0.251821,
		-0.033854, -0.966762, -0.253425,
		39.323673, 38.983032, 38.033070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.991177, 39.585609, 37.951500>,  <39.347370, 39.659763, 38.210468>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.991177, 39.585609, 37.951500> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726536, 39.323975, 37.804829>,  <39.567749, 39.166996, 37.716827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726536, 39.323975, 37.804829>,  <39.991177, 39.585609, 37.951500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726536, 39.323975, 37.804829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220412, 0.297760, -0.928847,
		0.716727, -0.695350, -0.052832,
		-0.661605, -0.654085, -0.366676,
		39.528053, 39.127750, 37.694824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.246792, 39.416370, 37.347660>,  <39.991177, 39.585609, 37.951500>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.246792, 39.416370, 37.347660> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873672, 39.286419, 37.285244>,  <39.649803, 39.208447, 37.247795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873672, 39.286419, 37.285244>,  <40.246792, 39.416370, 37.347660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873672, 39.286419, 37.285244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097794, 0.188547, -0.977183,
		0.346890, -0.926769, -0.144104,
		-0.932794, -0.324882, -0.156037,
		39.593834, 39.188953, 37.238434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.179939, 38.843315, 36.780941>,  <40.246792, 39.416370, 37.347660>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.179939, 38.843315, 36.780941> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.842251, 39.054062, 36.820343>,  <39.639637, 39.180511, 36.843983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.842251, 39.054062, 36.820343>,  <40.179939, 38.843315, 36.780941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.842251, 39.054062, 36.820343> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041297, 0.119294, -0.992000,
		-0.534404, -0.841534, -0.078952,
		-0.844220, 0.526868, 0.098504,
		39.588985, 39.212124, 36.849895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480774, 38.104607, 36.486492>,  <40.179939, 38.843315, 36.780941>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480774, 38.104607, 36.486492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695087, 37.897038, 36.220062>,  <40.823677, 37.772495, 36.060204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695087, 37.897038, 36.220062>,  <40.480774, 38.104607, 36.486492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695087, 37.897038, 36.220062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172645, -0.839515, 0.515178,
		-0.826513, -0.161033, -0.539393,
		0.535789, -0.518925, -0.666068,
		40.855824, 37.741360, 36.020241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104645, 37.480785, 36.336308>,  <40.480774, 38.104607, 36.486492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.104645, 37.480785, 36.336308> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.494144, 37.437443, 36.256229>,  <40.727844, 37.411438, 36.208183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.494144, 37.437443, 36.256229>,  <40.104645, 37.480785, 36.336308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.494144, 37.437443, 36.256229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019381, -0.836797, 0.547170,
		-0.226813, -0.536684, -0.812727,
		0.973745, -0.108354, -0.200198,
		40.786266, 37.404938, 36.196171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242748, 36.737030, 36.058533>,  <40.104645, 37.480785, 36.336308>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.242748, 36.737030, 36.058533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.569221, 36.900036, 36.222370>,  <40.765106, 36.997841, 36.320675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.569221, 36.900036, 36.222370>,  <40.242748, 36.737030, 36.058533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.569221, 36.900036, 36.222370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114320, -0.808788, 0.576882,
		0.566367, -0.424019, -0.706709,
		0.816186, 0.407518, 0.409596,
		40.814079, 37.022293, 36.345249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.778057, 36.234997, 36.005531>,  <40.242748, 36.737030, 36.058533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.778057, 36.234997, 36.005531> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.916615, 36.457424, 36.307739>,  <40.999748, 36.590881, 36.489063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.916615, 36.457424, 36.307739>,  <40.778057, 36.234997, 36.005531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.916615, 36.457424, 36.307739> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364158, -0.821925, 0.437982,
		0.864525, 0.123415, -0.487202,
		0.346390, 0.556065, 0.755517,
		41.020531, 36.624245, 36.534393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.400078, 35.894337, 36.281406>,  <40.778057, 36.234997, 36.005531>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.400078, 35.894337, 36.281406> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272221, 36.123962, 36.582943>,  <41.195507, 36.261738, 36.763863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272221, 36.123962, 36.582943>,  <41.400078, 35.894337, 36.281406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272221, 36.123962, 36.582943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258832, -0.712419, 0.652277,
		0.911500, 0.403615, 0.079135,
		-0.319646, 0.574068, 0.753839,
		41.176327, 36.296185, 36.809093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.877190, 35.781887, 36.845306>,  <41.400078, 35.894337, 36.281406>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.877190, 35.781887, 36.845306> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.569977, 35.943707, 37.043888>,  <41.385651, 36.040798, 37.163036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.569977, 35.943707, 37.043888>,  <41.877190, 35.781887, 36.845306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.569977, 35.943707, 37.043888> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087906, -0.701281, 0.707444,
		0.634348, 0.586982, 0.503045,
		-0.768033, 0.404545, 0.496456,
		41.339565, 36.065071, 37.192825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.068596, 35.852417, 37.559765>,  <41.877190, 35.781887, 36.845306>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.068596, 35.852417, 37.559765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.668617, 35.850021, 37.556396>,  <41.428631, 35.848583, 37.554375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.668617, 35.850021, 37.556396>,  <42.068596, 35.852417, 37.559765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.668617, 35.850021, 37.556396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001750, -0.705136, 0.709070,
		-0.010187, 0.709047, 0.705088,
		-0.999947, -0.005989, -0.008424,
		41.368633, 35.848225, 37.553867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.916592, 35.785133, 38.308754>,  <42.068596, 35.852417, 37.559765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.916592, 35.785133, 38.308754> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.558964, 35.728821, 38.138660>,  <41.344387, 35.695034, 38.036606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.558964, 35.728821, 38.138660>,  <41.916592, 35.785133, 38.308754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.558964, 35.728821, 38.138660> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246626, -0.637752, 0.729691,
		-0.373919, 0.757267, 0.535474,
		-0.894070, -0.140783, -0.425229,
		41.290745, 35.686584, 38.011093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.393234, 35.816605, 38.817093>,  <41.916592, 35.785133, 38.308754>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.393234, 35.816605, 38.817093> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.204132, 35.618301, 38.525688>,  <41.090672, 35.499321, 38.350845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.204132, 35.618301, 38.525688>,  <41.393234, 35.816605, 38.817093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.204132, 35.618301, 38.525688> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363248, -0.643580, 0.673688,
		-0.802839, 0.583121, 0.124175,
		-0.472758, -0.495757, -0.728509,
		41.062305, 35.469574, 38.307137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704769, 35.665699, 39.016560>,  <41.393234, 35.816605, 38.817093>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.704769, 35.665699, 39.016560> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.781391, 35.391735, 38.735359>,  <40.827366, 35.227356, 38.566639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.781391, 35.391735, 38.735359>,  <40.704769, 35.665699, 39.016560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.781391, 35.391735, 38.735359> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253797, -0.726470, 0.638615,
		-0.948100, 0.056089, -0.312986,
		0.191555, -0.684905, -0.703001,
		40.838860, 35.186264, 38.524460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049004, 35.370995, 38.982906>,  <40.704769, 35.665699, 39.016560>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.049004, 35.370995, 38.982906> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.302025, 35.101585, 38.829941>,  <40.453838, 34.939941, 38.738163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.302025, 35.101585, 38.829941>,  <40.049004, 35.370995, 38.982906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302025, 35.101585, 38.829941> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231542, -0.635609, 0.736471,
		-0.739095, -0.377315, -0.558007,
		0.632556, -0.673524, -0.382411,
		40.491791, 34.899529, 38.715218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607300, 34.821373, 38.950081>,  <40.049004, 35.370995, 38.982906>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607300, 34.821373, 38.950081> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988895, 34.702141, 38.963108>,  <40.217854, 34.630600, 38.970924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988895, 34.702141, 38.963108>,  <39.607300, 34.821373, 38.950081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.988895, 34.702141, 38.963108> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227059, -0.647165, 0.727751,
		-0.195850, -0.701659, -0.685068,
		0.953985, -0.298081, 0.032571,
		40.275089, 34.612717, 38.972878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575970, 34.131420, 38.967228>,  <39.607300, 34.821373, 38.950081>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.575970, 34.131420, 38.967228> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.950127, 34.169224, 39.103531>,  <40.174622, 34.191906, 39.185310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.950127, 34.169224, 39.103531>,  <39.575970, 34.131420, 38.967228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950127, 34.169224, 39.103531> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185341, -0.689633, 0.700039,
		0.301156, -0.717965, -0.627559,
		0.935390, 0.094509, 0.340755,
		40.230743, 34.197575, 39.205757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785984, 33.391998, 39.036156>,  <39.575970, 34.131420, 38.967228>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785984, 33.391998, 39.036156> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.018600, 33.630093, 39.257969>,  <40.158169, 33.772949, 39.391056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.018600, 33.630093, 39.257969>,  <39.785984, 33.391998, 39.036156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.018600, 33.630093, 39.257969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132265, -0.603401, 0.786392,
		0.802694, -0.530664, -0.272173,
		0.581540, 0.595233, 0.554535,
		40.193062, 33.808662, 39.424328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.171715, 32.966038, 39.362930>,  <39.785984, 33.391998, 39.036156>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.171715, 32.966038, 39.362930> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214184, 33.297859, 39.582226>,  <40.239666, 33.496952, 39.713802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214184, 33.297859, 39.582226>,  <40.171715, 32.966038, 39.362930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214184, 33.297859, 39.582226> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015499, -0.549912, 0.835079,
		0.994227, -0.097161, -0.045529,
		0.106174, 0.829552, 0.548243,
		40.246037, 33.546726, 39.746700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300045, 32.223553, 39.050396>,  <40.171715, 32.966038, 39.362930>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300045, 32.223553, 39.050396> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972733, 31.993750, 39.058006>,  <39.776344, 31.855869, 39.062572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972733, 31.993750, 39.058006>,  <40.300045, 32.223553, 39.050396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.972733, 31.993750, 39.058006> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411236, 0.561961, -0.717694,
		0.401624, -0.595100, -0.696099,
		-0.818280, -0.574504, 0.019030,
		39.727249, 31.821398, 39.063717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094662, 31.965433, 38.356911>,  <40.300045, 32.223553, 39.050396>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.094662, 31.965433, 38.356911> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754597, 31.915661, 38.561554>,  <39.550560, 31.885798, 38.684341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754597, 31.915661, 38.561554>,  <40.094662, 31.965433, 38.356911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754597, 31.915661, 38.561554> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479299, 0.585106, -0.654159,
		-0.217948, -0.801354, -0.557074,
		-0.850159, -0.124432, 0.511611,
		39.499550, 31.878330, 38.715038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.499794, 31.658888, 37.926102>,  <40.094662, 31.965433, 38.356911>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.499794, 31.658888, 37.926102> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318584, 31.869385, 38.213947>,  <39.209858, 31.995682, 38.386654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318584, 31.869385, 38.213947>,  <39.499794, 31.658888, 37.926102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318584, 31.869385, 38.213947> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436826, 0.572620, -0.693750,
		-0.777143, -0.628631, -0.029535,
		-0.453025, 0.526242, 0.719610,
		39.182678, 32.027256, 38.429829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783337, 31.590908, 37.708225>,  <39.499794, 31.658888, 37.926102>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783337, 31.590908, 37.708225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764675, 31.885359, 37.978317>,  <38.753479, 32.062031, 38.140373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764675, 31.885359, 37.978317>,  <38.783337, 31.590908, 37.708225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.764675, 31.885359, 37.978317> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569615, 0.535688, -0.623360,
		-0.820586, -0.413706, 0.394317,
		-0.046657, 0.736129, 0.675231,
		38.750679, 32.106197, 38.180885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.062267, 31.780893, 37.763767>,  <38.783337, 31.590908, 37.708225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.062267, 31.780893, 37.763767> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275887, 32.090240, 37.900406>,  <38.404060, 32.275848, 37.982391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275887, 32.090240, 37.900406>,  <38.062267, 31.780893, 37.763767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275887, 32.090240, 37.900406> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531680, 0.621362, -0.575522,
		-0.657348, 0.125736, 0.743023,
		0.534050, 0.773369, 0.341600,
		38.436100, 32.322250, 38.002888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610447, 32.213520, 37.811089>,  <38.062267, 31.780893, 37.763767>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610447, 32.213520, 37.811089> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942814, 32.435863, 37.801346>,  <38.142235, 32.569271, 37.795502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942814, 32.435863, 37.801346>,  <37.610447, 32.213520, 37.811089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.942814, 32.435863, 37.801346> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450924, 0.647127, -0.614731,
		-0.325943, 0.521775, 0.788361,
		0.830921, 0.555858, -0.024355,
		38.192089, 32.602619, 37.794041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398281, 32.852310, 37.884140>,  <37.610447, 32.213520, 37.811089>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398281, 32.852310, 37.884140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760155, 32.892731, 37.718575>,  <37.977280, 32.916985, 37.619236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760155, 32.892731, 37.718575>,  <37.398281, 32.852310, 37.884140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760155, 32.892731, 37.718575> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377269, 0.641459, -0.667980,
		0.198008, 0.760472, 0.618446,
		0.904688, 0.101056, -0.413917,
		38.031563, 32.923046, 37.594398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298466, 33.530758, 37.617332>,  <37.398281, 32.852310, 37.884140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298466, 33.530758, 37.617332> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628483, 33.396160, 37.435745>,  <37.826492, 33.315403, 37.326794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628483, 33.396160, 37.435745>,  <37.298466, 33.530758, 37.617332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628483, 33.396160, 37.435745> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269711, 0.471458, -0.839633,
		0.496556, 0.815169, 0.298216,
		0.825039, -0.336492, -0.453965,
		37.875996, 33.295212, 37.299557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474163, 34.125149, 37.186554>,  <37.298466, 33.530758, 37.617332>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474163, 34.125149, 37.186554> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683392, 33.822716, 37.029209>,  <37.808929, 33.641254, 36.934803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683392, 33.822716, 37.029209>,  <37.474163, 34.125149, 37.186554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683392, 33.822716, 37.029209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272089, 0.289250, -0.917770,
		0.807691, 0.587088, -0.054424,
		0.523070, -0.756083, -0.393365,
		37.840313, 33.595890, 36.911201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962509, 34.424797, 36.698227>,  <37.474163, 34.125149, 37.186554>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962509, 34.424797, 36.698227> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911221, 34.039814, 36.602539>,  <37.880447, 33.808823, 36.545128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911221, 34.039814, 36.602539>,  <37.962509, 34.424797, 36.698227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911221, 34.039814, 36.602539> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319653, 0.268448, -0.908712,
		0.938819, -0.040051, -0.342075,
		-0.128224, -0.962461, -0.239221,
		37.872753, 33.751076, 36.530773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383423, 34.164368, 36.093346>,  <37.962509, 34.424797, 36.698227>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.383423, 34.164368, 36.093346> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036171, 33.970139, 36.134472>,  <37.827820, 33.853603, 36.159149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036171, 33.970139, 36.134472>,  <38.383423, 34.164368, 36.093346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.036171, 33.970139, 36.134472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321202, 0.391690, -0.862211,
		0.378376, -0.781545, -0.496002,
		-0.868137, -0.485557, 0.102827,
		37.775730, 33.824467, 36.165318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094002, 33.915627, 35.378944>,  <38.383423, 34.164368, 36.093346>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094002, 33.915627, 35.378944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782341, 33.879795, 35.627102>,  <37.595345, 33.858295, 35.775997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782341, 33.879795, 35.627102>,  <38.094002, 33.915627, 35.378944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782341, 33.879795, 35.627102> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622775, 0.223056, -0.749931,
		-0.071202, -0.970681, -0.229585,
		-0.779155, -0.089583, 0.620398,
		37.548595, 33.852921, 35.813221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.925522, 29.561113, 41.826324> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.559776, 29.688017, 41.926952>,  <40.340328, 29.764158, 41.987328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.559776, 29.688017, 41.926952>,  <40.925522, 29.561113, 41.826324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.559776, 29.688017, 41.926952> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245501, 0.059673, -0.967558,
		-0.321977, -0.946460, 0.023324,
		-0.914364, 0.317257, 0.251570,
		40.285469, 29.783194, 42.002422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.484829, 29.114904, 41.337029>,  <40.925522, 29.561113, 41.826324>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.484829, 29.114904, 41.337029> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.268787, 29.427025, 41.463154>,  <40.139164, 29.614296, 41.538830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.268787, 29.427025, 41.463154>,  <40.484829, 29.114904, 41.337029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.268787, 29.427025, 41.463154> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311968, 0.162339, -0.936121,
		-0.781642, -0.603969, 0.155748,
		-0.540104, 0.780299, 0.315310,
		40.106754, 29.661114, 41.557747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.845715, 29.133150, 40.844879>,  <40.484829, 29.114904, 41.337029>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.845715, 29.133150, 40.844879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.856983, 29.494829, 41.015354>,  <39.863743, 29.711836, 41.117638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.856983, 29.494829, 41.015354>,  <39.845715, 29.133150, 40.844879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856983, 29.494829, 41.015354> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164592, 0.424733, -0.890231,
		-0.985959, -0.045068, 0.160789,
		0.028171, 0.904196, 0.426187,
		39.865433, 29.766088, 41.143211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399345, 29.483915, 40.366623>,  <39.845715, 29.133150, 40.844879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.399345, 29.483915, 40.366623> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.585186, 29.773849, 40.570095>,  <39.696690, 29.947811, 40.692181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.585186, 29.773849, 40.570095>,  <39.399345, 29.483915, 40.366623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585186, 29.773849, 40.570095> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224407, 0.652067, -0.724189,
		-0.856614, 0.222308, 0.465610,
		0.464602, 0.724836, 0.508682,
		39.724567, 29.991301, 40.722698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025143, 30.086834, 40.357700>,  <39.399345, 29.483915, 40.366623>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025143, 30.086834, 40.357700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.388649, 30.237339, 40.429890>,  <39.606754, 30.327642, 40.473202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.388649, 30.237339, 40.429890>,  <39.025143, 30.086834, 40.357700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.388649, 30.237339, 40.429890> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150542, 0.698944, -0.699153,
		-0.389204, 0.608199, 0.691820,
		0.908767, 0.376261, 0.180472,
		39.661278, 30.350218, 40.484032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891998, 30.903500, 40.381256>,  <39.025143, 30.086834, 40.357700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891998, 30.903500, 40.381256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.275150, 30.816240, 40.306557>,  <39.505043, 30.763885, 40.261738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.275150, 30.816240, 40.306557>,  <38.891998, 30.903500, 40.381256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.275150, 30.816240, 40.306557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022969, 0.706433, -0.707408,
		0.286240, 0.673324, 0.681690,
		0.957882, -0.218146, -0.186744,
		39.562515, 30.750797, 40.250534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196129, 31.584520, 40.314240>,  <38.891998, 30.903500, 40.381256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196129, 31.584520, 40.314240> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.461597, 31.334833, 40.149368>,  <39.620880, 31.185020, 40.050446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.461597, 31.334833, 40.149368>,  <39.196129, 31.584520, 40.314240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.461597, 31.334833, 40.149368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099399, 0.619727, -0.778497,
		0.741391, 0.475697, 0.473342,
		0.663672, -0.624220, -0.412176,
		39.660698, 31.147568, 40.025715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958813, 31.910717, 40.336720>,  <39.196129, 31.584520, 40.314240>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958813, 31.910717, 40.336720> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.855331, 31.654072, 40.047886>,  <39.793243, 31.500086, 39.874584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.855331, 31.654072, 40.047886>,  <39.958813, 31.910717, 40.336720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.855331, 31.654072, 40.047886> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174493, 0.704196, -0.688230,
		0.950066, -0.304044, -0.070219,
		-0.258700, -0.641611, -0.722086,
		39.777721, 31.461588, 39.831261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108459, 32.212063, 39.766876>,  <39.958813, 31.910717, 40.336720>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.108459, 32.212063, 39.766876> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.963551, 31.881300, 39.594833>,  <39.876606, 31.682842, 39.491608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.963551, 31.881300, 39.594833>,  <40.108459, 32.212063, 39.766876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.963551, 31.881300, 39.594833> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190404, 0.517373, -0.834309,
		0.912418, -0.220351, -0.344874,
		-0.362270, -0.826904, -0.430105,
		39.854870, 31.633228, 39.465801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.631638, 32.759380, 39.871723>,  <40.108459, 32.212063, 39.766876>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.631638, 32.759380, 39.871723> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.478577, 33.096519, 40.023079>,  <40.386738, 33.298805, 40.113892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.478577, 33.096519, 40.023079>,  <40.631638, 32.759380, 39.871723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.478577, 33.096519, 40.023079> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024844, -0.418796, 0.907740,
		0.923558, 0.337950, 0.181194,
		-0.382654, 0.842852, 0.378387,
		40.363781, 33.349377, 40.136597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.977966, 32.842022, 40.488308>,  <40.631638, 32.759380, 39.871723>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.977966, 32.842022, 40.488308> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.626518, 33.032448, 40.503197>,  <40.415649, 33.146706, 40.512131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.626518, 33.032448, 40.503197>,  <40.977966, 32.842022, 40.488308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.626518, 33.032448, 40.503197> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166348, -0.378214, 0.910650,
		0.447609, 0.793924, 0.411499,
		-0.878621, 0.476067, 0.037224,
		40.362930, 33.175266, 40.514362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.962646, 33.360737, 41.029888>,  <40.977966, 32.842022, 40.488308>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.962646, 33.360737, 41.029888> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.592110, 33.234795, 40.947166>,  <40.369789, 33.159229, 40.897533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.592110, 33.234795, 40.947166>,  <40.962646, 33.360737, 41.029888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.592110, 33.234795, 40.947166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078349, -0.375941, 0.923325,
		-0.368456, 0.871514, 0.323580,
		-0.926338, -0.314852, -0.206800,
		40.314209, 33.140339, 40.885128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.743118, 33.396843, 41.666664>,  <40.962646, 33.360737, 41.029888>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.743118, 33.396843, 41.666664> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.436157, 33.200211, 41.502014>,  <40.251980, 33.082230, 41.403225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.436157, 33.200211, 41.502014>,  <40.743118, 33.396843, 41.666664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.436157, 33.200211, 41.502014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200903, -0.425301, 0.882472,
		-0.608872, 0.759911, 0.227618,
		-0.767406, -0.491584, -0.411622,
		40.205936, 33.052734, 41.378529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.154148, 33.594780, 42.054470>,  <40.743118, 33.396843, 41.666664>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.154148, 33.594780, 42.054470> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.047821, 33.266850, 41.851601>,  <39.984024, 33.070091, 41.729877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.047821, 33.266850, 41.851601>,  <40.154148, 33.594780, 42.054470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.047821, 33.266850, 41.851601> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341345, -0.411977, 0.844842,
		-0.901569, 0.397692, -0.170335,
		-0.265813, -0.819827, -0.507176,
		39.968079, 33.020901, 41.699448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472843, 33.505386, 42.282837>,  <40.154148, 33.594780, 42.054470>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472843, 33.505386, 42.282837> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.609737, 33.156643, 42.142700>,  <39.691872, 32.947395, 42.058617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.609737, 33.156643, 42.142700>,  <39.472843, 33.505386, 42.282837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609737, 33.156643, 42.142700> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334309, -0.461442, 0.821772,
		-0.878131, -0.164115, -0.449391,
		0.342233, -0.871859, -0.350341,
		39.712406, 32.895084, 42.037598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925114, 33.033726, 42.509815>,  <39.472843, 33.505386, 42.282837>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925114, 33.033726, 42.509815> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.263687, 32.829479, 42.449383>,  <39.466831, 32.706932, 42.413124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.263687, 32.829479, 42.449383>,  <38.925114, 33.033726, 42.509815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263687, 32.829479, 42.449383> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136225, -0.481910, 0.865566,
		-0.514787, -0.712057, -0.477462,
		0.846426, -0.510624, -0.151081,
		39.517616, 32.676292, 42.404060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789848, 32.324150, 42.704929>,  <38.925114, 33.033726, 42.509815>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789848, 32.324150, 42.704929> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.184521, 32.385452, 42.726761>,  <39.421322, 32.422234, 42.739861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.184521, 32.385452, 42.726761>,  <38.789848, 32.324150, 42.704929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184521, 32.385452, 42.726761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028527, -0.167300, 0.985493,
		0.160168, -0.973921, -0.160699,
		0.986677, 0.153260, 0.054579,
		39.480522, 32.431431, 42.743134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063728, 31.772654, 43.161797>,  <38.789848, 32.324150, 42.704929>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063728, 31.772654, 43.161797> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.366272, 32.034298, 43.158627>,  <39.547798, 32.191284, 43.156723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.366272, 32.034298, 43.158627>,  <39.063728, 31.772654, 43.161797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366272, 32.034298, 43.158627> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108593, -0.113604, 0.987574,
		0.645081, -0.747821, -0.156958,
		0.756359, 0.654109, -0.007924,
		39.593178, 32.230530, 43.156250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651657, 31.426725, 43.417824>,  <39.063728, 31.772654, 43.161797>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.651657, 31.426725, 43.417824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.769581, 31.806019, 43.465054>,  <39.840336, 32.033596, 43.493389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.769581, 31.806019, 43.465054>,  <39.651657, 31.426725, 43.417824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.769581, 31.806019, 43.465054> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284728, -0.205124, 0.936405,
		0.912149, -0.242446, -0.330461,
		0.294813, 0.948232, 0.118073,
		39.858025, 32.090488, 43.500477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183662, 31.439302, 43.854389>,  <39.651657, 31.426725, 43.417824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183662, 31.439302, 43.854389> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.133972, 31.834862, 43.887009>,  <40.104160, 32.072197, 43.906578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.133972, 31.834862, 43.887009>,  <40.183662, 31.439302, 43.854389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.133972, 31.834862, 43.887009> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217781, -0.053006, 0.974557,
		0.968060, 0.138820, -0.208779,
		-0.124222, 0.988898, 0.081545,
		40.096706, 32.131531, 43.911472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.745735, 31.786232, 44.178783>,  <40.183662, 31.439302, 43.854389>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.745735, 31.786232, 44.178783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.472973, 32.073696, 44.233227>,  <40.309315, 32.246174, 44.265892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.472973, 32.073696, 44.233227>,  <40.745735, 31.786232, 44.178783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.472973, 32.073696, 44.233227> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354893, 0.162375, 0.920698,
		0.639571, 0.676135, -0.365773,
		-0.681908, 0.718663, 0.136105,
		40.268402, 32.289295, 44.274059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.023689, 32.436401, 44.487209>,  <40.745735, 31.786232, 44.178783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.023689, 32.436401, 44.487209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.640778, 32.445213, 44.602543>,  <40.411030, 32.450500, 44.671741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.640778, 32.445213, 44.602543>,  <41.023689, 32.436401, 44.487209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.640778, 32.445213, 44.602543> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287755, 0.171272, 0.942265,
		-0.028628, 0.984977, -0.170294,
		-0.957276, 0.022028, 0.288335,
		40.353596, 32.451820, 44.689045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.093056, 32.852322, 45.108700>,  <41.023689, 32.436401, 44.487209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.093056, 32.852322, 45.108700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.740067, 32.665409, 45.130241>,  <40.528275, 32.553261, 45.143166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.740067, 32.665409, 45.130241>,  <41.093056, 32.852322, 45.108700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.740067, 32.665409, 45.130241> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003530, 0.107905, 0.994155,
		-0.470358, 0.877501, -0.093573,
		-0.882469, -0.467278, 0.053851,
		40.475327, 32.525227, 45.146397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.984520, 31.989029, 45.115509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.363049, 32.110085, 45.160912>,  <34.590164, 32.182716, 45.188152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.363049, 32.110085, 45.160912>,  <33.984520, 31.989029, 45.115509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363049, 32.110085, 45.160912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096320, 0.599248, -0.794748,
		-0.308538, 0.741155, 0.596233,
		0.946323, 0.302639, 0.113503,
		34.646946, 32.200874, 45.194962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018093, 32.715008, 45.115520>,  <33.984520, 31.989029, 45.115509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018093, 32.715008, 45.115520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.388962, 32.591991, 45.029949>,  <34.611485, 32.518181, 44.978607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.388962, 32.591991, 45.029949>,  <34.018093, 32.715008, 45.115520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388962, 32.591991, 45.029949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024450, 0.520148, -0.853726,
		0.373827, 0.796784, 0.474750,
		0.927176, -0.307538, -0.213927,
		34.667114, 32.499729, 44.965771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454376, 33.338188, 44.851013>,  <34.018093, 32.715008, 45.115520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454376, 33.338188, 44.851013> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.632580, 33.001900, 44.727913>,  <34.739502, 32.800125, 44.654053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.632580, 33.001900, 44.727913>,  <34.454376, 33.338188, 44.851013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632580, 33.001900, 44.727913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167023, 0.415766, -0.894003,
		0.879562, 0.346881, 0.325646,
		0.445505, -0.840721, -0.307755,
		34.766232, 32.749683, 44.635586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061470, 33.591270, 44.576389>,  <34.454376, 33.338188, 44.851013>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061470, 33.591270, 44.576389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.974533, 33.239010, 44.408001>,  <34.922371, 33.027653, 44.306969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.974533, 33.239010, 44.408001>,  <35.061470, 33.591270, 44.576389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974533, 33.239010, 44.408001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237668, 0.370551, -0.897889,
		0.946718, -0.295203, 0.128765,
		-0.217346, -0.880651, -0.420968,
		34.909328, 32.974815, 44.281712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581467, 33.570564, 44.147469>,  <35.061470, 33.591270, 44.576389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581467, 33.570564, 44.147469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.326744, 33.295769, 44.007458>,  <35.173912, 33.130890, 43.923450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.326744, 33.295769, 44.007458>,  <35.581467, 33.570564, 44.147469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326744, 33.295769, 44.007458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145105, 0.339077, -0.929500,
		0.757245, -0.642703, -0.116241,
		-0.636808, -0.686993, -0.350024,
		35.135700, 33.089672, 43.902451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840721, 33.537529, 43.520615>,  <35.581467, 33.570564, 44.147469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.840721, 33.537529, 43.520615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.497086, 33.338364, 43.473206>,  <35.290905, 33.218864, 43.444759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.497086, 33.338364, 43.473206>,  <35.840721, 33.537529, 43.520615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497086, 33.338364, 43.473206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016617, 0.258582, -0.965846,
		0.511554, -0.827780, -0.230419,
		-0.859090, -0.497912, -0.118523,
		35.239357, 33.188992, 43.437649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005219, 33.195858, 42.910160>,  <35.840721, 33.537529, 43.520615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005219, 33.195858, 42.910160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.608791, 33.220181, 42.957630>,  <35.370934, 33.234772, 42.986111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.608791, 33.220181, 42.957630>,  <36.005219, 33.195858, 42.910160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608791, 33.220181, 42.957630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108442, 0.150331, -0.982670,
		-0.077589, -0.986764, -0.142394,
		-0.991070, 0.060803, 0.118671,
		35.311470, 33.238422, 42.993233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611557, 32.602474, 42.485836>,  <36.005219, 33.195858, 42.910160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611557, 32.602474, 42.485836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.379028, 32.923897, 42.536995>,  <35.239510, 33.116753, 42.567688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.379028, 32.923897, 42.536995>,  <35.611557, 32.602474, 42.485836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379028, 32.923897, 42.536995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061250, 0.113519, -0.991646,
		-0.811366, -0.584298, -0.016773,
		-0.581321, 0.803560, 0.127893,
		35.204632, 33.164967, 42.575363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293308, 32.658516, 41.744190>,  <35.611557, 32.602474, 42.485836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293308, 32.658516, 41.744190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.213226, 32.969406, 41.982800>,  <35.165176, 33.155941, 42.125965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.213226, 32.969406, 41.982800>,  <35.293308, 32.658516, 41.744190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.213226, 32.969406, 41.982800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209373, 0.560849, -0.801006,
		-0.957121, -0.285262, 0.050445,
		-0.200205, 0.777222, 0.596527,
		35.153164, 33.202572, 42.161758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599133, 32.846874, 41.561466>,  <35.293308, 32.658516, 41.744190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599133, 32.846874, 41.561466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.777271, 33.166279, 41.723480>,  <34.884155, 33.357922, 41.820686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.777271, 33.166279, 41.723480>,  <34.599133, 32.846874, 41.561466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777271, 33.166279, 41.723480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302122, 0.559854, -0.771548,
		-0.842847, 0.221236, 0.490575,
		0.445344, 0.798510, 0.405031,
		34.910873, 33.405830, 41.844990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.118271, 33.477257, 41.568504>,  <34.599133, 32.846874, 41.561466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.118271, 33.477257, 41.568504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.492435, 33.616840, 41.591240>,  <34.716934, 33.700592, 41.604881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.492435, 33.616840, 41.591240>,  <34.118271, 33.477257, 41.568504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492435, 33.616840, 41.591240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166081, 0.575604, -0.800685,
		-0.312124, 0.739531, 0.596383,
		0.935412, 0.348961, 0.056838,
		34.773060, 33.721527, 41.608292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035954, 34.193840, 41.558998>,  <34.118271, 33.477257, 41.568504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035954, 34.193840, 41.558998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.424274, 34.166283, 41.467079>,  <34.657265, 34.149750, 41.411930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.424274, 34.166283, 41.467079>,  <34.035954, 34.193840, 41.558998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424274, 34.166283, 41.467079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102573, 0.746712, -0.657191,
		0.216865, 0.661570, 0.717840,
		0.970798, -0.068890, -0.229795,
		34.715515, 34.145615, 41.398140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288387, 34.851959, 41.463993>,  <34.035954, 34.193840, 41.558998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288387, 34.851959, 41.463993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.565716, 34.626858, 41.283947>,  <34.732113, 34.491795, 41.175919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.565716, 34.626858, 41.283947>,  <34.288387, 34.851959, 41.463993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565716, 34.626858, 41.283947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001677, 0.623359, -0.781934,
		0.720624, 0.542889, 0.431247,
		0.693325, -0.562757, -0.450118,
		34.773712, 34.458031, 41.148911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696503, 35.266674, 41.143246>,  <34.288387, 34.851959, 41.463993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696503, 35.266674, 41.143246> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.768127, 34.934334, 40.932487>,  <34.811104, 34.734928, 40.806034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.768127, 34.934334, 40.932487>,  <34.696503, 35.266674, 41.143246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768127, 34.934334, 40.932487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016644, 0.532917, -0.846003,
		0.983697, 0.160258, 0.081598,
		0.179064, -0.830853, -0.526896,
		34.821846, 34.685078, 40.774418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274178, 35.564240, 41.449436>,  <34.696503, 35.266674, 41.143246>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.274178, 35.564240, 41.449436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.417980, 35.925739, 41.542381>,  <35.504261, 36.142639, 41.598148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.417980, 35.925739, 41.542381>,  <35.274178, 35.564240, 41.449436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417980, 35.925739, 41.542381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052726, -0.228935, 0.972013,
		0.931652, -0.361696, -0.034652,
		0.359506, 0.903750, 0.232358,
		35.525833, 36.196865, 41.612087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759777, 35.487862, 41.964424>,  <35.274178, 35.564240, 41.449436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.759777, 35.487862, 41.964424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.730083, 35.882580, 42.022018>,  <35.712269, 36.119411, 42.056576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.730083, 35.882580, 42.022018>,  <35.759777, 35.487862, 41.964424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730083, 35.882580, 42.022018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027015, -0.142343, 0.989448,
		0.996875, 0.077341, -0.016091,
		-0.074235, 0.986791, 0.143988,
		35.707813, 36.178616, 42.065216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145184, 35.552402, 42.409157>,  <35.759777, 35.487862, 41.964424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145184, 35.552402, 42.409157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.970535, 35.908772, 42.459152>,  <35.865746, 36.122593, 42.489147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.970535, 35.908772, 42.459152>,  <36.145184, 35.552402, 42.409157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970535, 35.908772, 42.459152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080164, -0.099848, 0.991768,
		0.896068, 0.443044, -0.027824,
		-0.436619, 0.890922, 0.124987,
		35.839550, 36.176048, 42.496647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541828, 35.904568, 42.831394>,  <36.145184, 35.552402, 42.409157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541828, 35.904568, 42.831394> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.184795, 36.080383, 42.871616>,  <35.970577, 36.185871, 42.895748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.184795, 36.080383, 42.871616>,  <36.541828, 35.904568, 42.831394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184795, 36.080383, 42.871616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041491, -0.142003, 0.988996,
		0.448978, 0.886930, 0.108512,
		-0.892579, 0.439535, 0.100556,
		35.917023, 36.212242, 42.901783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618206, 36.467209, 43.275661>,  <36.541828, 35.904568, 42.831394>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618206, 36.467209, 43.275661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.228668, 36.380447, 43.302715>,  <35.994946, 36.328388, 43.318947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.228668, 36.380447, 43.302715>,  <36.618206, 36.467209, 43.275661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228668, 36.380447, 43.302715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049959, 0.085961, 0.995045,
		-0.221645, 0.972401, -0.072877,
		-0.973847, -0.216906, 0.067633,
		35.936516, 36.315376, 43.323006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337719, 36.829967, 43.889229>,  <36.618206, 36.467209, 43.275661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337719, 36.829967, 43.889229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.052753, 36.562309, 43.804653>,  <35.881775, 36.401714, 43.753906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.052753, 36.562309, 43.804653>,  <36.337719, 36.829967, 43.889229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052753, 36.562309, 43.804653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154859, -0.143966, 0.977391,
		-0.684460, 0.729050, -0.001060,
		-0.712414, -0.669149, -0.211439,
		35.839027, 36.361565, 43.741222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723503, 36.997887, 44.318909>,  <36.337719, 36.829967, 43.889229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723503, 36.997887, 44.318909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.706059, 36.610184, 44.222050>,  <35.695591, 36.377560, 44.163937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.706059, 36.610184, 44.222050>,  <35.723503, 36.997887, 44.318909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706059, 36.610184, 44.222050> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192768, -0.229656, 0.953991,
		-0.980275, 0.088285, -0.176826,
		-0.043614, -0.969259, -0.242144,
		35.692974, 36.319405, 44.149406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116566, 36.693085, 44.624817>,  <35.723503, 36.997887, 44.318909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.116566, 36.693085, 44.624817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.358917, 36.380943, 44.562889>,  <35.504326, 36.193661, 44.525734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.358917, 36.380943, 44.562889>,  <35.116566, 36.693085, 44.624817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358917, 36.380943, 44.562889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065344, -0.242754, 0.967884,
		-0.792870, -0.576303, -0.198070,
		0.605877, -0.780350, -0.154815,
		35.540680, 36.146839, 44.516445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775646, 36.106544, 45.025684>,  <35.116566, 36.693085, 44.624817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.775646, 36.106544, 45.025684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.155506, 36.012909, 44.942383>,  <35.383423, 35.956726, 44.892403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.155506, 36.012909, 44.942383>,  <34.775646, 36.106544, 45.025684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155506, 36.012909, 44.942383> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117068, -0.351421, 0.928870,
		-0.290625, -0.906479, -0.306322,
		0.949649, -0.234092, -0.208251,
		35.440399, 35.942680, 44.879906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816689, 35.345188, 45.270634>,  <34.775646, 36.106544, 45.025684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816689, 35.345188, 45.270634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.184452, 35.502464, 45.266861>,  <35.405109, 35.596832, 45.264599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.184452, 35.502464, 45.266861>,  <34.816689, 35.345188, 45.270634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184452, 35.502464, 45.266861> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146408, -0.319899, 0.936071,
		0.365040, -0.862012, -0.351685,
		0.919408, 0.393193, -0.009430,
		35.460274, 35.620422, 45.264030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197830, 34.896187, 45.593624>,  <34.816689, 35.345188, 45.270634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197830, 34.896187, 45.593624> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.429501, 35.221622, 45.614113>,  <35.568504, 35.416885, 45.626404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.429501, 35.221622, 45.614113>,  <35.197830, 34.896187, 45.593624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429501, 35.221622, 45.614113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264111, -0.246714, 0.932404,
		0.771231, -0.526501, -0.357769,
		0.579179, 0.813590, 0.051219,
		35.603256, 35.465698, 45.629478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807838, 34.633873, 45.633606>,  <35.197830, 34.896187, 45.593624>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807838, 34.633873, 45.633606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.830421, 35.011238, 45.764320>,  <35.843971, 35.237656, 45.842751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.830421, 35.011238, 45.764320>,  <35.807838, 34.633873, 45.633606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830421, 35.011238, 45.764320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268358, -0.329605, 0.905177,
		0.961664, 0.036595, -0.271779,
		0.056455, 0.943410, 0.326790,
		35.847359, 35.294262, 45.862358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521404, 34.683239, 45.871384>,  <35.807838, 34.633873, 45.633606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521404, 34.683239, 45.871384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.302452, 34.972866, 46.039238>,  <36.171082, 35.146645, 46.139950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.302452, 34.972866, 46.039238>,  <36.521404, 34.683239, 45.871384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302452, 34.972866, 46.039238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376815, -0.234484, 0.896118,
		0.747252, 0.648643, -0.144489,
		-0.547380, 0.724072, 0.419636,
		36.138237, 35.190086, 46.165131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982246, 34.976704, 46.318882>,  <36.521404, 34.683239, 45.871384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982246, 34.976704, 46.318882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.612854, 35.058952, 46.448433>,  <36.391216, 35.108303, 46.526165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.612854, 35.058952, 46.448433>,  <36.982246, 34.976704, 46.318882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612854, 35.058952, 46.448433> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251271, -0.313750, 0.915655,
		0.289894, 0.926974, 0.238077,
		-0.923485, 0.205621, 0.323876,
		36.335808, 35.120640, 46.545597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439724, 35.659676, 46.420494>,  <36.982246, 34.976704, 46.318882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439724, 35.659676, 46.420494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.827877, 35.701332, 46.507675>,  <38.060768, 35.726326, 46.559982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.827877, 35.701332, 46.507675>,  <37.439724, 35.659676, 46.420494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827877, 35.701332, 46.507675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184910, 0.260303, -0.947655,
		-0.155428, 0.959894, 0.233337,
		0.970387, 0.104146, 0.217952,
		38.118992, 35.732574, 46.573059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625057, 36.312134, 46.165806>,  <37.439724, 35.659676, 46.420494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625057, 36.312134, 46.165806> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.962807, 36.098557, 46.183411>,  <38.165455, 35.970409, 46.193974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.962807, 36.098557, 46.183411>,  <37.625057, 36.312134, 46.165806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962807, 36.098557, 46.183411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226539, 0.281389, -0.932470,
		0.485501, 0.797324, 0.358557,
		0.844375, -0.533943, 0.044011,
		38.216118, 35.938374, 46.196613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189415, 36.752003, 45.902077>,  <37.625057, 36.312134, 46.165806>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189415, 36.752003, 45.902077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.329109, 36.379375, 45.861633>,  <38.412926, 36.155800, 45.837368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.329109, 36.379375, 45.861633>,  <38.189415, 36.752003, 45.902077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329109, 36.379375, 45.861633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309859, 0.216646, -0.925771,
		0.884321, 0.291978, 0.364314,
		0.349232, -0.931565, -0.101113,
		38.433880, 36.099907, 45.831299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768410, 36.827442, 45.563519>,  <38.189415, 36.752003, 45.902077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.768410, 36.827442, 45.563519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.662327, 36.448009, 45.494400>,  <38.598679, 36.220348, 45.452930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.662327, 36.448009, 45.494400>,  <38.768410, 36.827442, 45.563519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662327, 36.448009, 45.494400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098142, 0.151722, -0.983539,
		0.959185, -0.277795, 0.052859,
		-0.265202, -0.948583, -0.172793,
		38.582767, 36.163433, 45.442562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353790, 36.401680, 45.199429>,  <38.768410, 36.827442, 45.563519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353790, 36.401680, 45.199429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.986546, 36.265793, 45.117783>,  <38.766197, 36.184261, 45.068794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.986546, 36.265793, 45.117783>,  <39.353790, 36.401680, 45.199429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986546, 36.265793, 45.117783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179202, 0.103531, -0.978350,
		0.353494, -0.934812, -0.034175,
		-0.918112, -0.339716, -0.204118,
		38.711113, 36.163879, 45.056549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376686, 36.160931, 44.598370>,  <39.353790, 36.401680, 45.199429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.376686, 36.160931, 44.598370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.982590, 36.118851, 44.652393>,  <38.746132, 36.093605, 44.684807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.982590, 36.118851, 44.652393>,  <39.376686, 36.160931, 44.598370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.982590, 36.118851, 44.652393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137289, 0.014238, -0.990429,
		0.102269, -0.994349, -0.028470,
		-0.985237, -0.105199, 0.135057,
		38.687019, 36.087292, 44.692909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156689, 35.663940, 44.144024>,  <39.376686, 36.160931, 44.598370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.156689, 35.663940, 44.144024> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.841103, 35.892220, 44.235104>,  <38.651752, 36.029186, 44.289749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.841103, 35.892220, 44.235104>,  <39.156689, 35.663940, 44.144024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.841103, 35.892220, 44.235104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043093, 0.318269, -0.947021,
		-0.612927, -0.756977, -0.226510,
		-0.788964, 0.570693, 0.227695,
		38.604412, 36.063427, 44.303413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760937, 35.544426, 43.568630>,  <39.156689, 35.663940, 44.144024>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.760937, 35.544426, 43.568630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.611603, 35.879311, 43.728485>,  <38.522003, 36.080242, 43.824398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.611603, 35.879311, 43.728485>,  <38.760937, 35.544426, 43.568630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611603, 35.879311, 43.728485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260311, 0.318937, -0.911327,
		-0.890428, -0.444255, 0.098866,
		-0.373330, 0.837207, 0.399635,
		38.499603, 36.130474, 43.848377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139297, 35.670082, 43.171494>,  <38.760937, 35.544426, 43.568630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139297, 35.670082, 43.171494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.209942, 36.026279, 43.339218>,  <38.252331, 36.239998, 43.439854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.209942, 36.026279, 43.339218>,  <38.139297, 35.670082, 43.171494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209942, 36.026279, 43.339218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169677, 0.447176, -0.878205,
		-0.969545, 0.083957, 0.230075,
		0.176615, 0.890497, 0.419311,
		38.262928, 36.293430, 43.465012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567486, 36.186863, 43.012814>,  <38.139297, 35.670082, 43.171494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567486, 36.186863, 43.012814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.899376, 36.396069, 43.090794>,  <38.098511, 36.521591, 43.137581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.899376, 36.396069, 43.090794>,  <37.567486, 36.186863, 43.012814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899376, 36.396069, 43.090794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129618, 0.520263, -0.844113,
		-0.542912, 0.675114, 0.499468,
		0.829727, 0.523018, 0.194950,
		38.148293, 36.552975, 43.149277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431084, 36.741451, 42.626617>,  <37.567486, 36.186863, 43.012814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431084, 36.741451, 42.626617> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.811531, 36.835865, 42.706276>,  <38.039799, 36.892513, 42.754070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.811531, 36.835865, 42.706276>,  <37.431084, 36.741451, 42.626617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811531, 36.835865, 42.706276> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027238, 0.578221, -0.815425,
		-0.307614, 0.780993, 0.543529,
		0.951121, 0.236032, 0.199142,
		38.096867, 36.906673, 42.766018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438133, 37.523804, 42.675354>,  <37.431084, 36.741451, 42.626617>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438133, 37.523804, 42.675354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.800648, 37.377079, 42.591354>,  <38.018154, 37.289043, 42.540955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.800648, 37.377079, 42.591354>,  <37.438133, 37.523804, 42.675354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800648, 37.377079, 42.591354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082641, 0.641029, -0.763055,
		0.414516, 0.674188, 0.611267,
		0.906282, -0.366814, -0.210001,
		38.072533, 37.267036, 42.528355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016571, 38.072220, 42.439106>,  <37.438133, 37.523804, 42.675354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016571, 38.072220, 42.439106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.145184, 37.722977, 42.292522>,  <38.222351, 37.513432, 42.204571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.145184, 37.722977, 42.292522>,  <38.016571, 38.072220, 42.439106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145184, 37.722977, 42.292522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239247, 0.449362, -0.860717,
		0.916175, 0.189077, 0.353375,
		0.321535, -0.873111, -0.366458,
		38.241646, 37.461044, 42.182587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718430, 38.085217, 42.443699>,  <38.016571, 38.072220, 42.439106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718430, 38.085217, 42.443699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.588173, 37.838326, 42.157204>,  <38.510017, 37.690193, 41.985306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.588173, 37.838326, 42.157204>,  <38.718430, 38.085217, 42.443699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588173, 37.838326, 42.157204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447643, 0.566596, -0.691798,
		0.832810, -0.545896, 0.091788,
		-0.325643, -0.617225, -0.716233,
		38.490479, 37.653156, 41.942333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.200182, 31.015244, 29.228144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.826447, 30.967764, 29.093727>,  <25.602205, 30.939276, 29.013077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.826447, 30.967764, 29.093727>,  <26.200182, 31.015244, 29.228144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.826447, 30.967764, 29.093727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337962, 0.594370, 0.729730,
		0.113116, 0.795384, -0.595457,
		-0.934337, -0.118698, -0.336042,
		25.546144, 30.932154, 28.992914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.978254, 31.611120, 29.235495>,  <26.200182, 31.015244, 29.228144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.978254, 31.611120, 29.235495> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.625481, 31.424074, 29.211737>,  <25.413816, 31.311846, 29.197481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.625481, 31.424074, 29.211737>,  <25.978254, 31.611120, 29.235495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.625481, 31.424074, 29.211737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332157, 0.527102, 0.782199,
		-0.334461, 0.709577, -0.620191,
		-0.881934, -0.467616, -0.059396,
		25.360901, 31.283789, 29.193918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.457043, 32.124004, 29.086706>,  <25.978254, 31.611120, 29.235495>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.457043, 32.124004, 29.086706> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.281185, 31.802996, 29.248037>,  <25.175671, 31.610390, 29.344835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.281185, 31.802996, 29.248037>,  <25.457043, 32.124004, 29.086706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.281185, 31.802996, 29.248037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365626, 0.570072, 0.735755,
		-0.820385, 0.176003, -0.544051,
		-0.439644, -0.802521, 0.403327,
		25.149292, 31.562239, 29.369036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.793852, 32.292774, 29.182138>,  <25.457043, 32.124004, 29.086706>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.793852, 32.292774, 29.182138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.872990, 31.985527, 29.425730>,  <24.920471, 31.801178, 29.571884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.872990, 31.985527, 29.425730>,  <24.793852, 32.292774, 29.182138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.872990, 31.985527, 29.425730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467799, 0.471961, 0.747273,
		-0.861408, -0.432721, -0.265951,
		0.197842, -0.768118, 0.608977,
		24.932343, 31.755091, 29.608423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.240290, 32.309654, 29.633209>,  <24.793852, 32.292774, 29.182138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.240290, 32.309654, 29.633209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.509733, 32.085732, 29.826237>,  <24.671400, 31.951378, 29.942053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.509733, 32.085732, 29.826237>,  <24.240290, 32.309654, 29.633209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.509733, 32.085732, 29.826237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211873, 0.479260, 0.851716,
		-0.708068, -0.675967, 0.204227,
		0.673609, -0.559803, 0.482568,
		24.711817, 31.917791, 29.971006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.876690, 32.001144, 30.249773>,  <24.240290, 32.309654, 29.633209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.876690, 32.001144, 30.249773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.270063, 32.014996, 30.320948>,  <24.506086, 32.023308, 30.363653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.270063, 32.014996, 30.320948>,  <23.876690, 32.001144, 30.249773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.270063, 32.014996, 30.320948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167335, 0.550908, 0.817618,
		-0.069712, -0.833847, 0.547575,
		0.983432, 0.034630, 0.177936,
		24.565094, 32.025383, 30.374329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.937431, 31.941128, 30.963427>,  <23.876690, 32.001144, 30.249773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.937431, 31.941128, 30.963427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.304085, 32.071747, 30.871206>,  <24.524076, 32.150120, 30.815874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.304085, 32.071747, 30.871206>,  <23.937431, 31.941128, 30.963427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.304085, 32.071747, 30.871206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015114, 0.548037, 0.836318,
		0.399446, -0.770080, 0.497413,
		0.916632, 0.326546, -0.230550,
		24.579075, 32.169712, 30.802042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.339741, 31.972023, 31.605471>,  <23.937431, 31.941128, 30.963427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.339741, 31.972023, 31.605471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.548893, 32.212162, 31.363419>,  <24.674383, 32.356247, 31.218187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.548893, 32.212162, 31.363419>,  <24.339741, 31.972023, 31.605471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.548893, 32.212162, 31.363419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095747, 0.664048, 0.741534,
		0.847012, -0.445672, 0.289735,
		0.522879, 0.600347, -0.605129,
		24.705757, 32.392265, 31.181879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.910425, 32.308990, 32.015705>,  <24.339741, 31.972023, 31.605471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.910425, 32.308990, 32.015705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.877745, 32.533455, 31.686239>,  <24.858137, 32.668133, 31.488560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.877745, 32.533455, 31.686239>,  <24.910425, 32.308990, 32.015705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.877745, 32.533455, 31.686239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293281, 0.803373, 0.518245,
		0.952529, -0.199224, -0.230215,
		-0.081702, 0.561161, -0.823664,
		24.853233, 32.701805, 31.439140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.576931, 32.703800, 31.947721>,  <24.910425, 32.308990, 32.015705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.576931, 32.703800, 31.947721> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.284262, 32.896297, 31.754616>,  <25.108660, 33.011795, 31.638752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.284262, 32.896297, 31.754616>,  <25.576931, 32.703800, 31.947721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.284262, 32.896297, 31.754616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224749, 0.838931, 0.495665,
		0.643540, 0.254164, -0.721982,
		-0.731673, 0.481244, -0.482762,
		25.064760, 33.040672, 31.609787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.892914, 33.349274, 31.712610>,  <25.576931, 32.703800, 31.947721>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.892914, 33.349274, 31.712610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.504732, 33.445774, 31.714119>,  <25.271822, 33.503674, 31.715025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.504732, 33.445774, 31.714119>,  <25.892914, 33.349274, 31.712610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.504732, 33.445774, 31.714119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208098, 0.828979, 0.519123,
		0.122113, 0.504570, -0.854691,
		-0.970455, 0.241251, 0.003771,
		25.213596, 33.518150, 31.715250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.835140, 34.058754, 31.713470>,  <25.892914, 33.349274, 31.712610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.835140, 34.058754, 31.713470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.462067, 33.953957, 31.812634>,  <25.238222, 33.891079, 31.872131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.462067, 33.953957, 31.812634>,  <25.835140, 34.058754, 31.713470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.462067, 33.953957, 31.812634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042129, 0.603471, 0.796271,
		-0.358225, 0.753114, -0.551810,
		-0.932684, -0.261997, 0.247906,
		25.182261, 33.875359, 31.887005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.399136, 34.687519, 31.716726>,  <25.835140, 34.058754, 31.713470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.399136, 34.687519, 31.716726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.194525, 34.426815, 31.940708>,  <25.071758, 34.270393, 32.075096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.194525, 34.426815, 31.940708>,  <25.399136, 34.687519, 31.716726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.194525, 34.426815, 31.940708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056341, 0.675703, 0.735018,
		-0.857419, 0.344431, -0.382361,
		-0.511525, -0.651761, 0.559955,
		25.041067, 34.231285, 32.108696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.732309, 35.037170, 32.029961>,  <25.399136, 34.687519, 31.716726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.732309, 35.037170, 32.029961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.822113, 34.731842, 32.272259>,  <24.875996, 34.548645, 32.417637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.822113, 34.731842, 32.272259>,  <24.732309, 35.037170, 32.029961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.822113, 34.731842, 32.272259> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098844, 0.636249, 0.765126,
		-0.969446, -0.111905, 0.218295,
		0.224511, -0.763325, 0.605747,
		24.889467, 34.502846, 32.453983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.337147, 35.141548, 32.611267>,  <24.732309, 35.037170, 32.029961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.337147, 35.141548, 32.611267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.610323, 34.873657, 32.727924>,  <24.774229, 34.712921, 32.797916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.610323, 34.873657, 32.727924>,  <24.337147, 35.141548, 32.611267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.610323, 34.873657, 32.727924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150031, 0.519340, 0.841295,
		-0.714899, -0.530801, 0.455159,
		0.682943, -0.669728, 0.291639,
		24.815207, 34.672737, 32.815414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.206694, 35.138744, 33.428497>,  <24.337147, 35.141548, 32.611267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.206694, 35.138744, 33.428497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.566387, 34.981987, 33.350727>,  <24.782204, 34.887932, 33.304066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.566387, 34.981987, 33.350727>,  <24.206694, 35.138744, 33.428497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.566387, 34.981987, 33.350727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406134, 0.582668, 0.703955,
		-0.162591, -0.711981, 0.683116,
		0.899233, -0.391893, -0.194424,
		24.836157, 34.864418, 33.292400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.554749, 35.016853, 34.092079>,  <24.206694, 35.138744, 33.428497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.554749, 35.016853, 34.092079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.852716, 35.015213, 33.825222>,  <25.031498, 35.014229, 33.665108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.852716, 35.015213, 33.825222>,  <24.554749, 35.016853, 34.092079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.852716, 35.015213, 33.825222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607215, 0.418423, 0.675435,
		0.276373, -0.908243, 0.314185,
		0.744921, -0.004106, -0.667140,
		25.076193, 35.013981, 33.625080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.158512, 34.499447, 34.433502>,  <24.554749, 35.016853, 34.092079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.158512, 34.499447, 34.433502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.299219, 34.774712, 34.179668>,  <25.383642, 34.939869, 34.027367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.299219, 34.774712, 34.179668>,  <25.158512, 34.499447, 34.433502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.299219, 34.774712, 34.179668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654682, 0.303677, 0.692222,
		0.669068, -0.658952, -0.343702,
		0.351766, 0.688159, -0.634584,
		25.404749, 34.981159, 33.989292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.869352, 34.506920, 34.476295>,  <25.158512, 34.499447, 34.433502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.869352, 34.506920, 34.476295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.775867, 34.871887, 34.341915>,  <25.719776, 35.090870, 34.261288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.775867, 34.871887, 34.341915>,  <25.869352, 34.506920, 34.476295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.775867, 34.871887, 34.341915> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593475, 0.407557, 0.694036,
		0.770173, -0.037172, -0.636751,
		-0.233713, 0.912423, -0.335950,
		25.705753, 35.145615, 34.241131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.480873, 34.914280, 34.546745>,  <25.869352, 34.506920, 34.476295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.480873, 34.914280, 34.546745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.250422, 35.224739, 34.444237>,  <26.112150, 35.411015, 34.382732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.250422, 35.224739, 34.444237>,  <26.480873, 34.914280, 34.546745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.250422, 35.224739, 34.444237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526981, 0.592390, 0.609397,
		0.624794, 0.216040, -0.750306,
		-0.576128, 0.776145, -0.256273,
		26.077583, 35.457584, 34.367355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.925421, 35.509186, 34.311283>,  <26.480873, 34.914280, 34.546745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.925421, 35.509186, 34.311283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.579201, 35.623737, 34.475628>,  <26.371468, 35.692471, 34.574234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.579201, 35.623737, 34.475628>,  <26.925421, 35.509186, 34.311283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.579201, 35.623737, 34.475628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495255, 0.611415, 0.617167,
		-0.074459, 0.737670, -0.671043,
		-0.865551, 0.286383, 0.410860,
		26.319536, 35.709652, 34.598885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.315584, 34.947300, 33.940491>,  <26.925421, 35.509186, 34.311283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.315584, 34.947300, 33.940491> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.664049, 34.752232, 33.963326>,  <27.873127, 34.635193, 33.977028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.664049, 34.752232, 33.963326>,  <27.315584, 34.947300, 33.940491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.664049, 34.752232, 33.963326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040568, -0.187361, -0.981453,
		0.489319, 0.852688, -0.183005,
		0.871161, -0.487668, 0.057087,
		27.925398, 34.605930, 33.980453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.776924, 35.250248, 33.492058>,  <27.315584, 34.947300, 33.940491>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.776924, 35.250248, 33.492058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.849316, 34.859779, 33.539936>,  <27.892750, 34.625496, 33.568665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.849316, 34.859779, 33.539936>,  <27.776924, 35.250248, 33.492058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.849316, 34.859779, 33.539936> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088590, -0.137395, -0.986547,
		0.979489, 0.167939, -0.111345,
		0.180978, -0.976176, 0.119699,
		27.903608, 34.566925, 33.575848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.415632, 35.064816, 33.078285>,  <27.776924, 35.250248, 33.492058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.415632, 35.064816, 33.078285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.142113, 34.777546, 33.129902>,  <27.978001, 34.605186, 33.160873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.142113, 34.777546, 33.129902>,  <28.415632, 35.064816, 33.078285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.142113, 34.777546, 33.129902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085771, -0.096515, -0.991629,
		0.724613, -0.689142, 0.004399,
		-0.683798, -0.718170, 0.129045,
		27.936974, 34.562096, 33.168613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.690519, 34.632652, 32.632076>,  <28.415632, 35.064816, 33.078285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.690519, 34.632652, 32.632076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.326170, 34.488590, 32.712673>,  <28.107561, 34.402153, 32.761032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.326170, 34.488590, 32.712673>,  <28.690519, 34.632652, 32.632076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.326170, 34.488590, 32.712673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036833, -0.415344, -0.908918,
		0.411040, -0.835331, 0.365060,
		-0.910873, -0.360155, 0.201491,
		28.052908, 34.380543, 32.773121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.678480, 33.947685, 32.465363>,  <28.690519, 34.632652, 32.632076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.678480, 33.947685, 32.465363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.288189, 34.032883, 32.485729>,  <28.054014, 34.084000, 32.497948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.288189, 34.032883, 32.485729>,  <28.678480, 33.947685, 32.465363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.288189, 34.032883, 32.485729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155598, -0.510670, -0.845580,
		-0.154103, -0.832977, 0.531416,
		-0.975726, 0.212994, 0.050914,
		27.995472, 34.096783, 32.501003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.277107, 33.347851, 32.498169>,  <28.678480, 33.947685, 32.465363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.277107, 33.347851, 32.498169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.015350, 33.614788, 32.355946>,  <27.858295, 33.774952, 32.270611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.015350, 33.614788, 32.355946>,  <28.277107, 33.347851, 32.498169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.015350, 33.614788, 32.355946> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244880, -0.631915, -0.735335,
		-0.715405, -0.394127, 0.576939,
		-0.654392, 0.667343, -0.355562,
		27.819033, 33.814991, 32.249279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.782665, 32.919765, 32.182652>,  <28.277107, 33.347851, 32.498169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.782665, 32.919765, 32.182652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.712187, 33.276962, 32.016994>,  <27.669901, 33.491280, 31.917599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.712187, 33.276962, 32.016994>,  <27.782665, 32.919765, 32.182652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.712187, 33.276962, 32.016994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365913, -0.449998, -0.814622,
		-0.913818, 0.008009, 0.406046,
		-0.176195, 0.892994, -0.414147,
		27.659328, 33.544861, 31.892750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.078581, 32.929707, 31.950626>,  <27.782665, 32.919765, 32.182652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.078581, 32.929707, 31.950626> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.266640, 33.194538, 31.717180>,  <27.379475, 33.353439, 31.577112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.266640, 33.194538, 31.717180>,  <27.078581, 32.929707, 31.950626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.266640, 33.194538, 31.717180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430512, -0.405217, -0.806510,
		-0.770468, 0.630432, 0.094523,
		0.470147, 0.662084, -0.583615,
		27.407684, 33.393162, 31.542095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.635012, 33.095947, 31.422117>,  <27.078581, 32.929707, 31.950626>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.635012, 33.095947, 31.422117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.966463, 33.259369, 31.269037>,  <27.165335, 33.357422, 31.177189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.966463, 33.259369, 31.269037>,  <26.635012, 33.095947, 31.422117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.966463, 33.259369, 31.269037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274547, -0.299176, -0.913848,
		-0.487852, 0.862308, -0.135738,
		0.828628, 0.408556, -0.382698,
		27.215052, 33.381935, 31.154228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.347206, 33.375084, 30.831997>,  <26.635012, 33.095947, 31.422117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.347206, 33.375084, 30.831997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.740355, 33.317204, 30.786346>,  <26.976244, 33.282475, 30.758957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.740355, 33.317204, 30.786346>,  <26.347206, 33.375084, 30.831997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.740355, 33.317204, 30.786346> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147344, -0.245058, -0.958246,
		0.110690, 0.958649, -0.262181,
		0.982872, -0.144700, -0.114125,
		27.035215, 33.273792, 30.752110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.573055, 33.692703, 30.158365>,  <26.347206, 33.375084, 30.831997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.573055, 33.692703, 30.158365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.880377, 33.448967, 30.236763>,  <27.064770, 33.302727, 30.283802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.880377, 33.448967, 30.236763>,  <26.573055, 33.692703, 30.158365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.880377, 33.448967, 30.236763> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124202, -0.158460, -0.979523,
		0.627918, 0.776915, -0.046064,
		0.768305, -0.609339, 0.195994,
		27.110868, 33.266167, 30.295561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.200937, 33.984268, 29.692102>,  <26.573055, 33.692703, 30.158365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.200937, 33.984268, 29.692102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.301622, 33.604794, 29.768654>,  <27.362034, 33.377106, 29.814585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.301622, 33.604794, 29.768654>,  <27.200937, 33.984268, 29.692102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.301622, 33.604794, 29.768654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065999, -0.180459, -0.981366,
		0.965549, 0.259652, 0.017189,
		0.251712, -0.948691, 0.191379,
		27.377136, 33.320187, 29.826067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.828650, 33.852982, 29.285730>,  <27.200937, 33.984268, 29.692102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.828650, 33.852982, 29.285730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.659817, 33.499832, 29.368071>,  <27.558517, 33.287941, 29.417475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.659817, 33.499832, 29.368071>,  <27.828650, 33.852982, 29.285730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.659817, 33.499832, 29.368071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146872, -0.290666, -0.945485,
		0.894580, -0.368840, 0.252356,
		-0.422084, -0.882876, 0.205852,
		27.533192, 33.234970, 29.429827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.230381, 33.374790, 28.969194>,  <27.828650, 33.852982, 29.285730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.230381, 33.374790, 28.969194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.887386, 33.177399, 29.027428>,  <27.681589, 33.058964, 29.062368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.887386, 33.177399, 29.027428>,  <28.230381, 33.374790, 28.969194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.887386, 33.177399, 29.027428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065940, -0.386033, -0.920125,
		0.510261, -0.779396, 0.363558,
		-0.857488, -0.493477, 0.145584,
		27.630140, 33.029354, 29.071102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.293566, 32.658306, 28.712008>,  <28.230381, 33.374790, 28.969194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.293566, 32.658306, 28.712008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.894032, 32.676373, 28.718746>,  <27.654310, 32.687214, 28.722790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.894032, 32.676373, 28.718746>,  <28.293566, 32.658306, 28.712008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.894032, 32.676373, 28.718746> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031180, -0.338797, -0.940343,
		-0.036766, -0.939775, 0.339811,
		-0.998837, 0.045168, 0.016846,
		27.594379, 32.689922, 28.723801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.067244, 31.968550, 28.352634>,  <28.293566, 32.658306, 28.712008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.067244, 31.968550, 28.352634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.777521, 32.243732, 28.334322>,  <27.603687, 32.408840, 28.323334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.777521, 32.243732, 28.334322>,  <28.067244, 31.968550, 28.352634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.777521, 32.243732, 28.334322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246192, -0.320082, -0.914843,
		-0.644027, -0.651355, 0.401207,
		-0.724306, 0.687957, -0.045784,
		27.560228, 32.450119, 28.320587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.484869, 31.704700, 27.968502>,  <28.067244, 31.968550, 28.352634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.484869, 31.704700, 27.968502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.401329, 32.095879, 27.968853>,  <27.351206, 32.330585, 27.969063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.401329, 32.095879, 27.968853>,  <27.484869, 31.704700, 27.968502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.401329, 32.095879, 27.968853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145691, -0.030226, -0.988869,
		-0.967035, -0.206652, 0.148791,
		-0.208849, 0.977948, 0.000877,
		27.338675, 32.389263, 27.969116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.722765, 31.771959, 27.716869>,  <27.484869, 31.704700, 27.968502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.722765, 31.771959, 27.716869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.921261, 32.106709, 27.624445>,  <27.040358, 32.307560, 27.568991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.921261, 32.106709, 27.624445>,  <26.722765, 31.771959, 27.716869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.921261, 32.106709, 27.624445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006171, -0.269534, -0.962971,
		-0.868165, 0.476437, -0.138917,
		0.496238, 0.836875, -0.231059,
		27.070131, 32.357773, 27.555128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.399420, 32.083622, 27.100361>,  <26.722765, 31.771959, 27.716869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.399420, 32.083622, 27.100361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.749226, 32.277618, 27.101315>,  <26.959110, 32.394016, 27.101887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.749226, 32.277618, 27.101315>,  <26.399420, 32.083622, 27.100361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.749226, 32.277618, 27.101315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237042, -0.423123, -0.874516,
		-0.423123, 0.765344, -0.484991,
		0.874516, 0.484991, 0.002386,
		27.011580, 32.423115, 27.102030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.356726, 32.610577, 26.464916>,  <26.399420, 32.083622, 27.100361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.356726, 32.610577, 26.464916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.740046, 32.529961, 26.545952>,  <26.970037, 32.481590, 26.594574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.740046, 32.529961, 26.545952>,  <26.356726, 32.610577, 26.464916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.740046, 32.529961, 26.545952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100466, -0.426063, -0.899097,
		0.267523, 0.881958, -0.388048,
		0.958299, -0.201544, 0.202589,
		27.027534, 32.469498, 26.606728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.730303, 32.764359, 25.937967>,  <26.356726, 32.610577, 26.464916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.730303, 32.764359, 25.937967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.986345, 32.513275, 26.115166>,  <27.139971, 32.362625, 26.221485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.986345, 32.513275, 26.115166>,  <26.730303, 32.764359, 25.937967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.986345, 32.513275, 26.115166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234403, -0.389547, -0.890678,
		0.731655, 0.673968, -0.102214,
		0.640106, -0.627710, 0.442995,
		27.178377, 32.324963, 26.248064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.599594, 33.325081, 45.516987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.430080, 32.964306, 45.550243>,  <40.328373, 32.747841, 45.570198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.430080, 32.964306, 45.550243>,  <40.599594, 33.325081, 45.516987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.430080, 32.964306, 45.550243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173876, 0.171092, 0.969791,
		-0.888916, 0.396528, -0.229332,
		-0.423786, -0.901938, 0.083140,
		40.302944, 32.693726, 45.575184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049923, 33.433575, 45.971142>,  <40.599594, 33.325081, 45.516987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.049923, 33.433575, 45.971142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.133118, 33.043980, 46.007107>,  <40.183033, 32.810223, 46.028687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.133118, 33.043980, 46.007107>,  <40.049923, 33.433575, 45.971142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.133118, 33.043980, 46.007107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141168, 0.061074, 0.988100,
		-0.967892, -0.218200, -0.124794,
		0.207982, -0.973991, 0.089916,
		40.195511, 32.751781, 46.034081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610565, 33.217255, 46.546589>,  <40.049923, 33.433575, 45.971142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610565, 33.217255, 46.546589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.861897, 32.907295, 46.519058>,  <40.012695, 32.721317, 46.502541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.861897, 32.907295, 46.519058>,  <39.610565, 33.217255, 46.546589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861897, 32.907295, 46.519058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116264, 0.006062, 0.993200,
		-0.769215, -0.632053, 0.093902,
		0.628324, -0.774901, -0.068822,
		40.050392, 32.674824, 46.498413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.335106, 32.719006, 47.018711>,  <39.610565, 33.217255, 46.546589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.335106, 32.719006, 47.018711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.727852, 32.679256, 46.954140>,  <39.963501, 32.655407, 46.915398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.727852, 32.679256, 46.954140>,  <39.335106, 32.719006, 47.018711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.727852, 32.679256, 46.954140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139576, -0.197257, 0.970365,
		-0.128264, -0.975303, -0.179812,
		0.981869, -0.099365, -0.161430,
		40.022411, 32.649445, 46.905712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424805, 32.252560, 47.417797>,  <39.335106, 32.719006, 47.018711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424805, 32.252560, 47.417797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.799824, 32.382202, 47.367252>,  <40.024834, 32.459988, 47.336926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.799824, 32.382202, 47.367252>,  <39.424805, 32.252560, 47.417797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.799824, 32.382202, 47.367252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167936, -0.103570, 0.980342,
		0.304647, -0.940334, -0.151530,
		0.937543, 0.324106, -0.126363,
		40.081085, 32.479435, 47.329342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710060, 31.929581, 47.916721>,  <39.424805, 32.252560, 47.417797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710060, 31.929581, 47.916721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.991432, 32.190681, 47.804226>,  <40.160255, 32.347343, 47.736729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.991432, 32.190681, 47.804226>,  <39.710060, 31.929581, 47.916721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.991432, 32.190681, 47.804226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323115, 0.058751, 0.944534,
		0.633069, -0.755291, -0.169586,
		0.703435, 0.652751, -0.281240,
		40.202461, 32.386505, 47.719852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.394314, 31.688593, 48.077068>,  <39.710060, 31.929581, 47.916721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.394314, 31.688593, 48.077068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.386887, 32.088467, 48.070343>,  <40.382431, 32.328392, 48.066307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.386887, 32.088467, 48.070343>,  <40.394314, 31.688593, 48.077068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.386887, 32.088467, 48.070343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250516, 0.020929, 0.967886,
		0.967934, 0.013764, -0.250826,
		-0.018571, 0.999686, -0.016810,
		40.381313, 32.388374, 48.065300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.916988, 31.812368, 48.440956>,  <40.394314, 31.688593, 48.077068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.916988, 31.812368, 48.440956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.703182, 32.150410, 48.437122>,  <40.574898, 32.353233, 48.434822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.703182, 32.150410, 48.437122>,  <40.916988, 31.812368, 48.440956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703182, 32.150410, 48.437122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064747, 0.052259, 0.996532,
		0.842674, 0.532043, -0.082651,
		-0.534517, 0.845103, -0.009589,
		40.542828, 32.403942, 48.434246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.288639, 32.267910, 48.834457>,  <40.916988, 31.812368, 48.440956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.288639, 32.267910, 48.834457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.927818, 32.438503, 48.807919>,  <40.711327, 32.540859, 48.791996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.927818, 32.438503, 48.807919>,  <41.288639, 32.267910, 48.834457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.927818, 32.438503, 48.807919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073442, -0.000183, 0.997299,
		0.425323, 0.904493, 0.031487,
		-0.902057, 0.426487, -0.066350,
		40.657200, 32.566448, 48.788013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.344551, 32.729256, 49.411823>,  <41.288639, 32.267910, 48.834457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.344551, 32.729256, 49.411823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.967968, 32.655491, 49.298939>,  <40.742016, 32.611233, 49.231209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.967968, 32.655491, 49.298939>,  <41.344551, 32.729256, 49.411823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.967968, 32.655491, 49.298939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245346, -0.199316, 0.948725,
		-0.231209, 0.962426, 0.142402,
		-0.941460, -0.184416, -0.282211,
		40.685532, 32.600166, 49.214275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.989162, 33.081974, 49.942776>,  <41.344551, 32.729256, 49.411823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.989162, 33.081974, 49.942776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.738346, 32.827641, 49.762760>,  <40.587856, 32.675041, 49.654751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.738346, 32.827641, 49.762760>,  <40.989162, 33.081974, 49.942776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.738346, 32.827641, 49.762760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288394, -0.347192, 0.892349,
		-0.723638, 0.689326, 0.034331,
		-0.627038, -0.635836, -0.450039,
		40.550236, 32.636890, 49.627747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466759, 33.102383, 50.435936>,  <40.989162, 33.081974, 49.942776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.466759, 33.102383, 50.435936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.457699, 32.772430, 50.209995>,  <40.452263, 32.574459, 50.074432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.457699, 32.772430, 50.209995>,  <40.466759, 33.102383, 50.435936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.457699, 32.772430, 50.209995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225879, -0.546164, 0.806649,
		-0.973892, 0.145862, -0.173951,
		-0.022653, -0.824881, -0.564852,
		40.450901, 32.524967, 50.040539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781738, 32.767067, 50.426029>,  <40.466759, 33.102383, 50.435936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.781738, 32.767067, 50.426029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.082333, 32.506771, 50.382553>,  <40.262688, 32.350594, 50.356468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.082333, 32.506771, 50.382553>,  <39.781738, 32.767067, 50.426029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082333, 32.506771, 50.382553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332991, -0.516327, 0.789002,
		-0.569552, -0.556730, -0.604701,
		0.751484, -0.650737, -0.108689,
		40.307777, 32.311550, 50.349945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760628, 32.358128, 51.029263>,  <39.781738, 32.767067, 50.426029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.760628, 32.358128, 51.029263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.397491, 32.337284, 51.195690>,  <39.179611, 32.324776, 51.295547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.397491, 32.337284, 51.195690>,  <39.760628, 32.358128, 51.029263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397491, 32.337284, 51.195690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419319, -0.116907, 0.900280,
		0.001728, 0.991775, 0.127983,
		-0.907837, -0.052110, 0.416072,
		39.125141, 32.321651, 51.320511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.367702, 32.806248, 51.598663>,  <39.760628, 32.358128, 51.029263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.367702, 32.806248, 51.598663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.047207, 33.041035, 51.645107>,  <38.854908, 33.181908, 51.672974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.047207, 33.041035, 51.645107>,  <39.367702, 32.806248, 51.598663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047207, 33.041035, 51.645107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129749, 0.359881, -0.923932,
		-0.584102, -0.725229, -0.364510,
		-0.801243, 0.586966, 0.116110,
		38.806835, 33.217125, 51.679939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881397, 32.829205, 50.924896>,  <39.367702, 32.806248, 51.598663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881397, 32.829205, 50.924896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.832027, 33.171364, 51.126114>,  <38.802406, 33.376659, 51.246845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.832027, 33.171364, 51.126114>,  <38.881397, 32.829205, 50.924896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832027, 33.171364, 51.126114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157389, 0.517377, -0.841160,
		-0.979794, -0.024645, -0.198487,
		-0.123423, 0.855403, 0.503044,
		38.795002, 33.427986, 51.277027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389801, 33.234638, 50.485683>,  <38.881397, 32.829205, 50.924896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389801, 33.234638, 50.485683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.521324, 33.522469, 50.730335>,  <38.600239, 33.695168, 50.877125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.521324, 33.522469, 50.730335>,  <38.389801, 33.234638, 50.485683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521324, 33.522469, 50.730335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049642, 0.633575, -0.772087,
		-0.943091, 0.284231, 0.172603,
		0.328808, 0.719580, 0.611629,
		38.619968, 33.738342, 50.913822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048046, 33.853325, 50.343166>,  <38.389801, 33.234638, 50.485683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.048046, 33.853325, 50.343166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.364288, 34.006657, 50.534161>,  <38.554035, 34.098656, 50.648758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.364288, 34.006657, 50.534161>,  <38.048046, 33.853325, 50.343166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364288, 34.006657, 50.534161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077065, 0.711305, -0.698646,
		-0.607453, 0.589153, 0.532822,
		0.790609, 0.383333, 0.477487,
		38.601471, 34.121658, 50.677406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899799, 34.530262, 50.494652>,  <38.048046, 33.853325, 50.343166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899799, 34.530262, 50.494652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.299122, 34.508472, 50.486534>,  <38.538715, 34.495399, 50.481663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.299122, 34.508472, 50.486534>,  <37.899799, 34.530262, 50.494652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299122, 34.508472, 50.486534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025558, 0.724804, -0.688481,
		0.052213, 0.686798, 0.724971,
		0.998309, -0.054476, -0.020291,
		38.598614, 34.492130, 50.480446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094788, 35.249893, 50.387959>,  <37.899799, 34.530262, 50.494652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094788, 35.249893, 50.387959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.394279, 35.013023, 50.268806>,  <38.573975, 34.870899, 50.197315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.394279, 35.013023, 50.268806>,  <38.094788, 35.249893, 50.387959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394279, 35.013023, 50.268806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138196, 0.578948, -0.803568,
		0.648314, 0.560487, 0.515310,
		0.748727, -0.592178, -0.297883,
		38.618896, 34.835369, 50.179443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606201, 35.661564, 50.253479>,  <38.094788, 35.249893, 50.387959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606201, 35.661564, 50.253479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.690220, 35.334488, 50.039089>,  <38.740631, 35.138245, 49.910454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.690220, 35.334488, 50.039089>,  <38.606201, 35.661564, 50.253479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690220, 35.334488, 50.039089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278228, 0.575531, -0.768995,
		0.937266, 0.012405, 0.348394,
		0.210051, -0.817686, -0.535975,
		38.753235, 35.089184, 49.878296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171421, 35.916985, 49.830238>,  <38.606201, 35.661564, 50.253479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171421, 35.916985, 49.830238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.013908, 35.589798, 49.662495>,  <38.919399, 35.393486, 49.561848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.013908, 35.589798, 49.662495>,  <39.171421, 35.916985, 49.830238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013908, 35.589798, 49.662495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104510, 0.413425, -0.904521,
		0.913243, -0.400013, -0.077314,
		-0.393784, -0.817966, -0.419363,
		38.895775, 35.344406, 49.536686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571964, 35.848618, 49.147469>,  <39.171421, 35.916985, 49.830238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.571964, 35.848618, 49.147469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.234589, 35.637543, 49.107155>,  <39.032166, 35.510899, 49.082966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.234589, 35.637543, 49.107155>,  <39.571964, 35.848618, 49.147469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234589, 35.637543, 49.107155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095666, 0.037075, -0.994723,
		0.528641, -0.848628, 0.019211,
		-0.843437, -0.527690, -0.100784,
		38.981556, 35.479237, 49.076920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674042, 35.524185, 48.525620>,  <39.571964, 35.848618, 49.147469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.674042, 35.524185, 48.525620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.282406, 35.481449, 48.594872>,  <39.047424, 35.455807, 48.636421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.282406, 35.481449, 48.594872>,  <39.674042, 35.524185, 48.525620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282406, 35.481449, 48.594872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173404, -0.006793, -0.984827,
		0.106402, -0.994252, -0.011876,
		-0.979086, -0.106847, 0.173130,
		38.988682, 35.449394, 48.646812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547665, 34.975098, 48.086342>,  <39.674042, 35.524185, 48.525620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.547665, 34.975098, 48.086342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.204258, 35.166363, 48.160439>,  <38.998215, 35.281120, 48.204895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.204258, 35.166363, 48.160439>,  <39.547665, 34.975098, 48.086342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204258, 35.166363, 48.160439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212478, -0.002935, -0.977161,
		-0.466698, -0.878267, 0.104118,
		-0.858514, 0.478162, 0.185243,
		38.946705, 35.309811, 48.216011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115707, 34.682388, 47.627979>,  <39.547665, 34.975098, 48.086342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.115707, 34.682388, 47.627979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.901936, 35.005394, 47.727829>,  <38.773674, 35.199196, 47.787739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.901936, 35.005394, 47.727829>,  <39.115707, 34.682388, 47.627979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901936, 35.005394, 47.727829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388081, 0.027930, -0.921202,
		-0.750852, -0.589192, 0.298453,
		-0.534429, 0.807510, 0.249625,
		38.741608, 35.247646, 47.802715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397083, 34.542889, 47.334217>,  <39.115707, 34.682388, 47.627979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397083, 34.542889, 47.334217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.423138, 34.940495, 47.369312>,  <38.438770, 35.179058, 47.390369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.423138, 34.940495, 47.369312>,  <38.397083, 34.542889, 47.334217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423138, 34.940495, 47.369312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101449, 0.094062, -0.990384,
		-0.992706, 0.055605, 0.106967,
		0.065132, 0.994012, 0.087735,
		38.442677, 35.238697, 47.395634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792198, 34.902206, 46.992599>,  <38.397083, 34.542889, 47.334217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792198, 34.902206, 46.992599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.069355, 35.190479, 47.001610>,  <38.235649, 35.363445, 47.007015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.069355, 35.190479, 47.001610>,  <37.792198, 34.902206, 46.992599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.069355, 35.190479, 47.001610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102048, 0.128949, -0.986387,
		-0.713780, 0.681164, 0.162892,
		0.692895, 0.720686, 0.022530,
		38.277225, 35.406685, 47.008369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105396, 35.206249, 46.991241>,  <37.792198, 34.902206, 46.992599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105396, 35.206249, 46.991241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.719612, 35.103008, 46.968616>,  <36.488140, 35.041065, 46.955040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.719612, 35.103008, 46.968616>,  <37.105396, 35.206249, 46.991241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719612, 35.103008, 46.968616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072171, -0.463250, 0.883284,
		-0.254180, 0.847810, 0.465414,
		-0.964460, -0.258103, -0.056562,
		36.430275, 35.025578, 46.951649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762413, 35.261589, 47.695663>,  <37.105396, 35.206249, 46.991241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762413, 35.261589, 47.695663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.515152, 35.014690, 47.500973>,  <36.366795, 34.866550, 47.384159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.515152, 35.014690, 47.500973>,  <36.762413, 35.261589, 47.695663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515152, 35.014690, 47.500973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116358, -0.540525, 0.833243,
		-0.777401, 0.571703, 0.262304,
		-0.618149, -0.617242, -0.486727,
		36.329708, 34.829517, 47.354954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181831, 35.128902, 48.190079>,  <36.762413, 35.261589, 47.695663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181831, 35.128902, 48.190079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.165188, 34.820763, 47.935574>,  <36.155201, 34.635880, 47.782871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.165188, 34.820763, 47.935574>,  <36.181831, 35.128902, 48.190079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165188, 34.820763, 47.935574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249183, -0.608692, 0.753261,
		-0.967562, 0.189886, -0.166633,
		-0.041605, -0.770349, -0.636264,
		36.152706, 34.589657, 47.744694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602558, 34.810059, 48.361336>,  <36.181831, 35.128902, 48.190079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602558, 34.810059, 48.361336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.833160, 34.528175, 48.195919>,  <35.971523, 34.359043, 48.096668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.833160, 34.528175, 48.195919>,  <35.602558, 34.810059, 48.361336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833160, 34.528175, 48.195919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104164, -0.565376, 0.818230,
		-0.810423, -0.428642, -0.399350,
		0.576510, -0.704711, -0.413545,
		36.006115, 34.316761, 48.071857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256886, 34.192043, 48.369343>,  <35.602558, 34.810059, 48.361336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256886, 34.192043, 48.369343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.630505, 34.060291, 48.314125>,  <35.854675, 33.981239, 48.280994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.630505, 34.060291, 48.314125>,  <35.256886, 34.192043, 48.369343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630505, 34.060291, 48.314125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043228, -0.487946, 0.871802,
		-0.354514, -0.808341, -0.470005,
		0.934051, -0.329384, -0.138041,
		35.910721, 33.961475, 48.272713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243431, 33.435528, 48.580307>,  <35.256886, 34.192043, 48.369343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243431, 33.435528, 48.580307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.624359, 33.556892, 48.593079>,  <35.852917, 33.629711, 48.600742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.624359, 33.556892, 48.593079>,  <35.243431, 33.435528, 48.580307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624359, 33.556892, 48.593079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155253, -0.572052, 0.805390,
		0.262636, -0.762034, -0.591884,
		0.952323, 0.303416, 0.031933,
		35.910057, 33.647919, 48.602657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498165, 32.781174, 48.702030>,  <35.243431, 33.435528, 48.580307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498165, 32.781174, 48.702030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.781555, 33.048996, 48.791248>,  <35.951591, 33.209690, 48.844780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.781555, 33.048996, 48.791248>,  <35.498165, 32.781174, 48.702030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.781555, 33.048996, 48.791248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190601, -0.485841, 0.853012,
		0.679507, -0.561828, -0.471826,
		0.708478, 0.669558, 0.223047,
		35.994099, 33.249863, 48.858162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888447, 32.392200, 48.200890>,  <35.498165, 32.781174, 48.702030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888447, 32.392200, 48.200890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.819351, 32.022530, 48.064617>,  <35.777893, 31.800728, 47.982853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.819351, 32.022530, 48.064617>,  <35.888447, 32.392200, 48.200890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819351, 32.022530, 48.064617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434763, 0.381904, -0.815555,
		0.883823, 0.007243, -0.467765,
		-0.172735, -0.924173, -0.340685,
		35.767532, 31.745277, 47.962410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.039642, 32.494217, 47.508831>,  <35.888447, 32.392200, 48.200890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.039642, 32.494217, 47.508831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.843700, 32.145535, 47.514057>,  <35.726135, 31.936325, 47.517193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.843700, 32.145535, 47.514057>,  <36.039642, 32.494217, 47.508831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843700, 32.145535, 47.514057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323852, 0.168031, -0.931067,
		0.809422, -0.460318, -0.364615,
		-0.489854, -0.871707, 0.013067,
		35.696743, 31.884022, 47.517979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352367, 32.033661, 46.985561>,  <36.039642, 32.494217, 47.508831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352367, 32.033661, 46.985561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.967976, 31.953114, 47.061420>,  <35.737339, 31.904785, 47.106934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.967976, 31.953114, 47.061420>,  <36.352367, 32.033661, 46.985561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967976, 31.953114, 47.061420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216242, 0.119366, -0.969016,
		0.172493, -0.972215, -0.158253,
		-0.960982, -0.201369, 0.189644,
		35.679680, 31.892702, 47.118313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163956, 31.607109, 46.419830>,  <36.352367, 32.033661, 46.985561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.163956, 31.607109, 46.419830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.818043, 31.726980, 46.581001>,  <35.610497, 31.798903, 46.677704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.818043, 31.726980, 46.581001>,  <36.163956, 31.607109, 46.419830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818043, 31.726980, 46.581001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424339, -0.007062, -0.905476,
		-0.268505, -0.954015, 0.133272,
		-0.864778, 0.299677, 0.402930,
		35.558609, 31.816883, 46.701881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743950, 31.132292, 46.122257>,  <36.163956, 31.607109, 46.419830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743950, 31.132292, 46.122257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.527496, 31.447296, 46.240242>,  <35.397625, 31.636299, 46.311031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.527496, 31.447296, 46.240242>,  <35.743950, 31.132292, 46.122257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527496, 31.447296, 46.240242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467873, 0.009507, -0.883745,
		-0.698764, -0.616225, 0.363311,
		-0.541132, 0.787513, 0.294959,
		35.365158, 31.683550, 46.328732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006897, 31.090435, 45.803467>,  <35.743950, 31.132292, 46.122257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006897, 31.090435, 45.803467> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.013268, 31.475023, 45.913242>,  <35.017090, 31.705776, 45.979107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.013268, 31.475023, 45.913242>,  <35.006897, 31.090435, 45.803467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013268, 31.475023, 45.913242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444173, 0.252708, -0.859563,
		-0.895799, -0.108213, 0.431084,
		0.015923, 0.961472, 0.274441,
		35.018044, 31.763466, 45.995575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400539, 31.439962, 45.476215>,  <35.006897, 31.090435, 45.803467>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400539, 31.439962, 45.476215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.636734, 31.759777, 45.520145>,  <34.778450, 31.951666, 45.546501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.636734, 31.759777, 45.520145>,  <34.400539, 31.439962, 45.476215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636734, 31.759777, 45.520145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278814, 0.329801, -0.901939,
		-0.757354, 0.501965, 0.417667,
		0.590489, 0.799538, 0.109821,
		34.813881, 31.999640, 45.553093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<39.110691, 29.817057, 48.307320> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.376266, 30.042885, 48.503460>,  <39.535610, 30.178383, 48.621143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.376266, 30.042885, 48.503460>,  <39.110691, 29.817057, 48.307320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376266, 30.042885, 48.503460> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376844, 0.313767, -0.871515,
		-0.645889, 0.763419, -0.004433,
		0.663940, 0.564572, 0.490349,
		39.575447, 30.212257, 48.650566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025425, 30.449528, 48.065540>,  <39.110691, 29.817057, 48.307320>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025425, 30.449528, 48.065540> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.392399, 30.405396, 48.218456>,  <39.612583, 30.378916, 48.310207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.392399, 30.405396, 48.218456>,  <39.025425, 30.449528, 48.065540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392399, 30.405396, 48.218456> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395273, 0.142641, -0.907421,
		0.045587, 0.983606, 0.174474,
		0.917432, -0.110332, 0.382290,
		39.667629, 30.372295, 48.333145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457756, 30.876492, 47.678947>,  <39.025425, 30.449528, 48.065540>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457756, 30.876492, 47.678947> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.707272, 30.634346, 47.876701>,  <39.856983, 30.489058, 47.995354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.707272, 30.634346, 47.876701>,  <39.457756, 30.876492, 47.678947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.707272, 30.634346, 47.876701> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540107, -0.123338, -0.832510,
		0.564949, 0.786334, 0.250024,
		0.623793, -0.605365, 0.494384,
		39.894409, 30.452736, 48.025017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012608, 31.112391, 47.395775>,  <39.457756, 30.876492, 47.678947>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012608, 31.112391, 47.395775> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.098373, 30.757805, 47.559826>,  <40.149834, 30.545053, 47.658257>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.098373, 30.757805, 47.559826>,  <40.012608, 31.112391, 47.395775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.098373, 30.757805, 47.559826> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547600, -0.238600, -0.802001,
		0.808802, 0.396549, 0.434268,
		0.214416, -0.886465, 0.410130,
		40.162697, 30.491865, 47.682865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.724873, 31.018391, 47.372936>,  <40.012608, 31.112391, 47.395775>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.724873, 31.018391, 47.372936> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.574459, 30.648369, 47.394367>,  <40.484211, 30.426355, 47.407227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.574459, 30.648369, 47.394367>,  <40.724873, 31.018391, 47.372936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.574459, 30.648369, 47.394367> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522586, -0.259466, -0.812146,
		0.765182, -0.277396, 0.580989,
		-0.376033, -0.925056, 0.053576,
		40.461651, 30.370852, 47.410439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.304203, 30.619005, 47.291553>,  <40.724873, 31.018391, 47.372936>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.304203, 30.619005, 47.291553> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.980103, 30.398380, 47.212288>,  <40.785641, 30.266006, 47.164726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.980103, 30.398380, 47.212288>,  <41.304203, 30.619005, 47.291553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.980103, 30.398380, 47.212288> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342149, -0.170639, -0.924022,
		0.475839, -0.816495, 0.326976,
		-0.810254, -0.551560, -0.198166,
		40.737026, 30.232912, 47.152840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.548527, 30.294418, 46.724831>,  <41.304203, 30.619005, 47.291553>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.548527, 30.294418, 46.724831> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.163361, 30.187641, 46.709141>,  <40.932262, 30.123575, 46.699726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.163361, 30.187641, 46.709141>,  <41.548527, 30.294418, 46.724831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.163361, 30.187641, 46.709141> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141490, -0.375803, -0.915834,
		0.229732, -0.887420, 0.399635,
		-0.962914, -0.266941, -0.039227,
		40.874485, 30.107559, 46.697372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.393112, 29.524277, 46.648392>,  <41.548527, 30.294418, 46.724831>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.393112, 29.524277, 46.648392> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.083534, 29.719555, 46.487061>,  <40.897785, 29.836721, 46.390263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.083534, 29.719555, 46.487061>,  <41.393112, 29.524277, 46.648392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.083534, 29.719555, 46.487061> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040057, -0.597892, -0.800575,
		-0.631990, -0.635754, 0.443177,
		-0.773941, 0.488203, -0.403328,
		40.851349, 29.866014, 46.366062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.962711, 28.998701, 46.119667>,  <41.393112, 29.524277, 46.648392>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.962711, 28.998701, 46.119667> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.827400, 29.355127, 45.998627>,  <40.746212, 29.568983, 45.926003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.827400, 29.355127, 45.998627>,  <40.962711, 28.998701, 46.119667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.827400, 29.355127, 45.998627> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242574, -0.393259, -0.886852,
		-0.909245, -0.226599, 0.349180,
		-0.338278, 0.891067, -0.302601,
		40.725918, 29.622448, 45.907845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.550755, 28.821722, 45.670040>,  <40.962711, 28.998701, 46.119667>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.550755, 28.821722, 45.670040> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.592785, 29.201965, 45.553215>,  <40.618004, 29.430111, 45.483120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.592785, 29.201965, 45.553215>,  <40.550755, 28.821722, 45.670040>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.592785, 29.201965, 45.553215> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258007, -0.257573, -0.931176,
		-0.960413, 0.173195, 0.218200,
		0.105073, 0.950610, -0.292062,
		40.624306, 29.487148, 45.465595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.917870, 29.029985, 45.188000>,  <40.550755, 28.821722, 45.670040>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.917870, 29.029985, 45.188000> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.167442, 29.333771, 45.114330>,  <40.317188, 29.516043, 45.070129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.167442, 29.333771, 45.114330>,  <39.917870, 29.029985, 45.188000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.167442, 29.333771, 45.114330> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373041, 0.082354, -0.924153,
		-0.686692, 0.645316, 0.334694,
		0.623934, 0.759463, -0.184178,
		40.354622, 29.561609, 45.059078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485012, 29.668407, 44.926384>,  <39.917870, 29.029985, 45.188000>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485012, 29.668407, 44.926384> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.851181, 29.677723, 44.765659>,  <40.070885, 29.683311, 44.669224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.851181, 29.677723, 44.765659>,  <39.485012, 29.668407, 44.926384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.851181, 29.677723, 44.765659> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402475, 0.045162, -0.914316,
		-0.003147, 0.998708, 0.050715,
		0.915425, 0.023289, -0.401813,
		40.125809, 29.684710, 44.645115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799355, 29.976545, 44.674603>,  <39.485012, 29.668407, 44.926384>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799355, 29.976545, 44.674603> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.435463, 29.834747, 44.761066>,  <38.217129, 29.749668, 44.812946>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.435463, 29.834747, 44.761066>,  <38.799355, 29.976545, 44.674603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435463, 29.834747, 44.761066> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229279, 0.005138, 0.973347,
		-0.346159, 0.935043, 0.076604,
		-0.909728, -0.354497, 0.216164,
		38.162544, 29.728397, 44.825916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636333, 30.279310, 45.323399>,  <38.799355, 29.976545, 44.674603>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636333, 30.279310, 45.323399> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.348705, 30.002155, 45.302052>,  <38.176128, 29.835863, 45.289246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.348705, 30.002155, 45.302052>,  <38.636333, 30.279310, 45.323399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348705, 30.002155, 45.302052> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008251, -0.068271, 0.997633,
		-0.694889, 0.717807, 0.043375,
		-0.719069, -0.692886, -0.053364,
		38.132984, 29.794289, 45.286041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129314, 30.544239, 45.781742>,  <38.636333, 30.279310, 45.323399>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129314, 30.544239, 45.781742> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.052753, 30.156343, 45.721111>,  <38.006817, 29.923607, 45.684734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.052753, 30.156343, 45.721111>,  <38.129314, 30.544239, 45.781742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052753, 30.156343, 45.721111> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335476, -0.080495, 0.938604,
		-0.922400, 0.230502, -0.309916,
		-0.191403, -0.969737, -0.151577,
		37.995331, 29.865423, 45.675640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348774, 30.340830, 45.876335>,  <38.129314, 30.544239, 45.781742>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348774, 30.340830, 45.876335> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.565647, 30.010374, 45.937695>,  <37.695770, 29.812099, 45.974510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.565647, 30.010374, 45.937695>,  <37.348774, 30.340830, 45.876335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565647, 30.010374, 45.937695> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384131, -0.081333, 0.919689,
		-0.747318, -0.557561, -0.361444,
		0.542180, -0.826142, 0.153395,
		37.728302, 29.762531, 45.983715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026428, 30.038422, 46.378036>,  <37.348774, 30.340830, 45.876335>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026428, 30.038422, 46.378036> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.354256, 29.809429, 46.387665>,  <37.550953, 29.672035, 46.393440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.354256, 29.809429, 46.387665>,  <37.026428, 30.038422, 46.378036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354256, 29.809429, 46.387665> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243469, -0.309909, 0.919064,
		-0.518686, -0.759094, -0.393372,
		0.819566, -0.572480, 0.024071,
		37.600124, 29.637686, 46.394886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.798820, 29.373642, 46.664490>,  <37.026428, 30.038422, 46.378036>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.798820, 29.373642, 46.664490> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.196255, 29.351940, 46.704185>,  <37.434715, 29.338919, 46.728004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.196255, 29.351940, 46.704185>,  <36.798820, 29.373642, 46.664490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196255, 29.351940, 46.704185> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113100, -0.484587, 0.867400,
		0.001030, -0.873059, -0.487614,
		0.993583, -0.054256, 0.099242,
		37.494331, 29.335663, 46.733959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946487, 28.644457, 46.811134>,  <36.798820, 29.373642, 46.664490>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946487, 28.644457, 46.811134> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.239780, 28.888229, 46.931774>,  <37.415756, 29.034492, 47.004158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.239780, 28.888229, 46.931774>,  <36.946487, 28.644457, 46.811134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239780, 28.888229, 46.931774> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073958, -0.369437, 0.926308,
		0.675943, -0.701506, -0.225811,
		0.733233, 0.609431, 0.301600,
		37.459751, 29.071058, 47.022255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326157, 28.264420, 47.255142>,  <36.946487, 28.644457, 46.811134>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326157, 28.264420, 47.255142> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.435574, 28.638214, 47.346279>,  <37.501225, 28.862492, 47.400963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.435574, 28.638214, 47.346279>,  <37.326157, 28.264420, 47.255142>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435574, 28.638214, 47.346279> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198495, -0.286623, 0.937255,
		0.941157, -0.211149, -0.263893,
		0.273538, 0.934486, 0.227845,
		37.517635, 28.918560, 47.414631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984589, 28.197556, 47.590019>,  <37.326157, 28.264420, 47.255142>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984589, 28.197556, 47.590019> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.864620, 28.563206, 47.699142>,  <37.792637, 28.782595, 47.764618>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.864620, 28.563206, 47.699142>,  <37.984589, 28.197556, 47.590019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864620, 28.563206, 47.699142> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279593, -0.189182, 0.941296,
		0.912071, 0.358593, -0.198842,
		-0.299924, 0.914123, 0.272808,
		37.774643, 28.837442, 47.780983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512608, 28.474541, 48.161705>,  <37.984589, 28.197556, 47.590019>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512608, 28.474541, 48.161705> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.194237, 28.715582, 48.184940>,  <38.003216, 28.860207, 48.198883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.194237, 28.715582, 48.184940>,  <38.512608, 28.474541, 48.161705>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194237, 28.715582, 48.184940> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150208, 0.103612, 0.983210,
		0.586467, 0.791286, -0.172983,
		-0.795923, 0.602604, 0.058093,
		37.955460, 28.896362, 48.202370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729790, 29.021824, 48.655357>,  <38.512608, 28.474541, 48.161705>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.729790, 29.021824, 48.655357> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.332081, 28.985449, 48.632862>,  <38.093456, 28.963625, 48.619366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.332081, 28.985449, 48.632862>,  <38.729790, 29.021824, 48.655357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332081, 28.985449, 48.632862> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058089, 0.017881, 0.998151,
		-0.089763, 0.995696, -0.023061,
		-0.994268, -0.090936, -0.056234,
		38.033802, 28.958168, 48.615993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436020, 29.599579, 48.986649>,  <38.729790, 29.021824, 48.655357>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436020, 29.599579, 48.986649> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.139950, 29.331177, 49.004036>,  <37.962307, 29.170135, 49.014469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.139950, 29.331177, 49.004036>,  <38.436020, 29.599579, 48.986649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139950, 29.331177, 49.004036> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140176, 0.217210, 0.966008,
		-0.657639, 0.708923, -0.254832,
		-0.740177, -0.671006, 0.043472,
		37.917896, 29.129875, 49.017078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031708, 29.809278, 49.506290>,  <38.436020, 29.599579, 48.986649>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031708, 29.809278, 49.506290> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.848621, 29.454082, 49.488548>,  <37.738770, 29.240965, 49.477901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.848621, 29.454082, 49.488548>,  <38.031708, 29.809278, 49.506290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848621, 29.454082, 49.488548> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232104, 0.071180, 0.970083,
		-0.858267, 0.454320, -0.238686,
		-0.457718, -0.887990, -0.044359,
		37.711308, 29.187685, 49.475243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383450, 29.979671, 49.788040>,  <38.031708, 29.809278, 49.506290>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383450, 29.979671, 49.788040> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.475025, 29.590939, 49.810425>,  <37.529968, 29.357698, 49.823856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.475025, 29.590939, 49.810425>,  <37.383450, 29.979671, 49.788040>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475025, 29.590939, 49.810425> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103083, 0.032965, 0.994126,
		-0.967968, -0.233360, -0.092632,
		0.228935, -0.971832, 0.055964,
		37.543705, 29.299389, 49.827213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980629, 29.366949, 49.787102>,  <37.383450, 29.979671, 49.788040>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980629, 29.366949, 49.787102> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.669979, 29.556492, 49.953148>,  <36.483589, 29.670218, 50.052776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.669979, 29.556492, 49.953148>,  <36.980629, 29.366949, 49.787102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669979, 29.556492, 49.953148> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041012, 0.695578, -0.717279,
		-0.628632, -0.540029, -0.559635,
		-0.776621, 0.473856, 0.415115,
		36.436993, 29.698648, 50.077682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328747, 29.240936, 49.344696>,  <36.980629, 29.366949, 49.787102>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328747, 29.240936, 49.344696> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.243298, 29.578392, 49.541729>,  <36.192028, 29.780865, 49.659950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.243298, 29.578392, 49.541729>,  <36.328747, 29.240936, 49.344696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243298, 29.578392, 49.541729> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274443, 0.432093, -0.859055,
		-0.937574, -0.318702, 0.139225,
		-0.213625, 0.843637, 0.492585,
		36.179211, 29.831484, 49.689503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925270, 29.505758, 48.849308>,  <36.328747, 29.240936, 49.344696>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925270, 29.505758, 48.849308> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.938988, 29.818069, 49.098854>,  <35.947220, 30.005455, 49.248581>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.938988, 29.818069, 49.098854>,  <35.925270, 29.505758, 48.849308>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938988, 29.818069, 49.098854> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089859, 0.624117, -0.776147,
		-0.995364, -0.029443, 0.091563,
		0.034294, 0.780776, 0.623869,
		35.949276, 30.052301, 49.286015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450760, 30.025240, 48.734459>,  <35.925270, 29.505758, 48.849308>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450760, 30.025240, 48.734459> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.719128, 30.245743, 48.932842>,  <35.880150, 30.378044, 49.051872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.719128, 30.245743, 48.932842>,  <35.450760, 30.025240, 48.734459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719128, 30.245743, 48.932842> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112537, 0.736786, -0.666695,
		-0.732940, 0.391485, 0.556362,
		0.670921, 0.551258, 0.495963,
		35.920403, 30.411119, 49.081631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020336, 30.669128, 48.840221>,  <35.450760, 30.025240, 48.734459>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020336, 30.669128, 48.840221> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.416073, 30.726984, 48.847031>,  <35.653515, 30.761698, 48.851116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.416073, 30.726984, 48.847031>,  <35.020336, 30.669128, 48.840221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416073, 30.726984, 48.847031> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107518, 0.804227, -0.584516,
		-0.098234, 0.576454, 0.811204,
		0.989338, 0.144638, 0.017023,
		35.712875, 30.770376, 48.852139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099964, 31.374943, 48.911236>,  <35.020336, 30.669128, 48.840221>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099964, 31.374943, 48.911236> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.444809, 31.232075, 48.767464>,  <35.651718, 31.146355, 48.681202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.444809, 31.232075, 48.767464>,  <35.099964, 31.374943, 48.911236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444809, 31.232075, 48.767464> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009585, 0.720698, -0.693183,
		0.506622, 0.594158, 0.624748,
		0.862115, -0.357170, -0.359427,
		35.703442, 31.124924, 48.659637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465950, 31.994402, 48.720383>,  <35.099964, 31.374943, 48.911236>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.465950, 31.994402, 48.720383> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.644493, 31.695627, 48.523262>,  <35.751621, 31.516363, 48.404991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.644493, 31.695627, 48.523262>,  <35.465950, 31.994402, 48.720383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644493, 31.695627, 48.523262> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307258, 0.389293, -0.868357,
		0.840450, 0.539016, -0.055738,
		0.446360, -0.746936, -0.492798,
		35.778400, 31.471546, 48.375423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.119831, 32.409443, 48.899300>,  <35.465950, 31.994402, 48.720383>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.119831, 32.409443, 48.899300> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.173332, 32.766392, 49.071709>,  <36.205433, 32.980560, 49.175152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.173332, 32.766392, 49.071709>,  <36.119831, 32.409443, 48.899300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173332, 32.766392, 49.071709> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274966, -0.451266, 0.848971,
		0.952105, 0.004967, -0.305729,
		0.133748, 0.892376, 0.431019,
		36.213455, 33.034103, 49.201015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599075, 32.268700, 49.330730>,  <36.119831, 32.409443, 48.899300>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599075, 32.268700, 49.330730> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.487877, 32.624607, 49.475525>,  <36.421158, 32.838150, 49.562401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.487877, 32.624607, 49.475525>,  <36.599075, 32.268700, 49.330730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487877, 32.624607, 49.475525> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191819, -0.317827, 0.928543,
		0.941234, 0.327571, -0.082318,
		-0.278000, 0.889766, 0.361984,
		36.404476, 32.891537, 49.584122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176292, 32.512981, 49.678257>,  <36.599075, 32.268700, 49.330730>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176292, 32.512981, 49.678257> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.864845, 32.715496, 49.826542>,  <36.677979, 32.837006, 49.915512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.864845, 32.715496, 49.826542>,  <37.176292, 32.512981, 49.678257>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864845, 32.715496, 49.826542> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236621, -0.310274, 0.920728,
		0.581174, 0.804615, 0.121787,
		-0.778619, 0.506286, 0.370712,
		36.631260, 32.867382, 49.937756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389320, 32.882439, 50.264427>,  <37.176292, 32.512981, 49.678257>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389320, 32.882439, 50.264427> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.995567, 32.860291, 50.331272>,  <36.759315, 32.847000, 50.371380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.995567, 32.860291, 50.331272>,  <37.389320, 32.882439, 50.264427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995567, 32.860291, 50.331272> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175777, -0.257018, 0.950287,
		-0.009667, 0.964819, 0.262736,
		-0.984383, -0.055370, 0.167108,
		36.700253, 32.843681, 50.381405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313057, 33.256012, 50.909874>,  <37.389320, 32.882439, 50.264427>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313057, 33.256012, 50.909874> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.971699, 33.051456, 50.869476>,  <36.766884, 32.928722, 50.845238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.971699, 33.051456, 50.869476>,  <37.313057, 33.256012, 50.909874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.971699, 33.051456, 50.869476> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045709, -0.266421, 0.962772,
		-0.519263, 0.817005, 0.250736,
		-0.853391, -0.511393, -0.100998,
		36.715683, 32.898037, 50.839176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892162, 33.526703, 51.402962>,  <37.313057, 33.256012, 50.909874>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892162, 33.526703, 51.402962> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.773460, 33.160789, 51.293335>,  <36.702240, 32.941242, 51.227558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.773460, 33.160789, 51.293335>,  <36.892162, 33.526703, 51.402962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773460, 33.160789, 51.293335> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113939, -0.318866, 0.940926,
		-0.948133, 0.247993, 0.198853,
		-0.296750, -0.914781, -0.274071,
		36.684437, 32.886356, 51.211113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439274, 33.358185, 51.859776>,  <36.892162, 33.526703, 51.402962>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439274, 33.358185, 51.859776> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.508045, 32.994835, 51.707302>,  <36.549309, 32.776825, 51.615818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.508045, 32.994835, 51.707302>,  <36.439274, 33.358185, 51.859776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508045, 32.994835, 51.707302> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013263, -0.384775, 0.922915,
		-0.985020, -0.163732, -0.054107,
		0.171930, -0.908372, -0.381183,
		36.559624, 32.722324, 51.592949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911015, 32.920021, 52.205872>,  <36.439274, 33.358185, 51.859776>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911015, 32.920021, 52.205872> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.219452, 32.694218, 52.088058>,  <36.404514, 32.558735, 52.017372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.219452, 32.694218, 52.088058>,  <35.911015, 32.920021, 52.205872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219452, 32.694218, 52.088058> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027885, -0.432189, 0.901352,
		-0.636114, -0.703237, -0.317515,
		0.771091, -0.564508, -0.294532,
		36.450779, 32.524864, 51.999699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911758, 32.395077, 52.648186>,  <35.911015, 32.920021, 52.205872>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911758, 32.395077, 52.648186> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.277470, 32.337940, 52.496563>,  <36.496899, 32.303658, 52.405590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.277470, 32.337940, 52.496563>,  <35.911758, 32.395077, 52.648186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277470, 32.337940, 52.496563> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259054, -0.513220, 0.818228,
		-0.311415, -0.846288, -0.432225,
		0.914282, -0.142838, -0.379058,
		36.551754, 32.295090, 52.382847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.850769, 38.488213, 37.096142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.233288, 38.405605, 37.178947>,  <36.462799, 38.356041, 37.228630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.233288, 38.405605, 37.178947>,  <35.850769, 38.488213, 37.096142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.233288, 38.405605, 37.178947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281775, -0.461633, 0.841129,
		-0.078141, -0.862697, -0.499647,
		0.956293, -0.206515, 0.207014,
		36.520176, 38.343651, 37.241051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769699, 37.828056, 37.320335>,  <35.850769, 38.488213, 37.096142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769699, 37.828056, 37.320335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.104145, 37.969524, 37.488060>,  <36.304813, 38.054405, 37.588696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.104145, 37.969524, 37.488060>,  <35.769699, 37.828056, 37.320335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.104145, 37.969524, 37.488060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222766, -0.479605, 0.848737,
		0.501278, -0.803053, -0.322220,
		0.836120, 0.353673, 0.419308,
		36.354980, 38.075626, 37.613853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215164, 37.300003, 37.541485>,  <35.769699, 37.828056, 37.320335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215164, 37.300003, 37.541485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.333008, 37.604256, 37.772877>,  <36.403713, 37.786808, 37.911713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.333008, 37.604256, 37.772877>,  <36.215164, 37.300003, 37.541485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333008, 37.604256, 37.772877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197612, -0.543770, 0.815637,
		0.934962, -0.354611, -0.009891,
		0.294612, 0.760635, 0.578479,
		36.421391, 37.832447, 37.946419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626461, 37.000156, 38.031460>,  <36.215164, 37.300003, 37.541485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626461, 37.000156, 38.031460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542877, 37.359528, 38.185947>,  <36.492725, 37.575150, 38.278641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542877, 37.359528, 38.185947>,  <36.626461, 37.000156, 38.031460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542877, 37.359528, 38.185947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056096, -0.405300, 0.912461,
		0.976314, 0.169001, 0.135089,
		-0.208958, 0.898427, 0.386220,
		36.480190, 37.629055, 38.301815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009579, 37.118500, 38.640278>,  <36.626461, 37.000156, 38.031460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009579, 37.118500, 38.640278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709137, 37.379063, 38.683182>,  <36.528873, 37.535400, 38.708923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709137, 37.379063, 38.683182>,  <37.009579, 37.118500, 38.640278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709137, 37.379063, 38.683182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192796, -0.371828, 0.908060,
		0.631404, 0.661369, 0.404871,
		-0.751105, 0.651410, 0.107264,
		36.483807, 37.574486, 38.715363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074158, 37.337742, 39.318752>,  <37.009579, 37.118500, 38.640278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074158, 37.337742, 39.318752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692116, 37.431141, 39.245804>,  <36.462891, 37.487179, 39.202034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692116, 37.431141, 39.245804>,  <37.074158, 37.337742, 39.318752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692116, 37.431141, 39.245804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250474, -0.307557, 0.917972,
		0.158253, 0.922436, 0.352233,
		-0.955102, 0.233497, -0.182374,
		36.405586, 37.501190, 39.191093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851357, 37.761959, 39.876991>,  <37.074158, 37.337742, 39.318752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851357, 37.761959, 39.876991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526180, 37.583080, 39.727787>,  <36.331074, 37.475754, 39.638264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526180, 37.583080, 39.727787>,  <36.851357, 37.761959, 39.876991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526180, 37.583080, 39.727787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256079, -0.300767, 0.918675,
		-0.523017, 0.842352, 0.129989,
		-0.812944, -0.447195, -0.373014,
		36.282299, 37.448921, 39.615883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381676, 37.880348, 40.419376>,  <36.851357, 37.761959, 39.876991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381676, 37.880348, 40.419376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.179699, 37.613155, 40.200714>,  <36.058514, 37.452839, 40.069519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.179699, 37.613155, 40.200714>,  <36.381676, 37.880348, 40.419376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179699, 37.613155, 40.200714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401420, -0.378933, 0.833829,
		-0.764132, 0.640471, -0.076805,
		-0.504940, -0.667987, -0.546653,
		36.028217, 37.412758, 40.036716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675247, 37.926563, 40.658924>,  <36.381676, 37.880348, 40.419376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675247, 37.926563, 40.658924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.755104, 37.571735, 40.492428>,  <35.803020, 37.358841, 40.392529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.755104, 37.571735, 40.492428>,  <35.675247, 37.926563, 40.658924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755104, 37.571735, 40.492428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184587, -0.451233, 0.873108,
		-0.962325, -0.097478, -0.253827,
		0.199644, -0.887067, -0.416239,
		35.814999, 37.305614, 40.367558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061069, 37.539585, 40.901867>,  <35.675247, 37.926563, 40.658924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061069, 37.539585, 40.901867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.353893, 37.307358, 40.759308>,  <35.529587, 37.168022, 40.673775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.353893, 37.307358, 40.759308>,  <35.061069, 37.539585, 40.901867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353893, 37.307358, 40.759308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158551, -0.653997, 0.739696,
		-0.662544, -0.484985, -0.570811,
		0.732050, -0.580584, -0.356407,
		35.573513, 37.133186, 40.652390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.833202, 36.922245, 40.897194>,  <35.061069, 37.539585, 40.901867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.833202, 36.922245, 40.897194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.219151, 36.829506, 40.847752>,  <35.450718, 36.773861, 40.818085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.219151, 36.829506, 40.847752>,  <34.833202, 36.922245, 40.897194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219151, 36.829506, 40.847752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055025, -0.638327, 0.767796,
		-0.256914, -0.734019, -0.628658,
		0.964867, -0.231849, -0.123606,
		35.508610, 36.759953, 40.810669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911682, 36.156139, 40.971874>,  <34.833202, 36.922245, 40.897194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911682, 36.156139, 40.971874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256268, 36.330017, 41.076885>,  <35.463020, 36.434345, 41.139893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256268, 36.330017, 41.076885>,  <34.911682, 36.156139, 40.971874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256268, 36.330017, 41.076885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006718, -0.507176, 0.861817,
		0.507777, -0.744186, -0.433993,
		0.861462, 0.434695, 0.262531,
		35.514706, 36.460426, 41.155643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112141, 35.558144, 40.580185>,  <34.911682, 36.156139, 40.971874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112141, 35.558144, 40.580185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.009064, 35.200459, 40.433769>,  <34.947216, 34.985847, 40.345921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.009064, 35.200459, 40.433769>,  <35.112141, 35.558144, 40.580185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.009064, 35.200459, 40.433769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283769, 0.432164, -0.855984,
		0.923618, -0.116711, -0.365115,
		-0.257692, -0.894211, -0.366036,
		34.931755, 34.932194, 40.323959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409664, 35.491550, 39.870216>,  <35.112141, 35.558144, 40.580185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409664, 35.491550, 39.870216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097027, 35.242771, 39.889366>,  <34.909443, 35.093506, 39.900856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097027, 35.242771, 39.889366>,  <35.409664, 35.491550, 39.870216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097027, 35.242771, 39.889366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308012, 0.318066, -0.896640,
		0.542434, -0.715555, -0.440165,
		-0.781597, -0.621944, 0.047870,
		34.862549, 35.056187, 39.903728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261616, 35.252365, 39.209023>,  <35.409664, 35.491550, 39.870216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261616, 35.252365, 39.209023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901302, 35.198044, 39.374016>,  <34.685116, 35.165451, 39.473011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901302, 35.198044, 39.374016>,  <35.261616, 35.252365, 39.209023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901302, 35.198044, 39.374016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434236, 0.292845, -0.851869,
		-0.005108, -0.946467, -0.322761,
		-0.900784, -0.135803, 0.412486,
		34.631065, 35.157303, 39.497761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839176, 34.887978, 38.765644>,  <35.261616, 35.252365, 39.209023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839176, 34.887978, 38.765644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.538815, 35.020046, 38.994427>,  <34.358597, 35.099285, 39.131695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.538815, 35.020046, 38.994427>,  <34.839176, 34.887978, 38.765644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.538815, 35.020046, 38.994427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583336, 0.074439, -0.808813,
		-0.309620, -0.940983, 0.136702,
		-0.750903, 0.330168, 0.571957,
		34.313545, 35.119095, 39.166012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224770, 34.412880, 38.708431>,  <34.839176, 34.887978, 38.765644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224770, 34.412880, 38.708431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097889, 34.775135, 38.821007>,  <34.021763, 34.992489, 38.888554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097889, 34.775135, 38.821007>,  <34.224770, 34.412880, 38.708431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097889, 34.775135, 38.821007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664191, -0.000317, -0.747563,
		-0.676931, -0.424055, 0.601616,
		-0.317199, 0.905636, 0.281439,
		34.002728, 35.046825, 38.905437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450588, 34.331734, 38.655743>,  <34.224770, 34.412880, 38.708431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450588, 34.331734, 38.655743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481537, 34.729015, 38.690517>,  <33.500107, 34.967384, 38.711384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481537, 34.729015, 38.690517>,  <33.450588, 34.331734, 38.655743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481537, 34.729015, 38.690517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730781, 0.115815, -0.672716,
		-0.678213, -0.011485, 0.734776,
		0.077372, 0.993205, 0.086940,
		33.504749, 35.026978, 38.716599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.737068, 34.583626, 38.860649>,  <33.450588, 34.331734, 38.655743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.737068, 34.583626, 38.860649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945217, 34.881641, 38.693733>,  <33.070107, 35.060452, 38.593582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945217, 34.881641, 38.693733>,  <32.737068, 34.583626, 38.860649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945217, 34.881641, 38.693733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658532, 0.039017, -0.751541,
		-0.543646, 0.665879, 0.510935,
		0.520370, 0.745039, -0.417291,
		33.101330, 35.105152, 38.568546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186142, 34.992859, 38.679302>,  <32.737068, 34.583626, 38.860649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186142, 34.992859, 38.679302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.522743, 35.086296, 38.484444>,  <32.724705, 35.142357, 38.367531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.522743, 35.086296, 38.484444>,  <32.186142, 34.992859, 38.679302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.522743, 35.086296, 38.484444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513995, 0.068477, -0.855055,
		-0.166375, 0.969921, 0.177688,
		0.841503, 0.233591, -0.487142,
		32.775196, 35.156372, 38.338303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.015045, 35.498150, 38.277008>,  <32.186142, 34.992859, 38.679302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.015045, 35.498150, 38.277008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.339748, 35.336315, 38.108555>,  <32.534573, 35.239216, 38.007484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.339748, 35.336315, 38.108555>,  <32.015045, 35.498150, 38.277008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339748, 35.336315, 38.108555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451404, 0.022812, -0.892028,
		0.370510, 0.914215, -0.164115,
		0.811761, -0.404587, -0.421132,
		32.583279, 35.214939, 37.982216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098381, 35.928089, 37.634003>,  <32.015045, 35.498150, 38.277008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098381, 35.928089, 37.634003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294216, 35.581257, 37.597187>,  <32.411716, 35.373158, 37.575096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294216, 35.581257, 37.597187>,  <32.098381, 35.928089, 37.634003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.294216, 35.581257, 37.597187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476591, -0.177709, -0.860977,
		0.730182, 0.465388, -0.500248,
		0.489587, -0.867083, -0.092039,
		32.441093, 35.321133, 37.569576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092625, 35.775982, 36.851063>,  <32.098381, 35.928089, 37.634003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092625, 35.775982, 36.851063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.201389, 35.419792, 36.997005>,  <32.266647, 35.206078, 37.084572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.201389, 35.419792, 36.997005>,  <32.092625, 35.775982, 36.851063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.201389, 35.419792, 36.997005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533989, -0.455037, -0.712599,
		0.800573, -0.001065, -0.599234,
		0.271915, -0.890472, 0.364859,
		32.282963, 35.152649, 37.106464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.290638, 35.388126, 36.247810>,  <32.092625, 35.775982, 36.851063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.290638, 35.388126, 36.247810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.194248, 35.133472, 36.540829>,  <32.136414, 34.980679, 36.716640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.194248, 35.133472, 36.540829>,  <32.290638, 35.388126, 36.247810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.194248, 35.133472, 36.540829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436240, -0.603196, -0.667720,
		0.866965, -0.480467, -0.132374,
		-0.240970, -0.636636, 0.732549,
		32.121956, 34.942482, 36.760593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487068, 34.798027, 36.011463>,  <32.290638, 35.388126, 36.247810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.487068, 34.798027, 36.011463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.246620, 34.656086, 36.297886>,  <32.102352, 34.570923, 36.469738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.246620, 34.656086, 36.297886>,  <32.487068, 34.798027, 36.011463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.246620, 34.656086, 36.297886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355841, -0.683437, -0.637410,
		0.715566, -0.637960, 0.284555,
		-0.601117, -0.354853, 0.716057,
		32.066284, 34.549629, 36.512703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588047, 34.110653, 35.835060>,  <32.487068, 34.798027, 36.011463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588047, 34.110653, 35.835060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.264236, 34.132038, 36.068920>,  <32.069950, 34.144871, 36.209236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.264236, 34.132038, 36.068920>,  <32.588047, 34.110653, 35.835060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.264236, 34.132038, 36.068920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412365, -0.760613, -0.501420,
		0.417881, -0.647000, 0.637782,
		-0.809525, 0.053465, 0.584647,
		32.021378, 34.148079, 36.244312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.475891, 33.508595, 35.998768>,  <32.588047, 34.110653, 35.835060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.475891, 33.508595, 35.998768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276222, 33.726452, 35.729195>,  <32.156422, 33.857166, 35.567451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276222, 33.726452, 35.729195>,  <32.475891, 33.508595, 35.998768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276222, 33.726452, 35.729195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716907, 0.177263, 0.674256,
		0.486695, 0.819718, 0.301976,
		-0.499171, 0.544646, -0.673935,
		32.126472, 33.889847, 35.527016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510818, 32.681931, 36.150173>,  <32.475891, 33.508595, 35.998768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.510818, 32.681931, 36.150173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558121, 32.412529, 36.442036>,  <32.586502, 32.250889, 36.617153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558121, 32.412529, 36.442036>,  <32.510818, 32.681931, 36.150173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.558121, 32.412529, 36.442036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405004, -0.638204, -0.654727,
		0.906636, 0.372939, 0.197303,
		0.118254, -0.673507, 0.729660,
		32.593597, 32.210476, 36.660934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216702, 32.650330, 36.145969>,  <32.510818, 32.681931, 36.150173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216702, 32.650330, 36.145969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005371, 32.326683, 36.248886>,  <32.878574, 32.132496, 36.310635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005371, 32.326683, 36.248886>,  <33.216702, 32.650330, 36.145969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005371, 32.326683, 36.248886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442295, -0.520949, -0.730059,
		0.724740, -0.271911, 0.633100,
		-0.528324, -0.809121, 0.257288,
		32.846874, 32.083946, 36.326073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.441650, 33.036388, 36.799347>,  <33.216702, 32.650330, 36.145969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.441650, 33.036388, 36.799347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829903, 33.079189, 36.713169>,  <34.062855, 33.104870, 36.661461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829903, 33.079189, 36.713169>,  <33.441650, 33.036388, 36.799347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829903, 33.079189, 36.713169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239844, -0.499368, 0.832530,
		-0.018502, -0.859756, -0.510369,
		0.970635, 0.107006, -0.215447,
		34.121094, 33.111290, 36.648537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.737682, 32.383663, 36.788235>,  <33.441650, 33.036388, 36.799347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.737682, 32.383663, 36.788235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008400, 32.668255, 36.863873>,  <34.170830, 32.839008, 36.909256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008400, 32.668255, 36.863873>,  <33.737682, 32.383663, 36.788235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008400, 32.668255, 36.863873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246470, -0.461020, 0.852475,
		0.693691, -0.530341, -0.487372,
		0.676790, 0.711477, 0.189092,
		34.211437, 32.881699, 36.920601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474968, 32.203846, 36.635563>,  <33.737682, 32.383663, 36.788235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474968, 32.203846, 36.635563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.472988, 32.479950, 36.924980>,  <34.471802, 32.645615, 37.098629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.472988, 32.479950, 36.924980>,  <34.474968, 32.203846, 36.635563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472988, 32.479950, 36.924980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471711, -0.636379, 0.610336,
		0.881739, 0.344321, -0.322457,
		-0.004946, 0.690264, 0.723541,
		34.471504, 32.687031, 37.142044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011650, 31.987085, 36.927032>,  <34.474968, 32.203846, 36.635563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.011650, 31.987085, 36.927032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867516, 32.251984, 37.189816>,  <34.781036, 32.410923, 37.347485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867516, 32.251984, 37.189816>,  <35.011650, 31.987085, 36.927032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867516, 32.251984, 37.189816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556995, -0.412189, 0.721011,
		0.748276, 0.625726, -0.220341,
		-0.360333, 0.662244, 0.656957,
		34.759415, 32.450657, 37.386902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547245, 32.131336, 37.314430>,  <35.011650, 31.987085, 36.927032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547245, 32.131336, 37.314430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243053, 32.267071, 37.535885>,  <35.060539, 32.348511, 37.668758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243053, 32.267071, 37.535885>,  <35.547245, 32.131336, 37.314430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243053, 32.267071, 37.535885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445944, -0.346835, 0.825130,
		0.472018, 0.874390, 0.112437,
		-0.760482, 0.339336, 0.553640,
		35.014908, 32.368870, 37.701977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823231, 32.577526, 37.871761>,  <35.547245, 32.131336, 37.314430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823231, 32.577526, 37.871761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464199, 32.479858, 38.018581>,  <35.248779, 32.421257, 38.106674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464199, 32.479858, 38.018581>,  <35.823231, 32.577526, 37.871761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464199, 32.479858, 38.018581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428920, -0.291342, 0.855072,
		-0.101843, 0.924934, 0.366232,
		-0.897583, -0.244167, 0.367052,
		35.194923, 32.406609, 38.128696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751511, 32.890110, 38.505871>,  <35.823231, 32.577526, 37.871761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751511, 32.890110, 38.505871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501160, 32.578156, 38.503281>,  <35.350948, 32.390984, 38.501728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501160, 32.578156, 38.503281>,  <35.751511, 32.890110, 38.505871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501160, 32.578156, 38.503281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343241, -0.282896, 0.895631,
		-0.700326, 0.558337, 0.444750,
		-0.625882, -0.779891, -0.006476,
		35.313396, 32.344189, 38.501339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527733, 32.762806, 39.196499>,  <35.751511, 32.890110, 38.505871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527733, 32.762806, 39.196499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374378, 32.424152, 39.048866>,  <35.282364, 32.220959, 38.960285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374378, 32.424152, 39.048866>,  <35.527733, 32.762806, 39.196499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374378, 32.424152, 39.048866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070437, -0.425255, 0.902328,
		-0.920896, 0.319948, 0.222674,
		-0.383391, -0.846635, -0.369080,
		35.259361, 32.170162, 38.938141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002331, 32.618748, 39.562408>,  <35.527733, 32.762806, 39.196499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002331, 32.618748, 39.562408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092106, 32.261257, 39.407036>,  <35.145969, 32.046764, 39.313812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092106, 32.261257, 39.407036>,  <35.002331, 32.618748, 39.562408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092106, 32.261257, 39.407036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073244, -0.382003, 0.921254,
		-0.971732, -0.235214, -0.020275,
		0.224437, -0.893727, -0.388432,
		35.159435, 31.993139, 39.290504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598713, 32.117882, 39.903385>,  <35.002331, 32.618748, 39.562408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598713, 32.117882, 39.903385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.910378, 31.919823, 39.749634>,  <35.097374, 31.800989, 39.657383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.910378, 31.919823, 39.749634>,  <34.598713, 32.117882, 39.903385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910378, 31.919823, 39.749634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163024, -0.432035, 0.887000,
		-0.605256, -0.753776, -0.255904,
		0.779159, -0.495144, -0.384375,
		35.144127, 31.771280, 39.634323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602032, 31.421740, 40.257797>,  <34.598713, 32.117882, 39.903385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602032, 31.421740, 40.257797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.964100, 31.427193, 40.087868>,  <35.181343, 31.430464, 39.985912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.964100, 31.427193, 40.087868>,  <34.602032, 31.421740, 40.257797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.964100, 31.427193, 40.087868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357847, -0.563775, 0.744381,
		-0.229357, -0.825816, -0.515193,
		0.905175, 0.013632, -0.424821,
		35.235653, 31.431282, 39.960423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884560, 30.768213, 40.344666>,  <34.602032, 31.421740, 40.257797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884560, 30.768213, 40.344666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223598, 30.973339, 40.290104>,  <35.427021, 31.096415, 40.257366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223598, 30.973339, 40.290104>,  <34.884560, 30.768213, 40.344666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223598, 30.973339, 40.290104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416581, -0.483819, 0.769662,
		0.328702, -0.709183, -0.623711,
		0.847594, 0.512815, -0.136400,
		35.477879, 31.127184, 40.249184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450855, 30.271231, 40.262527>,  <34.884560, 30.768213, 40.344666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450855, 30.271231, 40.262527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.625900, 30.613451, 40.373184>,  <35.730927, 30.818783, 40.439579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.625900, 30.613451, 40.373184>,  <35.450855, 30.271231, 40.262527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625900, 30.613451, 40.373184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496100, -0.486335, 0.719279,
		0.749919, -0.177524, -0.637265,
		0.437613, 0.855549, 0.276643,
		35.757183, 30.870115, 40.456177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277653, 30.227146, 40.279770>,  <35.450855, 30.271231, 40.262527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277653, 30.227146, 40.279770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.183777, 30.530056, 40.523560>,  <36.127453, 30.711802, 40.669834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.183777, 30.530056, 40.523560>,  <36.277653, 30.227146, 40.279770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183777, 30.530056, 40.523560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603231, -0.378196, 0.702196,
		0.762256, 0.532450, -0.368053,
		-0.234688, 0.757274, 0.609473,
		36.113369, 30.757238, 40.706402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969986, 30.507418, 40.640774>,  <36.277653, 30.227146, 40.279770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969986, 30.507418, 40.640774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653145, 30.618675, 40.858109>,  <36.463039, 30.685429, 40.988510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653145, 30.618675, 40.858109>,  <36.969986, 30.507418, 40.640774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653145, 30.618675, 40.858109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511119, -0.184350, 0.839507,
		0.333666, 0.942683, 0.003860,
		-0.792101, 0.278142, 0.543335,
		36.415516, 30.702118, 41.021111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238186, 31.031979, 41.123634>,  <36.969986, 30.507418, 40.640774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238186, 31.031979, 41.123634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.910194, 30.875036, 41.290337>,  <36.713398, 30.780870, 41.390358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.910194, 30.875036, 41.290337>,  <37.238186, 31.031979, 41.123634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910194, 30.875036, 41.290337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522152, -0.214444, 0.825452,
		-0.234499, 0.894467, 0.380709,
		-0.819980, -0.392356, 0.416760,
		36.664200, 30.757330, 41.415363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187733, 31.243002, 41.831810>,  <37.238186, 31.031979, 41.123634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187733, 31.243002, 41.831810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.925495, 30.941000, 41.837009>,  <36.768154, 30.759798, 41.840130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.925495, 30.941000, 41.837009>,  <37.187733, 31.243002, 41.831810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925495, 30.941000, 41.837009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427167, -0.356614, 0.830876,
		-0.622680, 0.550267, 0.556305,
		-0.655590, -0.755005, 0.013000,
		36.728817, 30.714499, 41.840908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863617, 31.252199, 42.434807>,  <37.187733, 31.243002, 41.831810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863617, 31.252199, 42.434807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.814537, 30.874405, 42.312897>,  <36.785088, 30.647728, 42.239750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.814537, 30.874405, 42.312897>,  <36.863617, 31.252199, 42.434807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814537, 30.874405, 42.312897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303102, -0.328088, 0.894699,
		-0.945026, 0.017402, 0.326533,
		-0.122701, -0.944487, -0.304777,
		36.777725, 30.591059, 42.221462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404667, 30.983715, 42.925255>,  <36.863617, 31.252199, 42.434807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404667, 30.983715, 42.925255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.595978, 30.689272, 42.733669>,  <36.710762, 30.512606, 42.618717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.595978, 30.689272, 42.733669>,  <36.404667, 30.983715, 42.925255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595978, 30.689272, 42.733669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233424, -0.419211, 0.877368,
		-0.846621, -0.531423, -0.028672,
		0.478273, -0.736106, -0.478960,
		36.739460, 30.468441, 42.589981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241463, 30.486986, 43.349285>,  <36.404667, 30.983715, 42.925255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241463, 30.486986, 43.349285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.544716, 30.363400, 43.119579>,  <36.726669, 30.289248, 42.981758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.544716, 30.363400, 43.119579>,  <36.241463, 30.486986, 43.349285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544716, 30.363400, 43.119579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423072, -0.437092, 0.793700,
		-0.496233, -0.844683, -0.200658,
		0.758131, -0.308968, -0.574261,
		36.772156, 30.270710, 42.947300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371483, 29.780592, 43.485142>,  <36.241463, 30.486986, 43.349285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371483, 29.780592, 43.485142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.720360, 29.900841, 43.330784>,  <36.929684, 29.972990, 43.238171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.720360, 29.900841, 43.330784>,  <36.371483, 29.780592, 43.485142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720360, 29.900841, 43.330784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481064, -0.384107, 0.788060,
		0.088684, -0.872977, -0.479632,
		0.872188, 0.300622, -0.385894,
		36.982018, 29.991028, 43.215015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825920, 29.291826, 43.631927>,  <36.371483, 29.780592, 43.485142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825920, 29.291826, 43.631927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067471, 29.602942, 43.562202>,  <37.212399, 29.789610, 43.520367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067471, 29.602942, 43.562202>,  <36.825920, 29.291826, 43.631927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067471, 29.602942, 43.562202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620250, -0.321180, 0.715635,
		0.500626, -0.540270, -0.676374,
		0.603874, 0.777787, -0.174311,
		37.248634, 29.836277, 43.509911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556427, 28.993702, 43.639526>,  <36.825920, 29.291826, 43.631927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556427, 28.993702, 43.639526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.570400, 29.390215, 43.690342>,  <37.578785, 29.628122, 43.720833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.570400, 29.390215, 43.690342>,  <37.556427, 28.993702, 43.639526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570400, 29.390215, 43.690342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544821, -0.125455, 0.829114,
		0.837824, 0.040252, -0.544454,
		0.034931, 0.991282, 0.127039,
		37.580879, 29.687599, 43.728455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185642, 29.156521, 43.853916>,  <37.556427, 28.993702, 43.639526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185642, 29.156521, 43.853916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.971600, 29.465830, 43.989979>,  <37.843174, 29.651415, 44.071617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.971600, 29.465830, 43.989979>,  <38.185642, 29.156521, 43.853916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.971600, 29.465830, 43.989979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378728, -0.140336, 0.914807,
		0.755131, 0.618348, -0.217765,
		-0.535109, 0.773273, 0.340158,
		37.811066, 29.697811, 44.092026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698635, 29.638031, 44.060501>,  <38.185642, 29.156521, 43.853916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698635, 29.638031, 44.060501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.346943, 29.679829, 44.246418>,  <38.135929, 29.704906, 44.357967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.346943, 29.679829, 44.246418>,  <38.698635, 29.638031, 44.060501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346943, 29.679829, 44.246418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458668, -0.078002, 0.885178,
		0.128749, 0.991462, 0.020654,
		-0.879231, 0.104493, 0.464794,
		38.083172, 29.711176, 44.385857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364933, 30.026007, 44.255604>,  <38.698635, 29.638031, 44.060501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364933, 30.026007, 44.255604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740616, 29.893700, 44.218761>,  <39.966026, 29.814316, 44.196655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740616, 29.893700, 44.218761>,  <39.364933, 30.026007, 44.255604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.740616, 29.893700, 44.218761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088585, 0.025747, -0.995736,
		0.331728, 0.943361, -0.005119,
		0.939207, -0.330767, -0.092108,
		40.022377, 29.794470, 44.191128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603329, 30.502001, 43.784126>,  <39.364933, 30.026007, 44.255604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.603329, 30.502001, 43.784126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.822815, 30.168606, 43.758186>,  <39.954506, 29.968569, 43.742622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.822815, 30.168606, 43.758186>,  <39.603329, 30.502001, 43.784126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.822815, 30.168606, 43.758186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007732, 0.072504, -0.997338,
		0.835970, 0.547761, 0.033341,
		0.548720, -0.833487, -0.064847,
		39.987431, 29.918560, 43.738731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.170906, 30.679970, 43.408127>,  <39.603329, 30.502001, 43.784126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.170906, 30.679970, 43.408127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.141529, 30.283281, 43.366001>,  <40.123901, 30.045267, 43.340725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.141529, 30.283281, 43.366001>,  <40.170906, 30.679970, 43.408127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141529, 30.283281, 43.366001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052170, 0.109279, -0.992641,
		0.995934, -0.067410, -0.059764,
		-0.073445, -0.991723, -0.105318,
		40.119495, 29.985764, 43.334404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.630566, 30.515427, 42.836155>,  <40.170906, 30.679970, 43.408127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.630566, 30.515427, 42.836155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.390221, 30.195868, 42.846958>,  <40.246014, 30.004133, 42.853439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.390221, 30.195868, 42.846958>,  <40.630566, 30.515427, 42.836155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.390221, 30.195868, 42.846958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122808, -0.125648, -0.984444,
		0.789863, -0.588198, 0.173608,
		-0.600862, -0.798896, 0.027009,
		40.209961, 29.956198, 42.855061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.021194, 29.923508, 42.513432>,  <40.630566, 30.515427, 42.836155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.021194, 29.923508, 42.513432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.625511, 29.866098, 42.501591>,  <40.388103, 29.831652, 42.494484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.625511, 29.866098, 42.501591>,  <41.021194, 29.923508, 42.513432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.625511, 29.866098, 42.501591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039555, -0.066981, -0.996970,
		0.141108, -0.987377, 0.071935,
		-0.989203, -0.143526, -0.029604,
		40.328751, 29.823040, 42.492710>
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
