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
	<2.014156, 3.664809, 1.046228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.169163, 3.572092, 1.403126>,  <2.262167, 3.516462, 1.617265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.169163, 3.572092, 1.403126>,  <2.014156, 3.664809, 1.046228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.169163, 3.572092, 1.403126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920266, 0.154194, -0.359630,
		-0.054219, 0.960467, 0.273064,
		0.387518, -0.231793, 0.892246,
		2.285418, 3.502554, 1.670799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.471921, 4.223380, 1.457207>,  <2.014156, 3.664809, 1.046228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.471921, 4.223380, 1.457207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.601994, 3.857330, 1.552544>,  <2.680037, 3.637701, 1.609746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.601994, 3.857330, 1.552544>,  <2.471921, 4.223380, 1.457207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.601994, 3.857330, 1.552544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898346, 0.220222, -0.380100,
		0.295350, 0.337715, 0.893710,
		0.325180, -0.915123, 0.238343,
		2.699548, 3.582793, 1.624046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.041223, 4.311403, 1.864239>,  <2.471921, 4.223380, 1.457207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.041223, 4.311403, 1.864239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.060886, 3.966942, 1.661854>,  <3.072685, 3.760265, 1.540423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.060886, 3.966942, 1.661854>,  <3.041223, 4.311403, 1.864239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.060886, 3.966942, 1.661854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835256, 0.313211, -0.451935,
		0.547659, -0.400391, 0.734682,
		0.049160, -0.861154, -0.505962,
		3.075634, 3.708596, 1.510065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.630749, 4.039154, 1.947982>,  <3.041223, 4.311403, 1.864239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.630749, 4.039154, 1.947982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.511730, 3.890184, 1.596354>,  <3.440319, 3.800803, 1.385376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.511730, 3.890184, 1.596354>,  <3.630749, 4.039154, 1.947982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.511730, 3.890184, 1.596354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857530, 0.300479, -0.417557,
		0.419651, -0.878073, 0.229958,
		-0.297548, -0.372424, -0.879071,
		3.422466, 3.778457, 1.332632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.010398, 3.487844, 1.755433>,  <3.630749, 4.039154, 1.947982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.010398, 3.487844, 1.755433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.882488, 3.632769, 1.405239>,  <3.805742, 3.719723, 1.195123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.882488, 3.632769, 1.405239>,  <4.010398, 3.487844, 1.755433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.882488, 3.632769, 1.405239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947494, 0.122678, -0.295307,
		0.000409, -0.923948, -0.382517,
		-0.319775, 0.362312, -0.875485,
		3.786556, 3.741462, 1.142594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.503935, 3.186224, 1.219048>,  <4.010398, 3.487844, 1.755433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.503935, 3.186224, 1.219048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.345619, 3.512054, 1.049429>,  <4.250630, 3.707553, 0.947657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.345619, 3.512054, 1.049429>,  <4.503935, 3.186224, 1.219048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.345619, 3.512054, 1.049429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868625, 0.182192, -0.460757,
		-0.298064, -0.550701, -0.779671,
		-0.395789, 0.814577, -0.424047,
		4.226882, 3.756427, 0.922215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.636815, 3.142015, 0.461341>,  <4.503935, 3.186224, 1.219048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.636815, 3.142015, 0.461341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.511349, 3.517109, 0.521030>,  <4.436069, 3.742165, 0.556844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.511349, 3.517109, 0.521030>,  <4.636815, 3.142015, 0.461341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.511349, 3.517109, 0.521030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857725, 0.347234, -0.379126,
		-0.407335, 0.009073, -0.913234,
		-0.313666, 0.937735, 0.149223,
		4.417249, 3.798429, 0.565797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.675348, 3.404225, -0.193325>,  <4.636815, 3.142015, 0.461341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.675348, 3.404225, -0.193325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.717396, 3.708502, 0.062893>,  <4.742624, 3.891068, 0.216624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.717396, 3.708502, 0.062893>,  <4.675348, 3.404225, -0.193325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.717396, 3.708502, 0.062893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902150, 0.198067, -0.383268,
		-0.418420, 0.618156, -0.665439,
		0.105118, 0.760693, 0.640544,
		4.748931, 3.936710, 0.255056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<6.332094, 4.027562, 0.401657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<6.105598, 4.310207, 0.231918>,  <5.969701, 4.479795, 0.130075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<6.105598, 4.310207, 0.231918>,  <6.332094, 4.027562, 0.401657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.105598, 4.310207, 0.231918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712748, -0.161202, 0.682645,
		0.413962, 0.688992, 0.594917,
		-0.566239, 0.706615, -0.424346,
		5.935727, 4.522192, 0.104615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.837833, 4.041936, 0.827369>,  <6.332094, 4.027562, 0.401657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.837833, 4.041936, 0.827369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.699921, 4.324867, 0.580528>,  <5.617173, 4.494626, 0.432424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.699921, 4.324867, 0.580528>,  <5.837833, 4.041936, 0.827369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.699921, 4.324867, 0.580528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888921, -0.034822, 0.456735,
		0.301573, 0.706028, 0.640764,
		-0.344781, 0.707327, -0.617102,
		5.596487, 4.537066, 0.395398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.359676, 4.450189, 1.196852>,  <5.837833, 4.041936, 0.827369>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.359676, 4.450189, 1.196852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.258224, 4.475731, 0.810776>,  <5.197353, 4.491056, 0.579130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.258224, 4.475731, 0.810776>,  <5.359676, 4.450189, 1.196852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.258224, 4.475731, 0.810776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966894, -0.045703, 0.251053,
		-0.028081, 0.996912, 0.073333,
		-0.253629, 0.063856, -0.965192,
		5.182136, 4.494887, 0.521218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.941360, 4.994223, 0.974827>,  <5.359676, 4.450189, 1.196852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.941360, 4.994223, 0.974827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.862350, 4.661987, 0.766556>,  <4.814944, 4.462646, 0.641593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.862350, 4.661987, 0.766556>,  <4.941360, 4.994223, 0.974827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.862350, 4.661987, 0.766556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838888, -0.131590, 0.528158,
		-0.507198, 0.541114, -0.670780,
		-0.197525, -0.830590, -0.520677,
		4.803093, 4.412810, 0.610353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.237877, 5.055483, 0.744480>,  <4.941360, 4.994223, 0.974827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.237877, 5.055483, 0.744480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.285957, 4.665565, 0.669296>,  <4.314806, 4.431615, 0.624186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.285957, 4.665565, 0.669296>,  <4.237877, 5.055483, 0.744480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.285957, 4.665565, 0.669296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959603, -0.162602, 0.229615,
		-0.254390, 0.152768, -0.954959,
		0.120200, -0.974794, -0.187960,
		4.322017, 4.373127, 0.612908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.667198, 4.807220, 0.354515>,  <4.237877, 5.055483, 0.744480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.667198, 4.807220, 0.354515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.810646, 4.481213, 0.536564>,  <3.896715, 4.285608, 0.645793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.810646, 4.481213, 0.536564>,  <3.667198, 4.807220, 0.354515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.810646, 4.481213, 0.536564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928020, -0.258606, 0.268143,
		-0.100844, -0.518524, -0.849095,
		0.358620, -0.815019, 0.455122,
		3.918232, 4.236707, 0.673100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.378294, 4.248899, 0.073963>,  <3.667198, 4.807220, 0.354515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.378294, 4.248899, 0.073963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.507759, 4.092209, 0.418472>,  <3.585438, 3.998195, 0.625178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.507759, 4.092209, 0.418472>,  <3.378294, 4.248899, 0.073963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.507759, 4.092209, 0.418472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928179, -0.308130, 0.208663,
		0.183646, -0.866953, -0.463321,
		0.323664, -0.391724, 0.861274,
		3.604858, 3.974692, 0.676855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.899138, 3.641393, 0.169971>,  <3.378294, 4.248899, 0.073963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.899138, 3.641393, 0.169971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.063545, 3.715244, 0.527065>,  <3.162189, 3.759555, 0.741322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.063545, 3.715244, 0.527065>,  <2.899138, 3.641393, 0.169971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.063545, 3.715244, 0.527065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851819, -0.271080, 0.448242,
		0.324760, -0.944684, 0.045851,
		0.411018, 0.184628, 0.892736,
		3.186851, 3.770633, 0.794886>
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
