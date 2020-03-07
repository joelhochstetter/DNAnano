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
	<4.884851, 4.018929, 6.041791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.566185, 3.777630, 6.026736>,  <4.374985, 3.632850, 6.017703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.566185, 3.777630, 6.026736>,  <4.884851, 4.018929, 6.041791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.566185, 3.777630, 6.026736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100570, 0.193702, -0.975892,
		0.595996, -0.773673, -0.214985,
		-0.796665, -0.603249, -0.037637,
		4.327186, 3.596655, 6.015445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.987209, 3.324567, 5.685826>,  <4.884851, 4.018929, 6.041791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.987209, 3.324567, 5.685826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.615845, 3.465321, 5.638110>,  <4.393026, 3.549773, 5.609480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.615845, 3.465321, 5.638110>,  <4.987209, 3.324567, 5.685826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.615845, 3.465321, 5.638110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173204, 0.125836, -0.976814,
		-0.328714, -0.927547, -0.177775,
		-0.928411, 0.351884, -0.119291,
		4.337321, 3.570886, 5.602323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.656489, 3.062174, 4.994188>,  <4.987209, 3.324567, 5.685826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.656489, 3.062174, 4.994188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.480667, 3.403648, 5.105912>,  <4.375174, 3.608533, 5.172946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.480667, 3.403648, 5.105912>,  <4.656489, 3.062174, 4.994188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.480667, 3.403648, 5.105912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174527, 0.223861, -0.958867,
		-0.881097, -0.470221, 0.050592,
		-0.439554, 0.853685, 0.279309,
		4.348801, 3.659754, 5.189705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.956000, 3.172081, 4.715824>,  <4.656489, 3.062174, 4.994188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.956000, 3.172081, 4.715824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.124535, 3.529202, 4.779548>,  <4.225655, 3.743474, 4.817782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.124535, 3.529202, 4.779548>,  <3.956000, 3.172081, 4.715824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.124535, 3.529202, 4.779548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278227, 0.294443, -0.914272,
		-0.863172, 0.340891, 0.372461,
		0.421336, 0.892803, 0.159310,
		4.250935, 3.797042, 4.827341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.482884, 3.653764, 4.608296>,  <3.956000, 3.172081, 4.715824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.482884, 3.653764, 4.608296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.836655, 3.824703, 4.533288>,  <4.048917, 3.927267, 4.488283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.836655, 3.824703, 4.533288>,  <3.482884, 3.653764, 4.608296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.836655, 3.824703, 4.533288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304222, 0.223247, -0.926072,
		-0.353893, 0.876090, 0.327454,
		0.884426, 0.427349, -0.187520,
		4.101983, 3.952908, 4.477032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.348422, 4.340070, 4.268468>,  <3.482884, 3.653764, 4.608296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.348422, 4.340070, 4.268468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.708366, 4.202129, 4.161641>,  <3.924333, 4.119365, 4.097545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.708366, 4.202129, 4.161641>,  <3.348422, 4.340070, 4.268468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.708366, 4.202129, 4.161641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193212, 0.233792, -0.952896,
		0.391046, 0.909075, 0.143752,
		0.899862, -0.344852, -0.267068,
		3.978325, 4.098674, 4.081521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.543271, 4.733682, 3.692315>,  <3.348422, 4.340070, 4.268468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.543271, 4.733682, 3.692315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.858849, 4.488583, 3.673944>,  <4.048195, 4.341523, 3.662922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.858849, 4.488583, 3.673944>,  <3.543271, 4.733682, 3.692315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.858849, 4.488583, 3.673944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065686, 0.158416, -0.985185,
		0.610945, 0.774238, 0.165230,
		0.788943, -0.612747, -0.045927,
		4.095531, 4.304759, 3.660167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.173323, 5.054352, 3.229107>,  <3.543271, 4.733682, 3.692315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.173323, 5.054352, 3.229107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.158813, 4.655037, 3.247458>,  <4.150108, 4.415448, 3.258469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.158813, 4.655037, 3.247458>,  <4.173323, 5.054352, 3.229107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.158813, 4.655037, 3.247458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094256, -0.042286, -0.994650,
		0.994887, -0.040403, -0.092560,
		-0.036273, -0.998288, 0.045878,
		4.147932, 4.355550, 3.261222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.260756, 3.492717, 2.010226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.655304, 3.441620, 2.051714>,  <3.892033, 3.410962, 2.076607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.655304, 3.441620, 2.051714>,  <3.260756, 3.492717, 2.010226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.655304, 3.441620, 2.051714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086744, 0.131966, 0.987451,
		-0.139827, -0.982989, 0.119086,
		0.986369, -0.127743, 0.103721,
		3.951215, 3.403297, 2.082830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.387922, 3.098137, 2.572696>,  <3.260756, 3.492717, 2.010226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.387922, 3.098137, 2.572696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.723724, 3.307892, 2.515778>,  <3.925206, 3.433745, 2.481627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.723724, 3.307892, 2.515778>,  <3.387922, 3.098137, 2.572696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.723724, 3.307892, 2.515778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009664, 0.276256, 0.961036,
		0.543266, -0.805419, 0.236986,
		0.839505, 0.524388, -0.142296,
		3.975576, 3.465208, 2.473089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.565481, 3.239922, 3.273097>,  <3.387922, 3.098137, 2.572696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.565481, 3.239922, 3.273097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.836731, 3.475319, 3.096996>,  <3.999481, 3.616557, 2.991335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.836731, 3.475319, 3.096996>,  <3.565481, 3.239922, 3.273097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.836731, 3.475319, 3.096996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341446, 0.278189, 0.897790,
		0.650816, -0.759136, -0.012291,
		0.678125, 0.588492, -0.440254,
		4.040169, 3.651866, 2.964920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.340636, 3.035252, 3.446274>,  <3.565481, 3.239922, 3.273097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.340636, 3.035252, 3.446274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.284279, 3.428749, 3.401735>,  <4.250465, 3.664848, 3.375011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.284279, 3.428749, 3.401735>,  <4.340636, 3.035252, 3.446274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.284279, 3.428749, 3.401735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450016, 0.163815, 0.877866,
		0.881836, 0.073576, -0.465781,
		-0.140892, 0.983743, -0.111347,
		4.242012, 3.723872, 3.368330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.995550, 3.378746, 3.548324>,  <4.340636, 3.035252, 3.446274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.995550, 3.378746, 3.548324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.698326, 3.640762, 3.603147>,  <4.519992, 3.797972, 3.636040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.698326, 3.640762, 3.603147>,  <4.995550, 3.378746, 3.548324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.698326, 3.640762, 3.603147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342626, 0.196441, 0.918705,
		0.574865, 0.729611, -0.370401,
		-0.743059, 0.655041, 0.137057,
		4.475409, 3.837275, 3.644264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.213120, 4.032229, 3.794217>,  <4.995550, 3.378746, 3.548324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.213120, 4.032229, 3.794217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.825882, 4.031357, 3.894448>,  <4.593539, 4.030833, 3.954587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.825882, 4.031357, 3.894448>,  <5.213120, 4.032229, 3.794217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.825882, 4.031357, 3.894448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234679, 0.342714, 0.909655,
		-0.087861, 0.939437, -0.331268,
		-0.968094, -0.002181, 0.250577,
		4.535454, 4.030703, 3.969621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.196029, 4.538767, 4.236311>,  <5.213120, 4.032229, 3.794217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.196029, 4.538767, 4.236311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.850525, 4.361893, 4.332967>,  <4.643222, 4.255768, 4.390960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.850525, 4.361893, 4.332967>,  <5.196029, 4.538767, 4.236311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.850525, 4.361893, 4.332967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205057, 0.129585, 0.970133,
		-0.460292, 0.887513, -0.021257,
		-0.863761, -0.442185, 0.241638,
		4.591396, 4.229237, 4.405458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.854635, 4.952997, 4.718147>,  <5.196029, 4.538767, 4.236311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.854635, 4.952997, 4.718147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.689507, 4.594757, 4.784457>,  <4.590429, 4.379813, 4.824243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.689507, 4.594757, 4.784457>,  <4.854635, 4.952997, 4.718147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.689507, 4.594757, 4.784457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116178, 0.128744, 0.984849,
		-0.903372, 0.425826, 0.050901,
		-0.412821, -0.895599, 0.165775,
		4.565660, 4.326077, 4.834189>
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
