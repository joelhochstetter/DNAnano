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
	right 1.6 * <0.99995, 0, 0.00999983>
	location <54.4867, 55, 106.329>
	look_at <55, 55, 55.0001>
	direction <0.513302, 0, -51.3289>
	angle 67.0682
}


# declare cpy_camera_pos = <54.4867, 55, 106.329>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 88
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.98995, -1, 1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.98995, 1, -1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<36.390903, 53.446697, 49.882366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488846, 53.419044, 49.495529>,  <36.547611, 53.402451, 49.263428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488846, 53.419044, 49.495529>,  <36.390903, 53.446697, 49.882366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488846, 53.419044, 49.495529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380469, -0.924299, -0.030254,
		-0.891790, 0.375356, -0.252622,
		0.244854, -0.069134, -0.967092,
		36.562302, 53.398304, 49.205402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564747, 52.644268, 49.941761>,  <36.390903, 53.446697, 49.882366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564747, 52.644268, 49.941761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.902054, 52.716797, 50.144157>,  <37.104439, 52.760315, 50.265594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.902054, 52.716797, 50.144157>,  <36.564747, 52.644268, 49.941761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902054, 52.716797, 50.144157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537405, -0.266968, -0.799953,
		-0.009965, 0.946494, -0.322568,
		0.843266, 0.181321, 0.505990,
		37.155033, 52.771194, 50.295956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039059, 53.134624, 49.600960>,  <36.564747, 52.644268, 49.941761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039059, 53.134624, 49.600960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.261833, 52.907654, 49.843559>,  <37.395500, 52.771473, 49.989120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.261833, 52.907654, 49.843559>,  <37.039059, 53.134624, 49.600960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261833, 52.907654, 49.843559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643649, -0.166645, -0.746958,
		0.524915, 0.806385, 0.272412,
		0.556939, -0.567427, 0.606503,
		37.428913, 52.737427, 50.025509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597496, 52.987862, 49.173878>,  <37.039059, 53.134624, 49.600960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597496, 52.987862, 49.173878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.748844, 52.811691, 49.499542>,  <37.839653, 52.705990, 49.694942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.748844, 52.811691, 49.499542>,  <37.597496, 52.987862, 49.173878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748844, 52.811691, 49.499542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826283, -0.235766, -0.511538,
		0.417245, 0.866281, 0.274707,
		0.378369, -0.440422, 0.814165,
		37.862354, 52.679565, 49.743793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134956, 53.272221, 49.216465>,  <37.597496, 52.987862, 49.173878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134956, 53.272221, 49.216465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.154541, 52.919601, 49.404282>,  <38.166294, 52.708031, 49.516972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.154541, 52.919601, 49.404282>,  <38.134956, 53.272221, 49.216465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154541, 52.919601, 49.404282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858839, -0.202836, -0.470375,
		0.509900, 0.426297, 0.747177,
		0.048965, -0.881549, 0.469546,
		38.169231, 52.655136, 49.545147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866287, 53.100216, 49.286015>,  <38.134956, 53.272221, 49.216465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866287, 53.100216, 49.286015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662743, 52.761707, 49.349113>,  <38.540615, 52.558601, 49.386971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662743, 52.761707, 49.349113>,  <38.866287, 53.100216, 49.286015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662743, 52.761707, 49.349113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707968, -0.515650, -0.482584,
		0.489739, -0.133890, 0.861527,
		-0.508859, -0.846273, 0.157744,
		38.510086, 52.507824, 49.396435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336185, 52.577400, 49.622337>,  <38.866287, 53.100216, 49.286015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.336185, 52.577400, 49.622337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053539, 52.401989, 49.400208>,  <38.883953, 52.296741, 49.266930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053539, 52.401989, 49.400208>,  <39.336185, 52.577400, 49.622337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053539, 52.401989, 49.400208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702686, -0.342541, -0.623617,
		0.083253, -0.830877, 0.550193,
		-0.706612, -0.438531, -0.555328,
		38.841557, 52.270432, 49.233608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387165, 51.751232, 49.721191>,  <39.336185, 52.577400, 49.622337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.387165, 51.751232, 49.721191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.289146, 51.965977, 49.398270>,  <39.230335, 52.094822, 49.204517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.289146, 51.965977, 49.398270>,  <39.387165, 51.751232, 49.721191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289146, 51.965977, 49.398270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814472, -0.337705, -0.471795,
		-0.525917, -0.773135, -0.354505,
		-0.245043, 0.536860, -0.807302,
		39.215633, 52.127033, 49.156078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010532, 52.095192, 49.960403>,  <39.387165, 51.751232, 49.721191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.010532, 52.095192, 49.960403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.922451, 51.915184, 50.306580>,  <39.869602, 51.807178, 50.514286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.922451, 51.915184, 50.306580>,  <40.010532, 52.095192, 49.960403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.922451, 51.915184, 50.306580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921644, -0.386591, 0.033479,
		0.319505, 0.805001, 0.499889,
		-0.220204, -0.450023, 0.865442,
		39.856388, 51.780178, 50.566212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675705, 52.006329, 50.209129>,  <40.010532, 52.095192, 49.960403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.675705, 52.006329, 50.209129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.428219, 51.793053, 50.439922>,  <40.279728, 51.665089, 50.578396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.428219, 51.793053, 50.439922>,  <40.675705, 52.006329, 50.209129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.428219, 51.793053, 50.439922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738540, -0.645164, 0.195760,
		0.267870, 0.547241, 0.792952,
		-0.618712, -0.533188, 0.576980,
		40.242607, 51.633095, 50.613018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.937527, 51.973465, 50.937332>,  <40.675705, 52.006329, 50.209129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.937527, 51.973465, 50.937332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.705906, 51.660812, 50.844589>,  <40.566933, 51.473221, 50.788944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.705906, 51.660812, 50.844589>,  <40.937527, 51.973465, 50.937332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.705906, 51.660812, 50.844589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656714, -0.615693, 0.435486,
		-0.483142, 0.099904, 0.869824,
		-0.579051, -0.781628, -0.231858,
		40.532192, 51.426323, 50.775032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.593239, 52.343914, 51.108105>,  <40.937527, 51.973465, 50.937332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.593239, 52.343914, 51.108105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.844059, 52.407654, 50.803101>,  <41.994549, 52.445896, 50.620098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.844059, 52.407654, 50.803101>,  <41.593239, 52.343914, 51.108105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.844059, 52.407654, 50.803101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394734, 0.908871, -0.134678,
		0.671562, 0.385437, 0.632805,
		0.627048, 0.159345, -0.762508,
		42.032173, 52.455456, 50.574348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.006721, 52.984581, 51.153488>,  <41.593239, 52.343914, 51.108105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.006721, 52.984581, 51.153488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.935299, 52.992283, 50.759991>,  <41.892445, 52.996902, 50.523891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.935299, 52.992283, 50.759991>,  <42.006721, 52.984581, 51.153488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.935299, 52.992283, 50.759991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222547, -0.974689, 0.021316,
		-0.958430, 0.222734, 0.178326,
		-0.178561, 0.019256, -0.983741,
		41.881729, 52.998058, 50.464870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.522038, 53.409039, 51.580845>,  <42.006721, 52.984581, 51.153488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.522038, 53.409039, 51.580845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.542599, 53.217503, 51.931404>,  <42.554935, 53.102581, 52.141739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.542599, 53.217503, 51.931404>,  <42.522038, 53.409039, 51.580845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.542599, 53.217503, 51.931404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997394, -0.019871, -0.069362,
		0.050628, 0.877676, 0.476572,
		0.051407, -0.478842, 0.876395,
		42.558022, 53.073849, 52.194321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.885201, 53.788181, 52.197327>,  <42.522038, 53.409039, 51.580845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.885201, 53.788181, 52.197327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.911282, 53.389069, 52.191936>,  <42.926929, 53.149601, 52.188702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.911282, 53.389069, 52.191936>,  <42.885201, 53.788181, 52.197327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.911282, 53.389069, 52.191936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997461, 0.065560, -0.027817,
		0.028639, -0.011628, 0.999522,
		0.065205, -0.997781, -0.013476,
		42.930843, 53.089733, 52.187893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.248379, 53.569511, 52.705536>,  <42.885201, 53.788181, 52.197327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.248379, 53.569511, 52.705536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.281036, 53.284050, 52.427246>,  <43.300632, 53.112774, 52.260273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.281036, 53.284050, 52.427246>,  <43.248379, 53.569511, 52.705536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.281036, 53.284050, 52.427246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996109, 0.081657, 0.033134,
		0.033165, -0.695723, 0.717544,
		0.081645, -0.713653, -0.695725,
		43.305531, 53.069954, 52.218529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.469994, 53.130974, 53.177032>,  <43.248379, 53.569511, 52.705536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.469994, 53.130974, 53.177032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.287041, 53.238838, 53.515991>,  <43.177269, 53.303558, 53.719368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.287041, 53.238838, 53.515991>,  <43.469994, 53.130974, 53.177032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.287041, 53.238838, 53.515991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431131, 0.900677, -0.053916,
		-0.777773, 0.340681, -0.528210,
		-0.457378, 0.269662, 0.847401,
		43.149826, 53.319736, 53.770210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.078316, 53.319046, 52.760071>,  <43.469994, 53.130974, 53.177032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.078316, 53.319046, 52.760071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.832771, 53.317078, 52.444309>,  <43.685444, 53.315899, 52.254852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.832771, 53.317078, 52.444309>,  <44.078316, 53.319046, 52.760071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.832771, 53.317078, 52.444309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784556, -0.107006, 0.610755,
		-0.087474, 0.994246, 0.061829,
		-0.613857, -0.004917, -0.789402,
		43.648613, 53.315601, 52.207489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.585815, 53.274109, 53.228710>,  <44.078316, 53.319046, 52.760071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.585815, 53.274109, 53.228710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.705456, 53.633572, 53.100365>,  <44.777241, 53.849251, 53.023357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.705456, 53.633572, 53.100365>,  <44.585815, 53.274109, 53.228710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.705456, 53.633572, 53.100365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812838, -0.063811, 0.578984,
		0.499835, -0.433980, -0.749550,
		0.299098, 0.898660, -0.320860,
		44.795185, 53.903168, 53.004105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.294811, 53.249344, 53.021267>,  <44.585815, 53.274109, 53.228710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.294811, 53.249344, 53.021267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.203209, 53.606041, 53.177391>,  <45.148247, 53.820061, 53.271065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.203209, 53.606041, 53.177391>,  <45.294811, 53.249344, 53.021267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.203209, 53.606041, 53.177391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592353, -0.190522, 0.782828,
		0.772447, 0.410477, -0.484598,
		-0.229006, 0.891746, 0.390315,
		45.134506, 53.873566, 53.294487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.956387, 53.684689, 53.181202>,  <45.294811, 53.249344, 53.021267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.956387, 53.684689, 53.181202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.651516, 53.721054, 53.437584>,  <45.468594, 53.742874, 53.591415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.651516, 53.721054, 53.437584>,  <45.956387, 53.684689, 53.181202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.651516, 53.721054, 53.437584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596189, -0.287283, 0.749685,
		0.252291, 0.953522, 0.164759,
		-0.762173, 0.090911, 0.640958,
		45.422863, 53.748329, 53.629871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.088135, 54.238926, 53.788582>,  <45.956387, 53.684689, 53.181202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.088135, 54.238926, 53.788582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.843067, 53.939041, 53.888641>,  <45.696026, 53.759109, 53.948677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.843067, 53.939041, 53.888641>,  <46.088135, 54.238926, 53.788582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.843067, 53.939041, 53.888641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574281, -0.204837, 0.792618,
		-0.542992, 0.629269, 0.556041,
		-0.612667, -0.749708, 0.250152,
		45.659267, 53.714130, 53.963688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.963272, 54.364277, 54.508465>,  <46.088135, 54.238926, 53.788582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.963272, 54.364277, 54.508465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.900249, 53.974442, 54.444771>,  <45.862434, 53.740540, 54.406555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.900249, 53.974442, 54.444771>,  <45.963272, 54.364277, 54.508465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.900249, 53.974442, 54.444771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536849, -0.219871, 0.814524,
		-0.828836, 0.042850, 0.557849,
		-0.157557, -0.974588, -0.159233,
		45.852982, 53.682064, 54.396999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.453011, 54.387821, 55.000053>,  <45.963272, 54.364277, 54.508465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.453011, 54.387821, 55.000053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.465355, 54.703823, 54.755127>,  <46.472763, 54.893425, 54.608170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.465355, 54.703823, 54.755127>,  <46.453011, 54.387821, 55.000053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.465355, 54.703823, 54.755127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778849, -0.402962, -0.480641,
		-0.626452, -0.462069, -0.627734,
		0.030863, 0.790009, -0.612318,
		46.474613, 54.940826, 54.571430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.239029, 54.285004, 54.868237>,  <46.453011, 54.387821, 55.000053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.239029, 54.285004, 54.868237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.426102, 54.564377, 54.651543>,  <47.538345, 54.731998, 54.521526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.426102, 54.564377, 54.651543>,  <47.239029, 54.285004, 54.868237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.426102, 54.564377, 54.651543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093674, 0.648600, 0.755343,
		0.878922, -0.302510, 0.368760,
		0.467677, 0.698431, -0.541731,
		47.566406, 54.773907, 54.489025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.829006, 54.510082, 55.198223>,  <47.239029, 54.285004, 54.868237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.829006, 54.510082, 55.198223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.680130, 54.795040, 54.960243>,  <47.590805, 54.966015, 54.817455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.680130, 54.795040, 54.960243>,  <47.829006, 54.510082, 55.198223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.680130, 54.795040, 54.960243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196605, 0.565941, 0.800660,
		0.907094, 0.414969, -0.070577,
		-0.372192, 0.712398, -0.594947,
		47.568474, 55.008759, 54.781757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.251545, 55.164455, 55.319592>,  <47.829006, 54.510082, 55.198223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.251545, 55.164455, 55.319592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.895794, 55.259190, 55.163170>,  <47.682343, 55.316032, 55.069317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.895794, 55.259190, 55.163170>,  <48.251545, 55.164455, 55.319592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.895794, 55.259190, 55.163170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112917, 0.715060, 0.689883,
		0.443018, 0.657721, -0.609212,
		-0.889373, 0.236840, -0.391052,
		47.628983, 55.330242, 55.045853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.231937, 55.935715, 55.222885>,  <48.251545, 55.164455, 55.319592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.231937, 55.935715, 55.222885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.861622, 55.785091, 55.236244>,  <47.639431, 55.694717, 55.244259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.861622, 55.785091, 55.236244>,  <48.231937, 55.935715, 55.222885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.861622, 55.785091, 55.236244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218117, 0.604236, 0.766371,
		-0.308761, 0.702215, -0.641530,
		-0.925792, -0.376554, 0.033400,
		47.583885, 55.672127, 55.246265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.884914, 56.469120, 55.386360>,  <48.231937, 55.935715, 55.222885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.884914, 56.469120, 55.386360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.689060, 56.139793, 55.501183>,  <47.571548, 55.942196, 55.570076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.689060, 56.139793, 55.501183>,  <47.884914, 56.469120, 55.386360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.689060, 56.139793, 55.501183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261462, 0.452707, 0.852463,
		-0.831800, 0.342346, -0.436929,
		-0.489639, -0.823320, 0.287052,
		47.542168, 55.892799, 55.587299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.887260, 56.198601, 56.038010>,  <47.884914, 56.469120, 55.386360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.887260, 56.198601, 56.038010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.931522, 55.993683, 56.378670>,  <47.958080, 55.870731, 56.583065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.931522, 55.993683, 56.378670>,  <47.887260, 56.198601, 56.038010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.931522, 55.993683, 56.378670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907875, 0.400757, 0.123111,
		-0.404375, 0.759572, 0.509442,
		0.110651, -0.512293, 0.851653,
		47.964718, 55.839996, 56.634167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.198208, 56.608734, 56.481518>,  <47.887260, 56.198601, 56.038010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.198208, 56.608734, 56.481518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.282417, 56.233158, 56.590378>,  <48.332943, 56.007812, 56.655693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.282417, 56.233158, 56.590378>,  <48.198208, 56.608734, 56.481518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.282417, 56.233158, 56.590378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970436, 0.234338, 0.057789,
		-0.118036, 0.251943, 0.960517,
		0.210526, -0.938941, 0.272155,
		48.345573, 55.951477, 56.672024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.536472, 56.532017, 57.191814>,  <48.198208, 56.608734, 56.481518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.536472, 56.532017, 57.191814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.623234, 56.272957, 56.899651>,  <48.675289, 56.117519, 56.724350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.623234, 56.272957, 56.899651>,  <48.536472, 56.532017, 57.191814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.623234, 56.272957, 56.899651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954184, 0.298645, 0.018547,
		0.206123, -0.700971, 0.682753,
		0.216902, -0.647650, -0.730413,
		48.688305, 56.078663, 56.680527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.101135, 56.081577, 57.314400>,  <48.536472, 56.532017, 57.191814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.101135, 56.081577, 57.314400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.128075, 56.119595, 56.917122>,  <49.144238, 56.142406, 56.678757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.128075, 56.119595, 56.917122>,  <49.101135, 56.081577, 57.314400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.128075, 56.119595, 56.917122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862800, 0.494348, 0.105813,
		0.501040, -0.864052, -0.048712,
		0.067347, 0.095045, -0.993192,
		49.148277, 56.148109, 56.619164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.766991, 55.820873, 57.176418>,  <49.101135, 56.081577, 57.314400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.766991, 55.820873, 57.176418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.638767, 56.078217, 56.898331>,  <49.561832, 56.232624, 56.731480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.638767, 56.078217, 56.898331>,  <49.766991, 55.820873, 57.176418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.638767, 56.078217, 56.898331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859665, 0.505803, 0.071687,
		0.397764, -0.574675, -0.715215,
		-0.320561, 0.643360, -0.695219,
		49.542599, 56.271225, 56.689766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.255623, 55.816399, 56.567139>,  <49.766991, 55.820873, 57.176418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.255623, 55.816399, 56.567139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.060528, 56.164642, 56.592896>,  <49.943470, 56.373589, 56.608349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.060528, 56.164642, 56.592896>,  <50.255623, 55.816399, 56.567139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.060528, 56.164642, 56.592896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872672, 0.488224, 0.009006,
		-0.023597, 0.060585, -0.997884,
		-0.487737, 0.870613, 0.064392,
		49.914207, 56.425827, 56.612213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.450588, 56.283882, 55.939613>,  <50.255623, 55.816399, 56.567139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.450588, 56.283882, 55.939613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.346172, 56.489662, 56.266342>,  <50.283524, 56.613132, 56.462379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.346172, 56.489662, 56.266342>,  <50.450588, 56.283882, 55.939613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.346172, 56.489662, 56.266342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921569, 0.384685, 0.052231,
		-0.287348, 0.766392, -0.574521,
		-0.261039, 0.514452, 0.816822,
		50.267860, 56.643997, 56.511387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.964355, 55.971954, 56.282524>,  <50.450588, 56.283882, 55.939613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.964355, 55.971954, 56.282524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.826374, 56.341644, 56.217026>,  <50.743587, 56.563457, 56.177727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.826374, 56.341644, 56.217026>,  <50.964355, 55.971954, 56.282524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.826374, 56.341644, 56.217026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165213, 0.231514, 0.958700,
		0.923967, 0.303651, -0.232555,
		-0.344950, 0.924228, -0.163744,
		50.722889, 56.618912, 56.167904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.429581, 56.552467, 56.534843>,  <50.964355, 55.971954, 56.282524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.429581, 56.552467, 56.534843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.031994, 56.595238, 56.544540>,  <50.793442, 56.620899, 56.550358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.031994, 56.595238, 56.544540>,  <51.429581, 56.552467, 56.534843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.031994, 56.595238, 56.544540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037983, 0.128400, 0.990995,
		0.102854, 0.985941, -0.131687,
		-0.993971, 0.106930, 0.024242,
		50.733803, 56.627316, 56.551815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.069599, 56.841167, 56.325134>,  <51.429581, 56.552467, 56.534843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.069599, 56.841167, 56.325134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.307190, 56.674412, 56.049919>,  <52.449745, 56.574360, 55.884789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.307190, 56.674412, 56.049919>,  <52.069599, 56.841167, 56.325134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.307190, 56.674412, 56.049919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754836, -0.006983, 0.655877,
		-0.278231, -0.908931, 0.310534,
		0.593978, -0.416887, -0.688037,
		52.485382, 56.549347, 55.843510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.557354, 56.455967, 56.748581>,  <52.069599, 56.841167, 56.325134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.557354, 56.455967, 56.748581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.722176, 56.518913, 56.389595>,  <52.821068, 56.556683, 56.174202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.722176, 56.518913, 56.389595>,  <52.557354, 56.455967, 56.748581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.722176, 56.518913, 56.389595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856077, 0.270416, 0.440463,
		0.312005, -0.949795, -0.023295,
		0.412050, 0.157369, -0.897469,
		52.845791, 56.566124, 56.120354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.169415, 56.122276, 56.639828>,  <52.557354, 56.455967, 56.748581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.169415, 56.122276, 56.639828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.220715, 56.441620, 56.404480>,  <53.251495, 56.633224, 56.263271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.220715, 56.441620, 56.404480>,  <53.169415, 56.122276, 56.639828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.220715, 56.441620, 56.404480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826243, 0.242115, 0.508628,
		0.548520, -0.551363, -0.628589,
		0.128248, 0.798360, -0.588365,
		53.259190, 56.681129, 56.227970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.861324, 56.089840, 56.575871>,  <53.169415, 56.122276, 56.639828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.861324, 56.089840, 56.575871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.777000, 56.455315, 56.436882>,  <53.726406, 56.674599, 56.353489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.777000, 56.455315, 56.436882>,  <53.861324, 56.089840, 56.575871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.777000, 56.455315, 56.436882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881722, 0.331205, 0.335960,
		0.422046, -0.235549, -0.875439,
		-0.210814, 0.913685, -0.347472,
		53.713757, 56.729420, 56.332642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.530903, 56.337399, 56.546719>,  <53.861324, 56.089840, 56.575871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.530903, 56.337399, 56.546719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.301003, 56.658497, 56.483147>,  <54.163063, 56.851158, 56.445004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.301003, 56.658497, 56.483147>,  <54.530903, 56.337399, 56.546719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.301003, 56.658497, 56.483147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748564, 0.594207, 0.294229,
		0.330631, 0.050136, -0.942428,
		-0.574748, 0.802748, -0.158933,
		54.128578, 56.899323, 56.435467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.031322, 56.703888, 56.371586>,  <54.530903, 56.337399, 56.546719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.031322, 56.703888, 56.371586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.886452, 56.806469, 56.730042>,  <54.799530, 56.868015, 56.945114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.886452, 56.806469, 56.730042>,  <55.031322, 56.703888, 56.371586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.886452, 56.806469, 56.730042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862745, -0.271710, 0.426432,
		0.352848, 0.927582, -0.122844,
		-0.362173, 0.256448, 0.896139,
		54.777802, 56.883404, 56.998882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.393353, 57.287605, 56.680092>,  <55.031322, 56.703888, 56.371586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.393353, 57.287605, 56.680092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.241783, 57.067837, 56.977966>,  <55.150841, 56.935978, 57.156693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.241783, 57.067837, 56.977966>,  <55.393353, 57.287605, 56.680092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.241783, 57.067837, 56.977966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858110, 0.092695, 0.505029,
		-0.346500, 0.830391, 0.436336,
		-0.378926, -0.549417, 0.744686,
		55.128105, 56.903011, 57.201370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.644131, 57.567616, 57.299187>,  <55.393353, 57.287605, 56.680092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.644131, 57.567616, 57.299187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.536354, 57.204075, 57.426559>,  <55.471687, 56.985950, 57.502983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.536354, 57.204075, 57.426559>,  <55.644131, 57.567616, 57.299187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.536354, 57.204075, 57.426559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907038, -0.128405, 0.400992,
		-0.323552, 0.396873, 0.858956,
		-0.269438, -0.908848, 0.318433,
		55.455524, 56.931419, 57.522091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.544998, 57.401726, 58.046410>,  <55.644131, 57.567616, 57.299187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.544998, 57.401726, 58.046410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.685768, 57.079620, 57.855537>,  <55.770229, 56.886356, 57.741016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.685768, 57.079620, 57.855537>,  <55.544998, 57.401726, 58.046410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.685768, 57.079620, 57.855537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736208, -0.076694, 0.672395,
		-0.578052, -0.587935, 0.565851,
		0.351927, -0.805264, -0.477176,
		55.791348, 56.838039, 57.712383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.556427, 56.910572, 58.492580>,  <55.544998, 57.401726, 58.046410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.556427, 56.910572, 58.492580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.811462, 56.951763, 58.187195>,  <55.964485, 56.976479, 58.003963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.811462, 56.951763, 58.187195>,  <55.556427, 56.910572, 58.492580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.811462, 56.951763, 58.187195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767749, -0.003147, 0.640743,
		0.063578, -0.994679, -0.081066,
		0.637589, 0.102975, -0.763463,
		56.002739, 56.982655, 57.958157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.121307, 56.680744, 58.630966>,  <55.556427, 56.910572, 58.492580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.121307, 56.680744, 58.630966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.266838, 56.823811, 58.286942>,  <56.354156, 56.909649, 58.080528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.266838, 56.823811, 58.286942>,  <56.121307, 56.680744, 58.630966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.266838, 56.823811, 58.286942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901882, 0.095593, 0.421273,
		0.232891, -0.928944, -0.287793,
		0.363828, 0.357666, -0.860061,
		56.375988, 56.931110, 58.028923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.782642, 56.651409, 58.696095>,  <56.121307, 56.680744, 58.630966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.782642, 56.651409, 58.696095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.766991, 56.873722, 58.363930>,  <56.757599, 57.007111, 58.164631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.766991, 56.873722, 58.363930>,  <56.782642, 56.651409, 58.696095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.766991, 56.873722, 58.363930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935451, 0.312533, 0.165089,
		0.351284, -0.770346, -0.532134,
		-0.039134, 0.555779, -0.830409,
		56.755249, 57.040455, 58.114807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.221909, 56.407467, 58.165562>,  <56.782642, 56.651409, 58.696095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.221909, 56.407467, 58.165562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.158615, 56.801987, 58.146927>,  <57.120640, 57.038700, 58.135746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.158615, 56.801987, 58.146927>,  <57.221909, 56.407467, 58.165562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.158615, 56.801987, 58.146927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977972, 0.163052, 0.130328,
		0.136138, -0.024936, -0.990376,
		-0.158233, 0.986302, -0.046585,
		57.111145, 57.097878, 58.132950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.577782, 56.800011, 57.600697>,  <57.221909, 56.407467, 58.165562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.577782, 56.800011, 57.600697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.546715, 56.984749, 57.954117>,  <57.528072, 57.095592, 58.166168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.546715, 56.984749, 57.954117>,  <57.577782, 56.800011, 57.600697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.546715, 56.984749, 57.954117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952607, -0.227071, 0.202434,
		0.294122, 0.857403, -0.422319,
		-0.077671, 0.461844, 0.883554,
		57.523415, 57.123302, 58.219185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.962879, 57.434319, 57.658218>,  <57.577782, 56.800011, 57.600697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.962879, 57.434319, 57.658218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.921593, 57.262527, 58.017082>,  <57.896820, 57.159454, 58.232399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.921593, 57.262527, 58.017082>,  <57.962879, 57.434319, 57.658218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.921593, 57.262527, 58.017082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994658, -0.045898, 0.092457,
		0.001469, 0.901911, 0.431919,
		-0.103212, -0.429476, 0.897161,
		57.890629, 57.133686, 58.286232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.299557, 57.805332, 58.179119>,  <57.962879, 57.434319, 57.658218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.299557, 57.805332, 58.179119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.283958, 57.427101, 58.308342>,  <58.274597, 57.200161, 58.385876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.283958, 57.427101, 58.308342>,  <58.299557, 57.805332, 58.179119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.283958, 57.427101, 58.308342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975772, 0.033616, 0.216192,
		-0.215286, 0.323658, 0.921356,
		-0.039000, -0.945577, 0.323053,
		58.272259, 57.143429, 58.405258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.732552, 57.735275, 58.772675>,  <58.299557, 57.805332, 58.179119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.732552, 57.735275, 58.772675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.694794, 57.370445, 58.613075>,  <58.672138, 57.151546, 58.517315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.694794, 57.370445, 58.613075>,  <58.732552, 57.735275, 58.772675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.694794, 57.370445, 58.613075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968403, -0.177056, 0.175633,
		-0.230837, -0.369813, 0.899974,
		-0.094395, -0.912080, -0.398999,
		58.666473, 57.096821, 58.493374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.015858, 57.086319, 59.305519>,  <58.732552, 57.735275, 58.772675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.015858, 57.086319, 59.305519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.062584, 57.029945, 58.912277>,  <59.090622, 56.996120, 58.676331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.062584, 57.029945, 58.912277>,  <59.015858, 57.086319, 59.305519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.062584, 57.029945, 58.912277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989050, -0.073382, 0.128044,
		-0.090187, -0.987296, 0.130817,
		0.116818, -0.140932, -0.983103,
		59.097630, 56.987667, 58.617348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.423851, 56.427231, 59.157909>,  <59.015858, 57.086319, 59.305519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.423851, 56.427231, 59.157909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.445648, 56.698303, 58.864578>,  <59.458725, 56.860947, 58.688580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.445648, 56.698303, 58.864578>,  <59.423851, 56.427231, 59.157909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.445648, 56.698303, 58.864578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997768, -0.008570, 0.066220,
		0.038592, -0.735302, -0.676640,
		0.054490, 0.677685, -0.733330,
		59.461994, 56.901608, 58.644581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.703911, 56.097225, 58.488590>,  <59.423851, 56.427231, 59.157909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.703911, 56.097225, 58.488590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.798958, 56.474770, 58.580391>,  <59.855988, 56.701294, 58.635471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.798958, 56.474770, 58.580391>,  <59.703911, 56.097225, 58.488590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.798958, 56.474770, 58.580391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942949, -0.280864, 0.178783,
		0.233205, 0.173927, -0.956747,
		0.237620, 0.943856, 0.229504,
		59.870243, 56.757927, 58.649242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.186676, 56.430431, 57.903412>,  <59.703911, 56.097225, 58.488590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.186676, 56.430431, 57.903412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.235573, 56.521431, 58.289841>,  <60.264912, 56.576031, 58.521698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.235573, 56.521431, 58.289841>,  <60.186676, 56.430431, 57.903412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.235573, 56.521431, 58.289841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860573, -0.509208, 0.011021,
		0.494440, 0.830031, -0.258027,
		0.122242, 0.227500, 0.966075,
		60.272243, 56.589680, 58.579662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.886147, 56.738144, 57.928917>,  <60.186676, 56.430431, 57.903412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.886147, 56.738144, 57.928917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.739487, 56.521751, 58.231682>,  <60.651493, 56.391918, 58.413342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.739487, 56.521751, 58.231682>,  <60.886147, 56.738144, 57.928917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.739487, 56.521751, 58.231682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812791, -0.582126, -0.022340,
		0.452703, 0.607019, 0.653137,
		-0.366648, -0.540977, 0.756910,
		60.629494, 56.359459, 58.458755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.202316, 56.861015, 58.580112>,  <60.886147, 56.738144, 57.928917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.202316, 56.861015, 58.580112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.099693, 56.481911, 58.504288>,  <61.038120, 56.254448, 58.458794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.099693, 56.481911, 58.504288>,  <61.202316, 56.861015, 58.580112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.099693, 56.481911, 58.504288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966348, -0.255328, -0.031283,
		-0.018751, -0.191207, 0.981371,
		-0.256553, -0.947759, -0.189560,
		61.022728, 56.197582, 58.447418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.528118, 56.393909, 59.091930>,  <61.202316, 56.861015, 58.580112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.528118, 56.393909, 59.091930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.522964, 56.198101, 58.743172>,  <61.519871, 56.080616, 58.533916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.522964, 56.198101, 58.743172>,  <61.528118, 56.393909, 59.091930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.522964, 56.198101, 58.743172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987987, -0.140528, 0.064294,
		-0.153999, -0.860594, 0.485451,
		-0.012888, -0.489521, -0.871897,
		61.519096, 56.051247, 58.481602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.895905, 55.681004, 59.177925>,  <61.528118, 56.393909, 59.091930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.895905, 55.681004, 59.177925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.914108, 55.825203, 58.805267>,  <61.925030, 55.911724, 58.581673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.914108, 55.825203, 58.805267>,  <61.895905, 55.681004, 59.177925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.914108, 55.825203, 58.805267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988061, -0.153658, -0.011197,
		-0.147192, -0.920015, -0.363190,
		0.045506, 0.360502, -0.931648,
		61.927761, 55.933353, 58.525772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.245064, 55.185783, 58.696877>,  <61.895905, 55.681004, 59.177925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.245064, 55.185783, 58.696877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.306747, 55.567295, 58.593704>,  <62.343758, 55.796200, 58.531799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.306747, 55.567295, 58.593704>,  <62.245064, 55.185783, 58.696877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.306747, 55.567295, 58.593704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926506, -0.230281, -0.297586,
		-0.343227, -0.193087, -0.919191,
		0.154213, 0.953776, -0.257935,
		62.353012, 55.853428, 58.516323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.207352, 55.254116, 57.979958>,  <62.245064, 55.185783, 58.696877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.207352, 55.254116, 57.979958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.442780, 55.551826, 58.106224>,  <62.584038, 55.730453, 58.181984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.442780, 55.551826, 58.106224>,  <62.207352, 55.254116, 57.979958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.442780, 55.551826, 58.106224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733421, -0.327294, -0.595796,
		-0.340118, 0.582184, -0.738499,
		0.588569, 0.744272, 0.315668,
		62.619350, 55.775108, 58.200924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.535995, 54.603203, 57.728798>,  <62.207352, 55.254116, 57.979958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.535995, 54.603203, 57.728798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.914642, 54.732124, 57.731339>,  <63.141830, 54.809479, 57.732864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.914642, 54.732124, 57.731339>,  <62.535995, 54.603203, 57.728798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.914642, 54.732124, 57.731339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123878, 0.345503, 0.930205,
		0.297614, -0.881333, 0.366985,
		0.946615, 0.322304, 0.006351,
		63.198627, 54.828815, 57.733242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.993637, 54.249081, 58.147236>,  <62.535995, 54.603203, 57.728798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.993637, 54.249081, 58.147236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.055916, 54.643616, 58.125687>,  <63.093281, 54.880337, 58.112755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.055916, 54.643616, 58.125687>,  <62.993637, 54.249081, 58.147236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.055916, 54.643616, 58.125687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200526, 0.084963, 0.975997,
		0.967238, -0.141152, 0.211014,
		0.155692, 0.986336, -0.053875,
		63.102623, 54.939518, 58.109524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.404350, 54.397327, 58.670124>,  <62.993637, 54.249081, 58.147236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.404350, 54.397327, 58.670124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.181709, 54.717983, 58.582878>,  <63.048126, 54.910378, 58.530533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.181709, 54.717983, 58.582878>,  <63.404350, 54.397327, 58.670124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.181709, 54.717983, 58.582878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229927, 0.103644, 0.967673,
		0.798330, 0.588757, 0.126630,
		-0.556600, 0.801638, -0.218113,
		63.014729, 54.958473, 58.517445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.697689, 55.086430, 58.915905>,  <63.404350, 54.397327, 58.670124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.697689, 55.086430, 58.915905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.299736, 55.048649, 58.901566>,  <63.060963, 55.025982, 58.892963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.299736, 55.048649, 58.901566>,  <63.697689, 55.086430, 58.915905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.299736, 55.048649, 58.901566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043887, 0.084467, 0.995459,
		-0.090994, 0.991940, -0.088180,
		-0.994884, -0.094451, -0.035848,
		63.001270, 55.020313, 58.890812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.363895, 55.562328, 59.381168>,  <63.697689, 55.086430, 58.915905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.363895, 55.562328, 59.381168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.120293, 55.247696, 59.340370>,  <62.974133, 55.058918, 59.315891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.120293, 55.247696, 59.340370>,  <63.363895, 55.562328, 59.381168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.120293, 55.247696, 59.340370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203979, 0.031055, 0.978482,
		-0.766489, 0.616705, -0.179359,
		-0.609005, -0.786581, -0.101992,
		62.937592, 55.011723, 59.309772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.729862, 55.771187, 59.531975>,  <63.363895, 55.562328, 59.381168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.729862, 55.771187, 59.531975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.786499, 55.382336, 59.606712>,  <62.820480, 55.149025, 59.651554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.786499, 55.382336, 59.606712>,  <62.729862, 55.771187, 59.531975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.786499, 55.382336, 59.606712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080366, 0.176838, 0.980954,
		-0.986658, -0.153908, -0.053088,
		0.141589, -0.972132, 0.186847,
		62.828976, 55.090694, 59.662766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.291924, 56.205036, 59.869072>,  <62.729862, 55.771187, 59.531975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.291924, 56.205036, 59.869072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.203796, 56.462238, 60.162468>,  <63.150921, 56.616558, 60.338505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.203796, 56.462238, 60.162468>,  <63.291924, 56.205036, 59.869072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.203796, 56.462238, 60.162468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499787, 0.720173, -0.481211,
		-0.837659, 0.260569, -0.480032,
		-0.220317, 0.643004, 0.733489,
		63.137703, 56.655140, 60.382515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.987541, 56.914333, 59.779385>,  <63.291924, 56.205036, 59.869072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.987541, 56.914333, 59.779385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.242500, 56.919060, 60.087563>,  <63.395477, 56.921898, 60.272469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.242500, 56.919060, 60.087563>,  <62.987541, 56.914333, 59.779385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.242500, 56.919060, 60.087563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564303, 0.673681, -0.477195,
		-0.524671, 0.738927, 0.422737,
		0.637403, 0.011818, 0.770440,
		63.433720, 56.922604, 60.318695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.088245, 57.630112, 60.072678>,  <62.987541, 56.914333, 59.779385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.088245, 57.630112, 60.072678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.404884, 57.385914, 60.082970>,  <63.594868, 57.239395, 60.089146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.404884, 57.385914, 60.082970>,  <63.088245, 57.630112, 60.072678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.404884, 57.385914, 60.082970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532331, 0.668347, -0.519554,
		0.299986, 0.424979, 0.854050,
		0.791601, -0.610497, 0.025735,
		63.642365, 57.202766, 60.090691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.699024, 58.038063, 60.296116>,  <63.088245, 57.630112, 60.072678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.699024, 58.038063, 60.296116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.772644, 57.733418, 60.047577>,  <63.816814, 57.550629, 59.898453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.772644, 57.733418, 60.047577>,  <63.699024, 58.038063, 60.296116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.772644, 57.733418, 60.047577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380193, 0.638100, -0.669538,
		0.906411, -0.113004, 0.407001,
		0.184047, -0.761616, -0.621344,
		63.827858, 57.504932, 59.861176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.452850, 57.881889, 60.290443>,  <63.699024, 58.038063, 60.296116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.452850, 57.881889, 60.290443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.231407, 57.818081, 59.963501>,  <64.098541, 57.779797, 59.767334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.231407, 57.818081, 59.963501>,  <64.452850, 57.881889, 60.290443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.231407, 57.818081, 59.963501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449952, 0.768592, -0.454763,
		0.700759, -0.619531, -0.353721,
		-0.553607, -0.159522, -0.817357,
		64.065323, 57.770226, 59.718292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.830139, 57.590805, 59.718513>,  <64.452850, 57.881889, 60.290443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.830139, 57.590805, 59.718513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.540443, 57.840981, 59.602379>,  <64.366623, 57.991085, 59.532700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.540443, 57.840981, 59.602379>,  <64.830139, 57.590805, 59.718513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.540443, 57.840981, 59.602379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685160, 0.605339, -0.405118,
		-0.077626, -0.492330, -0.866940,
		-0.724244, 0.625441, -0.290335,
		64.323174, 58.028614, 59.515278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.692047, 57.720074, 58.929825>,  <64.830139, 57.590805, 59.718513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.692047, 57.720074, 58.929825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.657410, 58.030251, 59.180008>,  <64.636627, 58.216354, 59.330116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.657410, 58.030251, 59.180008>,  <64.692047, 57.720074, 58.929825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.657410, 58.030251, 59.180008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808184, 0.421776, -0.411028,
		-0.582529, 0.469892, -0.663220,
		-0.086592, 0.775440, 0.625456,
		64.631432, 58.262882, 59.367645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.930000, 58.313686, 58.430630>,  <64.692047, 57.720074, 58.929825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.930000, 58.313686, 58.430630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.884842, 58.418167, 58.814095>,  <64.857750, 58.480854, 59.044174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.884842, 58.418167, 58.814095>,  <64.930000, 58.313686, 58.430630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.884842, 58.418167, 58.814095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774291, 0.627770, -0.079864,
		-0.622678, 0.733267, -0.273115,
		-0.112892, 0.261200, 0.958661,
		64.850975, 58.496529, 59.101692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.988159, 59.113636, 58.609005>,  <64.930000, 58.313686, 58.430630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.988159, 59.113636, 58.609005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.088669, 58.915817, 58.941818>,  <65.148979, 58.797127, 59.141506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.088669, 58.915817, 58.941818>,  <64.988159, 59.113636, 58.609005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.088669, 58.915817, 58.941818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758669, 0.634447, 0.147979,
		-0.601064, 0.594054, 0.534624,
		0.251283, -0.494548, 0.832034,
		65.164055, 58.767452, 59.191429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.103592, 59.538086, 59.227665>,  <64.988159, 59.113636, 58.609005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.103592, 59.538086, 59.227665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.343964, 59.218616, 59.214966>,  <65.488182, 59.026936, 59.207344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.343964, 59.218616, 59.214966>,  <65.103592, 59.538086, 59.227665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.343964, 59.218616, 59.214966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796026, 0.594392, 0.114194,
		-0.072331, -0.093897, 0.992951,
		0.600925, -0.798675, -0.031752,
		65.524239, 58.979015, 59.205441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.639473, 59.530918, 59.767082>,  <65.103592, 59.538086, 59.227665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.639473, 59.530918, 59.767082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.778076, 59.314838, 59.460327>,  <65.861237, 59.185192, 59.276276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.778076, 59.314838, 59.460327>,  <65.639473, 59.530918, 59.767082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.778076, 59.314838, 59.460327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926854, 0.323074, 0.191218,
		0.144465, -0.777051, 0.612634,
		0.346512, -0.540198, -0.766887,
		65.882027, 59.152779, 59.230263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.223320, 59.079292, 60.011356>,  <65.639473, 59.530918, 59.767082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.223320, 59.079292, 60.011356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.235725, 59.184704, 59.625694>,  <66.243172, 59.247952, 59.394299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.235725, 59.184704, 59.625694>,  <66.223320, 59.079292, 60.011356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.235725, 59.184704, 59.625694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940176, 0.319736, 0.117641,
		0.339276, -0.910121, -0.237847,
		0.031019, 0.263531, -0.964152,
		66.245033, 59.263763, 59.336449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.775124, 58.696167, 59.660751>,  <66.223320, 59.079292, 60.011356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.775124, 58.696167, 59.660751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.692757, 59.074181, 59.559158>,  <66.643341, 59.300991, 59.498203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.692757, 59.074181, 59.559158>,  <66.775124, 58.696167, 59.660751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.692757, 59.074181, 59.559158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918772, 0.276038, 0.282244,
		0.336839, -0.175233, -0.925112,
		-0.205908, 0.945038, -0.253979,
		66.630981, 59.357693, 59.482964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.152931, 58.933842, 58.999481>,  <66.775124, 58.696167, 59.660751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.152931, 58.933842, 58.999481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.068321, 59.203972, 59.282097>,  <67.017555, 59.366051, 59.451668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.068321, 59.203972, 59.282097>,  <67.152931, 58.933842, 58.999481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.068321, 59.203972, 59.282097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963226, 0.266586, 0.033566,
		-0.165686, 0.687657, -0.706878,
		-0.211526, 0.675322, 0.706539,
		67.004860, 59.406567, 59.494057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.432907, 59.566036, 58.829632>,  <67.152931, 58.933842, 58.999481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.432907, 59.566036, 58.829632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.427498, 59.556267, 59.229477>,  <67.424255, 59.550404, 59.469383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.427498, 59.556267, 59.229477>,  <67.432907, 59.566036, 58.829632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.427498, 59.556267, 59.229477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989045, 0.146634, 0.016964,
		-0.146991, 0.988889, 0.022177,
		-0.013524, -0.024428, 0.999610,
		67.423439, 59.548939, 59.529362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.823418, 60.184643, 59.129795>,  <67.432907, 59.566036, 58.829632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.823418, 60.184643, 59.129795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.860413, 59.831985, 59.314903>,  <67.882607, 59.620392, 59.425968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.860413, 59.831985, 59.314903>,  <67.823418, 60.184643, 59.129795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.860413, 59.831985, 59.314903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995201, 0.096771, -0.014524,
		-0.031977, 0.461890, 0.886360,
		0.092483, -0.881642, 0.462768,
		67.888161, 59.567493, 59.453735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.480431, 60.237137, 59.571686>,  <67.823418, 60.184643, 59.129795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.480431, 60.237137, 59.571686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.378036, 59.863411, 59.472466>,  <68.316605, 59.639175, 59.412933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.378036, 59.863411, 59.472466>,  <68.480431, 60.237137, 59.571686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.378036, 59.863411, 59.472466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913332, -0.149686, -0.378705,
		0.316700, -0.323494, 0.891657,
		-0.255978, -0.934315, -0.248052,
		68.301247, 59.583115, 59.398048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.948303, 59.896477, 59.913906>,  <68.480431, 60.237137, 59.571686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.948303, 59.896477, 59.913906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.798065, 59.646179, 59.640450>,  <68.707924, 59.496002, 59.476376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.798065, 59.646179, 59.640450>,  <68.948303, 59.896477, 59.913906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.798065, 59.646179, 59.640450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923642, -0.192064, -0.331657,
		0.076228, -0.756013, 0.650103,
		-0.375598, -0.625744, -0.683645,
		68.685387, 59.458454, 59.435356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.110275, 59.175777, 59.997978>,  <68.948303, 59.896477, 59.913906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.110275, 59.175777, 59.997978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.074158, 59.294029, 59.617569>,  <69.052490, 59.364979, 59.389324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.074158, 59.294029, 59.617569>,  <69.110275, 59.175777, 59.997978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.074158, 59.294029, 59.617569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962269, -0.220222, -0.159816,
		-0.256683, -0.929573, -0.264590,
		-0.090292, 0.295629, -0.951026,
		69.047073, 59.382717, 59.332260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.348930, 58.595181, 59.521969>,  <69.110275, 59.175777, 59.997978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.348930, 58.595181, 59.521969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.416733, 58.973297, 59.410477>,  <69.457413, 59.200169, 59.343582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.416733, 58.973297, 59.410477>,  <69.348930, 58.595181, 59.521969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.416733, 58.973297, 59.410477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983383, -0.180884, -0.015427,
		-0.065001, -0.271486, -0.960245,
		0.169505, 0.945292, -0.278733,
		69.467583, 59.256886, 59.326859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.624474, 58.572166, 58.887497>,  <69.348930, 58.595181, 59.521969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.624474, 58.572166, 58.887497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.756157, 58.882492, 59.102806>,  <69.835167, 59.068687, 59.231991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.756157, 58.882492, 59.102806>,  <69.624474, 58.572166, 58.887497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.756157, 58.882492, 59.102806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942756, -0.302206, -0.141008,
		0.053273, 0.553879, -0.830891,
		0.329202, 0.775815, 0.538272,
		69.854919, 59.115238, 59.264286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.262489, 58.899246, 58.561691>,  <69.624474, 58.572166, 58.887497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.262489, 58.899246, 58.561691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.252083, 58.982121, 58.952873>,  <70.245842, 59.031845, 59.187584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.252083, 58.982121, 58.952873>,  <70.262489, 58.899246, 58.561691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.252083, 58.982121, 58.952873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915953, -0.386938, 0.106346,
		0.400441, 0.898528, -0.179706,
		-0.026019, 0.207188, 0.977955,
		70.244278, 59.044277, 59.246262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.820023, 59.370338, 58.687057>,  <70.262489, 58.899246, 58.561691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.820023, 59.370338, 58.687057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.730423, 59.154575, 59.011742>,  <70.676659, 59.025120, 59.206551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.730423, 59.154575, 59.011742>,  <70.820023, 59.370338, 58.687057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.730423, 59.154575, 59.011742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966251, -0.231628, 0.112728,
		0.127208, 0.809563, 0.573084,
		-0.224003, -0.539403, 0.811706,
		70.663223, 58.992756, 59.255253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.324402, 59.619522, 59.276688>,  <70.820023, 59.370338, 58.687057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.324402, 59.619522, 59.276688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.184128, 59.245857, 59.303101>,  <71.099960, 59.021660, 59.318951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.184128, 59.245857, 59.303101>,  <71.324402, 59.619522, 59.276688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.184128, 59.245857, 59.303101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935402, -0.346008, 0.072810,
		-0.045168, 0.087303, 0.995157,
		-0.350689, -0.934161, 0.066035,
		71.078918, 58.965611, 59.322910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.457405, 59.295036, 59.953392>,  <71.324402, 59.619522, 59.276688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.457405, 59.295036, 59.953392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.448952, 59.031311, 59.652763>,  <71.443878, 58.873074, 59.472385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.448952, 59.031311, 59.652763>,  <71.457405, 59.295036, 59.953392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.448952, 59.031311, 59.652763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900804, -0.338667, 0.271766,
		-0.433712, -0.671273, 0.601071,
		-0.021134, -0.659316, -0.751569,
		71.442612, 58.833515, 59.427292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.935814, 58.907295, 60.212276>,  <71.457405, 59.295036, 59.953392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.935814, 58.907295, 60.212276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.834442, 58.615540, 59.958107>,  <71.773621, 58.440487, 59.805603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.834442, 58.615540, 59.958107>,  <71.935814, 58.907295, 60.212276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.834442, 58.615540, 59.958107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872982, -0.455430, 0.174600,
		-0.416744, -0.510468, 0.752162,
		-0.253429, -0.729387, -0.635427,
		71.758415, 58.396725, 59.767479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.828812, 58.213768, 60.471066>,  <71.935814, 58.907295, 60.212276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.828812, 58.213768, 60.471066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.982666, 58.238609, 60.102676>,  <72.074982, 58.253513, 59.881641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.982666, 58.238609, 60.102676>,  <71.828812, 58.213768, 60.471066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.982666, 58.238609, 60.102676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849015, -0.415357, 0.326576,
		-0.362251, -0.907536, -0.212492,
		0.384639, 0.062107, -0.920976,
		72.098061, 58.257240, 59.826385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.378319, 57.819382, 60.493439>,  <71.828812, 58.213768, 60.471066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.378319, 57.819382, 60.493439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.437111, 58.010746, 60.147141>,  <72.472389, 58.125565, 59.939362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.437111, 58.010746, 60.147141>,  <72.378319, 57.819382, 60.493439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.437111, 58.010746, 60.147141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988962, -0.087599, 0.119501,
		-0.018667, -0.873754, -0.486009,
		0.146988, 0.478414, -0.865745,
		72.481209, 58.154270, 59.887417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.905998, 57.451843, 60.054417>,  <72.378319, 57.819382, 60.493439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.905998, 57.451843, 60.054417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.866982, 57.843575, 59.983528>,  <72.843575, 58.078613, 59.940994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.866982, 57.843575, 59.983528>,  <72.905998, 57.451843, 60.054417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.866982, 57.843575, 59.983528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946364, 0.146376, 0.288044,
		0.308030, -0.139621, -0.941076,
		-0.097534, 0.979327, -0.177220,
		72.837723, 58.137371, 59.930363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
