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
	<-0.609770, 3.454051, 4.907813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.574379, 3.067278, 5.003490>,  <-0.553144, 2.835214, 5.060897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.574379, 3.067278, 5.003490>,  <-0.609770, 3.454051, 4.907813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.574379, 3.067278, 5.003490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531540, 0.248920, 0.809632,
		-0.842400, 0.055508, 0.535987,
		0.088477, -0.966932, 0.239195,
		-0.547836, 2.777198, 5.075249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.270117, 4.023801, 4.924831>,  <-0.609770, 3.454051, 4.907813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.270117, 4.023801, 4.924831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.059921, 4.177935, 4.621416>,  <0.066196, 4.270414, 4.439367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.059921, 4.177935, 4.621416>,  <-0.270117, 4.023801, 4.924831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.059921, 4.177935, 4.621416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340187, -0.912349, -0.227798,
		-0.779829, -0.138339, -0.610516,
		0.525490, 0.385333, -0.758537,
		0.097726, 4.293535, 4.393855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.404694, 3.736583, 4.223097>,  <-0.270117, 4.023801, 4.924831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.404694, 3.736583, 4.223097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.023834, 3.855658, 4.250797>,  <0.204681, 3.927103, 4.267417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.023834, 3.855658, 4.250797>,  <-0.404694, 3.736583, 4.223097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.023834, 3.855658, 4.250797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303472, -0.947737, -0.098489,
		0.036312, 0.114792, -0.992726,
		0.952148, 0.297688, 0.069251,
		0.261810, 3.944964, 4.271573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.026209, 3.195127, 3.839560>,  <-0.404694, 3.736583, 4.223097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.026209, 3.195127, 3.839560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.303444, 3.420000, 4.020040>,  <0.469785, 3.554924, 4.128327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.303444, 3.420000, 4.020040>,  <0.026209, 3.195127, 3.839560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.303444, 3.420000, 4.020040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535703, -0.820514, 0.199447,
		0.482341, 0.103475, -0.869851,
		0.693087, 0.562183, 0.451199,
		0.511370, 3.588655, 4.155399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.784178, 3.064799, 3.532035>,  <0.026209, 3.195127, 3.839560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.784178, 3.064799, 3.532035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.853554, 3.210752, 3.897938>,  <0.895179, 3.298324, 4.117479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.853554, 3.210752, 3.897938>,  <0.784178, 3.064799, 3.532035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.853554, 3.210752, 3.897938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742099, -0.659059, 0.122186,
		0.647462, 0.657648, -0.385086,
		0.173439, 0.364883, 0.914756,
		0.905585, 3.320217, 4.172365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.521684, 2.955034, 3.713568>,  <0.784178, 3.064799, 3.532035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.521684, 2.955034, 3.713568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.337276, 3.012304, 4.063874>,  <1.226632, 3.046666, 4.274057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.337276, 3.012304, 4.063874>,  <1.521684, 2.955034, 3.713568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.337276, 3.012304, 4.063874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558180, -0.720422, 0.411616,
		0.689853, 0.678597, 0.252210,
		-0.461019, 0.143176, 0.875764,
		1.198971, 3.055257, 4.326603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.095520, 2.794267, 4.133945>,  <1.521684, 2.955034, 3.713568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.095520, 2.794267, 4.133945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.790340, 2.794451, 4.392529>,  <1.607233, 2.794561, 4.547680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.790340, 2.794451, 4.392529>,  <2.095520, 2.794267, 4.133945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.790340, 2.794451, 4.392529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480165, -0.669155, 0.567162,
		0.432842, 0.743123, 0.510310,
		-0.762948, 0.000459, 0.646460,
		1.561456, 2.794589, 4.586467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.432577, 2.775540, 4.720047>,  <2.095520, 2.794267, 4.133945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.432577, 2.775540, 4.720047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.068100, 2.632799, 4.802398>,  <1.849414, 2.547155, 4.851810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.068100, 2.632799, 4.802398>,  <2.432577, 2.775540, 4.720047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.068100, 2.632799, 4.802398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410128, -0.738339, 0.535397,
		-0.039048, 0.572287, 0.819124,
		-0.911192, -0.356851, 0.205880,
		1.794742, 2.525744, 4.864162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.355558, 1.718732, 4.654943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.170860, 1.554996, 4.969709>,  <2.060042, 1.456755, 5.158569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.170860, 1.554996, 4.969709>,  <2.355558, 1.718732, 4.654943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.170860, 1.554996, 4.969709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760005, 0.640013, -0.113032,
		-0.457367, -0.650251, -0.606621,
		-0.461744, -0.409338, 0.786915,
		2.032337, 1.432195, 5.205784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.707950, 1.494923, 4.355894>,  <2.355558, 1.718732, 4.654943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.707950, 1.494923, 4.355894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.688339, 1.557651, 4.750458>,  <1.676573, 1.595287, 4.987196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.688339, 1.557651, 4.750458>,  <1.707950, 1.494923, 4.355894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.688339, 1.557651, 4.750458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649337, 0.745404, -0.150779,
		-0.758919, -0.647904, 0.065284,
		-0.049027, 0.156820, 0.986410,
		1.673631, 1.604697, 5.046381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.113329, 1.510581, 4.622721>,  <1.707950, 1.494923, 4.355894>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.113329, 1.510581, 4.622721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.356056, 1.753396, 4.827964>,  <1.501693, 1.899085, 4.951109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.356056, 1.753396, 4.827964>,  <1.113329, 1.510581, 4.622721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.356056, 1.753396, 4.827964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571466, 0.781881, -0.249176,
		-0.552447, -0.142018, 0.821360,
		0.606818, 0.607036, 0.513106,
		1.538102, 1.935507, 4.981896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.720863, 1.959529, 5.146707>,  <1.113329, 1.510581, 4.622721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.720863, 1.959529, 5.146707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.059219, 2.159636, 5.072735>,  <1.262233, 2.279701, 5.028351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.059219, 2.159636, 5.072735>,  <0.720863, 1.959529, 5.146707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.059219, 2.159636, 5.072735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533292, 0.798671, -0.278791,
		0.008228, 0.334449, 0.942378,
		0.845891, 0.500269, -0.184930,
		1.312987, 2.309717, 5.017256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.489435, 2.661021, 5.399218>,  <0.720863, 1.959529, 5.146707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.489435, 2.661021, 5.399218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.802216, 2.713120, 5.155386>,  <0.989884, 2.744380, 5.009087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.802216, 2.713120, 5.155386>,  <0.489435, 2.661021, 5.399218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.802216, 2.713120, 5.155386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421546, 0.830890, -0.363209,
		0.459186, 0.540978, 0.704621,
		0.781951, 0.130250, -0.609580,
		1.036801, 2.752195, 4.972512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.682911, 3.402528, 5.443232>,  <0.489435, 2.661021, 5.399218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.682911, 3.402528, 5.443232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.875046, 3.300256, 5.107636>,  <0.990327, 3.238893, 4.906279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.875046, 3.300256, 5.107636>,  <0.682911, 3.402528, 5.443232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.875046, 3.300256, 5.107636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331057, 0.832957, -0.443378,
		0.812205, 0.490725, 0.315456,
		0.480338, -0.255680, -0.838989,
		1.019147, 3.223552, 4.855940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.128627, 3.956673, 5.291398>,  <0.682911, 3.402528, 5.443232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.128627, 3.956673, 5.291398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.049644, 3.773462, 4.944705>,  <1.002255, 3.663536, 4.736690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.049644, 3.773462, 4.944705>,  <1.128627, 3.956673, 5.291398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.049644, 3.773462, 4.944705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328977, 0.863827, -0.381544,
		0.923464, 0.209796, -0.321248,
		-0.197457, -0.458026, -0.866732,
		0.990407, 3.636055, 4.684686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.375159, 4.351831, 4.755432>,  <1.128627, 3.956673, 5.291398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.375159, 4.351831, 4.755432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.095901, 4.120324, 4.586851>,  <0.928347, 3.981420, 4.485703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.095901, 4.120324, 4.586851>,  <1.375159, 4.351831, 4.755432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.095901, 4.120324, 4.586851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370185, 0.795669, -0.479452,
		0.612828, -0.178712, -0.769743,
		-0.698144, -0.578769, -0.421452,
		0.886458, 3.946694, 4.460416>
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
