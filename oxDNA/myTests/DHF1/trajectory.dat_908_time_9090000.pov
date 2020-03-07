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
	<5.147304, 1.106034, 1.486168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.753929, 1.178513, 1.487928>,  <4.517904, 1.222000, 1.488985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.753929, 1.178513, 1.487928>,  <5.147304, 1.106034, 1.486168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.753929, 1.178513, 1.487928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174351, 0.939085, 0.296177,
		0.049532, 0.292039, -0.955123,
		-0.983437, 0.181196, 0.004402,
		4.458898, 1.232872, 1.489249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.922027, 1.685092, 1.031540>,  <5.147304, 1.106034, 1.486168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.922027, 1.685092, 1.031540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.693558, 1.663937, 1.359190>,  <4.556477, 1.651243, 1.555780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.693558, 1.663937, 1.359190>,  <4.922027, 1.685092, 1.031540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.693558, 1.663937, 1.359190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163961, 0.970460, 0.176989,
		-0.804288, 0.235395, -0.545627,
		-0.571172, -0.052888, 0.819125,
		4.522206, 1.648070, 1.604928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.543067, 2.308351, 1.117982>,  <4.922027, 1.685092, 1.031540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.543067, 2.308351, 1.117982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.473686, 2.142185, 1.475159>,  <4.432058, 2.042486, 1.689465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.473686, 2.142185, 1.475159>,  <4.543067, 2.308351, 1.117982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.473686, 2.142185, 1.475159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354426, 0.819606, 0.450142,
		-0.918856, 0.394560, 0.005071,
		-0.173451, -0.415413, 0.892943,
		4.421651, 2.017561, 1.743042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.944110, 2.627250, 1.482757>,  <4.543067, 2.308351, 1.117982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.944110, 2.627250, 1.482757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.225212, 2.473148, 1.721994>,  <4.393873, 2.380687, 1.865537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.225212, 2.473148, 1.721994>,  <3.944110, 2.627250, 1.482757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.225212, 2.473148, 1.721994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206209, 0.914904, 0.347029,
		-0.680892, -0.120544, 0.722396,
		0.702755, -0.385253, 0.598093,
		4.436038, 2.357572, 1.901422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.870622, 2.879945, 2.161185>,  <3.944110, 2.627250, 1.482757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.870622, 2.879945, 2.161185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.256271, 2.776016, 2.139433>,  <4.487661, 2.713659, 2.126382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.256271, 2.776016, 2.139433>,  <3.870622, 2.879945, 2.161185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.256271, 2.776016, 2.139433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265092, 0.931754, 0.248116,
		-0.013798, -0.253631, 0.967203,
		0.964125, -0.259821, -0.054379,
		4.545509, 2.698070, 2.123119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.127213, 3.151217, 2.928814>,  <3.870622, 2.879945, 2.161185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.127213, 3.151217, 2.928814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.469337, 3.031727, 2.759483>,  <4.674612, 2.960033, 2.657885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.469337, 3.031727, 2.759483>,  <4.127213, 3.151217, 2.928814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.469337, 3.031727, 2.759483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511593, 0.616163, 0.598846,
		0.081949, -0.728771, 0.679836,
		0.855311, -0.298724, -0.423328,
		4.725931, 2.942110, 2.632485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.627649, 2.933182, 3.505346>,  <4.127213, 3.151217, 2.928814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.627649, 2.933182, 3.505346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.818764, 3.028625, 3.167166>,  <4.933433, 3.085891, 2.964258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.818764, 3.028625, 3.167166>,  <4.627649, 2.933182, 3.505346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.818764, 3.028625, 3.167166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740786, 0.407860, 0.533748,
		0.472182, -0.881315, 0.018112,
		0.477787, 0.238608, -0.845450,
		4.962100, 3.100208, 2.913531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.436831, 2.780506, 3.631919>,  <4.627649, 2.933182, 3.505346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.436831, 2.780506, 3.631919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.388893, 3.052788, 3.342844>,  <5.360130, 3.216157, 3.169399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.388893, 3.052788, 3.342844>,  <5.436831, 2.780506, 3.631919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.388893, 3.052788, 3.342844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660748, 0.597988, 0.453676,
		0.740979, -0.423144, -0.521440,
		-0.119845, 0.680705, -0.722688,
		5.352940, 3.256999, 3.126038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.494612, 4.433802, 3.900380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.704475, 4.500057, 3.566362>,  <0.830393, 4.539811, 3.365952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.704475, 4.500057, 3.566362>,  <0.494612, 4.433802, 3.900380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.704475, 4.500057, 3.566362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395995, -0.820826, -0.411622,
		-0.753606, 0.546633, -0.365061,
		0.524658, 0.165639, -0.835044,
		0.861873, 4.549749, 3.315849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.075871, 4.269544, 3.422812>,  <0.494612, 4.433802, 3.900380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.075871, 4.269544, 3.422812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.278503, 4.254391, 3.237909>,  <0.491128, 4.245298, 3.126967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.278503, 4.254391, 3.237909>,  <-0.075871, 4.269544, 3.422812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.278503, 4.254391, 3.237909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288317, -0.825677, -0.484903,
		-0.363306, 0.562869, -0.742420,
		0.885936, -0.037884, -0.462258,
		0.544284, 4.243026, 3.099232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.096925, 4.233462, 2.760004>,  <-0.075871, 4.269544, 3.422812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.096925, 4.233462, 2.760004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.239410, 4.028660, 2.830250>,  <0.441212, 3.905778, 2.872397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.239410, 4.028660, 2.830250>,  <-0.096925, 4.233462, 2.760004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.239410, 4.028660, 2.830250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345407, -0.757330, -0.554207,
		0.416755, 0.405340, -0.813643,
		0.840838, -0.512007, 0.175614,
		0.491662, 3.875058, 2.882934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.261569, 4.004312, 2.076344>,  <-0.096925, 4.233462, 2.760004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.261569, 4.004312, 2.076344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.326340, 3.766285, 2.391222>,  <0.365202, 3.623469, 2.580148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.326340, 3.766285, 2.391222>,  <0.261569, 4.004312, 2.076344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.326340, 3.766285, 2.391222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357485, -0.778910, -0.515271,
		0.919774, -0.197974, -0.338854,
		0.161926, -0.595068, 0.787194,
		0.374918, 3.587765, 2.627380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.703598, 3.391848, 1.876092>,  <0.261569, 4.004312, 2.076344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.703598, 3.391848, 1.876092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.457954, 3.309486, 2.180847>,  <0.310568, 3.260069, 2.363700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.457954, 3.309486, 2.180847>,  <0.703598, 3.391848, 1.876092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.457954, 3.309486, 2.180847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340469, -0.801799, -0.491120,
		0.712006, -0.561001, 0.422287,
		-0.614108, -0.205905, 0.761889,
		0.273722, 3.247715, 2.409414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.780828, 2.769741, 1.815910>,  <0.703598, 3.391848, 1.876092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.780828, 2.769741, 1.815910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.465324, 2.826744, 2.055092>,  <0.276022, 2.860946, 2.198601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.465324, 2.826744, 2.055092>,  <0.780828, 2.769741, 1.815910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.465324, 2.826744, 2.055092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391443, -0.866468, -0.309848,
		0.473953, -0.478461, 0.739218,
		-0.788759, 0.142509, 0.597955,
		0.228697, 2.869497, 2.234478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.701146, 2.173856, 2.193294>,  <0.780828, 2.769741, 1.815910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.701146, 2.173856, 2.193294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.333565, 2.331532, 2.198015>,  <0.113016, 2.426136, 2.200848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.333565, 2.331532, 2.198015>,  <0.701146, 2.173856, 2.193294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.333565, 2.331532, 2.198015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374272, -0.862313, -0.341082,
		-0.124273, -0.317857, 0.939959,
		-0.918954, 0.394188, 0.011803,
		0.057878, 2.449788, 2.201556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.350354, 1.702277, 2.468585>,  <0.701146, 2.173856, 2.193294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.350354, 1.702277, 2.468585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.105896, 1.918091, 2.236929>,  <-0.040779, 2.047579, 2.097935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.105896, 1.918091, 2.236929>,  <0.350354, 1.702277, 2.468585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.105896, 1.918091, 2.236929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494307, -0.831619, -0.253121,
		-0.618191, 0.131579, 0.774936,
		-0.611146, 0.539534, -0.579140,
		-0.077448, 2.079951, 2.063187>
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
