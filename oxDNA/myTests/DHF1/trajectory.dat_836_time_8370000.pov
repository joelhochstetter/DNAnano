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
	<4.254195, 2.017662, 1.838908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.038372, 2.222778, 1.571798>,  <3.908878, 2.345848, 1.411532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.038372, 2.222778, 1.571798>,  <4.254195, 2.017662, 1.838908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.038372, 2.222778, 1.571798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804360, 0.548286, -0.228885,
		0.248761, -0.660628, -0.708300,
		-0.539558, 0.512790, -0.667775,
		3.876504, 2.376615, 1.371466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.739946, 2.363026, 1.480980>,  <4.254195, 2.017662, 1.838908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.739946, 2.363026, 1.480980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.409828, 2.521339, 1.319861>,  <4.211758, 2.616328, 1.223190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.409828, 2.521339, 1.319861>,  <4.739946, 2.363026, 1.480980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.409828, 2.521339, 1.319861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544175, 0.747971, -0.380016,
		0.150876, -0.532817, -0.832672,
		-0.825294, 0.395784, -0.402797,
		4.162240, 2.640074, 1.199022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.682097, 2.396286, 0.735935>,  <4.739946, 2.363026, 1.480980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.682097, 2.396286, 0.735935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.498089, 2.712013, 0.898592>,  <4.387684, 2.901449, 0.996186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.498089, 2.712013, 0.898592>,  <4.682097, 2.396286, 0.735935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.498089, 2.712013, 0.898592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616109, 0.613543, -0.493937,
		-0.639366, 0.023315, -0.768549,
		-0.460022, 0.789317, 0.406643,
		4.360082, 2.948808, 1.020585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.497231, 2.738383, 0.188332>,  <4.682097, 2.396286, 0.735935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.497231, 2.738383, 0.188332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.555305, 2.983109, 0.499357>,  <4.590150, 3.129944, 0.685973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.555305, 2.983109, 0.499357>,  <4.497231, 2.738383, 0.188332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.555305, 2.983109, 0.499357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590042, 0.577307, -0.564417,
		-0.794211, 0.540742, -0.277178,
		0.145187, 0.611813, 0.777564,
		4.598862, 3.166652, 0.732626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.567972, 3.529486, -0.020967>,  <4.497231, 2.738383, 0.188332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.567972, 3.529486, -0.020967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.760963, 3.429260, 0.314755>,  <4.876758, 3.369125, 0.516189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.760963, 3.429260, 0.314755>,  <4.567972, 3.529486, -0.020967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.760963, 3.429260, 0.314755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830266, 0.436108, -0.347087,
		-0.279060, 0.864308, 0.418447,
		0.482478, -0.250564, 0.839305,
		4.905707, 3.354091, 0.566547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.848311, 4.204039, 0.272958>,  <4.567972, 3.529486, -0.020967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.848311, 4.204039, 0.272958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.071445, 3.891876, 0.385942>,  <5.205326, 3.704579, 0.453733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.071445, 3.891876, 0.385942>,  <4.848311, 4.204039, 0.272958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.071445, 3.891876, 0.385942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825134, 0.484877, -0.289911,
		0.089290, 0.394790, 0.914422,
		0.557837, -0.780407, 0.282460,
		5.238796, 3.657754, 0.470680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.380548, 4.516538, 0.490306>,  <4.848311, 4.204039, 0.272958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.380548, 4.516538, 0.490306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.510139, 4.140778, 0.445469>,  <5.587894, 3.915322, 0.418567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.510139, 4.140778, 0.445469>,  <5.380548, 4.516538, 0.490306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.510139, 4.140778, 0.445469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881787, 0.342768, -0.323979,
		0.342768, 0.006121, 0.939400,
		0.323979, -0.939400, -0.112093,
		5.607333, 3.858958, 0.411841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.111664, 4.635836, 0.660396>,  <5.380548, 4.516538, 0.490306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.111664, 4.635836, 0.660396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.100494, 4.291008, 0.457989>,  <6.093792, 4.084111, 0.336544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.100494, 4.291008, 0.457989>,  <6.111664, 4.635836, 0.660396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.100494, 4.291008, 0.457989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803172, 0.282013, -0.524769,
		0.595092, -0.421075, 0.684516,
		-0.027925, -0.862070, -0.506019,
		6.092117, 4.032387, 0.306183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.247786, 4.721312, -0.210184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.521378, 4.789276, 0.073591>,  <1.685532, 4.830055, 0.243857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.521378, 4.789276, 0.073591>,  <1.247786, 4.721312, -0.210184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.521378, 4.789276, 0.073591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289296, 0.955935, 0.049967,
		-0.669688, -0.239414, 0.702993,
		0.683978, 0.169911, 0.709440,
		1.726571, 4.840250, 0.286423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.915645, 4.453146, -0.928910>,  <1.247786, 4.721312, -0.210184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.915645, 4.453146, -0.928910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.174110, 4.152977, -0.873286>,  <1.329190, 3.972876, -0.839911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.174110, 4.152977, -0.873286>,  <0.915645, 4.453146, -0.928910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.174110, 4.152977, -0.873286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375271, -0.153748, 0.914075,
		-0.664563, -0.642828, -0.380958,
		0.646164, -0.750422, 0.139059,
		1.367960, 3.927850, -0.831568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.562802, 3.745514, -0.645794>,  <0.915645, 4.453146, -0.928910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.562802, 3.745514, -0.645794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.920998, 3.750931, -0.467842>,  <1.135915, 3.754181, -0.361071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.920998, 3.750931, -0.467842>,  <0.562802, 3.745514, -0.645794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.920998, 3.750931, -0.467842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426942, -0.256348, 0.867183,
		0.125788, -0.966490, -0.223775,
		0.895487, 0.013542, 0.444880,
		1.189644, 3.754993, -0.334378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.861144, 3.001248, -0.435105>,  <0.562802, 3.745514, -0.645794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.861144, 3.001248, -0.435105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.939766, 3.324799, -0.213444>,  <0.986939, 3.518929, -0.080447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.939766, 3.324799, -0.213444>,  <0.861144, 3.001248, -0.435105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.939766, 3.324799, -0.213444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511385, -0.397646, 0.761815,
		0.836571, -0.433123, 0.335489,
		0.196554, 0.808877, 0.554152,
		0.998732, 3.567462, -0.047198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.108647, 2.718612, 0.198329>,  <0.861144, 3.001248, -0.435105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.108647, 2.718612, 0.198329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.962646, 3.081902, 0.280211>,  <0.875046, 3.299875, 0.329341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.962646, 3.081902, 0.280211>,  <1.108647, 2.718612, 0.198329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.962646, 3.081902, 0.280211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604329, -0.398386, 0.689982,
		0.708210, 0.128134, 0.694277,
		-0.365000, 0.908224, 0.204706,
		0.853146, 3.354369, 0.341623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.006888, 2.700087, 0.949857>,  <1.108647, 2.718612, 0.198329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.006888, 2.700087, 0.949857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.771866, 2.989388, 0.804703>,  <0.630853, 3.162968, 0.717610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.771866, 2.989388, 0.804703>,  <1.006888, 2.700087, 0.949857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.771866, 2.989388, 0.804703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780087, -0.387095, 0.491549,
		0.215043, 0.571895, 0.791639,
		-0.587554, 0.723252, -0.362887,
		0.595600, 3.206363, 0.695837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.597286, 2.874636, 1.489644>,  <1.006888, 2.700087, 0.949857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.597286, 2.874636, 1.489644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.378868, 3.031242, 1.193387>,  <0.247817, 3.125206, 1.015633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.378868, 3.031242, 1.193387>,  <0.597286, 2.874636, 1.489644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.378868, 3.031242, 1.193387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836638, -0.300505, 0.457967,
		-0.043266, 0.869720, 0.491646,
		-0.546045, 0.391515, -0.740642,
		0.215054, 3.148697, 0.971195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.220763, 3.498265, 1.687345>,  <0.597286, 2.874636, 1.489644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.220763, 3.498265, 1.687345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.037819, 3.298927, 1.392734>,  <-0.071947, 3.179324, 1.215967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.037819, 3.298927, 1.392734>,  <0.220763, 3.498265, 1.687345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.037819, 3.298927, 1.392734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812500, -0.102489, 0.573882,
		-0.361477, 0.860900, -0.358031,
		-0.457360, -0.498345, -0.736528,
		-0.099389, 3.149424, 1.171775>
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
