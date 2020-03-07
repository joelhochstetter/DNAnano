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
	<3.073013, 1.427427, 5.044417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.861885, 1.116119, 4.908356>,  <2.735209, 0.929335, 4.826719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.861885, 1.116119, 4.908356>,  <3.073013, 1.427427, 5.044417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.861885, 1.116119, 4.908356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841321, -0.534027, -0.083634,
		-0.116562, -0.330322, 0.936643,
		-0.527819, -0.778269, -0.340154,
		2.703539, 0.882639, 4.806309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.260831, 0.764284, 5.420981>,  <3.073013, 1.427427, 5.044417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.260831, 0.764284, 5.420981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.125839, 0.676559, 5.054810>,  <3.044844, 0.623925, 4.835107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.125839, 0.676559, 5.054810>,  <3.260831, 0.764284, 5.420981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.125839, 0.676559, 5.054810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804571, -0.572016, -0.159573,
		-0.488644, -0.790380, 0.369495,
		-0.337480, -0.219310, -0.915429,
		3.024595, 0.610766, 4.780181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.251633, 0.075192, 5.253549>,  <3.260831, 0.764284, 5.420981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.251633, 0.075192, 5.253549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.324738, 0.277512, 4.916321>,  <3.368600, 0.398903, 4.713984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.324738, 0.277512, 4.916321>,  <3.251633, 0.075192, 5.253549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.324738, 0.277512, 4.916321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774358, -0.602418, -0.193553,
		-0.605778, -0.617464, -0.501768,
		0.182762, 0.505798, -0.843070,
		3.379566, 0.429251, 4.663400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.300265, -0.460873, 4.856675>,  <3.251633, 0.075192, 5.253549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.300265, -0.460873, 4.856675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.490707, -0.143204, 4.705620>,  <3.604973, 0.047398, 4.614986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.490707, -0.143204, 4.705620>,  <3.300265, -0.460873, 4.856675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.490707, -0.143204, 4.705620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678485, -0.604937, -0.416784,
		-0.559447, -0.057789, -0.826849,
		0.476106, 0.794174, -0.377639,
		3.633539, 0.095048, 4.592328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.395045, -0.518206, 4.042796>,  <3.300265, -0.460873, 4.856675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.395045, -0.518206, 4.042796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.659027, -0.294830, 4.243835>,  <3.817416, -0.160805, 4.364459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.659027, -0.294830, 4.243835>,  <3.395045, -0.518206, 4.042796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.659027, -0.294830, 4.243835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751276, -0.496377, -0.434964,
		0.006577, 0.664647, -0.747129,
		0.659955, 0.558439, 0.502598,
		3.857014, -0.127299, 4.394615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.006225, -0.261373, 3.546493>,  <3.395045, -0.518206, 4.042796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.006225, -0.261373, 3.546493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.144547, -0.244751, 3.921448>,  <4.227539, -0.234778, 4.146420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.144547, -0.244751, 3.921448>,  <4.006225, -0.261373, 3.546493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.144547, -0.244751, 3.921448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824850, -0.489663, -0.282582,
		0.447261, 0.870921, -0.203603,
		0.345803, 0.041554, 0.937386,
		4.248288, -0.232285, 4.202664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.783245, -0.140582, 3.509947>,  <4.006225, -0.261373, 3.546493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.783245, -0.140582, 3.509947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.723671, -0.289200, 3.876503>,  <4.687926, -0.378371, 4.096437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.723671, -0.289200, 3.876503>,  <4.783245, -0.140582, 3.509947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.723671, -0.289200, 3.876503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855612, -0.513007, -0.068938,
		0.495729, 0.773808, 0.394303,
		-0.148935, -0.371545, 0.916391,
		4.678990, -0.400663, 4.151421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.484499, -0.128428, 3.947504>,  <4.783245, -0.140582, 3.509947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.484499, -0.128428, 3.947504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.231804, -0.403305, 4.090988>,  <5.080187, -0.568231, 4.177079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.231804, -0.403305, 4.090988>,  <5.484499, -0.128428, 3.947504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.231804, -0.403305, 4.090988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712404, -0.697100, -0.080818,
		0.305594, 0.204491, 0.929944,
		-0.631738, -0.687193, 0.358710,
		5.042283, -0.609463, 4.198601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<6.218645, 3.324334, 4.471830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.973103, 3.062134, 4.295876>,  <5.825778, 2.904814, 4.190302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.973103, 3.062134, 4.295876>,  <6.218645, 3.324334, 4.471830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.973103, 3.062134, 4.295876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789396, 0.505406, 0.348453,
		-0.006089, 0.561144, -0.827695,
		-0.613855, -0.655501, -0.439887,
		5.788946, 2.865484, 4.163909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.677876, 3.493306, 3.786585>,  <6.218645, 3.324334, 4.471830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.677876, 3.493306, 3.786585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.579308, 3.251297, 4.089432>,  <5.520166, 3.106092, 4.271140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.579308, 3.251297, 4.089432>,  <5.677876, 3.493306, 3.786585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.579308, 3.251297, 4.089432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745008, 0.617909, 0.251300,
		-0.619871, -0.502132, -0.603012,
		-0.246421, -0.605022, 0.757116,
		5.505381, 3.069790, 4.316566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.028757, 3.331163, 3.732571>,  <5.677876, 3.493306, 3.786585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.028757, 3.331163, 3.732571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.115795, 3.333664, 4.122978>,  <5.168018, 3.335165, 4.357223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.115795, 3.333664, 4.122978>,  <5.028757, 3.331163, 3.732571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.115795, 3.333664, 4.122978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631532, 0.763346, 0.135905,
		-0.744190, -0.645959, 0.170051,
		0.217597, 0.006253, 0.976019,
		5.181074, 3.335540, 4.415784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.412155, 3.395454, 4.250245>,  <5.028757, 3.331163, 3.732571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.412155, 3.395454, 4.250245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.739536, 3.568970, 4.400955>,  <4.935966, 3.673079, 4.491382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.739536, 3.568970, 4.400955>,  <4.412155, 3.395454, 4.250245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.739536, 3.568970, 4.400955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553337, 0.771704, 0.313514,
		-0.154761, -0.465081, 0.871636,
		0.818454, 0.433788, 0.376776,
		4.985073, 3.699106, 4.513988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.406993, 3.635084, 5.030987>,  <4.412155, 3.395454, 4.250245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.406993, 3.635084, 5.030987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.607777, 3.866562, 4.773880>,  <4.728247, 4.005449, 4.619616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.607777, 3.866562, 4.773880>,  <4.406993, 3.635084, 5.030987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.607777, 3.866562, 4.773880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498861, 0.800814, 0.331412,
		0.706523, 0.154296, 0.690665,
		0.501959, 0.578696, -0.642766,
		4.758364, 4.040171, 4.581050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.577358, 4.226592, 5.481553>,  <4.406993, 3.635084, 5.030987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.577358, 4.226592, 5.481553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.595474, 4.324753, 5.094208>,  <4.606344, 4.383649, 4.861801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.595474, 4.324753, 5.094208>,  <4.577358, 4.226592, 5.481553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.595474, 4.324753, 5.094208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571861, 0.801185, 0.176290,
		0.819100, 0.545784, 0.176621,
		0.045290, 0.245402, -0.968363,
		4.609061, 4.398373, 4.803699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.757902, 4.966757, 5.338044>,  <4.577358, 4.226592, 5.481553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.757902, 4.966757, 5.338044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.595680, 4.868591, 4.985840>,  <4.498347, 4.809692, 4.774518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.595680, 4.868591, 4.985840>,  <4.757902, 4.966757, 5.338044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.595680, 4.868591, 4.985840> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619863, 0.781793, 0.067603,
		0.671785, 0.573211, -0.469184,
		-0.405555, -0.245415, -0.880509,
		4.474014, 4.794967, 4.721687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.771283, 5.627326, 5.052569>,  <4.757902, 4.966757, 5.338044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.771283, 5.627326, 5.052569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.504219, 5.398407, 4.862114>,  <4.343981, 5.261055, 4.747841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.504219, 5.398407, 4.862114>,  <4.771283, 5.627326, 5.052569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.504219, 5.398407, 4.862114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711970, 0.677750, 0.183722,
		0.217558, 0.461659, -0.859965,
		-0.667659, -0.572298, -0.476138,
		4.303922, 5.226717, 4.719273>
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
