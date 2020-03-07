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
	<3.241587, 3.888878, 1.497783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.616814, 3.958984, 1.617325>,  <3.841949, 4.001048, 1.689050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.616814, 3.958984, 1.617325>,  <3.241587, 3.888878, 1.497783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.616814, 3.958984, 1.617325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316852, -0.085097, -0.944650,
		-0.140133, 0.980837, -0.135360,
		0.938066, 0.175266, 0.298855,
		3.898233, 4.011564, 1.706981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.497658, 4.257760, 0.992231>,  <3.241587, 3.888878, 1.497783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.497658, 4.257760, 0.992231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.783676, 4.042839, 1.171124>,  <3.955287, 3.913886, 1.278459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.783676, 4.042839, 1.171124>,  <3.497658, 4.257760, 0.992231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.783676, 4.042839, 1.171124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397216, -0.214170, -0.892385,
		0.575264, 0.815743, 0.060284,
		0.715046, -0.537303, 0.447231,
		3.998190, 3.881648, 1.305293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.093721, 4.485589, 0.664543>,  <3.497658, 4.257760, 0.992231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.093721, 4.485589, 0.664543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.133022, 4.123558, 0.830040>,  <4.156603, 3.906340, 0.929338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.133022, 4.123558, 0.830040>,  <4.093721, 4.485589, 0.664543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.133022, 4.123558, 0.830040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499357, -0.314786, -0.807188,
		0.860807, 0.285914, 0.421028,
		0.098252, -0.905076, 0.413743,
		4.162498, 3.852035, 0.954163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.660092, 4.243903, 0.206815>,  <4.093721, 4.485589, 0.664543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.660092, 4.243903, 0.206815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.519127, 3.935074, 0.418365>,  <4.434548, 3.749777, 0.545296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.519127, 3.935074, 0.418365>,  <4.660092, 4.243903, 0.206815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.519127, 3.935074, 0.418365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412054, -0.635418, -0.653035,
		0.840248, -0.012212, 0.542065,
		-0.352413, -0.772071, 0.528877,
		4.413403, 3.703452, 0.577029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.167009, 3.831131, 0.346527>,  <4.660092, 4.243903, 0.206815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.167009, 3.831131, 0.346527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.869190, 3.569366, 0.399282>,  <4.690499, 3.412308, 0.430936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.869190, 3.569366, 0.399282>,  <5.167009, 3.831131, 0.346527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.869190, 3.569366, 0.399282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461552, -0.647363, -0.606540,
		0.482306, -0.390725, 0.784038,
		-0.744547, -0.654412, 0.131888,
		4.645826, 3.373043, 0.438849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.445299, 3.196009, 0.485967>,  <5.167009, 3.831131, 0.346527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.445299, 3.196009, 0.485967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.081669, 3.117828, 0.338791>,  <4.863491, 3.070920, 0.250485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.081669, 3.117828, 0.338791>,  <5.445299, 3.196009, 0.485967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.081669, 3.117828, 0.338791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386811, -0.724047, -0.571081,
		-0.154786, -0.661479, 0.733817,
		-0.909076, -0.195453, -0.367940,
		4.808946, 3.059193, 0.228409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.413726, 2.482687, 0.573183>,  <5.445299, 3.196009, 0.485967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.413726, 2.482687, 0.573183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.142673, 2.552994, 0.287548>,  <4.980042, 2.595178, 0.116167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.142673, 2.552994, 0.287548>,  <5.413726, 2.482687, 0.573183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.142673, 2.552994, 0.287548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512622, -0.583332, -0.630034,
		-0.527288, -0.792988, 0.305183,
		-0.677633, 0.175765, -0.714087,
		4.939384, 2.605724, 0.073322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.075082, 1.809033, 0.335836>,  <5.413726, 2.482687, 0.573183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.075082, 1.809033, 0.335836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.029942, 2.079369, 0.044493>,  <5.002857, 2.241570, -0.130314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.029942, 2.079369, 0.044493>,  <5.075082, 1.809033, 0.335836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.029942, 2.079369, 0.044493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428146, -0.628422, -0.649443,
		-0.896636, -0.385135, -0.218440,
		-0.112851, 0.675838, -0.728359,
		4.996086, 2.282120, -0.174015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.870879, 1.581410, 3.839597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.574135, 1.766083, 3.645075>,  <5.396088, 1.876886, 3.528362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.574135, 1.766083, 3.645075>,  <5.870879, 1.581410, 3.839597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.574135, 1.766083, 3.645075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403363, 0.272094, 0.873649,
		0.535668, 0.844284, -0.015631,
		-0.741861, 0.461681, -0.486305,
		5.351576, 1.904587, 3.499183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.788865, 2.339113, 3.979519>,  <5.870879, 1.581410, 3.839597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.788865, 2.339113, 3.979519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.433731, 2.173233, 3.899742>,  <5.220651, 2.073705, 3.851876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.433731, 2.173233, 3.899742>,  <5.788865, 2.339113, 3.979519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.433731, 2.173233, 3.899742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400761, 0.483824, 0.778013,
		-0.226146, 0.770675, -0.595750,
		-0.887833, -0.414699, -0.199442,
		5.167381, 2.048823, 3.839910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.341197, 2.850121, 3.828849>,  <5.788865, 2.339113, 3.979519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.341197, 2.850121, 3.828849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.168785, 2.538109, 4.010294>,  <5.065338, 2.350901, 4.119161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.168785, 2.538109, 4.010294>,  <5.341197, 2.850121, 3.828849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.168785, 2.538109, 4.010294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365898, 0.610615, 0.702330,
		-0.824823, 0.136748, -0.548605,
		-0.431029, -0.780032, 0.453613,
		5.039476, 2.304099, 4.146378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.606724, 2.942453, 3.846061>,  <5.341197, 2.850121, 3.828849>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.606724, 2.942453, 3.846061> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.718979, 2.708557, 4.150514>,  <4.786332, 2.568219, 4.333185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.718979, 2.708557, 4.150514>,  <4.606724, 2.942453, 3.846061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.718979, 2.708557, 4.150514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524291, 0.570847, 0.631865,
		-0.803967, -0.576379, -0.146373,
		0.280637, -0.584740, 0.761132,
		4.803170, 2.533135, 4.378853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.984253, 2.853985, 4.213446>,  <4.606724, 2.942453, 3.846061>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.984253, 2.853985, 4.213446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.272827, 2.772156, 4.478075>,  <4.445971, 2.723058, 4.636853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.272827, 2.772156, 4.478075>,  <3.984253, 2.853985, 4.213446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.272827, 2.772156, 4.478075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488393, 0.526973, 0.695537,
		-0.490920, -0.824893, 0.280265,
		0.721436, -0.204574, 0.661574,
		4.489258, 2.710783, 4.676547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.628152, 2.683321, 4.808941>,  <3.984253, 2.853985, 4.213446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.628152, 2.683321, 4.808941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.991631, 2.792717, 4.935099>,  <4.209718, 2.858355, 5.010793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.991631, 2.792717, 4.935099>,  <3.628152, 2.683321, 4.808941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.991631, 2.792717, 4.935099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415977, 0.529637, 0.739221,
		0.035124, -0.802925, 0.595044,
		0.908697, 0.273489, 0.315395,
		4.264239, 2.874764, 5.029717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.659413, 2.570424, 5.587220>,  <3.628152, 2.683321, 4.808941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.659413, 2.570424, 5.587220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.966637, 2.821770, 5.537836>,  <4.150971, 2.972577, 5.508206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.966637, 2.821770, 5.537836>,  <3.659413, 2.570424, 5.587220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.966637, 2.821770, 5.537836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287956, 0.511091, 0.809856,
		0.571985, -0.586467, 0.573490,
		0.768059, 0.628366, -0.123460,
		4.197054, 3.010279, 5.500798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.957118, 2.605826, 6.197775>,  <3.659413, 2.570424, 5.587220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.957118, 2.605826, 6.197775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.088036, 2.937233, 6.016034>,  <4.166586, 3.136077, 5.906990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.088036, 2.937233, 6.016034>,  <3.957118, 2.605826, 6.197775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.088036, 2.937233, 6.016034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317338, 0.549286, 0.773034,
		0.890042, -0.108826, 0.442699,
		0.327295, 0.828518, -0.454352,
		4.186224, 3.185788, 5.879728>
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
