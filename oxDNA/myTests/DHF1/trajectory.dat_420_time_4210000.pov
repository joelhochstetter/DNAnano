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
	<3.917616, 3.556900, 4.469472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.015514, 3.685081, 4.103432>,  <4.074253, 3.761990, 3.883807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.015514, 3.685081, 4.103432>,  <3.917616, 3.556900, 4.469472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.015514, 3.685081, 4.103432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861431, -0.361314, -0.356917,
		-0.445014, 0.875650, 0.187618,
		0.244745, 0.320453, -0.915101,
		4.088938, 3.781217, 3.828901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.343213, 3.324996, 4.136963>,  <3.917616, 3.556900, 4.469472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.343213, 3.324996, 4.136963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.567688, 3.497665, 3.854481>,  <3.702373, 3.601267, 3.684991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.567688, 3.497665, 3.854481>,  <3.343213, 3.324996, 4.136963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.567688, 3.497665, 3.854481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560221, -0.429978, -0.708006,
		-0.609280, 0.792955, 0.000535,
		0.561187, 0.431674, -0.706206,
		3.736044, 3.627167, 3.642619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.885920, 3.744549, 3.808762>,  <3.343213, 3.324996, 4.136963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.885920, 3.744549, 3.808762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.197594, 3.664307, 3.571232>,  <3.384598, 3.616161, 3.428714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.197594, 3.664307, 3.571232>,  <2.885920, 3.744549, 3.808762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.197594, 3.664307, 3.571232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625349, -0.313129, -0.714765,
		-0.042558, 0.928282, -0.369433,
		0.779184, -0.200606, -0.593826,
		3.431349, 3.604125, 3.393084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.822555, 4.117047, 3.144067>,  <2.885920, 3.744549, 3.808762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.822555, 4.117047, 3.144067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.019844, 3.769455, 3.128040>,  <3.138217, 3.560900, 3.118424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.019844, 3.769455, 3.128040>,  <2.822555, 4.117047, 3.144067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.019844, 3.769455, 3.128040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607260, -0.310964, -0.731120,
		0.622870, 0.384936, -0.681071,
		0.493223, -0.868980, -0.040066,
		3.167811, 3.508761, 3.116020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.971097, 3.916542, 2.468012>,  <2.822555, 4.117047, 3.144067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.971097, 3.916542, 2.468012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.998116, 3.554222, 2.635326>,  <3.014327, 3.336830, 2.735715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.998116, 3.554222, 2.635326>,  <2.971097, 3.916542, 2.468012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.998116, 3.554222, 2.635326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518371, -0.390078, -0.761006,
		0.852484, -0.165425, -0.495889,
		0.067546, -0.905800, 0.418287,
		3.018379, 3.282482, 2.760812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.239465, 3.471199, 1.956813>,  <2.971097, 3.916542, 2.468012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.239465, 3.471199, 1.956813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.046242, 3.234947, 2.215366>,  <2.930308, 3.093196, 2.370499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.046242, 3.234947, 2.215366>,  <3.239465, 3.471199, 1.956813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.046242, 3.234947, 2.215366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553252, -0.366295, -0.748158,
		0.678651, -0.719017, -0.149826,
		-0.483057, -0.590629, 0.646384,
		2.901325, 3.057758, 2.409282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.402802, 2.791047, 1.666540>,  <3.239465, 3.471199, 1.956813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.402802, 2.791047, 1.666540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.066479, 2.783203, 1.882931>,  <2.864685, 2.778497, 2.012765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.066479, 2.783203, 1.882931>,  <3.402802, 2.791047, 1.666540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.066479, 2.783203, 1.882931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481160, -0.430840, -0.763454,
		0.248046, -0.902215, 0.352819,
		-0.840808, -0.019609, 0.540978,
		2.814236, 2.777320, 2.045224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.269272, 2.128589, 1.812400>,  <3.402802, 2.791047, 1.666540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.269272, 2.128589, 1.812400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.986588, 2.409393, 1.777210>,  <2.816977, 2.577876, 1.756096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.986588, 2.409393, 1.777210>,  <3.269272, 2.128589, 1.812400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.986588, 2.409393, 1.777210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441416, -0.534677, -0.720606,
		-0.552921, -0.470417, 0.687740,
		-0.706704, 0.702017, -0.087984,
		2.774574, 2.619997, 1.750818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.825120, 1.388121, 1.318217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.565148, 1.655670, 1.462551>,  <1.409165, 1.816199, 1.549152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.565148, 1.655670, 1.462551>,  <1.825120, 1.388121, 1.318217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.565148, 1.655670, 1.462551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682177, 0.304151, 0.664926,
		0.335002, 0.678309, -0.653965,
		-0.649930, 0.668872, 0.360835,
		1.370169, 1.856332, 1.570802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.075377, 2.073931, 1.259555>,  <1.825120, 1.388121, 1.318217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.075377, 2.073931, 1.259555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.813836, 2.069267, 1.562168>,  <1.656912, 2.066469, 1.743736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.813836, 2.069267, 1.562168>,  <2.075377, 2.073931, 1.259555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.813836, 2.069267, 1.562168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636416, 0.532298, 0.558241,
		-0.409210, 0.846477, -0.340623,
		-0.653851, -0.011660, 0.756533,
		1.617681, 2.065769, 1.789128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.048491, 2.726223, 1.576395>,  <2.075377, 2.073931, 1.259555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.048491, 2.726223, 1.576395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.949174, 2.440552, 1.838173>,  <1.889583, 2.269149, 1.995240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.949174, 2.440552, 1.838173>,  <2.048491, 2.726223, 1.576395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.949174, 2.440552, 1.838173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624112, 0.398746, 0.671927,
		-0.740834, 0.575282, 0.346722,
		-0.248294, -0.714179, 0.654445,
		1.874686, 2.226298, 2.034506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.705541, 2.995844, 2.245497>,  <2.048491, 2.726223, 1.576395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.705541, 2.995844, 2.245497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.957502, 2.685455, 2.232292>,  <2.108679, 2.499222, 2.224369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.957502, 2.685455, 2.232292>,  <1.705541, 2.995844, 2.245497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.957502, 2.685455, 2.232292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539744, 0.406788, 0.737021,
		-0.558478, -0.482072, 0.675063,
		0.629904, -0.775971, -0.033013,
		2.146474, 2.452664, 2.222388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.852927, 2.607739, 2.890018>,  <1.705541, 2.995844, 2.245497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.852927, 2.607739, 2.890018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.180465, 2.573174, 2.663029>,  <2.376987, 2.552434, 2.526835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.180465, 2.573174, 2.663029>,  <1.852927, 2.607739, 2.890018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.180465, 2.573174, 2.663029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553512, 0.380735, 0.740720,
		0.152048, -0.920638, 0.359594,
		0.818844, -0.086415, -0.567474,
		2.426118, 2.547249, 2.492786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.370863, 2.288710, 3.247667>,  <1.852927, 2.607739, 2.890018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.370863, 2.288710, 3.247667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.553052, 2.529625, 2.985432>,  <2.662365, 2.674174, 2.828091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.553052, 2.529625, 2.985432>,  <2.370863, 2.288710, 3.247667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.553052, 2.529625, 2.985432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598952, 0.337502, 0.726188,
		0.658636, -0.723423, -0.207018,
		0.455472, 0.602288, -0.655587,
		2.689693, 2.710311, 2.788755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.008151, 2.151785, 3.345129>,  <2.370863, 2.288710, 3.247667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.008151, 2.151785, 3.345129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.015485, 2.503059, 3.153942>,  <3.019885, 2.713824, 3.039230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.015485, 2.503059, 3.153942>,  <3.008151, 2.151785, 3.345129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.015485, 2.503059, 3.153942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774921, 0.289596, 0.561810,
		0.631792, -0.380689, -0.675215,
		0.018336, 0.878186, -0.477968,
		3.020986, 2.766515, 3.010551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.678840, 2.299345, 3.007727>,  <3.008151, 2.151785, 3.345129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.678840, 2.299345, 3.007727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.516238, 2.661797, 3.054520>,  <3.418677, 2.879267, 3.082595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.516238, 2.661797, 3.054520>,  <3.678840, 2.299345, 3.007727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.516238, 2.661797, 3.054520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802520, 0.292923, 0.519767,
		0.436709, 0.305167, -0.846261,
		-0.406505, 0.906129, 0.116981,
		3.394287, 2.933635, 3.089614>
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
