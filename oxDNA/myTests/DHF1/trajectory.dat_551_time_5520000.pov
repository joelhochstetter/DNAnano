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
	<2.778854, 3.798916, 3.915528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.086750, 3.606743, 4.083664>,  <3.271487, 3.491439, 4.184546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.086750, 3.606743, 4.083664>,  <2.778854, 3.798916, 3.915528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.086750, 3.606743, 4.083664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626820, -0.693470, 0.355240,
		0.120825, -0.536920, -0.834936,
		0.769739, -0.480433, 0.420341,
		3.317672, 3.462613, 4.209766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.533708, 3.221303, 3.664016>,  <2.778854, 3.798916, 3.915528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.533708, 3.221303, 3.664016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.767197, 3.187374, 3.987020>,  <2.907290, 3.167017, 4.180823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.767197, 3.187374, 3.987020>,  <2.533708, 3.221303, 3.664016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.767197, 3.187374, 3.987020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658044, -0.632029, 0.409289,
		0.475653, -0.770288, -0.424747,
		0.583723, -0.084823, 0.807510,
		2.942313, 3.161927, 4.229274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.782536, 2.508061, 3.828141>,  <2.533708, 3.221303, 3.664016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.782536, 2.508061, 3.828141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.813393, 2.707989, 4.173216>,  <2.831907, 2.827945, 4.380261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.813393, 2.707989, 4.173216>,  <2.782536, 2.508061, 3.828141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.813393, 2.707989, 4.173216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710111, -0.579824, 0.399433,
		0.699851, -0.643417, 0.310199,
		0.077142, 0.499819, 0.862688,
		2.836535, 2.857934, 4.432022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.812507, 1.957511, 4.313302>,  <2.782536, 2.508061, 3.828141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.812507, 1.957511, 4.313302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.705551, 2.295380, 4.498789>,  <2.641377, 2.498101, 4.610081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.705551, 2.295380, 4.498789>,  <2.812507, 1.957511, 4.313302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.705551, 2.295380, 4.498789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595326, -0.523220, 0.609777,
		0.757687, -0.113015, 0.642758,
		-0.267391, 0.844670, 0.463718,
		2.625334, 2.548781, 4.637904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.810298, 1.874857, 5.028737>,  <2.812507, 1.957511, 4.313302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.810298, 1.874857, 5.028737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.551079, 2.152630, 4.903646>,  <2.395547, 2.319293, 4.828592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.551079, 2.152630, 4.903646>,  <2.810298, 1.874857, 5.028737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.551079, 2.152630, 4.903646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745385, -0.494042, 0.447575,
		0.156311, 0.523151, 0.837783,
		-0.648049, 0.694431, -0.312725,
		2.356664, 2.360959, 4.809829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.393622, 1.984119, 5.591598>,  <2.810298, 1.874857, 5.028737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.393622, 1.984119, 5.591598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.196548, 2.097248, 5.262411>,  <2.078304, 2.165125, 5.064899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.196548, 2.097248, 5.262411>,  <2.393622, 1.984119, 5.591598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.196548, 2.097248, 5.262411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766380, -0.589005, 0.256390,
		-0.412218, 0.757024, 0.506943,
		-0.492685, 0.282822, -0.822966,
		2.048743, 2.182095, 5.015521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.723825, 2.108124, 5.813879>,  <2.393622, 1.984119, 5.591598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.723825, 2.108124, 5.813879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.687733, 2.051205, 5.419598>,  <1.666077, 2.017053, 5.183029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.687733, 2.051205, 5.419598>,  <1.723825, 2.108124, 5.813879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.687733, 2.051205, 5.419598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806920, -0.569659, 0.156104,
		-0.583728, 0.809468, -0.063422,
		-0.090232, -0.142299, -0.985702,
		1.660663, 2.008515, 5.123887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.062159, 2.341720, 5.613266>,  <1.723825, 2.108124, 5.813879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.062159, 2.341720, 5.613266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.221809, 2.050335, 5.390541>,  <1.317600, 1.875504, 5.256906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.221809, 2.050335, 5.390541>,  <1.062159, 2.341720, 5.613266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.221809, 2.050335, 5.390541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857466, -0.511624, 0.054707,
		-0.324731, 0.455614, -0.828834,
		0.399126, -0.728462, -0.556813,
		1.341547, 1.831796, 5.223497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.654972, 1.342427, 5.878585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.574554, 1.151344, 5.536503>,  <0.526304, 1.036695, 5.331254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.574554, 1.151344, 5.536503>,  <0.654972, 1.342427, 5.878585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.574554, 1.151344, 5.536503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700904, 0.539748, -0.466267,
		0.684335, -0.693158, 0.226312,
		-0.201045, -0.477706, -0.855206,
		0.514241, 1.008032, 5.279941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.295267, 1.022358, 5.514378>,  <0.654972, 1.342427, 5.878585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.295267, 1.022358, 5.514378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.008545, 1.122372, 5.254017>,  <0.836512, 1.182380, 5.097801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.008545, 1.122372, 5.254017>,  <1.295267, 1.022358, 5.514378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.008545, 1.122372, 5.254017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631087, 0.629604, -0.453131,
		0.296511, -0.735582, -0.609098,
		-0.716806, 0.250036, -0.650901,
		0.793503, 1.197382, 5.058746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.569062, 1.036744, 4.911296>,  <1.295267, 1.022358, 5.514378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.569062, 1.036744, 4.911296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.271820, 1.302711, 4.881157>,  <1.093475, 1.462292, 4.863074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.271820, 1.302711, 4.881157>,  <1.569062, 1.036744, 4.911296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.271820, 1.302711, 4.881157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596167, 0.606679, -0.525857,
		-0.303941, -0.435686, -0.847229,
		-0.743105, 0.664919, -0.075347,
		1.048889, 1.502187, 4.858553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.404284, 1.261411, 4.195356>,  <1.569062, 1.036744, 4.911296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.404284, 1.261411, 4.195356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.303001, 1.543354, 4.460403>,  <1.242232, 1.712520, 4.619432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.303001, 1.543354, 4.460403>,  <1.404284, 1.261411, 4.195356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.303001, 1.543354, 4.460403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679119, 0.617309, -0.397148,
		-0.688973, 0.349436, -0.634989,
		-0.253206, 0.704857, 0.662618,
		1.227039, 1.754811, 4.659189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.380986, 1.909848, 3.868271>,  <1.404284, 1.261411, 4.195356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.380986, 1.909848, 3.868271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.456123, 1.976658, 4.255428>,  <1.501206, 2.016744, 4.487723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.456123, 1.976658, 4.255428>,  <1.380986, 1.909848, 3.868271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.456123, 1.976658, 4.255428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588969, 0.769458, -0.247085,
		-0.786022, 0.616472, 0.046164,
		0.187842, 0.167025, 0.967893,
		1.512476, 2.026765, 4.545796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.409110, 2.546638, 3.928232>,  <1.380986, 1.909848, 3.868271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.409110, 2.546638, 3.928232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.577583, 2.440830, 4.275249>,  <1.678667, 2.377345, 4.483460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.577583, 2.440830, 4.275249>,  <1.409110, 2.546638, 3.928232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.577583, 2.440830, 4.275249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587792, 0.808072, -0.038980,
		-0.690728, 0.526354, 0.495830,
		0.421183, -0.264521, 0.867545,
		1.703938, 2.361474, 4.535513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.442792, 3.157381, 4.491687>,  <1.409110, 2.546638, 3.928232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.442792, 3.157381, 4.491687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.742607, 2.894585, 4.524075>,  <1.922496, 2.736907, 4.543507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.742607, 2.894585, 4.524075>,  <1.442792, 3.157381, 4.491687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.742607, 2.894585, 4.524075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659551, 0.730774, -0.175960,
		0.056433, 0.185293, 0.981062,
		0.749539, -0.656990, 0.080970,
		1.967469, 2.697488, 4.548366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.800580, 3.249643, 5.042057>,  <1.442792, 3.157381, 4.491687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.800580, 3.249643, 5.042057> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.079384, 3.114956, 4.788822>,  <2.246666, 3.034143, 4.636881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.079384, 3.114956, 4.788822>,  <1.800580, 3.249643, 5.042057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.079384, 3.114956, 4.788822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531611, 0.835153, 0.141096,
		0.481215, -0.434902, 0.761112,
		0.697009, -0.336719, -0.633087,
		2.288486, 3.013940, 4.598896>
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
