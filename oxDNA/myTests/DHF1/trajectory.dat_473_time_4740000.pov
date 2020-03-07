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
	<3.353609, 6.092162, 0.282823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.254360, 6.174309, 0.661507>,  <3.194810, 6.223597, 0.888717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.254360, 6.174309, 0.661507>,  <3.353609, 6.092162, 0.282823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.254360, 6.174309, 0.661507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369383, -0.923493, 0.103519,
		0.895540, -0.324014, 0.304998,
		-0.248122, 0.205366, 0.946710,
		3.179923, 6.235919, 0.945520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.529240, 5.526805, 0.641101>,  <3.353609, 6.092162, 0.282823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.529240, 5.526805, 0.641101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.234320, 5.704638, 0.844566>,  <3.057369, 5.811337, 0.966646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.234320, 5.704638, 0.844566>,  <3.529240, 5.526805, 0.641101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.234320, 5.704638, 0.844566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555119, -0.827806, -0.081120,
		0.385011, -0.342179, 0.857135,
		-0.737299, 0.444580, 0.508665,
		3.013131, 5.838011, 0.997166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.260544, 5.198469, 1.331815>,  <3.529240, 5.526805, 0.641101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.260544, 5.198469, 1.331815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.951188, 5.383238, 1.158150>,  <2.765575, 5.494099, 1.053950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.951188, 5.383238, 1.158150>,  <3.260544, 5.198469, 1.331815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.951188, 5.383238, 1.158150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500849, -0.865075, -0.028205,
		-0.388613, 0.195637, 0.900392,
		-0.773389, 0.461921, -0.434164,
		2.719171, 5.521814, 1.027901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.766600, 4.954297, 1.744899>,  <3.260544, 5.198469, 1.331815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.766600, 4.954297, 1.744899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.636679, 5.062483, 1.382385>,  <2.558726, 5.127395, 1.164877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.636679, 5.062483, 1.382385>,  <2.766600, 4.954297, 1.744899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.636679, 5.062483, 1.382385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523725, -0.849344, -0.065775,
		-0.787537, 0.453279, 0.417520,
		-0.324804, 0.270466, -0.906284,
		2.539237, 5.143622, 1.110500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.075118, 4.927645, 1.771724>,  <2.766600, 4.954297, 1.744899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.075118, 4.927645, 1.771724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.195135, 4.874052, 1.393936>,  <2.267145, 4.841897, 1.167263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.195135, 4.874052, 1.393936>,  <2.075118, 4.927645, 1.771724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.195135, 4.874052, 1.393936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460263, -0.887550, -0.020310,
		-0.835543, 0.440798, -0.327969,
		0.300042, -0.133982, -0.944470,
		2.285148, 4.833858, 1.110595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.570970, 4.688951, 1.478274>,  <2.075118, 4.927645, 1.771724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.570970, 4.688951, 1.478274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.844738, 4.579979, 1.207764>,  <2.008999, 4.514596, 1.045457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.844738, 4.579979, 1.207764>,  <1.570970, 4.688951, 1.478274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.844738, 4.579979, 1.207764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443950, -0.891504, -0.090163,
		-0.578339, 0.361942, -0.731110,
		0.684421, -0.272431, -0.676276,
		2.050064, 4.498250, 1.004881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.123480, 4.540102, 0.928942>,  <1.570970, 4.688951, 1.478274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.123480, 4.540102, 0.928942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.469615, 4.353769, 0.854980>,  <1.677297, 4.241970, 0.810603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.469615, 4.353769, 0.854980>,  <1.123480, 4.540102, 0.928942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.469615, 4.353769, 0.854980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478663, -0.877507, -0.029385,
		-0.148566, 0.113935, -0.982317,
		0.865338, -0.465833, -0.184904,
		1.729217, 4.214019, 0.799509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.905402, 3.992112, 0.531867>,  <1.123480, 4.540102, 0.928942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.905402, 3.992112, 0.531867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.269048, 3.851944, 0.621948>,  <1.487236, 3.767843, 0.675997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.269048, 3.851944, 0.621948>,  <0.905402, 3.992112, 0.531867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.269048, 3.851944, 0.621948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371628, -0.926537, 0.058503,
		0.188158, -0.136878, -0.972554,
		0.909114, -0.350421, 0.225203,
		1.541782, 3.746818, 0.689509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.832408, 3.187786, 1.563750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.049469, 2.957657, 1.318954>,  <1.179706, 2.819579, 1.172077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.049469, 2.957657, 1.318954>,  <0.832408, 3.187786, 1.563750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.049469, 2.957657, 1.318954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615188, 0.768304, -0.176784,
		0.571901, -0.280555, 0.770855,
		0.542654, -0.575324, -0.611988,
		1.212265, 2.785060, 1.135358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.490596, 3.348470, 1.580945>,  <0.832408, 3.187786, 1.563750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.490596, 3.348470, 1.580945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.470720, 3.159386, 1.229019>,  <1.458795, 3.045935, 1.017864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.470720, 3.159386, 1.229019>,  <1.490596, 3.348470, 1.580945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.470720, 3.159386, 1.229019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724090, 0.589685, -0.357722,
		0.687913, -0.654840, 0.312985,
		-0.049688, -0.472711, -0.879815,
		1.455814, 3.017572, 0.965075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.165504, 3.298665, 1.532907>,  <1.490596, 3.348470, 1.580945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.165504, 3.298665, 1.532907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.959236, 3.274673, 1.191032>,  <1.835475, 3.260278, 0.985908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.959236, 3.274673, 1.191032>,  <2.165504, 3.298665, 1.532907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.959236, 3.274673, 1.191032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563701, 0.727486, -0.391159,
		0.645233, -0.683496, -0.341332,
		-0.515670, -0.059979, -0.854686,
		1.804535, 3.256680, 0.934627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.681383, 3.329217, 1.072645>,  <2.165504, 3.298665, 1.532907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.681383, 3.329217, 1.072645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.334946, 3.455296, 0.917450>,  <2.127083, 3.530943, 0.824333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.334946, 3.455296, 0.917450>,  <2.681383, 3.329217, 1.072645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.334946, 3.455296, 0.917450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437949, 0.852650, -0.284937,
		0.241006, -0.416700, -0.876514,
		-0.866093, 0.315197, -0.387987,
		2.075118, 3.549855, 0.801054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.857250, 3.670227, 0.524093>,  <2.681383, 3.329217, 1.072645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.857250, 3.670227, 0.524093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.499565, 3.823990, 0.615845>,  <2.284954, 3.916248, 0.670896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.499565, 3.823990, 0.615845>,  <2.857250, 3.670227, 0.524093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.499565, 3.823990, 0.615845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323329, 0.909025, -0.262929,
		-0.309583, -0.160949, -0.937152,
		-0.894213, 0.384407, 0.229379,
		2.231301, 3.939312, 0.684659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.719194, 4.161168, -0.025717>,  <2.857250, 3.670227, 0.524093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.719194, 4.161168, -0.025717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.522657, 4.260204, 0.308296>,  <2.404735, 4.319626, 0.508704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.522657, 4.260204, 0.308296>,  <2.719194, 4.161168, -0.025717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.522657, 4.260204, 0.308296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321888, 0.942486, -0.090049,
		-0.809303, 0.224542, -0.542780,
		-0.491343, 0.247591, 0.835033,
		2.375255, 4.334482, 0.558806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.703229, 4.849655, -0.111261>,  <2.719194, 4.161168, -0.025717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.703229, 4.849655, -0.111261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.570349, 4.830612, 0.265541>,  <2.490620, 4.819186, 0.491623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.570349, 4.830612, 0.265541>,  <2.703229, 4.849655, -0.111261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.570349, 4.830612, 0.265541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195919, 0.973460, 0.118289,
		-0.922636, 0.223853, -0.314057,
		-0.332202, -0.047608, 0.942006,
		2.470688, 4.816330, 0.548143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.120850, 5.305017, -0.085160>,  <2.703229, 4.849655, -0.111261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.120850, 5.305017, -0.085160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.283119, 5.250549, 0.276367>,  <2.380481, 5.217868, 0.493284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.283119, 5.250549, 0.276367>,  <2.120850, 5.305017, -0.085160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.283119, 5.250549, 0.276367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258285, 0.965617, 0.029552,
		-0.876766, 0.221454, 0.426894,
		0.405672, -0.136170, 0.903818,
		2.404821, 5.209698, 0.547513>
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
