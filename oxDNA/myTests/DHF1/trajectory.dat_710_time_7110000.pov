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
	<4.503229, 0.773576, 5.745986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.690847, 0.990612, 5.467248>,  <4.803418, 1.120833, 5.300005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.690847, 0.990612, 5.467248>,  <4.503229, 0.773576, 5.745986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.690847, 0.990612, 5.467248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851884, 0.069794, -0.519058,
		-0.233000, 0.837094, 0.494960,
		0.469046, 0.542589, -0.696845,
		4.831561, 1.153389, 5.258194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.241990, 1.524565, 5.587214>,  <4.503229, 0.773576, 5.745986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.241990, 1.524565, 5.587214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.388897, 1.318767, 5.277269>,  <4.477041, 1.195287, 5.091303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.388897, 1.318767, 5.277269>,  <4.241990, 1.524565, 5.587214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.388897, 1.318767, 5.277269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837579, 0.179307, -0.516052,
		0.404445, 0.838535, -0.365079,
		0.367266, -0.514497, -0.774860,
		4.499077, 1.164418, 5.044811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.081905, 1.908196, 4.975553>,  <4.241990, 1.524565, 5.587214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.081905, 1.908196, 4.975553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.174950, 1.547899, 4.828825>,  <4.230776, 1.331721, 4.740788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.174950, 1.547899, 4.828825>,  <4.081905, 1.908196, 4.975553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.174950, 1.547899, 4.828825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765691, 0.062948, -0.640121,
		0.599674, 0.429769, -0.675047,
		0.232612, -0.900742, -0.366818,
		4.244733, 1.277677, 4.718780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.275526, 1.863573, 4.148925>,  <4.081905, 1.908196, 4.975553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.275526, 1.863573, 4.148925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.125092, 1.517342, 4.281189>,  <4.034831, 1.309603, 4.360547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.125092, 1.517342, 4.281189>,  <4.275526, 1.863573, 4.148925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.125092, 1.517342, 4.281189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628570, -0.023861, -0.777387,
		0.680779, -0.500206, -0.535102,
		-0.376086, -0.865578, 0.330659,
		4.012266, 1.257668, 4.380387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.274507, 1.406815, 3.570168>,  <4.275526, 1.863573, 4.148925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.274507, 1.406815, 3.570168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.007338, 1.269900, 3.834507>,  <3.847036, 1.187751, 3.993110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.007338, 1.269900, 3.834507>,  <4.274507, 1.406815, 3.570168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.007338, 1.269900, 3.834507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670842, -0.107595, -0.733753,
		0.322258, -0.933414, -0.157757,
		-0.667922, -0.342288, 0.660847,
		3.806961, 1.167214, 4.032761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.080020, 0.731779, 3.275270>,  <4.274507, 1.406815, 3.570168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.080020, 0.731779, 3.275270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.808201, 0.845184, 3.545923>,  <3.645109, 0.913228, 3.708315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.808201, 0.845184, 3.545923>,  <4.080020, 0.731779, 3.275270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.808201, 0.845184, 3.545923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733600, -0.254297, -0.630209,
		-0.006607, -0.924637, 0.380792,
		-0.679549, 0.283513, 0.676634,
		3.604336, 0.930238, 3.748913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.483157, 0.450065, 3.076873>,  <4.080020, 0.731779, 3.275270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.483157, 0.450065, 3.076873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.300497, 0.683857, 3.345158>,  <3.190901, 0.824132, 3.506128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.300497, 0.683857, 3.345158>,  <3.483157, 0.450065, 3.076873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.300497, 0.683857, 3.345158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786621, 0.086895, -0.611291,
		-0.415569, -0.806741, 0.420084,
		-0.456651, 0.584481, 0.670710,
		3.163502, 0.859201, 3.546371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.908227, 0.179292, 3.199248>,  <3.483157, 0.450065, 3.076873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.908227, 0.179292, 3.199248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.862560, 0.566634, 3.288022>,  <2.835160, 0.799039, 3.341287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.862560, 0.566634, 3.288022>,  <2.908227, 0.179292, 3.199248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.862560, 0.566634, 3.288022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847307, 0.021726, -0.530659,
		-0.518688, -0.248631, 0.818013,
		-0.114166, 0.968355, 0.221936,
		2.828310, 0.857141, 3.354603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.603754, 1.046431, 2.055690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.316853, 1.250177, 2.245888>,  <2.144712, 1.372425, 2.360007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.316853, 1.250177, 2.245888>,  <2.603754, 1.046431, 2.055690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.316853, 1.250177, 2.245888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504407, -0.091265, 0.858629,
		0.480752, 0.855697, -0.191467,
		-0.717253, 0.509365, 0.475495,
		2.101677, 1.402987, 2.388537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.937635, 1.585489, 2.431759>,  <2.603754, 1.046431, 2.055690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.937635, 1.585489, 2.431759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.576618, 1.515148, 2.588980>,  <2.360008, 1.472943, 2.683313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.576618, 1.515148, 2.588980>,  <2.937635, 1.585489, 2.431759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.576618, 1.515148, 2.588980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386832, 0.069838, 0.919502,
		-0.189147, 0.981936, 0.004994,
		-0.902543, -0.175853, 0.393054,
		2.305855, 1.462392, 2.706896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.785048, 2.110043, 2.966617>,  <2.937635, 1.585489, 2.431759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.785048, 2.110043, 2.966617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.635715, 1.745026, 3.033417>,  <2.546116, 1.526015, 3.073497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.635715, 1.745026, 3.033417>,  <2.785048, 2.110043, 2.966617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.635715, 1.745026, 3.033417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556265, -0.076136, 0.827510,
		-0.742424, 0.401831, 0.536040,
		-0.373331, -0.912543, 0.167000,
		2.523716, 1.471263, 3.083517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.591363, 2.058567, 3.721592>,  <2.785048, 2.110043, 2.966617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.591363, 2.058567, 3.721592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.684052, 1.687178, 3.605493>,  <2.739665, 1.464344, 3.535834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.684052, 1.687178, 3.605493>,  <2.591363, 2.058567, 3.721592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.684052, 1.687178, 3.605493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646333, -0.076042, 0.759257,
		-0.727020, -0.363533, 0.582482,
		0.231722, -0.928473, -0.290247,
		2.753568, 1.408636, 3.518419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.634005, 1.700811, 4.341516>,  <2.591363, 2.058567, 3.721592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.634005, 1.700811, 4.341516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.800259, 1.446699, 4.081157>,  <2.900011, 1.294232, 3.924941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.800259, 1.446699, 4.081157>,  <2.634005, 1.700811, 4.341516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.800259, 1.446699, 4.081157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699101, -0.234643, 0.675426,
		-0.581813, -0.735773, 0.346599,
		0.415633, -0.635280, -0.650899,
		2.924949, 1.256115, 3.885887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.775424, 1.171955, 4.723760>,  <2.634005, 1.700811, 4.341516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.775424, 1.171955, 4.723760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.008080, 1.112087, 4.403937>,  <3.147673, 1.076167, 4.212043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.008080, 1.112087, 4.403937>,  <2.775424, 1.171955, 4.723760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.008080, 1.112087, 4.403937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751851, -0.276287, 0.598654,
		-0.310507, -0.949350, -0.048170,
		0.581640, -0.149669, -0.799558,
		3.182572, 1.067186, 4.164069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.982966, 0.486544, 4.791903>,  <2.775424, 1.171955, 4.723760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.982966, 0.486544, 4.791903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.263008, 0.665449, 4.569263>,  <3.431034, 0.772792, 4.435678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.263008, 0.665449, 4.569263>,  <2.982966, 0.486544, 4.791903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.263008, 0.665449, 4.569263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685927, -0.204698, 0.698286,
		0.198383, -0.870663, -0.450101,
		0.700106, 0.447264, -0.556602,
		3.473040, 0.799628, 4.402282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.446973, 0.079954, 4.665749>,  <2.982966, 0.486544, 4.791903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.446973, 0.079954, 4.665749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.627468, 0.431490, 4.603746>,  <3.735765, 0.642411, 4.566544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.627468, 0.431490, 4.603746>,  <3.446973, 0.079954, 4.665749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.627468, 0.431490, 4.603746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783266, -0.306796, 0.540713,
		0.427644, -0.365402, -0.826802,
		0.451237, 0.878839, -0.155007,
		3.762839, 0.695142, 4.557244>
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
