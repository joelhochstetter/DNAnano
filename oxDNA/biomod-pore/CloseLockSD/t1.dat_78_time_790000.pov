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
	sky <0, 0.179814, -0.983701>
	up <0, 0.179814, -0.983701>
	right 1.6 * <1, 0, 0>
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<4.566336, 14.737328, 15.147624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.418320, 15.059916, 15.332092>,  <4.329511, 15.253469, 15.442773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.418320, 15.059916, 15.332092>,  <4.566336, 14.737328, 15.147624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.418320, 15.059916, 15.332092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450284, 0.589896, -0.670274,
		-0.812598, -0.040371, -0.581425,
		-0.370040, 0.806470, 0.461170,
		4.307308, 15.301856, 15.470443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.295333, 14.998595, 14.551937>,  <4.566336, 14.737328, 15.147624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.295333, 14.998595, 14.551937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.345730, 15.269529, 14.841859>,  <4.375968, 15.432090, 15.015812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.345730, 15.269529, 14.841859>,  <4.295333, 14.998595, 14.551937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.345730, 15.269529, 14.841859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443290, 0.615185, -0.651952,
		-0.887479, 0.403440, -0.222748,
		0.125992, 0.677336, 0.724805,
		4.383527, 15.472730, 15.059300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.957832, 15.611451, 14.306808>,  <4.295333, 14.998595, 14.551937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.957832, 15.611451, 14.306808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.263844, 15.644320, 14.562302>,  <4.447451, 15.664042, 14.715597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.263844, 15.644320, 14.562302>,  <3.957832, 15.611451, 14.306808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.263844, 15.644320, 14.562302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404447, 0.710524, -0.575828,
		-0.501152, 0.698859, 0.510336,
		0.765029, 0.082173, 0.638732,
		4.493352, 15.668972, 14.753922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.123120, 16.345463, 14.497699>,  <3.957832, 15.611451, 14.306808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.123120, 16.345463, 14.497699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.470092, 16.152136, 14.544972>,  <4.678276, 16.036140, 14.573337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.470092, 16.152136, 14.544972>,  <4.123120, 16.345463, 14.497699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.470092, 16.152136, 14.544972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480890, 0.753418, -0.448449,
		0.127700, 0.445833, 0.885960,
		0.867432, -0.483316, 0.118185,
		4.730322, 16.007141, 14.580428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.469965, 16.908142, 14.665624>,  <4.123120, 16.345463, 14.497699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.469965, 16.908142, 14.665624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.731741, 16.645317, 14.515969>,  <4.888807, 16.487621, 14.426177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.731741, 16.645317, 14.515969>,  <4.469965, 16.908142, 14.665624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.731741, 16.645317, 14.515969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455898, 0.737653, -0.498021,
		0.603213, 0.155357, 0.782303,
		0.654440, -0.657063, -0.374135,
		4.928073, 16.448198, 14.403728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.231364, 17.009922, 14.828098>,  <4.469965, 16.908142, 14.665624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.231364, 17.009922, 14.828098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.224537, 16.814402, 14.479207>,  <5.220441, 16.697090, 14.269872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.224537, 16.814402, 14.479207>,  <5.231364, 17.009922, 14.828098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.224537, 16.814402, 14.479207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603220, 0.690678, -0.398861,
		0.797392, -0.532953, 0.283066,
		-0.017067, -0.488800, -0.872229,
		5.219417, 16.667761, 14.217538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.796003, 17.275799, 14.535306>,  <5.231364, 17.009922, 14.828098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.796003, 17.275799, 14.535306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.639220, 17.068909, 14.230978>,  <5.545151, 16.944775, 14.048381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.639220, 17.068909, 14.230978>,  <5.796003, 17.275799, 14.535306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.639220, 17.068909, 14.230978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609087, 0.473895, -0.635954,
		0.689481, -0.712671, 0.129290,
		-0.391956, -0.517227, -0.760820,
		5.521634, 16.913740, 14.002732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.393747, 17.161776, 14.153936>,  <5.796003, 17.275799, 14.535306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.393747, 17.161776, 14.153936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.065836, 17.107706, 13.931336>,  <5.869089, 17.075264, 13.797776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.065836, 17.107706, 13.931336>,  <6.393747, 17.161776, 14.153936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.065836, 17.107706, 13.931336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469677, 0.397308, -0.788384,
		0.327668, -0.907676, -0.262218,
		-0.819779, -0.135171, -0.556500,
		5.819902, 17.067154, 13.764386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.643500, 16.822126, 13.583714>,  <6.393747, 17.161776, 14.153936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.643500, 16.822126, 13.583714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.302646, 16.994343, 13.464720>,  <6.098134, 17.097673, 13.393323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.302646, 16.994343, 13.464720>,  <6.643500, 16.822126, 13.583714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.302646, 16.994343, 13.464720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504536, 0.524956, -0.685467,
		-0.138956, -0.734203, -0.664558,
		-0.852135, 0.430544, -0.297486,
		6.047006, 17.123507, 13.375474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.590199, 16.718946, 12.924486>,  <6.643500, 16.822126, 13.583714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.590199, 16.718946, 12.924486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.389143, 17.054533, 13.007905>,  <6.268510, 17.255884, 13.057957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.389143, 17.054533, 13.007905>,  <6.590199, 16.718946, 12.924486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.389143, 17.054533, 13.007905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522846, 0.487131, -0.699525,
		-0.688467, -0.242569, -0.683500,
		-0.502637, 0.838966, 0.208547,
		6.238352, 17.306223, 13.070469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.394299, 17.013622, 12.272363>,  <6.590199, 16.718946, 12.924486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.394299, 17.013622, 12.272363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.340958, 17.325575, 12.516986>,  <6.308953, 17.512747, 12.663760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.340958, 17.325575, 12.516986>,  <6.394299, 17.013622, 12.272363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.340958, 17.325575, 12.516986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429603, 0.601570, -0.673465,
		-0.893117, 0.172919, -0.415260,
		-0.133352, 0.779880, 0.611559,
		6.300952, 17.559540, 12.700454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.104826, 17.560196, 11.882064>,  <6.394299, 17.013622, 12.272363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.104826, 17.560196, 11.882064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.267245, 17.743742, 12.198182>,  <6.364697, 17.853870, 12.387854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.267245, 17.743742, 12.198182>,  <6.104826, 17.560196, 11.882064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.267245, 17.743742, 12.198182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488626, 0.621781, -0.612073,
		-0.772250, 0.634690, 0.028259,
		0.406047, 0.458866, 0.790296,
		6.389060, 17.881401, 12.435271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.053240, 18.184774, 11.598917>,  <6.104826, 17.560196, 11.882064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.053240, 18.184774, 11.598917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.298272, 18.234697, 11.911115>,  <6.445291, 18.264652, 12.098433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.298272, 18.234697, 11.911115>,  <6.053240, 18.184774, 11.598917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.298272, 18.234697, 11.911115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451838, 0.754908, -0.475349,
		-0.648528, 0.643845, 0.406047,
		0.612579, 0.124809, 0.780493,
		6.482045, 18.272141, 12.145263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.142219, 18.917116, 11.641312>,  <6.053240, 18.184774, 11.598917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.142219, 18.917116, 11.641312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.449902, 18.754951, 11.838881>,  <6.634512, 18.657652, 11.957423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.449902, 18.754951, 11.838881>,  <6.142219, 18.917116, 11.641312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.449902, 18.754951, 11.838881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590741, 0.745845, -0.307799,
		-0.243606, 0.528543, 0.813203,
		0.769208, -0.405411, 0.493924,
		6.680665, 18.633327, 11.987059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.442081, 19.388731, 12.221681>,  <6.142219, 18.917116, 11.641312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.442081, 19.388731, 12.221681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.708812, 19.135887, 12.063806>,  <6.868851, 18.984180, 11.969080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.708812, 19.135887, 12.063806>,  <6.442081, 19.388731, 12.221681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.708812, 19.135887, 12.063806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600685, 0.769380, -0.217329,
		0.441040, -0.092163, 0.892743,
		0.666829, -0.632108, -0.394688,
		6.908861, 18.946255, 11.945399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.085925, 19.791271, 12.429570>,  <6.442081, 19.388731, 12.221681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.085925, 19.791271, 12.429570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.202820, 19.503447, 12.177593>,  <7.272956, 19.330751, 12.026407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.202820, 19.503447, 12.177593>,  <7.085925, 19.791271, 12.429570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.202820, 19.503447, 12.177593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679959, 0.619527, -0.392226,
		0.672498, -0.313712, 0.670322,
		0.292236, -0.719562, -0.629942,
		7.290491, 19.287579, 11.988610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.733814, 19.883410, 12.366492>,  <7.085925, 19.791271, 12.429570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.733814, 19.883410, 12.366492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.684556, 19.650789, 12.044837>,  <7.655002, 19.511217, 11.851844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.684556, 19.650789, 12.044837>,  <7.733814, 19.883410, 12.366492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.684556, 19.650789, 12.044837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709559, 0.514906, -0.481038,
		0.693802, -0.629820, 0.349235,
		-0.123144, -0.581548, -0.804137,
		7.647613, 19.476324, 11.803596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.376888, 19.714285, 12.260643>,  <7.733814, 19.883410, 12.366492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.376888, 19.714285, 12.260643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.175260, 19.653698, 11.920532>,  <8.054282, 19.617346, 11.716466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.175260, 19.653698, 11.920532>,  <8.376888, 19.714285, 12.260643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.175260, 19.653698, 11.920532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774630, 0.356062, -0.522655,
		0.381916, -0.922105, -0.062150,
		-0.504072, -0.151467, -0.850276,
		8.024038, 19.608257, 11.665449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.603936, 19.033091, 11.898415>,  <8.376888, 19.714285, 12.260643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.603936, 19.033091, 11.898415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.438903, 19.228628, 11.590960>,  <8.339883, 19.345951, 11.406487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.438903, 19.228628, 11.590960>,  <8.603936, 19.033091, 11.898415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.438903, 19.228628, 11.590960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868285, -0.044077, -0.494103,
		-0.275420, -0.871256, -0.406273,
		-0.412583, 0.488846, -0.768638,
		8.315128, 19.375282, 11.360368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.798655, 18.728294, 11.223540>,  <8.603936, 19.033091, 11.898415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.798655, 18.728294, 11.223540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.684653, 19.098675, 11.124431>,  <8.616253, 19.320902, 11.064965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.684653, 19.098675, 11.124431>,  <8.798655, 18.728294, 11.223540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.684653, 19.098675, 11.124431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795582, 0.084338, -0.599948,
		-0.534624, -0.368111, -0.760704,
		-0.285003, 0.925949, -0.247773,
		8.599153, 19.376459, 11.050098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.721597, 18.849724, 10.474856>,  <8.798655, 18.728294, 11.223540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.721597, 18.849724, 10.474856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.780304, 19.222717, 10.606877>,  <8.815528, 19.446514, 10.686090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.780304, 19.222717, 10.606877>,  <8.721597, 18.849724, 10.474856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.780304, 19.222717, 10.606877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793875, 0.088012, -0.601678,
		-0.590104, 0.350326, -0.727358,
		0.146767, 0.932483, 0.330051,
		8.824334, 19.502462, 10.705893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.891036, 19.257467, 9.829184>,  <8.721597, 18.849724, 10.474856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.891036, 19.257467, 9.829184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.049934, 19.462534, 10.133649>,  <9.145273, 19.585575, 10.316328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.049934, 19.462534, 10.133649>,  <8.891036, 19.257467, 9.829184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.049934, 19.462534, 10.133649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748388, 0.299067, -0.592009,
		-0.531143, 0.804817, -0.264871,
		0.397245, 0.512667, 0.761163,
		9.169107, 19.616335, 10.361998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.243910, 19.777712, 9.505463>,  <8.891036, 19.257467, 9.829184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.243910, 19.777712, 9.505463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.383454, 19.767529, 9.880194>,  <9.467181, 19.761419, 10.105033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.383454, 19.767529, 9.880194>,  <9.243910, 19.777712, 9.505463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.383454, 19.767529, 9.880194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921651, 0.190511, -0.338032,
		-0.169871, 0.981355, 0.089924,
		0.348861, -0.025457, 0.936829,
		9.488112, 19.759892, 10.161242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.677914, 20.390768, 9.605219>,  <9.243910, 19.777712, 9.505463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.677914, 20.390768, 9.605219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.799997, 20.155323, 9.904654>,  <9.873248, 20.014055, 10.084314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.799997, 20.155323, 9.904654>,  <9.677914, 20.390768, 9.605219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.799997, 20.155323, 9.904654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949748, 0.130805, -0.284375,
		0.069468, 0.797762, 0.598957,
		0.305210, -0.588614, 0.748586,
		9.891561, 19.978739, 10.129230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.267131, 20.687685, 9.952299>,  <9.677914, 20.390768, 9.605219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.267131, 20.687685, 9.952299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.294312, 20.301453, 10.052730>,  <10.310619, 20.069714, 10.112988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.294312, 20.301453, 10.052730>,  <10.267131, 20.687685, 9.952299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.294312, 20.301453, 10.052730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968695, 0.003625, -0.248226,
		0.238772, 0.260084, 0.935598,
		0.067951, -0.965579, 0.251077,
		10.314697, 20.011780, 10.128053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.925390, 20.589397, 10.351042>,  <10.267131, 20.687685, 9.952299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.925390, 20.589397, 10.351042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.827604, 20.238657, 10.185452>,  <10.768933, 20.028214, 10.086099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.827604, 20.238657, 10.185452>,  <10.925390, 20.589397, 10.351042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.827604, 20.238657, 10.185452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914099, -0.065962, -0.400090,
		0.323512, -0.476220, 0.817652,
		-0.244464, -0.876849, -0.413973,
		10.754265, 19.975603, 10.061260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.599556, 20.197201, 10.545488>,  <10.925390, 20.589397, 10.351042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.599556, 20.197201, 10.545488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.368788, 20.061243, 10.248401>,  <11.230327, 19.979668, 10.070148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.368788, 20.061243, 10.248401>,  <11.599556, 20.197201, 10.545488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.368788, 20.061243, 10.248401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803125, -0.070361, -0.591641,
		0.148839, -0.937827, 0.313573,
		-0.576920, -0.339897, -0.742720,
		11.195712, 19.959274, 10.025584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.884264, 20.808573, 10.786471>,  <11.599556, 20.197201, 10.545488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.884264, 20.808573, 10.786471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.908834, 20.484531, 11.019697>,  <11.923575, 20.290108, 11.159633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.908834, 20.484531, 11.019697>,  <11.884264, 20.808573, 10.786471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.908834, 20.484531, 11.019697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549568, -0.515091, -0.657767,
		0.833188, -0.280031, -0.476844,
		0.061423, -0.810101, 0.583064,
		11.927260, 20.241501, 11.194616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.822579, 21.317225, 11.369849>,  <11.884264, 20.808573, 10.786471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.822579, 21.317225, 11.369849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.168732, 21.120361, 11.407582>,  <12.376423, 21.002243, 11.430222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.168732, 21.120361, 11.407582>,  <11.822579, 21.317225, 11.369849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.168732, 21.120361, 11.407582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125591, 0.395242, 0.909951,
		-0.485124, -0.775606, 0.403845,
		0.865380, -0.492158, 0.094332,
		12.428346, 20.972713, 11.435882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.711908, 20.793833, 11.965802>,  <11.822579, 21.317225, 11.369849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.711908, 20.793833, 11.965802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.060266, 20.959692, 11.860266>,  <12.269279, 21.059208, 11.796944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.060266, 20.959692, 11.860266>,  <11.711908, 20.793833, 11.965802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.060266, 20.959692, 11.860266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019167, 0.507771, 0.861279,
		0.491094, -0.755141, 0.434268,
		0.870896, 0.414645, -0.263838,
		12.321533, 21.084087, 11.781114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.197786, 20.598717, 12.507277>,  <11.711908, 20.793833, 11.965802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.197786, 20.598717, 12.507277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.344587, 20.925146, 12.328689>,  <12.432669, 21.121004, 12.221536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.344587, 20.925146, 12.328689>,  <12.197786, 20.598717, 12.507277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.344587, 20.925146, 12.328689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302135, 0.349365, 0.886938,
		0.879786, -0.460403, -0.118345,
		0.367003, 0.816072, -0.446470,
		12.454688, 21.169968, 12.194748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.910133, 20.862677, 12.703874>,  <12.197786, 20.598717, 12.507277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.910133, 20.862677, 12.703874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.709959, 21.198376, 12.618809>,  <12.589854, 21.399796, 12.567770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.709959, 21.198376, 12.618809>,  <12.910133, 20.862677, 12.703874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.709959, 21.198376, 12.618809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385548, 0.435961, 0.813198,
		0.775187, 0.324962, -0.541741,
		-0.500437, 0.839248, -0.212663,
		12.559828, 21.450150, 12.555010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.407315, 20.628893, 13.131185>,  <12.910133, 20.862677, 12.703874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.407315, 20.628893, 13.131185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.123683, 20.429514, 13.330686>,  <12.953504, 20.309887, 13.450386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.123683, 20.429514, 13.330686>,  <13.407315, 20.628893, 13.131185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.123683, 20.429514, 13.330686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043306, -0.736772, -0.674753,
		0.703797, -0.456855, 0.544016,
		-0.709080, -0.498449, 0.498753,
		12.910959, 20.279980, 13.480311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.743599, 19.937399, 13.232814>,  <13.407315, 20.628893, 13.131185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.743599, 19.937399, 13.232814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.346140, 19.977394, 13.212153>,  <13.107665, 20.001390, 13.199757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.346140, 19.977394, 13.212153>,  <13.743599, 19.937399, 13.232814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.346140, 19.977394, 13.212153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056038, -0.837597, -0.543406,
		-0.097597, -0.537060, 0.837879,
		-0.993647, 0.099988, -0.051652,
		13.048046, 20.007391, 13.196658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.367078, 19.412205, 13.564894>,  <13.743599, 19.937399, 13.232814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.367078, 19.412205, 13.564894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.145676, 19.560404, 13.266535>,  <13.012835, 19.649324, 13.087520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.145676, 19.560404, 13.266535>,  <13.367078, 19.412205, 13.564894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.145676, 19.560404, 13.266535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036554, -0.905545, -0.422673,
		-0.832042, -0.206686, 0.514768,
		-0.553506, 0.370499, -0.745896,
		12.979624, 19.671553, 13.042766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.566887, 19.171486, 13.606700>,  <13.367078, 19.412205, 13.564894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.566887, 19.171486, 13.606700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.239219, 19.272190, 13.400564>,  <12.042618, 19.332613, 13.276882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.239219, 19.272190, 13.400564>,  <12.566887, 19.171486, 13.606700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.239219, 19.272190, 13.400564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336951, -0.938352, 0.077192,
		-0.464137, 0.236878, 0.853502,
		-0.819171, 0.251761, -0.515340,
		11.993467, 19.347719, 13.245962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.066247, 18.762836, 13.823144>,  <12.566887, 19.171486, 13.606700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.066247, 18.762836, 13.823144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.873426, 18.942425, 13.522198>,  <11.757734, 19.050179, 13.341630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.873426, 18.942425, 13.522198>,  <12.066247, 18.762836, 13.823144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.873426, 18.942425, 13.522198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577713, -0.808477, -0.112306,
		-0.658692, 0.380514, 0.649103,
		-0.482051, 0.448970, -0.752365,
		11.728811, 19.077116, 13.296488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.384537, 18.594379, 13.919665>,  <12.066247, 18.762836, 13.823144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.384537, 18.594379, 13.919665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.431504, 18.711498, 13.540091>,  <11.459685, 18.781771, 13.312346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.431504, 18.711498, 13.540091>,  <11.384537, 18.594379, 13.919665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.431504, 18.711498, 13.540091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606228, -0.735712, -0.302020,
		-0.786575, 0.610735, 0.091115,
		0.117420, 0.292798, -0.948937,
		11.466730, 18.799337, 13.255409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.773036, 18.409624, 13.617490>,  <11.384537, 18.594379, 13.919665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.773036, 18.409624, 13.617490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.989146, 18.476070, 13.287519>,  <11.118813, 18.515938, 13.089536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.989146, 18.476070, 13.287519>,  <10.773036, 18.409624, 13.617490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.989146, 18.476070, 13.287519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524844, -0.699753, -0.484648,
		-0.657753, 0.694803, -0.290876,
		0.540277, 0.166114, -0.824929,
		11.151229, 18.525904, 13.040040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.311336, 18.703415, 12.990794>,  <10.773036, 18.409624, 13.617490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.311336, 18.703415, 12.990794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.631574, 18.509964, 12.849286>,  <10.823716, 18.393894, 12.764381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.631574, 18.509964, 12.849286>,  <10.311336, 18.703415, 12.990794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.631574, 18.509964, 12.849286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594770, -0.713094, -0.371140,
		-0.072779, 0.507545, -0.858546,
		0.800595, -0.483626, -0.353771,
		10.871752, 18.364876, 12.743155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.123695, 18.433390, 12.413467>,  <10.311336, 18.703415, 12.990794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.123695, 18.433390, 12.413467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.458760, 18.221855, 12.468094>,  <10.659800, 18.094934, 12.500870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.458760, 18.221855, 12.468094>,  <10.123695, 18.433390, 12.413467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.458760, 18.221855, 12.468094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470467, -0.825630, -0.311441,
		0.277455, 0.196633, -0.940401,
		0.837663, -0.528838, 0.136565,
		10.710059, 18.063204, 12.509064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.216830, 18.018444, 11.827026>,  <10.123695, 18.433390, 12.413467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.216830, 18.018444, 11.827026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.430682, 17.836456, 12.111891>,  <10.558993, 17.727262, 12.282809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.430682, 17.836456, 12.111891>,  <10.216830, 18.018444, 11.827026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.430682, 17.836456, 12.111891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435171, -0.870605, -0.229505,
		0.724429, -0.187212, -0.663442,
		0.534630, -0.454971, 0.712160,
		10.591071, 17.699965, 12.325539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.319808, 17.391981, 11.575282>,  <10.216830, 18.018444, 11.827026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.319808, 17.391981, 11.575282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.384899, 17.369841, 11.969329>,  <10.423954, 17.356556, 12.205757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.384899, 17.369841, 11.969329>,  <10.319808, 17.391981, 11.575282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.384899, 17.369841, 11.969329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400584, -0.916142, 0.014694,
		0.901694, -0.397014, -0.171255,
		0.162728, -0.055352, 0.985117,
		10.433718, 17.353235, 12.264864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.507552, 16.597631, 11.665709>,  <10.319808, 17.391981, 11.575282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.507552, 16.597631, 11.665709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.400205, 16.732849, 12.026531>,  <10.335796, 16.813980, 12.243025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.400205, 16.732849, 12.026531>,  <10.507552, 16.597631, 11.665709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.400205, 16.732849, 12.026531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319242, -0.914701, 0.247804,
		0.908880, -0.221471, 0.353395,
		-0.268369, 0.338043, 0.902056,
		10.319694, 16.834263, 12.297148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.472530, 15.971874, 11.978720>,  <10.507552, 16.597631, 11.665709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.472530, 15.971874, 11.978720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.285098, 16.222277, 12.228054>,  <10.172639, 16.372519, 12.377654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.285098, 16.222277, 12.228054>,  <10.472530, 15.971874, 11.978720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.285098, 16.222277, 12.228054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672814, -0.710142, 0.207410,
		0.572497, -0.322201, 0.753946,
		-0.468581, 0.626007, 0.623335,
		10.144524, 16.410078, 12.415054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.382998, 15.544943, 12.584038>,  <10.472530, 15.971874, 11.978720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.382998, 15.544943, 12.584038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.112292, 15.839411, 12.581349>,  <9.949869, 16.016090, 12.579737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.112292, 15.839411, 12.581349>,  <10.382998, 15.544943, 12.584038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.112292, 15.839411, 12.581349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708660, -0.648948, 0.276889,
		0.199476, 0.192151, 0.960879,
		-0.676764, 0.736169, -0.006720,
		9.909263, 16.060261, 12.579333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.995078, 15.450842, 13.086943>,  <10.382998, 15.544943, 12.584038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.995078, 15.450842, 13.086943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.756582, 15.697691, 12.881552>,  <9.613484, 15.845800, 12.758317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.756582, 15.697691, 12.881552>,  <9.995078, 15.450842, 13.086943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.756582, 15.697691, 12.881552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782950, -0.588370, 0.202016,
		-0.177446, 0.522476, 0.833986,
		-0.596241, 0.617122, -0.513476,
		9.577710, 15.882828, 12.727509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.400576, 15.461961, 13.498876>,  <9.995078, 15.450842, 13.086943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.400576, 15.461961, 13.498876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.288224, 15.585387, 13.135361>,  <9.220813, 15.659443, 12.917252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.288224, 15.585387, 13.135361>,  <9.400576, 15.461961, 13.498876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.288224, 15.585387, 13.135361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807963, -0.587074, 0.050385,
		-0.517978, 0.748419, 0.414207,
		-0.280879, 0.308566, -0.908787,
		9.203960, 15.677957, 12.862724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.730139, 15.443938, 13.582108>,  <9.400576, 15.461961, 13.498876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.730139, 15.443938, 13.582108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.723531, 15.490448, 13.184876>,  <8.719566, 15.518353, 12.946537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.723531, 15.490448, 13.184876>,  <8.730139, 15.443938, 13.582108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.723531, 15.490448, 13.184876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861878, -0.505133, -0.044806,
		-0.506847, 0.855173, 0.108558,
		-0.016519, 0.116273, -0.993080,
		8.718575, 15.525330, 12.886952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.176524, 15.827047, 13.357970>,  <8.730139, 15.443938, 13.582108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.176524, 15.827047, 13.357970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.251877, 15.578903, 13.053428>,  <8.297089, 15.430017, 12.870702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.251877, 15.578903, 13.053428>,  <8.176524, 15.827047, 13.357970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.251877, 15.578903, 13.053428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860411, -0.478021, 0.176604,
		-0.473502, 0.621809, -0.623818,
		0.188384, -0.620362, -0.761356,
		8.308392, 15.392795, 12.825021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.596315, 15.737612, 13.086481>,  <8.176524, 15.827047, 13.357970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.596315, 15.737612, 13.086481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.738375, 15.448983, 12.848758>,  <7.823611, 15.275805, 12.706124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.738375, 15.448983, 12.848758>,  <7.596315, 15.737612, 13.086481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.738375, 15.448983, 12.848758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918440, -0.387791, -0.078014,
		-0.174175, 0.573543, -0.800445,
		0.355149, -0.721573, -0.594308,
		7.844920, 15.232512, 12.670465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.154612, 15.683899, 12.507430>,  <7.596315, 15.737612, 13.086481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.154612, 15.683899, 12.507430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.365173, 15.343924, 12.516415>,  <7.491510, 15.139938, 12.521806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.365173, 15.343924, 12.516415>,  <7.154612, 15.683899, 12.507430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.365173, 15.343924, 12.516415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849068, -0.526883, -0.038453,
		0.044517, 0.001170, -0.999008,
		0.526405, -0.849937, 0.022462,
		7.523095, 15.088943, 12.523153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.896634, 15.271733, 11.994461>,  <7.154612, 15.683899, 12.507430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.896634, 15.271733, 11.994461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.069153, 15.021410, 12.254414>,  <7.172665, 14.871216, 12.410385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.069153, 15.021410, 12.254414>,  <6.896634, 15.271733, 11.994461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.069153, 15.021410, 12.254414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864071, -0.493738, 0.097999,
		0.259543, -0.603810, -0.753692,
		0.431299, -0.625808, 0.649881,
		7.198543, 14.833668, 12.449378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.680952, 14.562355, 11.863091>,  <6.896634, 15.271733, 11.994461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.680952, 14.562355, 11.863091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.823215, 14.500566, 12.231795>,  <6.908574, 14.463491, 12.453018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.823215, 14.500566, 12.231795>,  <6.680952, 14.562355, 11.863091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.823215, 14.500566, 12.231795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759610, -0.622374, 0.188792,
		0.544517, -0.767325, -0.338693,
		0.355659, -0.154474, 0.921761,
		6.929913, 14.454224, 12.508324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.592483, 13.727285, 12.025236>,  <6.680952, 14.562355, 11.863091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.592483, 13.727285, 12.025236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.611566, 13.976128, 12.337828>,  <6.623016, 14.125433, 12.525382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.611566, 13.976128, 12.337828>,  <6.592483, 13.727285, 12.025236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.611566, 13.976128, 12.337828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794910, -0.450108, 0.406842,
		0.604848, -0.640615, 0.473045,
		0.047707, 0.622106, 0.781478,
		6.625878, 14.162760, 12.572271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.536352, 13.290370, 12.683287>,  <6.592483, 13.727285, 12.025236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.536352, 13.290370, 12.683287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.414242, 13.660156, 12.774651>,  <6.340976, 13.882028, 12.829469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.414242, 13.660156, 12.774651>,  <6.536352, 13.290370, 12.683287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.414242, 13.660156, 12.774651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760252, -0.381043, 0.526139,
		0.573432, -0.013033, 0.819149,
		-0.305274, 0.924465, 0.228410,
		6.322660, 13.937496, 12.843174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.513574, 13.438680, 13.366107>,  <6.536352, 13.290370, 12.683287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.513574, 13.438680, 13.366107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.217942, 13.632992, 13.179440>,  <6.040563, 13.749579, 13.067440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.217942, 13.632992, 13.179440>,  <6.513574, 13.438680, 13.366107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.217942, 13.632992, 13.179440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673586, -0.539719, 0.504961,
		-0.006569, 0.687547, 0.726110,
		-0.739080, 0.485780, -0.466667,
		5.996218, 13.778726, 13.039440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.919427, 13.775334, 13.822548>,  <6.513574, 13.438680, 13.366107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.919427, 13.775334, 13.822548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.782965, 13.676603, 13.459739>,  <5.701087, 13.617365, 13.242053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.782965, 13.676603, 13.459739>,  <5.919427, 13.775334, 13.822548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.782965, 13.676603, 13.459739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796735, -0.436113, 0.418352,
		-0.498825, 0.865379, -0.047874,
		-0.341155, -0.246827, -0.907022,
		5.680618, 13.602555, 13.187632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.057717, 13.512894, 14.523572>,  <5.919427, 13.775334, 13.822548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.057717, 13.512894, 14.523572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.201305, 13.142310, 14.478291>,  <6.287458, 12.919960, 14.451121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.201305, 13.142310, 14.478291>,  <6.057717, 13.512894, 14.523572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.201305, 13.142310, 14.478291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920814, 0.331723, 0.205089,
		-0.152454, -0.177860, 0.972175,
		0.358970, -0.926459, -0.113203,
		6.308996, 12.864372, 14.444329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.423738, 13.350725, 15.158813>,  <6.057717, 13.512894, 14.523572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.423738, 13.350725, 15.158813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.541804, 13.209189, 14.803809>,  <6.612644, 13.124269, 14.590807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.541804, 13.209189, 14.803809>,  <6.423738, 13.350725, 15.158813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.541804, 13.209189, 14.803809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900251, 0.414141, 0.134292,
		0.320037, -0.838621, 0.440784,
		0.295167, -0.353838, -0.887511,
		6.630354, 13.103038, 14.537556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.083321, 13.110435, 15.278220>,  <6.423738, 13.350725, 15.158813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.083321, 13.110435, 15.278220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.065270, 13.272233, 14.912849>,  <7.054440, 13.369311, 14.693627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.065270, 13.272233, 14.912849>,  <7.083321, 13.110435, 15.278220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.065270, 13.272233, 14.912849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917095, 0.379326, 0.122671,
		0.396106, -0.832163, -0.388077,
		-0.045126, 0.404494, -0.913427,
		7.051733, 13.393581, 14.638822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.611779, 12.868187, 14.905345>,  <7.083321, 13.110435, 15.278220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.611779, 12.868187, 14.905345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.503099, 13.239367, 14.803293>,  <7.437891, 13.462074, 14.742063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.503099, 13.239367, 14.803293>,  <7.611779, 12.868187, 14.905345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.503099, 13.239367, 14.803293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955491, 0.291770, 0.043663,
		0.114956, -0.231910, -0.965921,
		-0.271701, 0.927948, -0.255128,
		7.421589, 13.517751, 14.726754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.974340, 13.165861, 14.275400>,  <7.611779, 12.868187, 14.905345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.974340, 13.165861, 14.275400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.850119, 13.485317, 14.481597>,  <7.775587, 13.676991, 14.605315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.850119, 13.485317, 14.481597>,  <7.974340, 13.165861, 14.275400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.850119, 13.485317, 14.481597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901978, 0.418734, -0.105348,
		-0.299989, 0.432246, -0.850394,
		-0.310553, 0.798640, 0.515492,
		7.756953, 13.724909, 14.636245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.966801, 13.807220, 13.966278>,  <7.974340, 13.165861, 14.275400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.966801, 13.807220, 13.966278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.015409, 13.865786, 14.358971>,  <8.044575, 13.900925, 14.594586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.015409, 13.865786, 14.358971>,  <7.966801, 13.807220, 13.966278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.015409, 13.865786, 14.358971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862818, 0.473365, -0.177399,
		-0.490691, 0.868613, -0.068804,
		0.121521, 0.146413, 0.981731,
		8.051866, 13.909710, 14.653490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.735372, 13.895323, 13.917030>,  <7.966801, 13.807220, 13.966278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.735372, 13.895323, 13.917030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.134878, 13.903708, 13.935046>,  <9.374582, 13.908738, 13.945855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.134878, 13.903708, 13.935046>,  <8.735372, 13.895323, 13.917030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.134878, 13.903708, 13.935046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047106, 0.111700, 0.992625,
		0.015774, -0.993521, 0.112549,
		0.998765, 0.020959, 0.045039,
		9.434507, 13.909996, 13.948558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.950889, 13.399040, 14.379033>,  <8.735372, 13.895323, 13.917030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.950889, 13.399040, 14.379033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.246633, 13.667140, 14.353383>,  <9.424079, 13.828000, 14.337993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.246633, 13.667140, 14.353383>,  <8.950889, 13.399040, 14.379033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.246633, 13.667140, 14.353383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044533, 0.143711, 0.988617,
		0.671835, -0.728089, 0.136103,
		0.739361, 0.670249, -0.064126,
		9.468441, 13.868215, 14.334146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.299552, 13.260392, 15.035788>,  <8.950889, 13.399040, 14.379033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.299552, 13.260392, 15.035788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.482615, 13.598007, 14.923967>,  <9.592452, 13.800576, 14.856875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.482615, 13.598007, 14.923967>,  <9.299552, 13.260392, 15.035788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.482615, 13.598007, 14.923967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226219, 0.193528, 0.954658,
		0.859869, -0.500145, -0.102368,
		0.457657, 0.844039, -0.279551,
		9.619911, 13.851219, 14.840102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.041723, 13.354381, 15.357643>,  <9.299552, 13.260392, 15.035788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.041723, 13.354381, 15.357643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.908206, 13.725086, 15.288718>,  <9.828095, 13.947510, 15.247363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.908206, 13.725086, 15.288718>,  <10.041723, 13.354381, 15.357643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.908206, 13.725086, 15.288718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167090, 0.238071, 0.956767,
		0.927719, 0.290572, -0.234319,
		-0.333794, 0.926763, -0.172311,
		9.808067, 14.003116, 15.237025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.534834, 13.745519, 15.676595>,  <10.041723, 13.354381, 15.357643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.534834, 13.745519, 15.676595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.214920, 13.983862, 15.647478>,  <10.022972, 14.126868, 15.630008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.214920, 13.983862, 15.647478>,  <10.534834, 13.745519, 15.676595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.214920, 13.983862, 15.647478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150296, 0.316166, 0.936723,
		0.581168, 0.738236, -0.342419,
		-0.799784, 0.595858, -0.072792,
		9.974985, 14.162620, 15.625641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.744189, 14.276491, 15.958760>,  <10.534834, 13.745519, 15.676595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.744189, 14.276491, 15.958760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.348559, 14.321707, 15.996613>,  <10.111181, 14.348836, 16.019323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.348559, 14.321707, 15.996613>,  <10.744189, 14.276491, 15.958760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.348559, 14.321707, 15.996613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121434, 0.260754, 0.957738,
		0.083587, 0.958765, -0.271631,
		-0.989074, 0.113040, 0.094631,
		10.051837, 14.355618, 16.025002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.755294, 14.953221, 16.171383>,  <10.744189, 14.276491, 15.958760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.755294, 14.953221, 16.171383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.414313, 14.783699, 16.293835>,  <10.209724, 14.681986, 16.367306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.414313, 14.783699, 16.293835>,  <10.755294, 14.953221, 16.171383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.414313, 14.783699, 16.293835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181191, 0.309765, 0.933389,
		-0.490403, 0.851137, -0.187271,
		-0.852452, -0.423805, 0.306128,
		10.158578, 14.656557, 16.385674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.466453, 15.368177, 16.706738>,  <10.755294, 14.953221, 16.171383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.466453, 15.368177, 16.706738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.241019, 15.040155, 16.746504>,  <10.105760, 14.843342, 16.770363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.241019, 15.040155, 16.746504>,  <10.466453, 15.368177, 16.706738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.241019, 15.040155, 16.746504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042024, 0.148653, 0.987996,
		-0.824990, 0.552639, -0.118240,
		-0.563583, -0.820056, 0.099414,
		10.071944, 14.794139, 16.776327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.828233, 15.483130, 17.076397>,  <10.466453, 15.368177, 16.706738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.828233, 15.483130, 17.076397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.863629, 15.086758, 17.116854>,  <9.884867, 14.848935, 17.141129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.863629, 15.086758, 17.116854>,  <9.828233, 15.483130, 17.076397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.863629, 15.086758, 17.116854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275746, 0.073201, 0.958439,
		-0.957149, -0.112702, -0.266768,
		0.088490, -0.990929, 0.101141,
		9.890177, 14.789479, 17.147196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.267662, 15.221271, 17.501245>,  <9.828233, 15.483130, 17.076397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.267662, 15.221271, 17.501245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.569346, 14.960458, 17.532280>,  <9.750357, 14.803970, 17.550900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.569346, 14.960458, 17.532280>,  <9.267662, 15.221271, 17.501245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.569346, 14.960458, 17.532280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201298, -0.117127, 0.972502,
		-0.625016, -0.749089, -0.219592,
		0.754210, -0.652033, 0.077584,
		9.795609, 14.764848, 17.555555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.041636, 14.828587, 18.035555>,  <9.267662, 15.221271, 17.501245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.041636, 14.828587, 18.035555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.417996, 14.697783, 18.000294>,  <9.643812, 14.619302, 17.979137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.417996, 14.697783, 18.000294>,  <9.041636, 14.828587, 18.035555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.417996, 14.697783, 18.000294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047024, -0.383901, 0.922176,
		-0.335400, -0.863531, -0.376590,
		0.940901, -0.327007, -0.088154,
		9.700267, 14.599681, 17.973846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.082822, 14.202185, 18.406744>,  <9.041636, 14.828587, 18.035555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.082822, 14.202185, 18.406744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.461498, 14.328886, 18.383270>,  <9.688704, 14.404907, 18.369186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.461498, 14.328886, 18.383270>,  <9.082822, 14.202185, 18.406744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.461498, 14.328886, 18.383270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135951, -0.227678, 0.964199,
		0.292052, -0.920777, -0.258603,
		0.946691, 0.316754, -0.058687,
		9.745505, 14.423912, 18.365664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.370279, 13.755863, 18.740271>,  <9.082822, 14.202185, 18.406744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.370279, 13.755863, 18.740271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.663274, 14.028041, 18.748825>,  <9.839070, 14.191348, 18.753958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.663274, 14.028041, 18.748825>,  <9.370279, 13.755863, 18.740271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.663274, 14.028041, 18.748825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308180, -0.359435, 0.880813,
		0.607032, -0.638593, -0.472980,
		0.732487, 0.680445, 0.021387,
		9.883020, 14.232174, 18.755241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.938582, 13.464193, 18.994102>,  <9.370279, 13.755863, 18.740271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.938582, 13.464193, 18.994102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.013587, 13.852349, 19.055004>,  <10.058590, 14.085243, 19.091545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.013587, 13.852349, 19.055004>,  <9.938582, 13.464193, 18.994102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.013587, 13.852349, 19.055004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201163, -0.189656, 0.961022,
		0.961443, -0.149576, -0.230770,
		0.187512, 0.970390, 0.152255,
		10.069840, 14.143466, 19.100681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.387058, 13.458145, 19.531630>,  <9.938582, 13.464193, 18.994102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.387058, 13.458145, 19.531630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.275896, 13.841362, 19.559694>,  <10.209199, 14.071292, 19.576532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.275896, 13.841362, 19.559694>,  <10.387058, 13.458145, 19.531630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.275896, 13.841362, 19.559694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061085, -0.055267, 0.996601,
		0.958665, 0.281246, -0.043163,
		-0.277904, 0.958043, 0.070162,
		10.192525, 14.128775, 19.580744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.884202, 13.788174, 19.884840>,  <10.387058, 13.458145, 19.531630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.884202, 13.788174, 19.884840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.546259, 13.996947, 19.931833>,  <10.343493, 14.122211, 19.960030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.546259, 13.996947, 19.931833>,  <10.884202, 13.788174, 19.884840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.546259, 13.996947, 19.931833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097514, -0.065680, 0.993064,
		0.526029, 0.850454, 0.004595,
		-0.844857, 0.521933, 0.117481,
		10.292802, 14.153527, 19.967077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.047468, 14.214913, 20.508617>,  <10.884202, 13.788174, 19.884840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.047468, 14.214913, 20.508617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.654733, 14.230741, 20.434401>,  <10.419091, 14.240237, 20.389870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.654733, 14.230741, 20.434401>,  <11.047468, 14.214913, 20.508617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.654733, 14.230741, 20.434401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185325, 0.009101, 0.982635,
		0.040570, 0.999175, -0.001603,
		-0.981839, 0.039569, -0.185542,
		10.360181, 14.242611, 20.378738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.706405, 14.734203, 20.900877>,  <11.047468, 14.214913, 20.508617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.706405, 14.734203, 20.900877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.395115, 14.499274, 20.811956>,  <10.208341, 14.358317, 20.758604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.395115, 14.499274, 20.811956>,  <10.706405, 14.734203, 20.900877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.395115, 14.499274, 20.811956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280218, 0.007976, 0.959903,
		-0.561999, 0.809314, -0.170785,
		-0.778225, -0.587322, -0.222302,
		10.161647, 14.323077, 20.745266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.211947, 14.963048, 21.440615>,  <10.706405, 14.734203, 20.900877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.211947, 14.963048, 21.440615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.067966, 14.629309, 21.273619>,  <9.981578, 14.429065, 21.173422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.067966, 14.629309, 21.273619>,  <10.211947, 14.963048, 21.440615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.067966, 14.629309, 21.273619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428256, -0.249793, 0.868447,
		-0.828873, 0.491392, -0.267401,
		-0.359952, -0.834349, -0.417489,
		9.959981, 14.379004, 21.148373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.539475, 14.903361, 21.648849>,  <10.211947, 14.963048, 21.440615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.539475, 14.903361, 21.648849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.637500, 14.530283, 21.543001>,  <9.696315, 14.306437, 21.479492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.637500, 14.530283, 21.543001>,  <9.539475, 14.903361, 21.648849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.637500, 14.530283, 21.543001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471002, -0.353103, 0.808378,
		-0.847409, -0.073466, -0.525833,
		0.245062, -0.932696, -0.264621,
		9.711019, 14.250474, 21.463615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.976023, 14.536837, 21.731873>,  <9.539475, 14.903361, 21.648849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.976023, 14.536837, 21.731873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.251938, 14.247984, 21.752729>,  <9.417487, 14.074673, 21.765244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.251938, 14.247984, 21.752729>,  <8.976023, 14.536837, 21.731873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.251938, 14.247984, 21.752729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381057, -0.300864, 0.874229,
		-0.615620, -0.622903, -0.482706,
		0.689788, -0.722131, 0.052144,
		9.458875, 14.031344, 21.768373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.663157, 13.909324, 21.884480>,  <8.976023, 14.536837, 21.731873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.663157, 13.909324, 21.884480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.027788, 13.816572, 22.020277>,  <9.246567, 13.760921, 22.101757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.027788, 13.816572, 22.020277>,  <8.663157, 13.909324, 21.884480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.027788, 13.816572, 22.020277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398239, -0.292884, 0.869267,
		-0.102130, -0.927605, -0.359330,
		0.911579, -0.231877, 0.339497,
		9.301262, 13.747008, 22.122126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.657870, 13.205753, 22.254255>,  <8.663157, 13.909324, 21.884480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.657870, 13.205753, 22.254255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.980057, 13.379923, 22.415070>,  <9.173368, 13.484425, 22.511559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.980057, 13.379923, 22.415070>,  <8.657870, 13.205753, 22.254255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.980057, 13.379923, 22.415070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306847, -0.273965, 0.911476,
		0.507021, -0.857525, -0.087061,
		0.805466, 0.435423, 0.402035,
		9.221697, 13.510550, 22.535681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.881363, 12.834349, 22.829992>,  <8.657870, 13.205753, 22.254255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.881363, 12.834349, 22.829992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.074481, 13.172243, 22.922365>,  <9.190351, 13.374980, 22.977789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.074481, 13.172243, 22.922365>,  <8.881363, 12.834349, 22.829992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.074481, 13.172243, 22.922365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124407, -0.194868, 0.972907,
		0.866852, -0.498445, 0.011010,
		0.482795, 0.844736, 0.230932,
		9.219319, 13.425664, 22.991644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.381117, 12.632705, 23.296877>,  <8.881363, 12.834349, 22.829992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.381117, 12.632705, 23.296877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.320348, 13.024015, 23.353296>,  <9.283886, 13.258801, 23.387148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.320348, 13.024015, 23.353296>,  <9.381117, 12.632705, 23.296877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.320348, 13.024015, 23.353296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249987, -0.176097, 0.952101,
		0.956256, 0.109385, 0.271310,
		-0.151923, 0.978277, 0.141049,
		9.274771, 13.317498, 23.395611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.756247, 12.815053, 23.827688>,  <9.381117, 12.632705, 23.296877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.756247, 12.815053, 23.827688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.487859, 13.111642, 23.829470>,  <9.326826, 13.289596, 23.830538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.487859, 13.111642, 23.829470>,  <9.756247, 12.815053, 23.827688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.487859, 13.111642, 23.829470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257980, -0.239072, 0.936104,
		0.695160, 0.626948, 0.351695,
		-0.670969, 0.741472, 0.004454,
		9.286568, 13.334084, 23.830807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.001203, 13.221655, 24.402262>,  <9.756247, 12.815053, 23.827688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.001203, 13.221655, 24.402262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.617302, 13.289965, 24.313076>,  <9.386961, 13.330951, 24.259565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.617302, 13.289965, 24.313076>,  <10.001203, 13.221655, 24.402262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.617302, 13.289965, 24.313076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219082, 0.041483, 0.974824,
		0.175724, 0.984437, -0.002400,
		-0.959752, 0.170774, -0.222962,
		9.329376, 13.341197, 24.246187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.836898, 13.774426, 24.808130>,  <10.001203, 13.221655, 24.402262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.836898, 13.774426, 24.808130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.492946, 13.586931, 24.727243>,  <9.286574, 13.474434, 24.678711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.492946, 13.586931, 24.727243>,  <9.836898, 13.774426, 24.808130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.492946, 13.586931, 24.727243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288918, 0.120266, 0.949770,
		-0.420872, 0.875112, -0.238841,
		-0.859880, -0.468737, -0.202219,
		9.234982, 13.446310, 24.666578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.356961, 14.240120, 25.172428>,  <9.836898, 13.774426, 24.808130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.356961, 14.240120, 25.172428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.238662, 13.865964, 25.094887>,  <9.167683, 13.641470, 25.048363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.238662, 13.865964, 25.094887>,  <9.356961, 14.240120, 25.172428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.238662, 13.865964, 25.094887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444944, -0.044686, 0.894442,
		-0.845315, 0.350783, -0.402980,
		-0.295748, -0.935390, -0.193853,
		9.149938, 13.585347, 25.036732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.707982, 14.107554, 25.563377>,  <9.356961, 14.240120, 25.172428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.707982, 14.107554, 25.563377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.820152, 13.734050, 25.474426>,  <8.887454, 13.509947, 25.421055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.820152, 13.734050, 25.474426>,  <8.707982, 14.107554, 25.563377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.820152, 13.734050, 25.474426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536378, -0.344566, 0.770437,
		-0.796028, -0.096771, -0.597474,
		0.280425, -0.933761, -0.222379,
		8.904280, 13.453921, 25.407713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.105930, 13.705028, 25.655436>,  <8.707982, 14.107554, 25.563377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.105930, 13.705028, 25.655436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.426813, 13.470575, 25.700893>,  <8.619343, 13.329905, 25.728168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.426813, 13.470575, 25.700893>,  <8.105930, 13.705028, 25.655436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.426813, 13.470575, 25.700893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399785, -0.385973, 0.831382,
		-0.443437, -0.712372, -0.543957,
		0.802206, -0.586132, 0.113641,
		8.667476, 13.294736, 25.734985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.777664, 13.153042, 25.982496>,  <8.105930, 13.705028, 25.655436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.777664, 13.153042, 25.982496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.169371, 13.105388, 26.048031>,  <8.404395, 13.076795, 26.087351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.169371, 13.105388, 26.048031>,  <7.777664, 13.153042, 25.982496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.169371, 13.105388, 26.048031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198512, -0.403242, 0.893302,
		-0.040359, -0.907305, -0.418531,
		0.979267, -0.119136, 0.163837,
		8.463151, 13.069647, 26.097181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.844880, 12.520076, 26.193102>,  <7.777664, 13.153042, 25.982496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.844880, 12.520076, 26.193102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.165136, 12.693730, 26.358267>,  <8.357290, 12.797923, 26.457367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.165136, 12.693730, 26.358267>,  <7.844880, 12.520076, 26.193102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.165136, 12.693730, 26.358267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220883, -0.426752, 0.876980,
		0.556940, -0.793353, -0.245782,
		0.800642, 0.434136, 0.412914,
		8.405329, 12.823971, 26.482141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.872345, 12.205572, 26.857328>,  <7.844880, 12.520076, 26.193102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.872345, 12.205572, 26.857328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.160148, 12.476088, 26.920504>,  <8.332829, 12.638397, 26.958408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.160148, 12.476088, 26.920504>,  <7.872345, 12.205572, 26.857328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.160148, 12.476088, 26.920504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031826, -0.195069, 0.980273,
		0.693757, -0.710338, -0.118830,
		0.719506, 0.676289, 0.157938,
		8.375999, 12.678974, 26.967884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.300857, 11.874470, 27.288656>,  <7.872345, 12.205572, 26.857328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.300857, 11.874470, 27.288656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.395700, 12.261408, 27.324492>,  <8.452605, 12.493570, 27.345993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.395700, 12.261408, 27.324492>,  <8.300857, 11.874470, 27.288656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.395700, 12.261408, 27.324492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144708, -0.126356, 0.981373,
		0.960646, -0.219726, -0.169942,
		0.237106, 0.967344, 0.089587,
		8.466831, 12.551611, 27.351368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.011949, 11.896191, 27.575720>,  <8.300857, 11.874470, 27.288656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.011949, 11.896191, 27.575720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.838079, 12.249425, 27.646395>,  <8.733758, 12.461366, 27.688799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.838079, 12.249425, 27.646395>,  <9.011949, 11.896191, 27.575720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.838079, 12.249425, 27.646395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013156, -0.202394, 0.979216,
		0.900492, 0.423314, 0.099593,
		-0.434673, 0.883087, 0.176685,
		8.707678, 12.514351, 27.699400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.361326, 12.216986, 28.218031>,  <9.011949, 11.896191, 27.575720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.361326, 12.216986, 28.218031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.000543, 12.387705, 28.191755>,  <8.784073, 12.490136, 28.175991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.000543, 12.387705, 28.191755>,  <9.361326, 12.216986, 28.218031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.000543, 12.387705, 28.191755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149592, -0.166123, 0.974693,
		0.405084, 0.888958, 0.213681,
		-0.901958, 0.426798, -0.065687,
		8.729955, 12.515744, 28.172049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.359719, 12.616737, 28.829210>,  <9.361326, 12.216986, 28.218031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.359719, 12.616737, 28.829210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.974664, 12.588279, 28.724699>,  <8.743630, 12.571203, 28.661993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.974664, 12.588279, 28.724699>,  <9.359719, 12.616737, 28.829210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.974664, 12.588279, 28.724699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237427, -0.242222, 0.940722,
		-0.130216, 0.967608, 0.216280,
		-0.962638, -0.071147, -0.261277,
		8.685872, 12.566935, 28.646317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.083668, 12.894031, 29.442234>,  <9.359719, 12.616737, 28.829210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.083668, 12.894031, 29.442234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.796027, 12.697526, 29.245640>,  <8.623443, 12.579623, 29.127684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.796027, 12.697526, 29.245640>,  <9.083668, 12.894031, 29.442234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.796027, 12.697526, 29.245640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350925, -0.353734, 0.867020,
		-0.599787, 0.795949, 0.081975,
		-0.719101, -0.491260, -0.491484,
		8.580297, 12.550148, 29.098194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.386278, 13.193662, 29.716112>,  <9.083668, 12.894031, 29.442234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.386278, 13.193662, 29.716112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.349883, 12.819580, 29.579224>,  <8.328046, 12.595131, 29.497089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.349883, 12.819580, 29.579224>,  <8.386278, 13.193662, 29.716112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.349883, 12.819580, 29.579224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274153, -0.306846, 0.911420,
		-0.957372, 0.176750, -0.228469,
		-0.090988, -0.935203, -0.342223,
		8.322587, 12.539020, 29.476557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.705482, 13.009882, 29.809183>,  <8.386278, 13.193662, 29.716112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.705482, 13.009882, 29.809183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.915219, 12.669280, 29.808630>,  <8.041061, 12.464919, 29.808298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.915219, 12.669280, 29.808630>,  <7.705482, 13.009882, 29.809183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.915219, 12.669280, 29.808630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274683, -0.170684, 0.946264,
		-0.805986, -0.495787, -0.323391,
		0.524343, -0.851506, -0.001385,
		8.072522, 12.413828, 29.808214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.370211, 12.369822, 30.055180>,  <7.705482, 13.009882, 29.809183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.370211, 12.369822, 30.055180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.755802, 12.281424, 30.114389>,  <7.987156, 12.228385, 30.149916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.755802, 12.281424, 30.114389>,  <7.370211, 12.369822, 30.055180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.755802, 12.281424, 30.114389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172078, -0.093773, 0.980610,
		-0.202830, -0.970756, -0.128423,
		0.963976, -0.220996, 0.148026,
		8.044994, 12.215125, 30.158796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.381963, 11.750983, 30.435467>,  <7.370211, 12.369822, 30.055180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.381963, 11.750983, 30.435467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.730537, 11.937115, 30.497524>,  <7.939682, 12.048794, 30.534758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.730537, 11.937115, 30.497524>,  <7.381963, 11.750983, 30.435467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.730537, 11.937115, 30.497524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079871, -0.177452, 0.980883,
		0.483965, -0.867167, -0.117471,
		0.871435, 0.465330, 0.155142,
		7.991968, 12.076714, 30.544067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.609593, 11.401379, 30.983768>,  <7.381963, 11.750983, 30.435467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.609593, 11.401379, 30.983768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.842824, 11.726098, 30.971088>,  <7.982763, 11.920930, 30.963480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.842824, 11.726098, 30.971088>,  <7.609593, 11.401379, 30.983768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.842824, 11.726098, 30.971088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092634, -0.027671, 0.995316,
		0.807118, -0.583283, -0.091335,
		0.583077, 0.811798, -0.031699,
		8.017748, 11.969638, 30.961578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.289790, 11.342482, 31.403282>,  <7.609593, 11.401379, 30.983768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.289790, 11.342482, 31.403282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.110776, 11.699389, 31.379391>,  <8.003367, 11.913534, 31.365055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.110776, 11.699389, 31.379391>,  <8.289790, 11.342482, 31.403282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.110776, 11.699389, 31.379391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200869, -0.035217, 0.978985,
		0.871414, 0.450128, 0.194990,
		-0.447536, 0.892269, -0.059729,
		7.976515, 11.967071, 31.361473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.515789, 11.571479, 32.080883>,  <8.289790, 11.342482, 31.403282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.515789, 11.571479, 32.080883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.871870, 11.481843, 32.239540>,  <9.085519, 11.428061, 32.334736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.871870, 11.481843, 32.239540>,  <8.515789, 11.571479, 32.080883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.871870, 11.481843, 32.239540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292507, -0.386331, -0.874750,
		0.349258, 0.894724, -0.278365,
		0.890202, -0.224089, 0.396642,
		9.138930, 11.414617, 32.358532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.093946, 11.776981, 31.490459>,  <8.515789, 11.571479, 32.080883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.093946, 11.776981, 31.490459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.248714, 11.508430, 31.743298>,  <9.341576, 11.347300, 31.895000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.248714, 11.508430, 31.743298>,  <9.093946, 11.776981, 31.490459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.248714, 11.508430, 31.743298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187565, -0.613851, -0.766815,
		0.902834, 0.415258, -0.111586,
		0.386923, -0.671377, 0.632094,
		9.364792, 11.307017, 31.932926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.850440, 11.578904, 31.275105>,  <9.093946, 11.776981, 31.490459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.850440, 11.578904, 31.275105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.700162, 11.275299, 31.487803>,  <9.609995, 11.093136, 31.615421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.700162, 11.275299, 31.487803>,  <9.850440, 11.578904, 31.275105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.700162, 11.275299, 31.487803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157363, -0.617693, -0.770515,
		0.913286, -0.205801, 0.351505,
		-0.375695, -0.759014, 0.531744,
		9.587454, 11.047595, 31.647326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.124475, 11.054372, 31.026905>,  <9.850440, 11.578904, 31.275105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.124475, 11.054372, 31.026905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.858729, 10.851058, 31.246094>,  <9.699283, 10.729070, 31.377607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.858729, 10.851058, 31.246094>,  <10.124475, 11.054372, 31.026905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.858729, 10.851058, 31.246094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005470, -0.736444, -0.676476,
		0.747391, -0.446427, 0.492046,
		-0.664362, -0.508284, 0.547969,
		9.659421, 10.698573, 31.410484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.375852, 10.419950, 31.103012>,  <10.124475, 11.054372, 31.026905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.375852, 10.419950, 31.103012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.979315, 10.373141, 31.126829>,  <9.741392, 10.345056, 31.141119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.979315, 10.373141, 31.126829>,  <10.375852, 10.419950, 31.103012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.979315, 10.373141, 31.126829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029937, -0.642992, -0.765287,
		0.127843, -0.756880, 0.640929,
		-0.991342, -0.117024, 0.059543,
		9.681912, 10.338035, 31.144691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.149612, 9.670795, 31.143282>,  <10.375852, 10.419950, 31.103012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.149612, 9.670795, 31.143282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.888464, 9.870627, 30.915535>,  <9.731775, 9.990526, 30.778887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.888464, 9.870627, 30.915535>,  <10.149612, 9.670795, 31.143282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.888464, 9.870627, 30.915535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315743, -0.503766, -0.804068,
		-0.688525, -0.704726, 0.171155,
		-0.652870, 0.499580, -0.569368,
		9.692603, 10.020501, 30.744724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.948634, 9.300181, 30.473314>,  <10.149612, 9.670795, 31.143282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.948634, 9.300181, 30.473314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.871592, 9.683905, 30.390728>,  <9.825366, 9.914139, 30.341175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.871592, 9.683905, 30.390728>,  <9.948634, 9.300181, 30.473314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.871592, 9.683905, 30.390728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186583, -0.170766, -0.967484,
		-0.963374, -0.224867, -0.146100,
		-0.192607, 0.959309, -0.206468,
		9.813809, 9.971698, 30.328787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.650002, 9.359341, 29.743071>,  <9.948634, 9.300181, 30.473314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.650002, 9.359341, 29.743071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.766095, 9.737222, 29.804132>,  <9.835751, 9.963950, 29.840769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.766095, 9.737222, 29.804132>,  <9.650002, 9.359341, 29.743071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.766095, 9.737222, 29.804132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131692, 0.118574, -0.984173,
		-0.947852, 0.305741, -0.089996,
		0.290231, 0.944703, 0.152654,
		9.853165, 10.020633, 29.849928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.628956, 9.436429, 29.067137>,  <9.650002, 9.359341, 29.743071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.628956, 9.436429, 29.067137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.797969, 9.757758, 29.235014>,  <9.899377, 9.950556, 29.335739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.797969, 9.757758, 29.235014>,  <9.628956, 9.436429, 29.067137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.797969, 9.757758, 29.235014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333677, 0.292659, -0.896109,
		-0.842690, 0.518676, -0.144392,
		0.422532, 0.803322, 0.419691,
		9.924728, 9.998755, 29.360922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.387872, 10.043096, 28.650848>,  <9.628956, 9.436429, 29.067137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.387872, 10.043096, 28.650848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.732611, 10.149082, 28.823828>,  <9.939454, 10.212674, 28.927616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.732611, 10.149082, 28.823828>,  <9.387872, 10.043096, 28.650848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.732611, 10.149082, 28.823828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349885, 0.306645, -0.885183,
		-0.367153, 0.914200, 0.171573,
		0.861846, 0.264967, 0.432450,
		9.991164, 10.228572, 28.953564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.469467, 10.753545, 28.371778>,  <9.387872, 10.043096, 28.650848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.469467, 10.753545, 28.371778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.829130, 10.638183, 28.503439>,  <10.044928, 10.568966, 28.582436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.829130, 10.638183, 28.503439>,  <9.469467, 10.753545, 28.371778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.829130, 10.638183, 28.503439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430439, 0.447064, -0.784128,
		0.078995, 0.846733, 0.526121,
		0.899157, -0.288405, 0.329151,
		10.098877, 10.551661, 28.602184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.874063, 11.285386, 28.130520>,  <9.469467, 10.753545, 28.371778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.874063, 11.285386, 28.130520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.122792, 10.986815, 28.225334>,  <10.272029, 10.807673, 28.282223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.122792, 10.986815, 28.225334>,  <9.874063, 11.285386, 28.130520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.122792, 10.986815, 28.225334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627261, 0.293456, -0.721406,
		0.468917, 0.597270, 0.650681,
		0.621821, -0.746426, 0.237038,
		10.309339, 10.762888, 28.296446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.474457, 11.519640, 28.069345>,  <9.874063, 11.285386, 28.130520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.474457, 11.519640, 28.069345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.567861, 11.130849, 28.058510>,  <10.623903, 10.897574, 28.052010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.567861, 11.130849, 28.058510>,  <10.474457, 11.519640, 28.069345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.567861, 11.130849, 28.058510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508575, 0.145829, -0.848579,
		0.828749, 0.184376, 0.528375,
		0.233510, -0.971977, -0.027087,
		10.637914, 10.839255, 28.050385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.200067, 11.397110, 27.939821>,  <10.474457, 11.519640, 28.069345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.200067, 11.397110, 27.939821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.085967, 11.037878, 27.805902>,  <11.017508, 10.822339, 27.725552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.085967, 11.037878, 27.805902>,  <11.200067, 11.397110, 27.939821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.085967, 11.037878, 27.805902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555824, 0.129572, -0.821140,
		0.780828, -0.420316, 0.462214,
		-0.285248, -0.898079, -0.334796,
		11.000393, 10.768455, 27.705463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.774020, 11.148689, 27.667847>,  <11.200067, 11.397110, 27.939821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.774020, 11.148689, 27.667847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.480683, 10.932175, 27.503302>,  <11.304682, 10.802266, 27.404575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.480683, 10.932175, 27.503302>,  <11.774020, 11.148689, 27.667847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.480683, 10.932175, 27.503302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481243, 0.014101, -0.876474,
		0.480224, -0.840720, 0.250150,
		-0.733341, -0.541287, -0.411362,
		11.260681, 10.769789, 27.379892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.126966, 10.680540, 27.221060>,  <11.774020, 11.148689, 27.667847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.126966, 10.680540, 27.221060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.743245, 10.646048, 27.113504>,  <11.513012, 10.625352, 27.048971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.743245, 10.646048, 27.113504>,  <12.126966, 10.680540, 27.221060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.743245, 10.646048, 27.113504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279048, -0.143701, -0.949464,
		0.043233, -0.985857, 0.161915,
		-0.959303, -0.086231, -0.268889,
		11.455454, 10.620178, 27.032837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.985539, 10.075526, 26.780653>,  <12.126966, 10.680540, 27.221060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.985539, 10.075526, 26.780653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.686403, 10.323829, 26.686506>,  <11.506922, 10.472810, 26.630018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.686403, 10.323829, 26.686506>,  <11.985539, 10.075526, 26.780653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.686403, 10.323829, 26.686506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074910, -0.273368, -0.958988,
		-0.659639, -0.734801, 0.157935,
		-0.747840, 0.620755, -0.235369,
		11.462051, 10.510056, 26.615896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.700465, 9.860627, 26.127928>,  <11.985539, 10.075526, 26.780653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.700465, 9.860627, 26.127928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.559017, 10.234444, 26.143845>,  <11.474148, 10.458734, 26.153395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.559017, 10.234444, 26.143845>,  <11.700465, 9.860627, 26.127928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.559017, 10.234444, 26.143845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040680, 0.027137, -0.998804,
		-0.934504, -0.354816, 0.028421,
		-0.353620, 0.934542, 0.039793,
		11.452931, 10.514807, 26.155783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.207274, 9.951726, 25.535324>,  <11.700465, 9.860627, 26.127928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.207274, 9.951726, 25.535324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.318515, 10.320889, 25.641830>,  <11.385260, 10.542388, 25.705734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.318515, 10.320889, 25.641830>,  <11.207274, 9.951726, 25.535324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.318515, 10.320889, 25.641830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012521, 0.280661, -0.959725,
		-0.960470, 0.263568, 0.089608,
		0.278102, 0.922909, 0.266266,
		11.401945, 10.597762, 25.721710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.724797, 10.462518, 25.159286>,  <11.207274, 9.951726, 25.535324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.724797, 10.462518, 25.159286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.075850, 10.629038, 25.254332>,  <11.286481, 10.728950, 25.311359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.075850, 10.629038, 25.254332>,  <10.724797, 10.462518, 25.159286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.075850, 10.629038, 25.254332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159716, 0.213415, -0.963818,
		-0.451947, 0.883826, 0.120810,
		0.877630, 0.416299, 0.237614,
		11.339139, 10.753927, 25.325615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.781690, 11.173897, 24.782042>,  <10.724797, 10.462518, 25.159286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.781690, 11.173897, 24.782042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.140888, 11.036605, 24.892168>,  <11.356407, 10.954230, 24.958244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.140888, 11.036605, 24.892168>,  <10.781690, 11.173897, 24.782042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.140888, 11.036605, 24.892168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338789, 0.140097, -0.930373,
		0.280760, 0.928745, 0.242089,
		0.897995, -0.343229, 0.275315,
		11.410287, 10.933637, 24.974762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.239957, 11.655149, 24.398808>,  <10.781690, 11.173897, 24.782042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.239957, 11.655149, 24.398808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.411275, 11.315489, 24.522427>,  <11.514066, 11.111693, 24.596598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.411275, 11.315489, 24.522427>,  <11.239957, 11.655149, 24.398808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.411275, 11.315489, 24.522427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422661, -0.114038, -0.899085,
		0.798699, 0.515696, 0.310059,
		0.428296, -0.849148, 0.309047,
		11.539763, 11.060744, 24.615141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.962891, 11.699462, 24.309687>,  <11.239957, 11.655149, 24.398808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.962891, 11.699462, 24.309687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.834138, 11.322513, 24.273184>,  <11.756886, 11.096343, 24.251282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.834138, 11.322513, 24.273184>,  <11.962891, 11.699462, 24.309687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.834138, 11.322513, 24.273184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384780, -0.042140, -0.922046,
		0.865065, -0.331902, 0.376170,
		-0.321881, -0.942372, -0.091255,
		11.737574, 11.039801, 24.245808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.401832, 11.357284, 23.897091>,  <11.962891, 11.699462, 24.309687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.401832, 11.357284, 23.897091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.113225, 11.081551, 23.871069>,  <11.940061, 10.916111, 23.855455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.113225, 11.081551, 23.871069>,  <12.401832, 11.357284, 23.897091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.113225, 11.081551, 23.871069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406569, -0.345743, -0.845674,
		0.560459, -0.636617, 0.529721,
		-0.721517, -0.689334, -0.065053,
		11.896770, 10.874750, 23.851553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.761208, 10.725832, 23.635551>,  <12.401832, 11.357284, 23.897091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.761208, 10.725832, 23.635551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.374021, 10.689941, 23.541756>,  <12.141708, 10.668406, 23.485477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.374021, 10.689941, 23.541756>,  <12.761208, 10.725832, 23.635551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.374021, 10.689941, 23.541756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250928, -0.314211, -0.915591,
		0.008474, -0.945103, 0.326662,
		-0.967969, -0.089727, -0.234490,
		12.083630, 10.663023, 23.471409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.758981, 10.313038, 23.024227>,  <12.761208, 10.725832, 23.635551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.758981, 10.313038, 23.024227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.372853, 10.417223, 23.017086>,  <12.141176, 10.479733, 23.012802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.372853, 10.417223, 23.017086>,  <12.758981, 10.313038, 23.024227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.372853, 10.417223, 23.017086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016167, -0.008615, -0.999832,
		-0.260573, -0.965445, 0.004105,
		-0.965319, 0.260463, -0.017853,
		12.083258, 10.495361, 23.011730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.405001, 9.842980, 22.536398>,  <12.758981, 10.313038, 23.024227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.405001, 9.842980, 22.536398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.218925, 10.195791, 22.566395>,  <12.107279, 10.407478, 22.584393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.218925, 10.195791, 22.566395>,  <12.405001, 9.842980, 22.536398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.218925, 10.195791, 22.566395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160276, -0.000609, -0.987072,
		-0.870579, -0.471197, 0.141651,
		-0.465191, 0.882028, 0.074991,
		12.079367, 10.460400, 22.588892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.718858, 9.805740, 22.078074>,  <12.405001, 9.842980, 22.536398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.718858, 9.805740, 22.078074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.760347, 10.198390, 22.142143>,  <11.785241, 10.433980, 22.180584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.760347, 10.198390, 22.142143>,  <11.718858, 9.805740, 22.078074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.760347, 10.198390, 22.142143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165781, 0.175851, -0.970357,
		-0.980692, 0.074097, 0.180975,
		0.103725, 0.981624, 0.160172,
		11.791465, 10.492877, 22.190195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.195374, 10.114176, 21.814489>,  <11.718858, 9.805740, 22.078074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.195374, 10.114176, 21.814489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.452491, 10.420125, 21.831411>,  <11.606761, 10.603695, 21.841564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.452491, 10.420125, 21.831411>,  <11.195374, 10.114176, 21.814489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.452491, 10.420125, 21.831411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140242, 0.171791, -0.975100,
		-0.753095, 0.620852, 0.217693,
		0.642791, 0.764873, 0.042305,
		11.645328, 10.649587, 21.844103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.922440, 10.580540, 21.327654>,  <11.195374, 10.114176, 21.814489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.922440, 10.580540, 21.327654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.298007, 10.711167, 21.371075>,  <11.523348, 10.789544, 21.397127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.298007, 10.711167, 21.371075>,  <10.922440, 10.580540, 21.327654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.298007, 10.711167, 21.371075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089834, 0.071913, -0.993357,
		-0.332207, 0.942433, 0.038183,
		0.938919, 0.326570, 0.108552,
		11.579682, 10.809138, 21.403641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.985723, 11.276308, 21.031921>,  <10.922440, 10.580540, 21.327654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.985723, 11.276308, 21.031921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.360992, 11.138564, 21.046032>,  <11.586154, 11.055918, 21.054499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.360992, 11.138564, 21.046032>,  <10.985723, 11.276308, 21.031921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.360992, 11.138564, 21.046032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125374, 0.243026, -0.961883,
		0.322661, 0.906838, 0.271175,
		0.938174, -0.344360, 0.035279,
		11.642445, 11.035256, 21.056616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.336617, 11.767030, 20.788120>,  <10.985723, 11.276308, 21.031921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.336617, 11.767030, 20.788120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.596354, 11.466769, 20.739330>,  <11.752195, 11.286613, 20.710056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.596354, 11.466769, 20.739330>,  <11.336617, 11.767030, 20.788120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.596354, 11.466769, 20.739330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029181, 0.184863, -0.982331,
		0.759937, 0.634309, 0.141944,
		0.649342, -0.750651, -0.121975,
		11.791156, 11.241574, 20.702738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.827139, 12.026459, 20.434822>,  <11.336617, 11.767030, 20.788120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.827139, 12.026459, 20.434822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.889210, 11.635759, 20.375650>,  <11.926452, 11.401340, 20.340147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.889210, 11.635759, 20.375650>,  <11.827139, 12.026459, 20.434822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.889210, 11.635759, 20.375650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315435, 0.190894, -0.929548,
		0.936174, 0.097582, 0.337723,
		0.155177, -0.976748, -0.147930,
		11.935762, 11.342735, 20.331272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.413980, 11.996819, 19.933893>,  <11.827139, 12.026459, 20.434822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.413980, 11.996819, 19.933893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.236510, 11.638738, 19.917086>,  <12.130029, 11.423889, 19.907001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.236510, 11.638738, 19.917086>,  <12.413980, 11.996819, 19.933893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.236510, 11.638738, 19.917086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274507, -0.091119, -0.957258,
		0.853111, -0.436245, 0.286167,
		-0.443675, -0.895202, -0.042018,
		12.103408, 11.370177, 19.904480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.925076, 11.513522, 19.628302>,  <12.413980, 11.996819, 19.933893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.925076, 11.513522, 19.628302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.541338, 11.412145, 19.578632>,  <12.311094, 11.351318, 19.548830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.541338, 11.412145, 19.578632>,  <12.925076, 11.513522, 19.628302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.541338, 11.412145, 19.578632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090151, 0.141747, -0.985789,
		0.267446, -0.956908, -0.113136,
		-0.959347, -0.253446, -0.124176,
		12.253534, 11.336111, 19.541380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.939994, 11.267968, 19.105520>,  <12.925076, 11.513522, 19.628302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.939994, 11.267968, 19.105520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.540724, 11.287812, 19.119280>,  <12.301162, 11.299719, 19.127535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.540724, 11.287812, 19.119280>,  <12.939994, 11.267968, 19.105520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.540724, 11.287812, 19.119280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034272, 0.003378, -0.999407,
		-0.049699, -0.998763, -0.001672,
		-0.998176, 0.049613, 0.034398,
		12.241271, 11.302695, 19.129599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.639792, 10.695746, 18.786991>,  <12.939994, 11.267968, 19.105520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.639792, 10.695746, 18.786991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.376327, 10.995215, 18.756926>,  <12.218247, 11.174897, 18.738886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.376327, 10.995215, 18.756926>,  <12.639792, 10.695746, 18.786991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.376327, 10.995215, 18.756926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042595, -0.062633, -0.997127,
		-0.751230, -0.659974, 0.009365,
		-0.658664, 0.748673, -0.075163,
		12.178727, 11.219817, 18.734377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.575056, 10.695607, 18.125433>,  <12.639792, 10.695746, 18.786991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.575056, 10.695607, 18.125433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.356862, 11.019705, 18.211178>,  <12.225945, 11.214164, 18.262625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.356862, 11.019705, 18.211178>,  <12.575056, 10.695607, 18.125433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.356862, 11.019705, 18.211178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034233, 0.234011, -0.971631,
		-0.837421, -0.537349, -0.099912,
		-0.545485, 0.810244, 0.214361,
		12.193216, 11.262778, 18.275486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.100634, 10.822966, 17.591909>,  <12.575056, 10.695607, 18.125433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.100634, 10.822966, 17.591909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.102425, 11.189616, 17.751797>,  <12.103499, 11.409607, 17.847729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.102425, 11.189616, 17.751797>,  <12.100634, 10.822966, 17.591909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.102425, 11.189616, 17.751797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090708, 0.397703, -0.913019,
		-0.995868, 0.040345, -0.081365,
		0.004477, 0.916627, 0.399719,
		12.103767, 11.464604, 17.871712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.439437, 11.129470, 17.363512>,  <12.100634, 10.822966, 17.591909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.439437, 11.129470, 17.363512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.721023, 11.401351, 17.445915>,  <11.889974, 11.564480, 17.495358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.721023, 11.401351, 17.445915>,  <11.439437, 11.129470, 17.363512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.721023, 11.401351, 17.445915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121729, 0.401229, -0.907853,
		-0.699726, 0.614019, 0.365190,
		0.703964, 0.679703, 0.206006,
		11.932212, 11.605262, 17.507717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.240433, 11.648784, 16.965187>,  <11.439437, 11.129470, 17.363512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.240433, 11.648784, 16.965187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.614704, 11.761948, 17.049536>,  <11.839267, 11.829845, 17.100145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.614704, 11.761948, 17.049536>,  <11.240433, 11.648784, 16.965187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.614704, 11.761948, 17.049536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096371, 0.370004, -0.924018,
		-0.339437, 0.884907, 0.318940,
		0.935679, 0.282909, 0.210872,
		11.895408, 11.846821, 17.112797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.308228, 12.372037, 16.629927>,  <11.240433, 11.648784, 16.965187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.308228, 12.372037, 16.629927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.685010, 12.262008, 16.706924>,  <11.911079, 12.195991, 16.753124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.685010, 12.262008, 16.706924>,  <11.308228, 12.372037, 16.629927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.685010, 12.262008, 16.706924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311304, 0.500866, -0.807603,
		0.125736, 0.820651, 0.557425,
		0.941956, -0.275073, 0.192496,
		11.967597, 12.179485, 16.764673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.619234, 12.946659, 16.619362>,  <11.308228, 12.372037, 16.629927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.619234, 12.946659, 16.619362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.888807, 12.662816, 16.537121>,  <12.050551, 12.492511, 16.487776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.888807, 12.662816, 16.537121>,  <11.619234, 12.946659, 16.619362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.888807, 12.662816, 16.537121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292152, 0.511588, -0.808037,
		0.678572, 0.484496, 0.552090,
		0.673933, -0.709606, -0.205603,
		12.090987, 12.449934, 16.475439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.037817, 13.323539, 16.324915>,  <11.619234, 12.946659, 16.619362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.037817, 13.323539, 16.324915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.149740, 12.960779, 16.198904>,  <12.216894, 12.743124, 16.123297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.149740, 12.960779, 16.198904>,  <12.037817, 13.323539, 16.324915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.149740, 12.960779, 16.198904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217849, 0.379552, -0.899156,
		0.935013, 0.182963, 0.303768,
		0.279808, -0.906898, -0.315028,
		12.233683, 12.688709, 16.104395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.681118, 13.450640, 15.986344>,  <12.037817, 13.323539, 16.324915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.681118, 13.450640, 15.986344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.559688, 13.106757, 15.822028>,  <12.486830, 12.900428, 15.723438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.559688, 13.106757, 15.822028>,  <12.681118, 13.450640, 15.986344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.559688, 13.106757, 15.822028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004113, 0.432315, -0.901713,
		0.952799, -0.272048, -0.134776,
		-0.303575, -0.859705, -0.410791,
		12.468616, 12.848845, 15.698791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.013301, 13.504755, 15.428691>,  <12.681118, 13.450640, 15.986344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.013301, 13.504755, 15.428691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.721892, 13.235792, 15.376349>,  <12.547047, 13.074414, 15.344945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.721892, 13.235792, 15.376349>,  <13.013301, 13.504755, 15.428691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.721892, 13.235792, 15.376349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259222, 0.447421, -0.855931,
		0.634082, -0.589645, -0.500259,
		-0.728522, -0.672409, -0.130853,
		12.503336, 13.034070, 15.337093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.473598, 13.600662, 16.015366>,  <13.013301, 13.504755, 15.428691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.473598, 13.600662, 16.015366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.821337, 13.437766, 15.903369>,  <14.029980, 13.340029, 15.836171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.821337, 13.437766, 15.903369>,  <13.473598, 13.600662, 16.015366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.821337, 13.437766, 15.903369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255293, -0.115048, 0.959994,
		-0.423161, -0.906046, 0.003949,
		0.869345, -0.407240, -0.279991,
		14.082140, 13.315594, 15.819371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.701443, 12.815091, 16.239920>,  <13.473598, 13.600662, 16.015366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.701443, 12.815091, 16.239920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.025407, 13.041670, 16.179016>,  <14.219786, 13.177617, 16.142475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.025407, 13.041670, 16.179016>,  <13.701443, 12.815091, 16.239920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.025407, 13.041670, 16.179016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162911, 0.032132, 0.986117,
		0.563475, -0.823472, -0.066256,
		0.809911, 0.566446, -0.152258,
		14.268380, 13.211604, 16.133339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.226584, 12.491943, 16.554829>,  <13.701443, 12.815091, 16.239920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.226584, 12.491943, 16.554829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.342375, 12.871543, 16.504866>,  <14.411849, 13.099303, 16.474888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.342375, 12.871543, 16.504866>,  <14.226584, 12.491943, 16.554829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.342375, 12.871543, 16.504866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229202, 0.057976, 0.971651,
		0.929338, -0.309899, -0.200730,
		0.289476, 0.949000, -0.124909,
		14.429217, 13.156243, 16.467394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.952812, 12.621294, 16.898579>,  <14.226584, 12.491943, 16.554829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.952812, 12.621294, 16.898579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.757623, 12.969987, 16.880854>,  <14.640510, 13.179203, 16.870218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.757623, 12.969987, 16.880854>,  <14.952812, 12.621294, 16.898579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.757623, 12.969987, 16.880854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239101, 0.182320, 0.953724,
		0.839472, 0.454797, -0.297400,
		-0.487973, 0.871733, -0.044310,
		14.611231, 13.231507, 16.867561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.366750, 13.091408, 17.253811>,  <14.952812, 12.621294, 16.898579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.366750, 13.091408, 17.253811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.997919, 13.244681, 17.232107>,  <14.776621, 13.336645, 17.219086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.997919, 13.244681, 17.232107>,  <15.366750, 13.091408, 17.253811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.997919, 13.244681, 17.232107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013658, 0.107895, 0.994069,
		0.386765, 0.917349, -0.094254,
		-0.922077, 0.383183, -0.054259,
		14.721296, 13.359636, 17.215830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.440060, 13.622807, 17.554140>,  <15.366750, 13.091408, 17.253811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.440060, 13.622807, 17.554140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.044066, 13.567636, 17.566193>,  <14.806470, 13.534534, 17.573425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.044066, 13.567636, 17.566193>,  <15.440060, 13.622807, 17.554140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.044066, 13.567636, 17.566193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021528, 0.063468, 0.997752,
		-0.139528, 0.988407, -0.059863,
		-0.989984, -0.137925, 0.030134,
		14.747071, 13.526258, 17.575233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.341654, 13.808167, 18.168468>,  <15.440060, 13.622807, 17.554140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.341654, 13.808167, 18.168468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.973519, 13.679868, 18.078934>,  <14.752639, 13.602888, 18.025213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.973519, 13.679868, 18.078934>,  <15.341654, 13.808167, 18.168468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.973519, 13.679868, 18.078934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326786, 0.316101, 0.890669,
		-0.214924, 0.892862, -0.395735,
		-0.920336, -0.320747, -0.223837,
		14.697418, 13.583644, 18.011782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.900755, 14.360176, 18.432571>,  <15.341654, 13.808167, 18.168468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.900755, 14.360176, 18.432571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.721622, 14.003489, 18.406382>,  <14.614141, 13.789477, 18.390667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.721622, 14.003489, 18.406382>,  <14.900755, 14.360176, 18.432571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.721622, 14.003489, 18.406382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318816, 0.090840, 0.943453,
		-0.835346, 0.443384, -0.324975,
		-0.447833, -0.891717, -0.065475,
		14.587272, 13.735974, 18.386740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.225533, 14.480765, 18.711010>,  <14.900755, 14.360176, 18.432571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.225533, 14.480765, 18.711010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.324946, 14.093472, 18.721968>,  <14.384595, 13.861095, 18.728542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.324946, 14.093472, 18.721968>,  <14.225533, 14.480765, 18.711010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.324946, 14.093472, 18.721968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041524, 0.017607, 0.998982,
		-0.967732, -0.249420, -0.035829,
		0.248536, -0.968235, 0.027396,
		14.399508, 13.803001, 18.730186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.777727, 14.200990, 19.260859>,  <14.225533, 14.480765, 18.711010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.777727, 14.200990, 19.260859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.093102, 13.958522, 19.219046>,  <14.282326, 13.813041, 19.193958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.093102, 13.958522, 19.219046>,  <13.777727, 14.200990, 19.260859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.093102, 13.958522, 19.219046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043664, -0.114356, 0.992480,
		-0.613565, -0.787071, -0.063694,
		0.788436, -0.606170, -0.104531,
		14.329633, 13.776670, 19.187687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.591308, 13.677125, 19.680820>,  <13.777727, 14.200990, 19.260859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.591308, 13.677125, 19.680820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.981391, 13.610893, 19.622097>,  <14.215441, 13.571155, 19.586863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.981391, 13.610893, 19.622097>,  <13.591308, 13.677125, 19.680820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.981391, 13.610893, 19.622097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055864, -0.457731, 0.887334,
		-0.214123, -0.873537, -0.437133,
		0.975208, -0.165578, -0.146810,
		14.273953, 13.561219, 19.578054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.707868, 12.937861, 19.795837>,  <13.591308, 13.677125, 19.680820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.707868, 12.937861, 19.795837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.081617, 13.070375, 19.848288>,  <14.305867, 13.149884, 19.879757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.081617, 13.070375, 19.848288>,  <13.707868, 12.937861, 19.795837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.081617, 13.070375, 19.848288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041400, -0.466485, 0.883560,
		0.353879, -0.820147, -0.449587,
		0.934374, 0.331286, 0.131125,
		14.361930, 13.169761, 19.887625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.216387, 12.355995, 19.869619>,  <13.707868, 12.937861, 19.795837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.216387, 12.355995, 19.869619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.333780, 12.686315, 20.062252>,  <14.404217, 12.884506, 20.177832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.333780, 12.686315, 20.062252>,  <14.216387, 12.355995, 19.869619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.333780, 12.686315, 20.062252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054140, -0.517316, 0.854080,
		0.954430, -0.224586, -0.196533,
		0.293484, 0.825800, 0.481583,
		14.421825, 12.934054, 20.206726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.510223, 12.116555, 20.450871>,  <14.216387, 12.355995, 19.869619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.510223, 12.116555, 20.450871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.502889, 12.502903, 20.554224>,  <14.498487, 12.734712, 20.616236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.502889, 12.502903, 20.554224>,  <14.510223, 12.116555, 20.450871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.502889, 12.502903, 20.554224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302427, -0.240963, 0.922212,
		0.952996, 0.095053, -0.287686,
		-0.018337, 0.965868, 0.258384,
		14.497388, 12.792664, 20.631739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.988297, 12.212327, 20.988436>,  <14.510223, 12.116555, 20.450871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.988297, 12.212327, 20.988436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.758739, 12.536283, 21.036970>,  <14.621005, 12.730658, 21.066092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.758739, 12.536283, 21.036970>,  <14.988297, 12.212327, 20.988436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.758739, 12.536283, 21.036970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100321, -0.077522, 0.991930,
		0.812763, 0.581434, -0.036760,
		-0.573892, 0.809892, 0.121337,
		14.586572, 12.779251, 21.073372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.271332, 12.459394, 21.652891>,  <14.988297, 12.212327, 20.988436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.271332, 12.459394, 21.652891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.912308, 12.621766, 21.584061>,  <14.696894, 12.719189, 21.542763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.912308, 12.621766, 21.584061>,  <15.271332, 12.459394, 21.652891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.912308, 12.621766, 21.584061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268035, -0.192503, 0.943981,
		0.350064, 0.893401, 0.281586,
		-0.897559, 0.405928, -0.172074,
		14.643040, 12.743545, 21.532438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.225433, 13.083008, 22.032627>,  <15.271332, 12.459394, 21.652891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.225433, 13.083008, 22.032627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.849810, 12.955715, 21.980633>,  <14.624435, 12.879340, 21.949436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.849810, 12.955715, 21.980633>,  <15.225433, 13.083008, 22.032627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.849810, 12.955715, 21.980633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079377, -0.167174, 0.982727,
		-0.334464, 0.933157, 0.131726,
		-0.939060, -0.318231, -0.129985,
		14.568091, 12.860246, 21.941637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.885937, 13.360982, 22.499229>,  <15.225433, 13.083008, 22.032627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.885937, 13.360982, 22.499229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.621651, 13.084653, 22.381777>,  <14.463079, 12.918856, 22.311306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.621651, 13.084653, 22.381777>,  <14.885937, 13.360982, 22.499229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.621651, 13.084653, 22.381777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177020, -0.236746, 0.955309,
		-0.729466, 0.683165, 0.034132,
		-0.660714, -0.690823, -0.293632,
		14.423436, 12.877406, 22.293688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.107921, 13.537940, 22.785683>,  <14.885937, 13.360982, 22.499229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.107921, 13.537940, 22.785683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.160900, 13.147165, 22.718689>,  <14.192688, 12.912701, 22.678493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.160900, 13.147165, 22.718689>,  <14.107921, 13.537940, 22.785683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.160900, 13.147165, 22.718689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145067, -0.186260, 0.971732,
		-0.980516, -0.104409, -0.166392,
		0.132450, -0.976937, -0.167485,
		14.200635, 12.854084, 22.668444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.433425, 13.171020, 23.065460>,  <14.107921, 13.537940, 22.785683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.433425, 13.171020, 23.065460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.724964, 12.897472, 23.052170>,  <13.899888, 12.733344, 23.044195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.724964, 12.897472, 23.052170>,  <13.433425, 13.171020, 23.065460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.724964, 12.897472, 23.052170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109584, -0.164417, 0.980285,
		-0.675848, -0.710839, -0.194776,
		0.728849, -0.683868, -0.033224,
		13.943619, 12.692312, 23.042202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.215001, 12.559336, 23.528841>,  <13.433425, 13.171020, 23.065460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.215001, 12.559336, 23.528841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.612410, 12.539632, 23.487871>,  <13.850855, 12.527809, 23.463289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.612410, 12.539632, 23.487871>,  <13.215001, 12.559336, 23.528841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.612410, 12.539632, 23.487871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083072, -0.300296, 0.950222,
		-0.077565, -0.952573, -0.294258,
		0.993520, -0.049260, -0.102425,
		13.910465, 12.524854, 23.457144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.343878, 11.918452, 23.737169>,  <13.215001, 12.559336, 23.528841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.343878, 11.918452, 23.737169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.686563, 12.122250, 23.769310>,  <13.892175, 12.244528, 23.788595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.686563, 12.122250, 23.769310>,  <13.343878, 11.918452, 23.737169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.686563, 12.122250, 23.769310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069245, -0.040764, 0.996766,
		0.511123, -0.859508, 0.000357,
		0.856714, 0.509495, 0.080352,
		13.943578, 12.275098, 23.793415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.662565, 11.610073, 24.316784>,  <13.343878, 11.918452, 23.737169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.662565, 11.610073, 24.316784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.850591, 11.959276, 24.264788>,  <13.963406, 12.168798, 24.233589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.850591, 11.959276, 24.264788>,  <13.662565, 11.610073, 24.316784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.850591, 11.959276, 24.264788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054505, 0.118286, 0.991482,
		0.880948, -0.473144, 0.008019,
		0.470063, 0.873008, -0.129992,
		13.991610, 12.221179, 24.225790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.204132, 11.626172, 24.727713>,  <13.662565, 11.610073, 24.316784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.204132, 11.626172, 24.727713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.093499, 12.006641, 24.672913>,  <14.027120, 12.234923, 24.640032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.093499, 12.006641, 24.672913>,  <14.204132, 11.626172, 24.727713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.093499, 12.006641, 24.672913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040522, 0.153979, 0.987243,
		0.960135, 0.267503, -0.081132,
		-0.276583, 0.951174, -0.137000,
		14.010525, 12.291994, 24.631813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.428895, 11.904261, 25.289145>,  <14.204132, 11.626172, 24.727713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.428895, 11.904261, 25.289145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.200392, 12.203686, 25.154493>,  <14.063290, 12.383341, 25.073702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.200392, 12.203686, 25.154493>,  <14.428895, 11.904261, 25.289145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.200392, 12.203686, 25.154493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002587, 0.408491, 0.912759,
		0.820766, 0.522292, -0.231417,
		-0.571258, 0.748563, -0.336627,
		14.029015, 12.428254, 25.053505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.655251, 12.490312, 25.765392>,  <14.428895, 11.904261, 25.289145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.655251, 12.490312, 25.765392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.296982, 12.565693, 25.604267>,  <14.082021, 12.610922, 25.507593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.296982, 12.565693, 25.604267>,  <14.655251, 12.490312, 25.765392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.296982, 12.565693, 25.604267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423627, -0.085936, 0.901751,
		0.135322, 0.978315, 0.156804,
		-0.895672, 0.188453, -0.402811,
		14.028280, 12.622229, 25.483423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.326271, 12.988654, 26.069498>,  <14.655251, 12.490312, 25.765392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.326271, 12.988654, 26.069498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.024397, 12.779797, 25.910595>,  <13.843272, 12.654482, 25.815252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.024397, 12.779797, 25.910595>,  <14.326271, 12.988654, 26.069498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.024397, 12.779797, 25.910595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502176, 0.070054, 0.861923,
		-0.422218, 0.849976, -0.315077,
		-0.754686, -0.522143, -0.397260,
		13.797991, 12.623154, 25.791416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.669685, 13.286633, 26.123260>,  <14.326271, 12.988654, 26.069498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.669685, 13.286633, 26.123260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.602978, 12.892309, 26.115610>,  <13.562953, 12.655715, 26.111019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.602978, 12.892309, 26.115610>,  <13.669685, 13.286633, 26.123260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.602978, 12.892309, 26.115610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377064, 0.045841, 0.925052,
		-0.911049, 0.161482, -0.379358,
		-0.166769, -0.985811, -0.019126,
		13.552947, 12.596566, 26.109873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.031478, 13.203413, 26.337509>,  <13.669685, 13.286633, 26.123260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.031478, 13.203413, 26.337509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.228844, 12.865664, 26.421007>,  <13.347263, 12.663013, 26.471106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.228844, 12.865664, 26.421007>,  <13.031478, 13.203413, 26.337509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.228844, 12.865664, 26.421007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324541, 0.043940, 0.944850,
		-0.806980, -0.533949, -0.252353,
		0.493414, -0.844374, 0.208746,
		13.376867, 12.612351, 26.483631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.529244, 12.783604, 26.610399>,  <13.031478, 13.203413, 26.337509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.529244, 12.783604, 26.610399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.876594, 12.631368, 26.737572>,  <13.085003, 12.540027, 26.813875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.876594, 12.631368, 26.737572>,  <12.529244, 12.783604, 26.610399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.876594, 12.631368, 26.737572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374276, -0.082378, 0.923651,
		-0.325342, -0.921067, -0.213981,
		0.868372, -0.380591, 0.317933,
		13.137105, 12.517191, 26.832952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.362260, 12.281480, 27.181662>,  <12.529244, 12.783604, 26.610399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.362260, 12.281480, 27.181662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.752924, 12.346931, 27.237316>,  <12.987323, 12.386201, 27.270710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.752924, 12.346931, 27.237316>,  <12.362260, 12.281480, 27.181662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.752924, 12.346931, 27.237316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145777, 0.029238, 0.988885,
		0.157741, -0.986089, 0.052408,
		0.976661, 0.163628, 0.139137,
		13.045922, 12.396019, 27.279057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.536662, 11.808848, 27.703205>,  <12.362260, 12.281480, 27.181662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.536662, 11.808848, 27.703205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.818944, 12.092031, 27.714348>,  <12.988313, 12.261942, 27.721033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.818944, 12.092031, 27.714348>,  <12.536662, 11.808848, 27.703205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.818944, 12.092031, 27.714348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129692, 0.090425, 0.987422,
		0.696535, -0.700441, 0.155630,
		0.705704, 0.707958, 0.027857,
		13.030655, 12.304419, 27.722706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.034185, 11.655884, 28.281090>,  <12.536662, 11.808848, 27.703205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.034185, 11.655884, 28.281090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.096880, 12.042718, 28.200909>,  <13.134497, 12.274818, 28.152800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.096880, 12.042718, 28.200909>,  <13.034185, 11.655884, 28.281090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.096880, 12.042718, 28.200909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079963, 0.214721, 0.973396,
		0.984398, -0.136537, 0.110986,
		0.156735, 0.967085, -0.200453,
		13.143901, 12.332844, 28.140774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.462695, 11.827093, 28.845160>,  <13.034185, 11.655884, 28.281090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.462695, 11.827093, 28.845160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.312149, 12.160223, 28.682802>,  <13.221822, 12.360102, 28.585388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.312149, 12.160223, 28.682802>,  <13.462695, 11.827093, 28.845160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.312149, 12.160223, 28.682802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152158, 0.376595, 0.913797,
		0.913891, 0.405681, -0.015016,
		-0.376365, 0.832826, -0.405895,
		13.199240, 12.410070, 28.561033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.638775, 12.340734, 29.385363>,  <13.462695, 11.827093, 28.845160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.638775, 12.340734, 29.385363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.358329, 12.528225, 29.170427>,  <13.190061, 12.640719, 29.041466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.358329, 12.528225, 29.170427>,  <13.638775, 12.340734, 29.385363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.358329, 12.528225, 29.170427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233077, 0.561534, 0.793949,
		0.673878, 0.681891, -0.284452,
		-0.701116, 0.468725, -0.537339,
		13.147994, 12.668842, 29.009226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.683870, 12.957373, 29.629074>,  <13.638775, 12.340734, 29.385363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.683870, 12.957373, 29.629074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.315073, 12.920725, 29.478590>,  <13.093795, 12.898736, 29.388300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.315073, 12.920725, 29.478590>,  <13.683870, 12.957373, 29.629074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.315073, 12.920725, 29.478590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371860, 0.480337, 0.794353,
		0.107929, 0.872286, -0.476938,
		-0.921993, -0.091620, -0.376210,
		13.038475, 12.893239, 29.365726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.382735, 13.614498, 29.638113>,  <13.683870, 12.957373, 29.629074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.382735, 13.614498, 29.638113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.076900, 13.356798, 29.645573>,  <12.893399, 13.202178, 29.650049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.076900, 13.356798, 29.645573>,  <13.382735, 13.614498, 29.638113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.076900, 13.356798, 29.645573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390241, 0.485775, 0.782134,
		-0.512951, 0.590731, -0.622830,
		-0.764587, -0.644251, 0.018651,
		12.847525, 13.163523, 29.651169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.712658, 14.082726, 29.837566>,  <13.382735, 13.614498, 29.638113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.712658, 14.082726, 29.837566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.380084, 14.283332, 29.933233>,  <12.180540, 14.403695, 29.990633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.380084, 14.283332, 29.933233>,  <12.712658, 14.082726, 29.837566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.380084, 14.283332, 29.933233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042323, 0.372037, -0.927253,
		-0.554009, -0.781072, -0.288099,
		-0.831434, 0.501513, 0.239169,
		12.130653, 14.433785, 30.004984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.285186, 13.779342, 29.458193>,  <12.712658, 14.082726, 29.837566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.285186, 13.779342, 29.458193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.211287, 14.167603, 29.519773>,  <12.166947, 14.400559, 29.556721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.211287, 14.167603, 29.519773>,  <12.285186, 13.779342, 29.458193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.211287, 14.167603, 29.519773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113515, 0.176674, -0.977702,
		-0.976208, -0.163153, -0.142824,
		-0.184748, 0.970653, 0.153951,
		12.155862, 14.458798, 29.565958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.746490, 13.993594, 28.894243>,  <12.285186, 13.779342, 29.458193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.746490, 13.993594, 28.894243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.910026, 14.338306, 29.014368>,  <12.008146, 14.545134, 29.086443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.910026, 14.338306, 29.014368>,  <11.746490, 13.993594, 28.894243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.910026, 14.338306, 29.014368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019595, 0.320704, -0.946977,
		-0.912397, 0.393043, 0.114229,
		0.408837, 0.861781, 0.300311,
		12.032677, 14.596841, 29.104462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.292424, 14.622716, 28.728670>,  <11.746490, 13.993594, 28.894243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.292424, 14.622716, 28.728670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.674582, 14.735478, 28.763889>,  <11.903876, 14.803136, 28.785021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.674582, 14.735478, 28.763889>,  <11.292424, 14.622716, 28.728670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.674582, 14.735478, 28.763889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016191, 0.247682, -0.968706,
		-0.294892, 0.926921, 0.232069,
		0.955394, 0.281906, 0.088047,
		11.961200, 14.820050, 28.790304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.366261, 15.117178, 28.118273>,  <11.292424, 14.622716, 28.728670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.366261, 15.117178, 28.118273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.752795, 15.112280, 28.221069>,  <11.984715, 15.109342, 28.282747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.752795, 15.112280, 28.221069>,  <11.366261, 15.117178, 28.118273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.752795, 15.112280, 28.221069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250603, 0.270948, -0.929400,
		-0.058252, 0.962516, 0.264896,
		0.966336, -0.012244, 0.256993,
		12.042696, 15.108606, 28.298168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.668038, 15.724450, 27.866125>,  <11.366261, 15.117178, 28.118273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.668038, 15.724450, 27.866125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.967430, 15.462083, 27.905212>,  <12.147065, 15.304663, 27.928665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.967430, 15.462083, 27.905212>,  <11.668038, 15.724450, 27.866125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.967430, 15.462083, 27.905212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432636, 0.371293, -0.821564,
		0.502597, 0.657200, 0.561679,
		0.748480, -0.655919, 0.097717,
		12.191974, 15.265307, 27.934528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.151320, 16.150675, 27.622908>,  <11.668038, 15.724450, 27.866125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.151320, 16.150675, 27.622908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.281451, 15.773077, 27.600859>,  <12.359529, 15.546518, 27.587629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.281451, 15.773077, 27.600859>,  <12.151320, 16.150675, 27.622908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.281451, 15.773077, 27.600859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492243, 0.218836, -0.842501,
		0.807378, 0.246956, 0.535867,
		0.325328, -0.943993, -0.055121,
		12.379049, 15.489879, 27.584322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.802641, 16.238831, 27.350939>,  <12.151320, 16.150675, 27.622908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.802641, 16.238831, 27.350939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.743244, 15.844580, 27.318705>,  <12.707606, 15.608029, 27.299364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.743244, 15.844580, 27.318705>,  <12.802641, 16.238831, 27.350939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.743244, 15.844580, 27.318705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517917, -0.008092, -0.855393,
		0.842444, -0.168754, 0.511673,
		-0.148492, -0.985625, -0.080584,
		12.698697, 15.548892, 27.294529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.449965, 15.962497, 26.989405>,  <12.802641, 16.238831, 27.350939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.449965, 15.962497, 26.989405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.138904, 15.719747, 26.923727>,  <12.952267, 15.574097, 26.884321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.138904, 15.719747, 26.923727>,  <13.449965, 15.962497, 26.989405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.138904, 15.719747, 26.923727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291126, -0.116130, -0.949610,
		0.557227, -0.786268, 0.266985,
		-0.777653, -0.606875, -0.164192,
		12.905608, 15.537684, 26.874470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.762725, 15.397995, 26.607851>,  <13.449965, 15.962497, 26.989405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.762725, 15.397995, 26.607851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.365731, 15.376065, 26.564091>,  <13.127535, 15.362907, 26.537834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.365731, 15.376065, 26.564091>,  <13.762725, 15.397995, 26.607851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.365731, 15.376065, 26.564091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115720, -0.129808, -0.984763,
		0.039790, -0.990022, 0.135177,
		-0.992484, -0.054826, -0.109400,
		13.067986, 15.359617, 26.531271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.578108, 14.833442, 26.222467>,  <13.762725, 15.397995, 26.607851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.578108, 14.833442, 26.222467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.270778, 15.085221, 26.176043>,  <13.086379, 15.236289, 26.148188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.270778, 15.085221, 26.176043>,  <13.578108, 14.833442, 26.222467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.270778, 15.085221, 26.176043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066789, -0.101497, -0.992591,
		-0.636565, -0.770385, 0.035942,
		-0.768326, 0.629448, -0.116062,
		13.040280, 15.274055, 26.141224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.137695, 14.540020, 25.730558>,  <13.578108, 14.833442, 26.222467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.137695, 14.540020, 25.730558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.028959, 14.923225, 25.694092>,  <12.963717, 15.153149, 25.672213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.028959, 14.923225, 25.694092>,  <13.137695, 14.540020, 25.730558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.028959, 14.923225, 25.694092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148616, -0.051806, -0.987537,
		-0.950798, -0.282001, -0.128293,
		-0.271840, 0.958014, -0.091167,
		12.947408, 15.210629, 25.666742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.655129, 14.546508, 25.191029>,  <13.137695, 14.540020, 25.730558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.655129, 14.546508, 25.191029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.794504, 14.918574, 25.237303>,  <12.878129, 15.141814, 25.265066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.794504, 14.918574, 25.237303>,  <12.655129, 14.546508, 25.191029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.794504, 14.918574, 25.237303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162603, 0.061565, -0.984769,
		-0.923121, 0.361939, -0.129797,
		0.348436, 0.930166, 0.115684,
		12.899035, 15.197624, 25.272009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.408605, 14.952682, 24.637012>,  <12.655129, 14.546508, 25.191029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.408605, 14.952682, 24.637012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.743305, 15.113864, 24.785324>,  <12.944125, 15.210572, 24.874311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.743305, 15.113864, 24.785324>,  <12.408605, 14.952682, 24.637012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.743305, 15.113864, 24.785324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338713, 0.151165, -0.928667,
		-0.430258, 0.902651, -0.009998,
		0.836750, 0.402953, 0.370780,
		12.994330, 15.234750, 24.896559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.611474, 15.720016, 24.397068>,  <12.408605, 14.952682, 24.637012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.611474, 15.720016, 24.397068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.943199, 15.518946, 24.494686>,  <13.142235, 15.398304, 24.553257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.943199, 15.518946, 24.494686>,  <12.611474, 15.720016, 24.397068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.943199, 15.518946, 24.494686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423016, 0.279413, -0.861966,
		0.365098, 0.818075, 0.444360,
		0.829313, -0.502674, 0.244046,
		13.191993, 15.368143, 24.567900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.099024, 16.149307, 24.256741>,  <12.611474, 15.720016, 24.397068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.099024, 16.149307, 24.256741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.289083, 15.797353, 24.254274>,  <13.403119, 15.586181, 24.252794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.289083, 15.797353, 24.254274>,  <13.099024, 16.149307, 24.256741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.289083, 15.797353, 24.254274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549062, 0.301962, -0.779327,
		0.687580, 0.366910, 0.626587,
		0.475148, -0.879884, -0.006167,
		13.431628, 15.533387, 24.252424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.782977, 16.319191, 24.191933>,  <13.099024, 16.149307, 24.256741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.782977, 16.319191, 24.191933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.758482, 15.938123, 24.072824>,  <13.743785, 15.709481, 24.001360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.758482, 15.938123, 24.072824>,  <13.782977, 16.319191, 24.191933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.758482, 15.938123, 24.072824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763632, 0.147392, -0.628603,
		0.642741, -0.265881, 0.718464,
		-0.061238, -0.952671, -0.297770,
		13.740110, 15.652321, 23.983494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.530581, 16.069204, 24.048128>,  <13.782977, 16.319191, 24.191933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.530581, 16.069204, 24.048128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.345383, 15.779282, 23.844053>,  <14.234264, 15.605328, 23.721609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.345383, 15.779282, 23.844053>,  <14.530581, 16.069204, 24.048128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.345383, 15.779282, 23.844053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607834, 0.159299, -0.777921,
		0.645115, -0.670282, 0.366809,
		-0.462994, -0.724808, -0.510186,
		14.206485, 15.561839, 23.690998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.067231, 15.676666, 23.628452>,  <14.530581, 16.069204, 24.048128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.067231, 15.676666, 23.628452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.722457, 15.563925, 23.459871>,  <14.515593, 15.496280, 23.358723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.722457, 15.563925, 23.459871>,  <15.067231, 15.676666, 23.628452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.722457, 15.563925, 23.459871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452958, -0.054589, -0.889859,
		0.227803, -0.957903, 0.174720,
		-0.861936, -0.281853, -0.421455,
		14.463876, 15.479368, 23.333435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.202056, 15.139398, 23.224556>,  <15.067231, 15.676666, 23.628452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.202056, 15.139398, 23.224556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.872954, 15.316421, 23.081884>,  <14.675493, 15.422634, 22.996283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.872954, 15.316421, 23.081884>,  <15.202056, 15.139398, 23.224556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.872954, 15.316421, 23.081884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380434, -0.037472, -0.924049,
		-0.422311, -0.895957, -0.137534,
		-0.822753, 0.442558, -0.356677,
		14.626128, 15.449188, 22.974882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.031365, 14.641924, 22.736292>,  <15.202056, 15.139398, 23.224556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.031365, 14.641924, 22.736292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.846534, 14.984302, 22.643476>,  <14.735635, 15.189728, 22.587788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.846534, 14.984302, 22.643476>,  <15.031365, 14.641924, 22.736292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.846534, 14.984302, 22.643476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209637, -0.148809, -0.966389,
		-0.861705, -0.495193, -0.110676,
		-0.462080, 0.855944, -0.232040,
		14.707910, 15.241085, 22.573864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.707593, 14.554760, 22.047134>,  <15.031365, 14.641924, 22.736292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.707593, 14.554760, 22.047134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.659177, 14.950354, 22.081215>,  <14.630127, 15.187710, 22.101664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.659177, 14.950354, 22.081215>,  <14.707593, 14.554760, 22.047134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.659177, 14.950354, 22.081215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150739, 0.103152, -0.983177,
		-0.981135, -0.106162, -0.161564,
		-0.121041, 0.988984, 0.085204,
		14.622865, 15.247048, 22.106775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.229833, 14.898530, 21.605419>,  <14.707593, 14.554760, 22.047134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.229833, 14.898530, 21.605419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.474879, 15.203249, 21.689672>,  <14.621907, 15.386081, 21.740225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.474879, 15.203249, 21.689672>,  <14.229833, 14.898530, 21.605419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.474879, 15.203249, 21.689672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333518, -0.007552, -0.942713,
		-0.716566, 0.647771, -0.258700,
		0.612616, 0.761798, 0.210632,
		14.658664, 15.431788, 21.752861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.122553, 15.348615, 21.178211>,  <14.229833, 14.898530, 21.605419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.122553, 15.348615, 21.178211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.499488, 15.429029, 21.285233>,  <14.725649, 15.477279, 21.349445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.499488, 15.429029, 21.285233>,  <14.122553, 15.348615, 21.178211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.499488, 15.429029, 21.285233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295517, -0.124639, -0.947172,
		-0.157070, 0.971622, -0.176863,
		0.942337, 0.201038, 0.267554,
		14.782189, 15.489341, 21.365499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.303823, 15.541498, 20.566193>,  <14.122553, 15.348615, 21.178211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.303823, 15.541498, 20.566193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.649705, 15.521969, 20.766153>,  <14.857234, 15.510251, 20.886129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.649705, 15.521969, 20.766153>,  <14.303823, 15.541498, 20.566193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.649705, 15.521969, 20.766153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501492, 0.028147, -0.864704,
		0.028147, 0.998411, 0.048823,
		0.864704, -0.048823, 0.499903,
		14.909116, 15.507322, 20.916124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.784337, 16.035616, 20.394558>,  <14.303823, 15.541498, 20.566193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.784337, 16.035616, 20.394558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.053756, 15.774488, 20.533216>,  <15.215406, 15.617812, 20.616411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.053756, 15.774488, 20.533216>,  <14.784337, 16.035616, 20.394558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.053756, 15.774488, 20.533216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449648, -0.010333, -0.893146,
		0.586645, 0.757444, 0.286579,
		0.673546, -0.652819, 0.346645,
		15.255819, 15.578643, 20.637211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.429484, 16.258919, 20.218386>,  <14.784337, 16.035616, 20.394558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.429484, 16.258919, 20.218386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.503387, 15.877186, 20.312292>,  <15.547729, 15.648146, 20.368635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.503387, 15.877186, 20.312292>,  <15.429484, 16.258919, 20.218386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.503387, 15.877186, 20.312292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503712, -0.113163, -0.856428,
		0.843883, 0.276486, 0.459801,
		0.184757, -0.954332, 0.234766,
		15.558815, 15.590886, 20.382721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.121935, 16.162752, 20.182650>,  <15.429484, 16.258919, 20.218386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.121935, 16.162752, 20.182650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.976175, 15.792400, 20.142736>,  <15.888720, 15.570189, 20.118788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.976175, 15.792400, 20.142736>,  <16.121935, 16.162752, 20.182650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.976175, 15.792400, 20.142736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658767, -0.180558, -0.730359,
		0.658209, -0.331877, 0.675735,
		-0.364399, -0.925881, -0.099785,
		15.866856, 15.514636, 20.112801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.704847, 15.723332, 20.114325>,  <16.121935, 16.162752, 20.182650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.704847, 15.723332, 20.114325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.419765, 15.480141, 19.974375>,  <16.248716, 15.334226, 19.890406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.419765, 15.480141, 19.974375>,  <16.704847, 15.723332, 20.114325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.419765, 15.480141, 19.974375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562937, -0.198154, -0.802394,
		0.418510, -0.768828, 0.483479,
		-0.712707, -0.607979, -0.349873,
		16.205954, 15.297747, 19.869413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.138737, 15.169262, 19.789354>,  <16.704847, 15.723332, 20.114325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.138737, 15.169262, 19.789354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.764048, 15.161614, 19.649536>,  <16.539234, 15.157026, 19.565645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.764048, 15.161614, 19.649536>,  <17.138737, 15.169262, 19.789354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.764048, 15.161614, 19.649536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348467, -0.146343, -0.925826,
		-0.033451, -0.989049, 0.143746,
		-0.936724, -0.019120, -0.349547,
		16.483030, 15.155879, 19.544672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.054764, 14.571018, 19.494473>,  <17.138737, 15.169262, 19.789354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.054764, 14.571018, 19.494473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.798874, 14.826612, 19.323614>,  <16.645340, 14.979967, 19.221100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.798874, 14.826612, 19.323614>,  <17.054764, 14.571018, 19.494473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.798874, 14.826612, 19.323614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394488, -0.203993, -0.895972,
		-0.659646, -0.741678, -0.121573,
		-0.639723, 0.638984, -0.427147,
		16.606956, 15.018307, 19.195471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.776081, 14.323955, 18.824795>,  <17.054764, 14.571018, 19.494473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.776081, 14.323955, 18.824795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.762907, 14.723345, 18.842516>,  <16.755003, 14.962978, 18.853148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.762907, 14.723345, 18.842516>,  <16.776081, 14.323955, 18.824795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.762907, 14.723345, 18.842516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425708, 0.054119, -0.903241,
		-0.904261, -0.010889, -0.426842,
		-0.032935, 0.998475, 0.044302,
		16.753027, 15.022887, 18.855806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.436237, 14.575485, 18.139414>,  <16.776081, 14.323955, 18.824795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.436237, 14.575485, 18.139414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.615505, 14.897273, 18.295349>,  <16.723066, 15.090345, 18.388910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.615505, 14.897273, 18.295349>,  <16.436237, 14.575485, 18.139414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.615505, 14.897273, 18.295349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565432, 0.082675, -0.820641,
		-0.692410, 0.588213, -0.417821,
		0.448168, 0.804469, 0.389839,
		16.749956, 15.138614, 18.412300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.243382, 15.147776, 17.660347>,  <16.436237, 14.575485, 18.139414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.243382, 15.147776, 17.660347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.581766, 15.264300, 17.839003>,  <16.784798, 15.334215, 17.946196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.581766, 15.264300, 17.839003>,  <16.243382, 15.147776, 17.660347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.581766, 15.264300, 17.839003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471175, -0.016167, -0.881891,
		-0.249685, 0.956492, -0.150935,
		0.845962, 0.291312, 0.446639,
		16.835554, 15.351694, 17.972994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.469769, 15.774204, 17.328268>,  <16.243382, 15.147776, 17.660347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.469769, 15.774204, 17.328268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.795147, 15.618024, 17.500710>,  <16.990374, 15.524316, 17.604174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.795147, 15.618024, 17.500710>,  <16.469769, 15.774204, 17.328268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.795147, 15.618024, 17.500710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543293, 0.245402, -0.802876,
		0.207690, 0.887314, 0.411751,
		0.813448, -0.390451, 0.431104,
		17.039181, 15.500889, 17.630041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.922333, 16.193201, 17.097397>,  <16.469769, 15.774204, 17.328268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.922333, 16.193201, 17.097397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.154291, 15.896024, 17.231115>,  <17.293467, 15.717717, 17.311346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.154291, 15.896024, 17.231115>,  <16.922333, 16.193201, 17.097397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.154291, 15.896024, 17.231115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678855, 0.213797, -0.702458,
		0.450416, 0.634291, 0.628331,
		0.579898, -0.742944, 0.334294,
		17.328260, 15.673141, 17.331404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.515575, 16.517483, 17.067570>,  <16.922333, 16.193201, 17.097397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.515575, 16.517483, 17.067570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.635815, 16.139648, 17.120333>,  <17.707958, 15.912948, 17.151991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.635815, 16.139648, 17.120333>,  <17.515575, 16.517483, 17.067570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.635815, 16.139648, 17.120333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712566, 0.130498, -0.689362,
		0.633947, 0.301214, 0.712307,
		0.300600, -0.944585, 0.131906,
		17.725994, 15.856273, 17.159904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.184212, 16.595322, 17.197969>,  <17.515575, 16.517483, 17.067570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.184212, 16.595322, 17.197969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.114567, 16.227333, 17.057491>,  <18.072781, 16.006540, 16.973206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.114567, 16.227333, 17.057491>,  <18.184212, 16.595322, 17.197969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.114567, 16.227333, 17.057491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762314, 0.099837, -0.639460,
		0.623348, -0.379057, 0.683925,
		-0.174111, -0.919972, -0.351194,
		18.062334, 15.951342, 16.952133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.851423, 16.284378, 17.234390>,  <18.184212, 16.595322, 17.197969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.851423, 16.284378, 17.234390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.600864, 16.099543, 16.983280>,  <18.450529, 15.988642, 16.832615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.600864, 16.099543, 16.983280>,  <18.851423, 16.284378, 17.234390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.600864, 16.099543, 16.983280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665210, 0.102947, -0.739525,
		0.406353, -0.880839, 0.242899,
		-0.626397, -0.462087, -0.627776,
		18.412945, 15.960917, 16.794947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.234047, 15.900103, 16.794271>,  <18.851423, 16.284378, 17.234390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.234047, 15.900103, 16.794271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.902256, 15.897440, 16.570869>,  <18.703182, 15.895843, 16.436829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.902256, 15.897440, 16.570869>,  <19.234047, 15.900103, 16.794271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.902256, 15.897440, 16.570869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558159, -0.046953, -0.828405,
		-0.020708, -0.998875, 0.042663,
		-0.829476, -0.006658, -0.558503,
		18.653414, 15.895443, 16.403318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.149368, 15.279124, 16.351868>,  <19.234047, 15.900103, 16.794271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.149368, 15.279124, 16.351868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.953341, 15.579284, 16.174450>,  <18.835724, 15.759379, 16.067999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.953341, 15.579284, 16.174450>,  <19.149368, 15.279124, 16.351868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.953341, 15.579284, 16.174450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694796, 0.028995, -0.718622,
		-0.526392, -0.660350, -0.535583,
		-0.490071, 0.750398, -0.443546,
		18.806318, 15.804403, 16.041386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.911736, 15.212797, 15.677492>,  <19.149368, 15.279124, 16.351868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.911736, 15.212797, 15.677492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.032679, 15.593399, 15.700179>,  <19.105244, 15.821760, 15.713791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.032679, 15.593399, 15.700179>,  <18.911736, 15.212797, 15.677492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.032679, 15.593399, 15.700179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786164, -0.215287, -0.579308,
		-0.539005, 0.219747, -0.813133,
		0.302358, 0.951506, 0.056717,
		19.123386, 15.878851, 15.717195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.098162, 15.377836, 15.040679>,  <18.911736, 15.212797, 15.677492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.098162, 15.377836, 15.040679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.292318, 15.633101, 15.279726>,  <19.408812, 15.786260, 15.423154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.292318, 15.633101, 15.279726>,  <19.098162, 15.377836, 15.040679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.292318, 15.633101, 15.279726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846524, -0.172121, -0.503756,
		-0.218615, 0.750416, -0.623765,
		0.485390, 0.638162, 0.597617,
		19.437935, 15.824549, 15.459011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.371256, 15.823983, 14.620526>,  <19.098162, 15.377836, 15.040679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.371256, 15.823983, 14.620526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.628662, 15.797533, 14.925555>,  <19.783106, 15.781663, 15.108573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.628662, 15.797533, 14.925555>,  <19.371256, 15.823983, 14.620526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.628662, 15.797533, 14.925555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742176, -0.189819, -0.642762,
		0.187254, 0.979590, -0.073074,
		0.643514, -0.066126, 0.762573,
		19.821716, 15.777695, 15.154327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.858175, 16.344894, 14.517940>,  <19.371256, 15.823983, 14.620526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.858175, 16.344894, 14.517940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.014042, 16.059681, 14.751090>,  <20.107563, 15.888554, 14.890980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.014042, 16.059681, 14.751090>,  <19.858175, 16.344894, 14.517940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.014042, 16.059681, 14.751090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701263, -0.180537, -0.689665,
		0.596984, 0.677489, 0.429673,
		0.389669, -0.713032, 0.582876,
		20.130943, 15.845772, 14.925953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.124487, 17.035463, 14.766289>,  <19.858175, 16.344894, 14.517940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.124487, 17.035463, 14.766289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.091162, 17.325006, 15.040249>,  <20.071167, 17.498734, 15.204625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.091162, 17.325006, 15.040249>,  <20.124487, 17.035463, 14.766289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.091162, 17.325006, 15.040249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508246, 0.622045, -0.595606,
		-0.857173, 0.298477, -0.419721,
		-0.083311, 0.723859, 0.684900,
		20.066168, 17.542164, 15.245719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.802794, 17.629587, 14.536897>,  <20.124487, 17.035463, 14.766289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.802794, 17.629587, 14.536897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.068741, 17.751406, 14.809720>,  <20.228310, 17.824497, 14.973414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.068741, 17.751406, 14.809720>,  <19.802794, 17.629587, 14.536897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.068741, 17.751406, 14.809720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548943, 0.420037, -0.722656,
		-0.506571, 0.854881, 0.112091,
		0.664867, 0.304545, 0.682059,
		20.268202, 17.842770, 15.014338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.911867, 18.399218, 14.519185>,  <19.802794, 17.629587, 14.536897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.911867, 18.399218, 14.519185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.201849, 18.142525, 14.619282>,  <20.375837, 17.988508, 14.679340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.201849, 18.142525, 14.619282>,  <19.911867, 18.399218, 14.519185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.201849, 18.142525, 14.619282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432691, 0.141611, -0.890351,
		0.535931, 0.753740, 0.380334,
		0.724952, -0.641734, 0.250243,
		20.419334, 17.950005, 14.694355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.562782, 18.781950, 14.655445>,  <19.911867, 18.399218, 14.519185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.562782, 18.781950, 14.655445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.614506, 18.429781, 14.472958>,  <20.645540, 18.218479, 14.363465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.614506, 18.429781, 14.472958>,  <20.562782, 18.781950, 14.655445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.614506, 18.429781, 14.472958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442490, 0.462964, -0.768028,
		0.887402, -0.102561, 0.449443,
		0.129307, -0.880424, -0.456218,
		20.653297, 18.165653, 14.336092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.321951, 18.726576, 14.458758>,  <20.562782, 18.781950, 14.655445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.321951, 18.726576, 14.458758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.096363, 18.491526, 14.226677>,  <20.961010, 18.350496, 14.087428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.096363, 18.491526, 14.226677>,  <21.321951, 18.726576, 14.458758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.096363, 18.491526, 14.226677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212613, 0.575590, -0.789615,
		0.797957, -0.568677, -0.199678,
		-0.563969, -0.587625, -0.580204,
		20.927172, 18.315239, 14.052616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.690979, 18.522526, 13.796384>,  <21.321951, 18.726576, 14.458758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.690979, 18.522526, 13.796384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.308695, 18.466372, 13.692920>,  <21.079325, 18.432678, 13.630841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.308695, 18.466372, 13.692920>,  <21.690979, 18.522526, 13.796384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.308695, 18.466372, 13.692920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085443, 0.708684, -0.700333,
		0.281625, -0.691418, -0.665304,
		-0.955713, -0.140386, -0.258660,
		21.021980, 18.424255, 13.615322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.686989, 18.497906, 13.112792>,  <21.690979, 18.522526, 13.796384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.686989, 18.497906, 13.112792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.304319, 18.589520, 13.184698>,  <21.074717, 18.644487, 13.227841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.304319, 18.589520, 13.184698>,  <21.686989, 18.497906, 13.112792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.304319, 18.589520, 13.184698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033901, 0.700844, -0.712509,
		-0.289176, -0.675546, -0.678244,
		-0.956675, 0.229034, 0.179765,
		21.017317, 18.658230, 13.238627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.343304, 18.382841, 12.505534>,  <21.686989, 18.497906, 13.112792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.343304, 18.382841, 12.505534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.078962, 18.609886, 12.701937>,  <20.920357, 18.746113, 12.819778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.078962, 18.609886, 12.701937>,  <21.343304, 18.382841, 12.505534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.078962, 18.609886, 12.701937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008733, 0.659998, -0.751216,
		-0.750463, -0.492157, -0.441120,
		-0.660855, 0.567612, 0.491006,
		20.880705, 18.780170, 12.849238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.792736, 18.648487, 12.035684>,  <21.343304, 18.382841, 12.505534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.792736, 18.648487, 12.035684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.787436, 18.897739, 12.348486>,  <20.784256, 19.047291, 12.536167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.787436, 18.897739, 12.348486>,  <20.792736, 18.648487, 12.035684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.787436, 18.897739, 12.348486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135933, 0.775936, -0.615991,
		-0.990629, 0.098138, -0.094986,
		-0.013251, 0.623131, 0.782005,
		20.783461, 19.084679, 12.583088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.419836, 19.178953, 11.857126>,  <20.792736, 18.648487, 12.035684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.419836, 19.178953, 11.857126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.609646, 19.339111, 12.170689>,  <20.723532, 19.435205, 12.358827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.609646, 19.339111, 12.170689>,  <20.419836, 19.178953, 11.857126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.609646, 19.339111, 12.170689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145414, 0.842665, -0.518431,
		-0.868148, 0.359999, 0.341643,
		0.474525, 0.400395, 0.783907,
		20.752003, 19.459230, 12.405861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.113285, 19.847925, 11.915596>,  <20.419836, 19.178953, 11.857126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.113285, 19.847925, 11.915596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.480812, 19.825832, 12.071918>,  <20.701328, 19.812576, 12.165710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.480812, 19.825832, 12.071918>,  <20.113285, 19.847925, 11.915596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.480812, 19.825832, 12.071918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244551, 0.856860, -0.453857,
		-0.309796, 0.512582, 0.800804,
		0.918815, -0.055234, 0.390804,
		20.756456, 19.809261, 12.189158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.197252, 20.517387, 11.981906>,  <20.113285, 19.847925, 11.915596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.197252, 20.517387, 11.981906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.572332, 20.389408, 12.036088>,  <20.797380, 20.312620, 12.068597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.572332, 20.389408, 12.036088>,  <20.197252, 20.517387, 11.981906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.572332, 20.389408, 12.036088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347032, 0.881437, -0.320370,
		-0.016892, 0.347418, 0.937558,
		0.937701, -0.319950, 0.135454,
		20.853643, 20.293423, 12.076724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.579674, 21.174553, 12.151488>,  <20.197252, 20.517387, 11.981906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.579674, 21.174553, 12.151488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.867556, 20.913948, 12.055521>,  <21.040285, 20.757586, 11.997941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.867556, 20.913948, 12.055521>,  <20.579674, 21.174553, 12.151488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.867556, 20.913948, 12.055521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494453, 0.723568, -0.481629,
		0.487383, 0.228002, 0.842896,
		0.719704, -0.651510, -0.239918,
		21.083467, 20.718494, 11.983545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.122686, 21.501434, 12.394935>,  <20.579674, 21.174553, 12.151488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.122686, 21.501434, 12.394935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.243757, 21.234619, 12.122626>,  <21.316399, 21.074530, 11.959241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.243757, 21.234619, 12.122626>,  <21.122686, 21.501434, 12.394935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.243757, 21.234619, 12.122626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608526, 0.684986, -0.400612,
		0.733542, -0.293012, 0.613238,
		0.302675, -0.667037, -0.680771,
		21.334560, 21.034508, 11.918395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.741899, 21.379625, 12.550769>,  <21.122686, 21.501434, 12.394935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.741899, 21.379625, 12.550769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.740410, 21.303343, 12.158113>,  <21.739517, 21.257574, 11.922519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.740410, 21.303343, 12.158113>,  <21.741899, 21.379625, 12.550769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.740410, 21.303343, 12.158113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703969, 0.696692, -0.138016,
		0.710221, -0.691558, 0.131656,
		-0.003722, -0.190704, -0.981640,
		21.739294, 21.246132, 11.863621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.471657, 21.318245, 12.314641>,  <21.741899, 21.379625, 12.550769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.471657, 21.318245, 12.314641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.228840, 21.409834, 12.010254>,  <22.083151, 21.464788, 11.827621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.228840, 21.409834, 12.010254>,  <22.471657, 21.318245, 12.314641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.228840, 21.409834, 12.010254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524987, 0.834422, -0.167717,
		0.596566, -0.501310, -0.626735,
		-0.607040, 0.228974, -0.760969,
		22.046728, 21.478525, 11.781963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.917604, 21.455896, 11.710640>,  <22.471657, 21.318245, 12.314641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.917604, 21.455896, 11.710640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.568415, 21.628950, 11.620538>,  <22.358900, 21.732782, 11.566477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.568415, 21.628950, 11.620538>,  <22.917604, 21.455896, 11.710640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.568415, 21.628950, 11.620538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478566, 0.848967, -0.224121,
		0.094272, -0.303451, -0.948172,
		-0.872976, 0.432634, -0.225255,
		22.306522, 21.758739, 11.552961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.158306, 21.813334, 11.130503>,  <22.917604, 21.455896, 11.710640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.158306, 21.813334, 11.130503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.805828, 21.949465, 11.261758>,  <22.594341, 22.031143, 11.340510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.805828, 21.949465, 11.261758>,  <23.158306, 21.813334, 11.130503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.805828, 21.949465, 11.261758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314670, 0.940238, -0.130139,
		-0.352817, -0.011422, -0.935623,
		-0.881194, 0.340328, 0.328137,
		22.541470, 22.051563, 11.360199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.966991, 22.355890, 10.584813>,  <23.158306, 21.813334, 11.130503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.966991, 22.355890, 10.584813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.775278, 22.422617, 10.929478>,  <22.660250, 22.462652, 11.136276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.775278, 22.422617, 10.929478>,  <22.966991, 22.355890, 10.584813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.775278, 22.422617, 10.929478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129999, 0.984435, -0.118273,
		-0.867979, 0.055329, -0.493510,
		-0.479284, 0.166815, 0.861661,
		22.631493, 22.472662, 11.187976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.386957, 22.852127, 10.528125>,  <22.966991, 22.355890, 10.584813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.386957, 22.852127, 10.528125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.493963, 22.867485, 10.913240>,  <22.558167, 22.876699, 11.144310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.493963, 22.867485, 10.913240>,  <22.386957, 22.852127, 10.528125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.493963, 22.867485, 10.913240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005244, 0.999133, -0.041300,
		-0.963540, 0.016097, 0.267081,
		0.267515, 0.038393, 0.962789,
		22.574217, 22.879004, 11.202077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.917904, 23.476564, 10.823032>,  <22.386957, 22.852127, 10.528125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.917904, 23.476564, 10.823032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.205462, 23.407383, 11.092337>,  <22.377996, 23.365873, 11.253919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.205462, 23.407383, 11.092337>,  <21.917904, 23.476564, 10.823032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.205462, 23.407383, 11.092337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037803, 0.976846, 0.210578,
		-0.694091, -0.125932, 0.708786,
		0.718894, -0.172954, 0.673260,
		22.421129, 23.355497, 11.294314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.690191, 23.861679, 11.274016>,  <21.917904, 23.476564, 10.823032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.690191, 23.861679, 11.274016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.079380, 23.807201, 11.348616>,  <22.312893, 23.774515, 11.393375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.079380, 23.807201, 11.348616>,  <21.690191, 23.861679, 11.274016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.079380, 23.807201, 11.348616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039622, 0.894059, 0.446193,
		-0.227509, -0.426743, 0.875289,
		0.972970, -0.136194, 0.186498,
		22.371271, 23.766344, 11.404565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.774790, 24.122467, 12.014229>,  <21.690191, 23.861679, 11.274016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.774790, 24.122467, 12.014229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.137493, 24.118303, 11.845620>,  <22.355116, 24.115805, 11.744454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.137493, 24.118303, 11.845620>,  <21.774790, 24.122467, 12.014229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.137493, 24.118303, 11.845620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195266, 0.896405, 0.397907,
		0.373713, -0.443114, 0.814855,
		0.906758, -0.010410, -0.421523,
		22.409521, 24.115181, 11.719163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.251846, 24.363331, 12.610598>,  <21.774790, 24.122467, 12.014229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.251846, 24.363331, 12.610598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.403877, 24.405842, 12.243066>,  <22.495096, 24.431349, 12.022547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.403877, 24.405842, 12.243066>,  <22.251846, 24.363331, 12.610598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.403877, 24.405842, 12.243066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313399, 0.919821, 0.236031,
		0.870243, -0.377670, 0.316295,
		0.380077, 0.106278, -0.918829,
		22.517900, 24.437725, 11.967417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.874771, 24.688255, 12.679238>,  <22.251846, 24.363331, 12.610598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.874771, 24.688255, 12.679238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.733944, 24.793550, 12.319961>,  <22.649448, 24.856728, 12.104394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.733944, 24.793550, 12.319961>,  <22.874771, 24.688255, 12.679238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.733944, 24.793550, 12.319961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433770, 0.896248, 0.092641,
		0.829392, -0.356994, -0.429725,
		-0.352068, 0.263238, -0.898195,
		22.628323, 24.872522, 12.050502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.426281, 24.981409, 12.313038>,  <22.874771, 24.688255, 12.679238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.426281, 24.981409, 12.313038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.064009, 25.122818, 12.219432>,  <22.846645, 25.207663, 12.163268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.064009, 25.122818, 12.219432>,  <23.426281, 24.981409, 12.313038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.064009, 25.122818, 12.219432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342824, 0.935425, 0.086328,
		0.249421, -0.002040, -0.968393,
		-0.905682, 0.353520, -0.234014,
		22.792303, 25.228874, 12.149227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.949131, 24.920479, 11.680696>,  <23.426281, 24.981409, 12.313038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.949131, 24.920479, 11.680696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.237911, 25.126232, 11.495570>,  <24.411180, 25.249683, 11.384495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.237911, 25.126232, 11.495570>,  <23.949131, 24.920479, 11.680696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.237911, 25.126232, 11.495570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267983, -0.824516, -0.498355,
		-0.637942, 0.235763, -0.733107,
		0.721952, 0.514382, -0.462813,
		24.454496, 25.280546, 11.356726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.906149, 24.788750, 10.983171>,  <23.949131, 24.920479, 11.680696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.906149, 24.788750, 10.983171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.292082, 24.866501, 11.053954>,  <24.523642, 24.913151, 11.096424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.292082, 24.866501, 11.053954>,  <23.906149, 24.788750, 10.983171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.292082, 24.866501, 11.053954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261178, -0.784995, -0.561755,
		0.029721, 0.588218, -0.808156,
		0.964833, 0.194377, 0.176960,
		24.581532, 24.924814, 11.107042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.319799, 24.612814, 10.398529>,  <23.906149, 24.788750, 10.983171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.319799, 24.612814, 10.398529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.577103, 24.597151, 10.704389>,  <24.731483, 24.587753, 10.887904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.577103, 24.597151, 10.704389>,  <24.319799, 24.612814, 10.398529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.577103, 24.597151, 10.704389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477675, -0.759970, -0.440762,
		0.598370, 0.648777, -0.470151,
		0.643257, -0.039159, 0.764648,
		24.770081, 24.585403, 10.933784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.939901, 24.496368, 10.086141>,  <24.319799, 24.612814, 10.398529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.939901, 24.496368, 10.086141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.975021, 24.355534, 10.458877>,  <24.996094, 24.271032, 10.682518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.975021, 24.355534, 10.458877>,  <24.939901, 24.496368, 10.086141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.975021, 24.355534, 10.458877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773448, -0.565412, -0.286511,
		0.627750, 0.745886, 0.222676,
		0.087801, -0.352086, 0.931841,
		25.001362, 24.249908, 10.738429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.641993, 24.589983, 10.372860>,  <24.939901, 24.496368, 10.086141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.641993, 24.589983, 10.372860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.449877, 24.276936, 10.531267>,  <25.334608, 24.089108, 10.626311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.449877, 24.276936, 10.531267>,  <25.641993, 24.589983, 10.372860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.449877, 24.276936, 10.531267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724954, -0.608356, -0.323025,
		0.493725, 0.131950, 0.859549,
		-0.480289, -0.782619, 0.396019,
		25.305790, 24.042150, 10.650073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.142187, 24.117645, 10.750053>,  <25.641993, 24.589983, 10.372860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.142187, 24.117645, 10.750053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.854572, 23.901823, 10.574842>,  <25.682003, 23.772329, 10.469716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.854572, 23.901823, 10.574842>,  <26.142187, 24.117645, 10.750053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.854572, 23.901823, 10.574842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688013, -0.641622, -0.339057,
		-0.098107, -0.545162, 0.832570,
		-0.719036, -0.539555, -0.438026,
		25.638861, 23.739956, 10.443435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.342712, 23.382360, 10.932539>,  <26.142187, 24.117645, 10.750053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.342712, 23.382360, 10.932539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.109461, 23.431705, 10.611356>,  <25.969509, 23.461313, 10.418646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.109461, 23.431705, 10.611356>,  <26.342712, 23.382360, 10.932539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.109461, 23.431705, 10.611356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384130, -0.829056, -0.406339,
		-0.715824, -0.545388, 0.436059,
		-0.583129, 0.123363, -0.802958,
		25.934523, 23.468714, 10.370468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.677282, 22.882235, 10.913772>,  <26.342712, 23.382360, 10.932539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.677282, 22.882235, 10.913772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.849909, 22.985308, 10.567974>,  <25.953485, 23.047152, 10.360496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.849909, 22.985308, 10.567974>,  <25.677282, 22.882235, 10.913772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.849909, 22.985308, 10.567974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195790, -0.962245, -0.189081,
		-0.880578, -0.087658, -0.465724,
		0.431566, 0.257684, -0.864494,
		25.979378, 23.062613, 10.308626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.888229, 22.245554, 11.449380>,  <25.677282, 22.882235, 10.913772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.888229, 22.245554, 11.449380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.928942, 21.976704, 11.156016>,  <25.953369, 21.815393, 10.979999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.928942, 21.976704, 11.156016>,  <25.888229, 22.245554, 11.449380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.928942, 21.976704, 11.156016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813359, -0.480711, 0.327666,
		-0.572790, 0.563174, -0.595606,
		0.101781, -0.672126, -0.733409,
		25.959476, 21.775066, 10.935994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.142811, 22.141699, 11.208540>,  <25.888229, 22.245554, 11.449380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.142811, 22.141699, 11.208540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.317820, 21.817751, 11.052240>,  <25.422825, 21.623383, 10.958461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.317820, 21.817751, 11.052240>,  <25.142811, 22.141699, 11.208540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.317820, 21.817751, 11.052240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685801, -0.581594, 0.437523,
		-0.581594, 0.076549, -0.809870,
		-0.437523, 0.809870, 0.390748,
		25.449076, 21.574789, 10.935016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.594854, 21.637804, 10.937918>,  <25.142811, 22.141699, 11.208540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.594854, 21.637804, 10.937918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.929052, 21.420584, 10.971489>,  <25.129570, 21.290251, 10.991632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.929052, 21.420584, 10.971489>,  <24.594854, 21.637804, 10.937918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.929052, 21.420584, 10.971489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539131, -0.780582, 0.316275,
		-0.106240, -0.309495, -0.944948,
		0.835494, -0.543052, 0.083929,
		25.179701, 21.257668, 10.996668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.419363, 21.012484, 10.608506>,  <24.594854, 21.637804, 10.937918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.419363, 21.012484, 10.608506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.696114, 20.909342, 10.878266>,  <24.862164, 20.847456, 11.040122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.696114, 20.909342, 10.878266>,  <24.419363, 21.012484, 10.608506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.696114, 20.909342, 10.878266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581072, -0.753272, 0.308119,
		0.428556, -0.605055, -0.671005,
		0.691878, -0.257856, 0.674399,
		24.903677, 20.831985, 11.080586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.252689, 20.336226, 10.712875>,  <24.419363, 21.012484, 10.608506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.252689, 20.336226, 10.712875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.508760, 20.407476, 11.011792>,  <24.662403, 20.450228, 11.191142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.508760, 20.407476, 11.011792>,  <24.252689, 20.336226, 10.712875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.508760, 20.407476, 11.011792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436568, -0.716056, 0.544676,
		0.632126, -0.674932, -0.380636,
		0.640176, 0.178130, 0.747291,
		24.700813, 20.460915, 11.235979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.565485, 19.589447, 10.959331>,  <24.252689, 20.336226, 10.712875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.565485, 19.589447, 10.959331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.635683, 19.854427, 11.250634>,  <24.677803, 20.013416, 11.425416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.635683, 19.854427, 11.250634>,  <24.565485, 19.589447, 10.959331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.635683, 19.854427, 11.250634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288362, -0.672705, 0.681407,
		0.941301, -0.329587, 0.072968,
		0.175497, 0.662450, 0.728258,
		24.688332, 20.053162, 11.469111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.902082, 19.155445, 11.424965>,  <24.565485, 19.589447, 10.959331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.902082, 19.155445, 11.424965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.775721, 19.479788, 11.622028>,  <24.699903, 19.674395, 11.740267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.775721, 19.479788, 11.622028>,  <24.902082, 19.155445, 11.424965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.775721, 19.479788, 11.622028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208641, -0.565908, 0.797632,
		0.925566, 0.149188, 0.347952,
		-0.315905, 0.810859, 0.492658,
		24.680948, 19.723045, 11.769826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.341425, 19.266893, 12.018041>,  <24.902082, 19.155445, 11.424965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.341425, 19.266893, 12.018041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.982708, 19.437918, 12.063571>,  <24.767479, 19.540533, 12.090889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.982708, 19.437918, 12.063571>,  <25.341425, 19.266893, 12.018041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.982708, 19.437918, 12.063571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198492, -0.618692, 0.760146,
		0.395433, 0.659098, 0.639705,
		-0.896791, 0.427562, 0.113825,
		24.713671, 19.566187, 12.097718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.199060, 19.333302, 12.735776>,  <25.341425, 19.266893, 12.018041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.199060, 19.333302, 12.735776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.827810, 19.388357, 12.597419>,  <24.605061, 19.421391, 12.514404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.827810, 19.388357, 12.597419>,  <25.199060, 19.333302, 12.735776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.827810, 19.388357, 12.597419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365651, -0.511492, 0.777609,
		-0.069893, 0.848193, 0.525056,
		-0.928124, 0.137638, -0.345892,
		24.549374, 19.429649, 12.493651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.796923, 19.372383, 13.353566>,  <25.199060, 19.333302, 12.735776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.796923, 19.372383, 13.353566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.529510, 19.298372, 13.065447>,  <24.369062, 19.253965, 12.892575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.529510, 19.298372, 13.065447>,  <24.796923, 19.372383, 13.353566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.529510, 19.298372, 13.065447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476587, -0.636937, 0.605951,
		-0.570903, 0.748382, 0.337630,
		-0.668531, -0.185029, -0.720299,
		24.328951, 19.242863, 12.849358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.130783, 19.406963, 13.727106>,  <24.796923, 19.372383, 13.353566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.130783, 19.406963, 13.727106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.041010, 19.199184, 13.397305>,  <23.987146, 19.074518, 13.199424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.041010, 19.199184, 13.397305>,  <24.130783, 19.406963, 13.727106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.041010, 19.199184, 13.397305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560976, -0.622968, 0.545176,
		-0.796828, 0.584883, -0.151581,
		-0.224433, -0.519445, -0.824504,
		23.973680, 19.043350, 13.149954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.460373, 19.281351, 13.806228>,  <24.130783, 19.406963, 13.727106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.460373, 19.281351, 13.806228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.587053, 19.024988, 13.526531>,  <23.663061, 18.871170, 13.358713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.587053, 19.024988, 13.526531>,  <23.460373, 19.281351, 13.806228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.587053, 19.024988, 13.526531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426915, -0.754611, 0.498303,
		-0.847021, 0.140703, -0.512599,
		0.316700, -0.640909, -0.699240,
		23.682064, 18.832716, 13.316759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.106598, 18.786217, 13.923756>,  <23.460373, 19.281351, 13.806228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.106598, 18.786217, 13.923756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.351974, 18.589256, 13.676779>,  <23.499201, 18.471081, 13.528593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.351974, 18.589256, 13.676779>,  <23.106598, 18.786217, 13.923756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.351974, 18.589256, 13.676779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291476, -0.867793, 0.402464,
		-0.733984, -0.066919, -0.675862,
		0.613441, -0.492399, -0.617441,
		23.536007, 18.441536, 13.491547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.679470, 18.195648, 13.627620>,  <23.106598, 18.786217, 13.923756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.679470, 18.195648, 13.627620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.067408, 18.100456, 13.606565>,  <23.300171, 18.043341, 13.593933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.067408, 18.100456, 13.606565>,  <22.679470, 18.195648, 13.627620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.067408, 18.100456, 13.606565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171343, -0.819304, 0.547158,
		-0.173336, -0.521639, -0.835373,
		0.969843, -0.237978, -0.052636,
		23.358360, 18.029062, 13.590775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.704912, 17.501694, 13.411592>,  <22.679470, 18.195648, 13.627620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.704912, 17.501694, 13.411592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.070053, 17.550200, 13.567539>,  <23.289137, 17.579304, 13.661108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.070053, 17.550200, 13.567539>,  <22.704912, 17.501694, 13.411592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.070053, 17.550200, 13.567539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170935, -0.753659, 0.634649,
		0.370789, -0.645983, -0.667250,
		0.912851, 0.121264, 0.389869,
		23.343908, 17.586578, 13.684500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.030691, 16.806999, 13.382181>,  <22.704912, 17.501694, 13.411592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.030691, 16.806999, 13.382181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.234356, 17.021866, 13.651167>,  <23.356554, 17.150785, 13.812558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.234356, 17.021866, 13.651167>,  <23.030691, 16.806999, 13.382181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.234356, 17.021866, 13.651167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210094, -0.680118, 0.702353,
		0.834634, -0.498892, -0.233436,
		0.509162, 0.537165, 0.672464,
		23.387104, 17.183016, 13.852906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.543510, 16.351517, 13.695137>,  <23.030691, 16.806999, 13.382181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.543510, 16.351517, 13.695137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.464556, 16.658768, 13.938782>,  <23.417183, 16.843119, 14.084969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.464556, 16.658768, 13.938782>,  <23.543510, 16.351517, 13.695137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.464556, 16.658768, 13.938782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229669, -0.640278, 0.733005,
		0.953043, 0.004790, 0.302797,
		-0.197385, 0.768129, 0.609112,
		23.405340, 16.889206, 14.121515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.823818, 16.128325, 14.374999>,  <23.543510, 16.351517, 13.695137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.823818, 16.128325, 14.374999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.570200, 16.427876, 14.452115>,  <23.418028, 16.607605, 14.498384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.570200, 16.427876, 14.452115>,  <23.823818, 16.128325, 14.374999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.570200, 16.427876, 14.452115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274156, -0.450807, 0.849477,
		0.723065, 0.485754, 0.491141,
		-0.634047, 0.748876, 0.192790,
		23.379986, 16.652538, 14.509953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.051317, 16.440638, 15.040101>,  <23.823818, 16.128325, 14.374999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.051317, 16.440638, 15.040101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.660522, 16.514839, 14.997990>,  <23.426046, 16.559361, 14.972723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.660522, 16.514839, 14.997990>,  <24.051317, 16.440638, 15.040101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.660522, 16.514839, 14.997990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180128, -0.453210, 0.873015,
		0.114234, 0.871888, 0.476195,
		-0.976988, 0.185504, -0.105280,
		23.367426, 16.570490, 14.966406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.659597, 16.729231, 15.159623>,  <24.051317, 16.440638, 15.040101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.659597, 16.729231, 15.159623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.874645, 16.872696, 14.854383>,  <25.003674, 16.958775, 14.671238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.874645, 16.872696, 14.854383>,  <24.659597, 16.729231, 15.159623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.874645, 16.872696, 14.854383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693004, -0.703499, 0.157588,
		-0.480321, -0.613556, -0.626770,
		0.537622, 0.358662, -0.763102,
		25.035933, 16.980295, 14.625452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.702324, 16.179203, 14.674622>,  <24.659597, 16.729231, 15.159623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.702324, 16.179203, 14.674622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.020018, 16.420874, 14.700440>,  <25.210634, 16.565876, 14.715932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.020018, 16.420874, 14.700440>,  <24.702324, 16.179203, 14.674622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.020018, 16.420874, 14.700440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593388, -0.794102, 0.131499,
		0.130706, -0.066139, -0.989213,
		0.794233, 0.604175, 0.064548,
		25.258287, 16.602125, 14.719805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.171204, 15.931925, 14.179072>,  <24.702324, 16.179203, 14.674622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.171204, 15.931925, 14.179072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.345778, 16.082666, 14.505877>,  <25.450521, 16.173111, 14.701959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.345778, 16.082666, 14.505877>,  <25.171204, 15.931925, 14.179072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.345778, 16.082666, 14.505877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445067, -0.879602, 0.167976,
		0.781946, 0.290313, -0.551615,
		0.436436, 0.376854, 0.817010,
		25.476707, 16.195723, 14.750979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.707119, 15.442740, 14.358134>,  <25.171204, 15.931925, 14.179072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.707119, 15.442740, 14.358134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.639368, 15.650275, 14.693304>,  <25.598717, 15.774796, 14.894406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.639368, 15.650275, 14.693304>,  <25.707119, 15.442740, 14.358134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.639368, 15.650275, 14.693304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263683, -0.795358, 0.545781,
		0.949623, 0.313389, -0.002093,
		-0.169377, 0.518838, 0.837925,
		25.588554, 15.805926, 14.944681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.278381, 15.294460, 14.959801>,  <25.707119, 15.442740, 14.358134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.278381, 15.294460, 14.959801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.928795, 15.421364, 15.107059>,  <25.719044, 15.497506, 15.195415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.928795, 15.421364, 15.107059>,  <26.278381, 15.294460, 14.959801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.928795, 15.421364, 15.107059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018846, -0.734827, 0.677993,
		0.485624, 0.599480, 0.636234,
		-0.873965, 0.317259, 0.368147,
		25.666605, 15.516541, 15.217504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.596899, 14.661208, 14.729918>,  <26.278381, 15.294460, 14.959801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.596899, 14.661208, 14.729918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.784891, 14.879402, 15.007497>,  <26.897686, 15.010319, 15.174045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.784891, 14.879402, 15.007497>,  <26.596899, 14.661208, 14.729918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.784891, 14.879402, 15.007497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839133, -0.032229, -0.542971,
		-0.273818, 0.837500, -0.472882,
		0.469979, 0.545486, 0.693949,
		26.925884, 15.043048, 15.215681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<10.026163, 17.162594, 23.032787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.777021, 16.850628, 23.008169>,  <9.627537, 16.663448, 22.993399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.777021, 16.850628, 23.008169>,  <10.026163, 17.162594, 23.032787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.777021, 16.850628, 23.008169> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109619, -0.009111, -0.993932,
		0.774621, -0.625820, 0.091169,
		-0.622853, -0.779914, -0.061544,
		9.590165, 16.616653, 22.989706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.337313, 16.769182, 22.668400>,  <10.026163, 17.162594, 23.032787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.337313, 16.769182, 22.668400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.968587, 16.624344, 22.613056>,  <9.747352, 16.537441, 22.579851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.968587, 16.624344, 22.613056>,  <10.337313, 16.769182, 22.668400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.968587, 16.624344, 22.613056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197618, -0.131931, -0.971361,
		0.333474, -0.922756, 0.193172,
		-0.921815, -0.362098, -0.138358,
		9.692042, 16.515715, 22.571548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.420074, 16.232292, 22.316591>,  <10.337313, 16.769182, 22.668400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.420074, 16.232292, 22.316591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.037731, 16.296862, 22.218384>,  <9.808326, 16.335604, 22.159458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.037731, 16.296862, 22.218384>,  <10.420074, 16.232292, 22.316591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.037731, 16.296862, 22.218384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242498, -0.038483, -0.969388,
		-0.165932, -0.986134, -0.002361,
		-0.955856, 0.161426, -0.245521,
		9.750975, 16.345289, 22.144728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.202786, 15.757254, 21.788450>,  <10.420074, 16.232292, 22.316591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.202786, 15.757254, 21.788450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.925849, 16.044146, 21.756845>,  <9.759686, 16.216280, 21.737883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.925849, 16.044146, 21.756845>,  <10.202786, 15.757254, 21.788450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.925849, 16.044146, 21.756845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199294, 0.084828, -0.976261,
		-0.693501, -0.691655, -0.201670,
		-0.692343, 0.717230, -0.079014,
		9.718146, 16.259314, 21.733141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.961485, 15.629967, 21.112661>,  <10.202786, 15.757254, 21.788450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.961485, 15.629967, 21.112661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.819769, 15.992206, 21.205935>,  <9.734739, 16.209549, 21.261898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.819769, 15.992206, 21.205935>,  <9.961485, 15.629967, 21.112661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.819769, 15.992206, 21.205935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066812, 0.273233, -0.959625,
		-0.932746, -0.324406, -0.157308,
		-0.354289, 0.905596, 0.233183,
		9.713482, 16.263885, 21.275888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.381890, 15.823422, 20.608885>,  <9.961485, 15.629967, 21.112661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.381890, 15.823422, 20.608885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.583672, 16.129702, 20.768503>,  <9.704741, 16.313469, 20.864273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.583672, 16.129702, 20.768503>,  <9.381890, 15.823422, 20.608885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.583672, 16.129702, 20.768503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436622, 0.172499, -0.882953,
		-0.744909, 0.619639, -0.247302,
		0.504452, 0.765697, 0.399044,
		9.735007, 16.359411, 20.888216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.412259, 16.273264, 20.025360>,  <9.381890, 15.823422, 20.608885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.412259, 16.273264, 20.025360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.666617, 16.450560, 20.278082>,  <9.819232, 16.556936, 20.429714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.666617, 16.450560, 20.278082>,  <9.412259, 16.273264, 20.025360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.666617, 16.450560, 20.278082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455239, 0.445638, -0.770820,
		-0.623213, 0.777783, 0.081600,
		0.635895, 0.443238, 0.631805,
		9.857386, 16.583530, 20.467623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.438148, 16.878040, 19.719959>,  <9.412259, 16.273264, 20.025360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.438148, 16.878040, 19.719959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.747024, 16.879786, 19.974110>,  <9.932349, 16.880833, 20.126600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.747024, 16.879786, 19.974110>,  <9.438148, 16.878040, 19.719959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.747024, 16.879786, 19.974110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581969, 0.396487, -0.710007,
		-0.255016, 0.918030, 0.303625,
		0.772191, 0.004363, 0.635375,
		9.978681, 16.881094, 20.164722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.707874, 17.553747, 19.546526>,  <9.438148, 16.878040, 19.719959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.707874, 17.553747, 19.546526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.977130, 17.305588, 19.707518>,  <10.138683, 17.156693, 19.804113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.977130, 17.305588, 19.707518>,  <9.707874, 17.553747, 19.546526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.977130, 17.305588, 19.707518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691980, 0.336432, -0.638730,
		0.260861, 0.708462, 0.655769,
		0.673138, -0.620399, 0.402480,
		10.179071, 17.119469, 19.828262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.412086, 17.870937, 19.438768>,  <9.707874, 17.553747, 19.546526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.412086, 17.870937, 19.438768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.506012, 17.486050, 19.493895>,  <10.562368, 17.255117, 19.526970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.506012, 17.486050, 19.493895>,  <10.412086, 17.870937, 19.438768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.506012, 17.486050, 19.493895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772911, 0.098847, -0.626768,
		0.589466, 0.253696, 0.766921,
		0.234817, -0.962220, 0.137818,
		10.576457, 17.197384, 19.535240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.159191, 17.897804, 19.464329>,  <10.412086, 17.870937, 19.438768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.159191, 17.897804, 19.464329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.031491, 17.533438, 19.359785>,  <10.954871, 17.314817, 19.297060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.031491, 17.533438, 19.359785>,  <11.159191, 17.897804, 19.464329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.031491, 17.533438, 19.359785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678498, -0.027169, -0.734100,
		0.661604, -0.411691, 0.626729,
		-0.319250, -0.910918, -0.261357,
		10.935717, 17.260162, 19.281378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.754819, 17.466812, 19.327709>,  <11.159191, 17.897804, 19.464329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.754819, 17.466812, 19.327709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.463429, 17.252344, 19.157135>,  <11.288596, 17.123663, 19.054790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.463429, 17.252344, 19.157135>,  <11.754819, 17.466812, 19.327709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.463429, 17.252344, 19.157135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605358, -0.212374, -0.767097,
		0.320731, -0.816957, 0.479285,
		-0.728473, -0.536171, -0.426436,
		11.244887, 17.091494, 19.029203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.154755, 16.961266, 19.122953>,  <11.754819, 17.466812, 19.327709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.154755, 16.961266, 19.122953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.824343, 16.915730, 18.902149>,  <11.626096, 16.888409, 18.769667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.824343, 16.915730, 18.902149>,  <12.154755, 16.961266, 19.122953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.824343, 16.915730, 18.902149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547798, -0.392630, -0.738755,
		-0.132637, -0.912624, 0.386684,
		-0.826029, -0.113839, -0.552011,
		11.576534, 16.881578, 18.736546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.200051, 16.277790, 18.875418>,  <12.154755, 16.961266, 19.122953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.200051, 16.277790, 18.875418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.986775, 16.505808, 18.625376>,  <11.858809, 16.642618, 18.475351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.986775, 16.505808, 18.625376>,  <12.200051, 16.277790, 18.875418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.986775, 16.505808, 18.625376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581711, -0.289465, -0.760146,
		-0.614265, -0.768932, -0.177263,
		-0.533189, 0.570047, -0.625104,
		11.826818, 16.676823, 18.437845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.952554, 15.844167, 18.223879>,  <12.200051, 16.277790, 18.875418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.952554, 15.844167, 18.223879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.930942, 16.224733, 18.102627>,  <11.917974, 16.453074, 18.029877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.930942, 16.224733, 18.102627>,  <11.952554, 15.844167, 18.223879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.930942, 16.224733, 18.102627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585464, -0.215734, -0.781467,
		-0.808896, -0.219693, -0.545364,
		-0.054030, 0.951417, -0.303129,
		11.914733, 16.510159, 18.011688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.871521, 15.731569, 17.520330>,  <11.952554, 15.844167, 18.223879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.871521, 15.731569, 17.520330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.969413, 16.115143, 17.577677>,  <12.028148, 16.345287, 17.612085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.969413, 16.115143, 17.577677>,  <11.871521, 15.731569, 17.520330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.969413, 16.115143, 17.577677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500550, 0.001683, -0.865706,
		-0.830396, 0.283625, -0.479582,
		0.244729, 0.958934, 0.143366,
		12.042831, 16.402822, 17.620687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.744475, 15.977039, 16.809519>,  <11.871521, 15.731569, 17.520330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.744475, 15.977039, 16.809519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.996292, 16.226885, 16.994358>,  <12.147382, 16.376793, 17.105263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.996292, 16.226885, 16.994358>,  <11.744475, 15.977039, 16.809519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.996292, 16.226885, 16.994358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556980, 0.051863, -0.828905,
		-0.541711, 0.779210, -0.315248,
		0.629541, 0.624614, 0.462099,
		12.185154, 16.414268, 17.132988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.861910, 16.600719, 16.332434>,  <11.744475, 15.977039, 16.809519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.861910, 16.600719, 16.332434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.172004, 16.601839, 16.585100>,  <12.358060, 16.602510, 16.736700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.172004, 16.601839, 16.585100>,  <11.861910, 16.600719, 16.332434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.172004, 16.601839, 16.585100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629958, -0.077078, -0.772795,
		0.046526, 0.997021, -0.061516,
		0.775235, 0.002797, 0.631667,
		12.404574, 16.602678, 16.774601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.374205, 17.090015, 16.070477>,  <11.861910, 16.600719, 16.332434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.374205, 17.090015, 16.070477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.581031, 16.856684, 16.321033>,  <12.705127, 16.716684, 16.471369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.581031, 16.856684, 16.321033>,  <12.374205, 17.090015, 16.070477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.581031, 16.856684, 16.321033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743361, -0.056763, -0.666478,
		0.424331, 0.810251, 0.404273,
		0.517067, -0.583328, 0.626395,
		12.736151, 16.681684, 16.508951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.124477, 17.305275, 16.029108>,  <12.374205, 17.090015, 16.070477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.124477, 17.305275, 16.029108> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.163489, 16.945230, 16.198948>,  <13.186896, 16.729204, 16.300852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.163489, 16.945230, 16.198948>,  <13.124477, 17.305275, 16.029108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.163489, 16.945230, 16.198948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848767, -0.147554, -0.507762,
		0.519695, 0.409907, 0.749595,
		0.097529, -0.900113, 0.424599,
		13.192748, 16.675196, 16.326328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.859398, 17.196362, 16.100016>,  <13.124477, 17.305275, 16.029108>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.859398, 17.196362, 16.100016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.659870, 16.849936, 16.086708>,  <13.540154, 16.642080, 16.078724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.659870, 16.849936, 16.086708>,  <13.859398, 17.196362, 16.100016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.659870, 16.849936, 16.086708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721750, -0.393834, -0.569185,
		0.479849, -0.307934, 0.821536,
		-0.498820, -0.866067, -0.033271,
		13.510224, 16.590115, 16.076727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.385250, 16.689140, 16.151031>,  <13.859398, 17.196362, 16.100016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.385250, 16.689140, 16.151031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.050607, 16.535255, 15.995041>,  <13.849821, 16.442924, 15.901446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.050607, 16.535255, 15.995041>,  <14.385250, 16.689140, 16.151031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.050607, 16.535255, 15.995041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547259, -0.555273, -0.626243,
		0.024379, -0.737338, 0.675084,
		-0.836608, -0.384713, -0.389978,
		13.799624, 16.419842, 15.878048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.981956, 17.097605, 16.246309>,  <14.385250, 16.689140, 16.151031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.981956, 17.097605, 16.246309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.348307, 17.255726, 16.274332>,  <15.568117, 17.350599, 16.291145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.348307, 17.255726, 16.274332>,  <14.981956, 17.097605, 16.246309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.348307, 17.255726, 16.274332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127169, 0.120150, 0.984577,
		0.380790, -0.910658, 0.160313,
		0.915875, 0.395304, 0.070056,
		15.623069, 17.374317, 16.295349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.324862, 16.720333, 16.743567>,  <14.981956, 17.097605, 16.246309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.324862, 16.720333, 16.743567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.509699, 17.074953, 16.734629>,  <15.620601, 17.287725, 16.729267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.509699, 17.074953, 16.734629>,  <15.324862, 16.720333, 16.743567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.509699, 17.074953, 16.734629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120918, -0.038026, 0.991934,
		0.878550, -0.461067, -0.124771,
		0.462092, 0.886550, -0.022343,
		15.648327, 17.340918, 16.727926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.784608, 16.612604, 17.260456>,  <15.324862, 16.720333, 16.743567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.784608, 16.612604, 17.260456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.805289, 17.008892, 17.210176>,  <15.817698, 17.246664, 17.180010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.805289, 17.008892, 17.210176>,  <15.784608, 16.612604, 17.260456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.805289, 17.008892, 17.210176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173756, 0.115022, 0.978048,
		0.983431, -0.072409, -0.166196,
		0.051703, 0.990721, -0.125697,
		15.820800, 17.306108, 17.172468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.207130, 16.789627, 17.809317>,  <15.784608, 16.612604, 17.260456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.207130, 16.789627, 17.809317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.033644, 17.139599, 17.723166>,  <15.929552, 17.349583, 17.671474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.033644, 17.139599, 17.723166>,  <16.207130, 16.789627, 17.809317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.033644, 17.139599, 17.723166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283457, 0.359379, 0.889100,
		0.855303, 0.324567, -0.403873,
		-0.433716, 0.874930, -0.215378,
		15.903529, 17.402079, 17.658552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.646822, 17.331636, 18.096470>,  <16.207130, 16.789627, 17.809317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.646822, 17.331636, 18.096470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.292044, 17.502748, 18.026800>,  <16.079178, 17.605415, 17.984999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.292044, 17.502748, 18.026800>,  <16.646822, 17.331636, 18.096470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.292044, 17.502748, 18.026800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071170, 0.499173, 0.863575,
		0.456361, 0.753546, -0.473183,
		-0.886944, 0.427779, -0.174174,
		16.025961, 17.631083, 17.974548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.753292, 18.053143, 18.226452>,  <16.646822, 17.331636, 18.096470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.753292, 18.053143, 18.226452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.362993, 17.980871, 18.275892>,  <16.128815, 17.937508, 18.305557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.362993, 17.980871, 18.275892>,  <16.753292, 18.053143, 18.226452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.362993, 17.980871, 18.275892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032818, 0.437501, 0.898619,
		-0.216437, 0.880879, -0.420959,
		-0.975745, -0.180680, 0.123600,
		16.070271, 17.926668, 18.312973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.439211, 18.573286, 18.593554>,  <16.753292, 18.053143, 18.226452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.439211, 18.573286, 18.593554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.139536, 18.315351, 18.654089>,  <15.959731, 18.160591, 18.690411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.139536, 18.315351, 18.654089>,  <16.439211, 18.573286, 18.593554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.139536, 18.315351, 18.654089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243022, 0.480159, 0.842845,
		-0.616165, 0.594670, -0.516438,
		-0.749187, -0.644837, 0.151339,
		15.914780, 18.121901, 18.699492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.938780, 18.921104, 18.935299>,  <16.439211, 18.573286, 18.593554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.938780, 18.921104, 18.935299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.812226, 18.548290, 19.005964>,  <15.736294, 18.324602, 19.048363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.812226, 18.548290, 19.005964>,  <15.938780, 18.921104, 18.935299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.812226, 18.548290, 19.005964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471749, 0.316153, 0.823104,
		-0.823015, 0.177076, -0.539713,
		-0.316384, -0.932036, 0.176663,
		15.717311, 18.268679, 19.058964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.270645, 19.073690, 19.281006>,  <15.938780, 18.921104, 18.935299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.270645, 19.073690, 19.281006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.392354, 18.701689, 19.363478>,  <15.465380, 18.478487, 19.412960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.392354, 18.701689, 19.363478>,  <15.270645, 19.073690, 19.281006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.392354, 18.701689, 19.363478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539452, 0.010164, 0.841955,
		-0.785117, -0.367408, -0.498600,
		0.304273, -0.930004, 0.206179,
		15.483636, 18.422688, 19.425331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.680198, 18.643246, 19.414955>,  <15.270645, 19.073690, 19.281006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.680198, 18.643246, 19.414955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.020428, 18.526779, 19.590109>,  <15.224566, 18.456900, 19.695202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.020428, 18.526779, 19.590109>,  <14.680198, 18.643246, 19.414955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.020428, 18.526779, 19.590109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451560, 0.022293, 0.891962,
		-0.269472, -0.956412, -0.112518,
		0.850575, -0.291167, 0.437885,
		15.275600, 18.439428, 19.721474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.454385, 17.992752, 19.752560>,  <14.680198, 18.643246, 19.414955>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.454385, 17.992752, 19.752560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.781848, 18.127031, 19.938938>,  <14.978326, 18.207600, 20.050764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.781848, 18.127031, 19.938938>,  <14.454385, 17.992752, 19.752560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.781848, 18.127031, 19.938938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473382, -0.064875, 0.878465,
		0.325130, -0.939732, 0.105804,
		0.818657, 0.335701, 0.465945,
		15.027445, 18.227741, 20.078722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.666787, 17.510136, 20.310806>,  <14.454385, 17.992752, 19.752560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.666787, 17.510136, 20.310806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.813789, 17.864990, 20.422466>,  <14.901991, 18.077904, 20.489462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.813789, 17.864990, 20.422466>,  <14.666787, 17.510136, 20.310806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.813789, 17.864990, 20.422466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327370, -0.157547, 0.931669,
		0.870499, -0.433779, 0.232524,
		0.367505, 0.887139, 0.279151,
		14.924041, 18.131132, 20.506212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.138317, 17.407085, 20.864809>,  <14.666787, 17.510136, 20.310806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.138317, 17.407085, 20.864809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.956533, 17.763378, 20.861742>,  <14.847463, 17.977154, 20.859901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.956533, 17.763378, 20.861742>,  <15.138317, 17.407085, 20.864809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.956533, 17.763378, 20.861742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476468, -0.235805, 0.846979,
		0.752625, 0.388573, 0.531570,
		-0.454460, 0.890734, -0.007670,
		14.820195, 18.030598, 20.859442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.103860, 17.592936, 21.596840>,  <15.138317, 17.407085, 20.864809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.103860, 17.592936, 21.596840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.882908, 17.888542, 21.442575>,  <14.750337, 18.065907, 21.350018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.882908, 17.888542, 21.442575>,  <15.103860, 17.592936, 21.596840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.882908, 17.888542, 21.442575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631523, -0.069017, 0.772279,
		0.544108, 0.670145, 0.504828,
		-0.552381, 0.739014, -0.385660,
		14.717194, 18.110247, 21.326878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.960160, 18.178106, 22.062305>,  <15.103860, 17.592936, 21.596840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.960160, 18.178106, 22.062305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.645152, 18.168770, 21.815966>,  <14.456147, 18.163168, 21.668161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.645152, 18.168770, 21.815966>,  <14.960160, 18.178106, 22.062305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.645152, 18.168770, 21.815966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612708, -0.077920, 0.786459,
		-0.066344, 0.996686, 0.047061,
		-0.787520, -0.023342, -0.615848,
		14.408896, 18.161768, 21.631212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.495567, 18.695606, 22.352222>,  <14.960160, 18.178106, 22.062305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.495567, 18.695606, 22.352222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.265788, 18.484056, 22.102325>,  <14.127920, 18.357126, 21.952387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.265788, 18.484056, 22.102325>,  <14.495567, 18.695606, 22.352222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.265788, 18.484056, 22.102325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745646, 0.023251, 0.665937,
		-0.337671, 0.848382, -0.407708,
		-0.574448, -0.528873, -0.624741,
		14.093453, 18.325394, 21.914904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.844581, 19.073311, 22.352253>,  <14.495567, 18.695606, 22.352222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.844581, 19.073311, 22.352253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.769781, 18.707119, 22.209745>,  <13.724901, 18.487404, 22.124241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.769781, 18.707119, 22.209745>,  <13.844581, 19.073311, 22.352253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.769781, 18.707119, 22.209745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820786, -0.053664, 0.568710,
		-0.539761, 0.398769, -0.741378,
		-0.186999, -0.915480, -0.356269,
		13.713681, 18.432474, 22.102865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.131108, 19.066576, 22.215332>,  <13.844581, 19.073311, 22.352253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.131108, 19.066576, 22.215332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.236275, 18.683752, 22.264177>,  <13.299375, 18.454058, 22.293484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.236275, 18.683752, 22.264177>,  <13.131108, 19.066576, 22.215332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.236275, 18.683752, 22.264177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753078, -0.124449, 0.646055,
		-0.603117, -0.261817, -0.753460,
		0.262915, -0.957060, 0.122111,
		13.315149, 18.396633, 22.300810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<12.464416, 18.756979, 22.245493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.719902, 18.486599, 22.392534>,  <12.873194, 18.324371, 22.480759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.719902, 18.486599, 22.392534>,  <12.464416, 18.756979, 22.245493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.719902, 18.486599, 22.392534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730946, -0.383813, 0.564275,
		-0.240332, -0.629109, -0.739231,
		0.638717, -0.675951, 0.367602,
		12.911517, 18.283813, 22.502815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.139511, 18.108521, 22.284479>,  <12.464416, 18.756979, 22.245493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.139511, 18.108521, 22.284479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.404074, 18.028700, 22.573677>,  <12.562811, 17.980808, 22.747196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.404074, 18.028700, 22.573677>,  <12.139511, 18.108521, 22.284479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.404074, 18.028700, 22.573677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740540, -0.326594, 0.587313,
		0.118927, -0.923859, -0.363787,
		0.661406, -0.199551, 0.722995,
		12.602495, 17.968834, 22.790575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.945545, 17.472084, 22.640524>,  <12.139511, 18.108521, 22.284479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.945545, 17.472084, 22.640524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.192198, 17.656534, 22.895750>,  <12.340190, 17.767204, 23.048885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.192198, 17.656534, 22.895750>,  <11.945545, 17.472084, 22.640524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.192198, 17.656534, 22.895750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604399, -0.242049, 0.759022,
		0.504447, -0.853684, 0.129447,
		0.616632, 0.461124, 0.638067,
		12.377188, 17.794870, 23.087170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.000802, 16.977386, 23.108339>,  <11.945545, 17.472084, 22.640524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.000802, 16.977386, 23.108339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.100650, 17.321487, 23.286173>,  <12.160559, 17.527948, 23.392874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.100650, 17.321487, 23.286173>,  <12.000802, 16.977386, 23.108339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.100650, 17.321487, 23.286173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615494, -0.213492, 0.758676,
		0.747568, -0.463019, 0.476188,
		0.249619, 0.860252, 0.444585,
		12.175535, 17.579563, 23.419548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.108473, 16.759697, 23.740398>,  <12.000802, 16.977386, 23.108339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.108473, 16.759697, 23.740398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.104551, 17.157413, 23.782888>,  <12.102199, 17.396044, 23.808382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.104551, 17.157413, 23.782888>,  <12.108473, 16.759697, 23.740398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.104551, 17.157413, 23.782888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384717, -0.101805, 0.917403,
		0.922983, -0.031874, 0.383519,
		-0.009803, 0.994294, 0.106227,
		12.101610, 17.455702, 23.814756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.560005, 17.053099, 24.399824>,  <12.108473, 16.759697, 23.740398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.560005, 17.053099, 24.399824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.269735, 17.308140, 24.296398>,  <12.095573, 17.461164, 24.234343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.269735, 17.308140, 24.296398>,  <12.560005, 17.053099, 24.399824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.269735, 17.308140, 24.296398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279455, 0.070272, 0.957584,
		0.628729, 0.767153, 0.127186,
		-0.725676, 0.637603, -0.258567,
		12.052032, 17.499420, 24.218828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.572119, 17.657457, 24.934141>,  <12.560005, 17.053099, 24.399824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.572119, 17.657457, 24.934141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.205448, 17.678795, 24.775719>,  <11.985446, 17.691597, 24.680666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.205448, 17.678795, 24.775719>,  <12.572119, 17.657457, 24.934141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.205448, 17.678795, 24.775719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369937, 0.261610, 0.891463,
		0.151164, 0.963699, -0.220078,
		-0.916676, 0.053342, -0.396054,
		11.930446, 17.694798, 24.656902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.247924, 18.058050, 25.385986>,  <12.572119, 17.657457, 24.934141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.247924, 18.058050, 25.385986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.944181, 17.886499, 25.190254>,  <11.761936, 17.783569, 25.072815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.944181, 17.886499, 25.190254>,  <12.247924, 18.058050, 25.385986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.944181, 17.886499, 25.190254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547427, 0.014592, 0.836726,
		-0.351712, 0.903245, -0.245859,
		-0.759357, -0.428877, -0.489328,
		11.716374, 17.757835, 25.043455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.751856, 18.482748, 25.451214>,  <12.247924, 18.058050, 25.385986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.751856, 18.482748, 25.451214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.571114, 18.129028, 25.404158>,  <11.462668, 17.916796, 25.375923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.571114, 18.129028, 25.404158>,  <11.751856, 18.482748, 25.451214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.571114, 18.129028, 25.404158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412864, 0.090396, 0.906296,
		-0.790803, 0.458086, -0.405942,
		-0.451857, -0.884300, -0.117642,
		11.435556, 17.863739, 25.368866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.963228, 18.516794, 25.710484>,  <11.751856, 18.482748, 25.451214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.963228, 18.516794, 25.710484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.082675, 18.135614, 25.731335>,  <11.154343, 17.906906, 25.743845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.082675, 18.135614, 25.731335>,  <10.963228, 18.516794, 25.710484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.082675, 18.135614, 25.731335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295497, -0.040384, 0.954490,
		-0.907474, -0.300430, -0.293653,
		0.298616, -0.952948, 0.052129,
		11.172260, 17.849730, 25.746973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.498469, 18.278202, 26.136257>,  <10.963228, 18.516794, 25.710484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.498469, 18.278202, 26.136257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.795036, 18.010059, 26.124084>,  <10.972977, 17.849174, 26.116781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.795036, 18.010059, 26.124084>,  <10.498469, 18.278202, 26.136257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.795036, 18.010059, 26.124084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193361, -0.256845, 0.946912,
		-0.642583, -0.696172, -0.320049,
		0.741417, -0.670355, -0.030432,
		11.017462, 17.808952, 26.114954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.120605, 17.713202, 26.330858>,  <10.498469, 18.278202, 26.136257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.120605, 17.713202, 26.330858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.501649, 17.634346, 26.423525>,  <10.730275, 17.587032, 26.479124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.501649, 17.634346, 26.423525>,  <10.120605, 17.713202, 26.330858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.501649, 17.634346, 26.423525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291167, -0.370471, 0.882028,
		-0.088056, -0.907683, -0.410315,
		0.952611, -0.197138, 0.231665,
		10.787432, 17.575205, 26.493025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.144939, 16.987755, 26.629162>,  <10.120605, 17.713202, 26.330858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.144939, 16.987755, 26.629162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.438397, 17.229755, 26.752928>,  <10.614472, 17.374956, 26.827187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.438397, 17.229755, 26.752928>,  <10.144939, 16.987755, 26.629162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.438397, 17.229755, 26.752928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354280, -0.048014, 0.933906,
		0.579872, -0.794774, 0.179115,
		0.733644, 0.605003, 0.309415,
		10.658491, 17.411257, 26.845753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.180016, 16.735985, 27.231216>,  <10.144939, 16.987755, 26.629162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.180016, 16.735985, 27.231216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.410867, 17.059187, 27.278639>,  <10.549377, 17.253107, 27.307093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.410867, 17.059187, 27.278639>,  <10.180016, 16.735985, 27.231216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.410867, 17.059187, 27.278639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155750, -0.033605, 0.987225,
		0.801665, -0.588219, 0.106452,
		0.577127, 0.808003, 0.118555,
		10.584004, 17.301588, 27.314205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.375384, 16.529127, 27.808445>,  <10.180016, 16.735985, 27.231216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.375384, 16.529127, 27.808445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.492537, 16.911505, 27.800510>,  <10.562828, 17.140930, 27.795750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.492537, 16.911505, 27.800510>,  <10.375384, 16.529127, 27.808445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.492537, 16.911505, 27.800510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060204, 0.039142, 0.997418,
		0.954252, -0.290930, 0.069016,
		0.292881, 0.955943, -0.019836,
		10.580400, 17.198288, 27.794559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.928016, 16.674633, 28.371872>,  <10.375384, 16.529127, 27.808445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.928016, 16.674633, 28.371872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.726142, 17.007677, 28.280613>,  <10.605018, 17.207504, 28.225859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.726142, 17.007677, 28.280613>,  <10.928016, 16.674633, 28.371872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.726142, 17.007677, 28.280613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138799, 0.182576, 0.973345,
		0.852073, 0.522899, 0.023423,
		-0.504685, 0.832612, -0.228146,
		10.574737, 17.257462, 28.212170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.176617, 17.145868, 28.877289>,  <10.928016, 16.674633, 28.371872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.176617, 17.145868, 28.877289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.841933, 17.304255, 28.725960>,  <10.641123, 17.399286, 28.635162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.841933, 17.304255, 28.725960>,  <11.176617, 17.145868, 28.877289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.841933, 17.304255, 28.725960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384606, 0.066923, 0.920651,
		0.389867, 0.915822, 0.096296,
		-0.836709, 0.395968, -0.378322,
		10.590920, 17.423044, 28.612463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.902515, 17.438820, 29.453814>,  <11.176617, 17.145868, 28.877289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.902515, 17.438820, 29.453814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.592369, 17.430367, 29.201349>,  <10.406281, 17.425295, 29.049871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.592369, 17.430367, 29.201349>,  <10.902515, 17.438820, 29.453814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.592369, 17.430367, 29.201349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627401, -0.088092, 0.773698,
		-0.071952, 0.995888, 0.055043,
		-0.775365, -0.021135, -0.631159,
		10.359759, 17.424026, 29.012001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.393588, 17.769098, 29.843924>,  <10.902515, 17.438820, 29.453814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.393588, 17.769098, 29.843924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.225572, 17.551760, 29.553175>,  <10.124762, 17.421356, 29.378725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.225572, 17.551760, 29.553175>,  <10.393588, 17.769098, 29.843924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.225572, 17.551760, 29.553175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704801, -0.309245, 0.638453,
		-0.571682, 0.780476, -0.253055,
		-0.420041, -0.543346, -0.726871,
		10.099559, 17.388756, 29.335114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.706998, 17.896366, 29.847589>,  <10.393588, 17.769098, 29.843924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.706998, 17.896366, 29.847589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.693418, 17.560867, 29.630205>,  <9.685269, 17.359568, 29.499775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.693418, 17.560867, 29.630205>,  <9.706998, 17.896366, 29.847589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.693418, 17.560867, 29.630205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715762, -0.359104, 0.598940,
		-0.697518, 0.409322, -0.588152,
		-0.033952, -0.838749, -0.543459,
		9.683232, 17.309242, 29.467167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.966463, 17.741045, 29.863134>,  <9.706998, 17.896366, 29.847589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.966463, 17.741045, 29.863134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.153652, 17.397364, 29.780409>,  <9.265965, 17.191154, 29.730774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.153652, 17.397364, 29.780409>,  <8.966463, 17.741045, 29.863134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.153652, 17.397364, 29.780409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621223, -0.486268, 0.614512,
		-0.628558, -0.159097, -0.761317,
		0.467971, -0.859204, -0.206813,
		9.294044, 17.139603, 29.718365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.474777, 17.221277, 29.691290>,  <8.966463, 17.741045, 29.863134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.474777, 17.221277, 29.691290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.791527, 17.009712, 29.813396>,  <8.981577, 16.882772, 29.886660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.791527, 17.009712, 29.813396>,  <8.474777, 17.221277, 29.691290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.791527, 17.009712, 29.813396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577517, -0.486092, 0.655887,
		-0.198520, -0.695676, -0.690380,
		0.791873, -0.528913, 0.305266,
		9.029089, 16.851038, 29.904976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.106944, 16.726599, 30.153999>,  <8.474777, 17.221277, 29.691290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.106944, 16.726599, 30.153999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.025712, 16.968077, 30.462366>,  <7.976973, 17.112963, 30.647387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.025712, 16.968077, 30.462366>,  <8.106944, 16.726599, 30.153999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.025712, 16.968077, 30.462366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145715, 0.759923, -0.633470,
		-0.968259, -0.240980, -0.066359,
		-0.203081, 0.603693, 0.770917,
		7.964787, 17.149185, 30.693642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.410459, 16.545090, 29.970505>,  <8.106944, 16.726599, 30.153999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.410459, 16.545090, 29.970505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.158373, 16.260763, 30.095449>,  <7.007122, 16.090168, 30.170416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.158373, 16.260763, 30.095449>,  <7.410459, 16.545090, 29.970505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.158373, 16.260763, 30.095449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500428, -0.679468, -0.536559,
		0.593636, -0.181831, 0.783922,
		-0.630213, -0.710817, 0.312363,
		6.969309, 16.047518, 30.189159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.768532, 15.881806, 30.297501>,  <7.410459, 16.545090, 29.970505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.768532, 15.881806, 30.297501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.451262, 15.786186, 30.073456>,  <7.260899, 15.728814, 29.939028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.451262, 15.786186, 30.073456>,  <7.768532, 15.881806, 30.297501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.451262, 15.786186, 30.073456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569433, -0.617206, -0.542957,
		-0.215912, -0.749608, 0.625676,
		-0.793176, -0.239050, -0.560113,
		7.213309, 15.714471, 29.905422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.800402, 15.163160, 30.167303>,  <7.768532, 15.881806, 30.297501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.800402, 15.163160, 30.167303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.566648, 15.295726, 29.871017>,  <7.426396, 15.375265, 29.693245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.566648, 15.295726, 29.871017>,  <7.800402, 15.163160, 30.167303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.566648, 15.295726, 29.871017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464862, -0.611457, -0.640331,
		-0.665131, -0.718530, 0.203264,
		-0.584384, 0.331414, -0.740716,
		7.391334, 15.395150, 29.648802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.528112, 14.467364, 29.852945>,  <7.800402, 15.163160, 30.167303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.528112, 14.467364, 29.852945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.500871, 14.783835, 29.609833>,  <7.484526, 14.973719, 29.463964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.500871, 14.783835, 29.609833>,  <7.528112, 14.467364, 29.852945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.500871, 14.783835, 29.609833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520121, -0.491704, -0.698356,
		-0.851373, -0.363681, -0.378022,
		-0.068104, 0.791178, -0.607782,
		7.480440, 15.021189, 29.427498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.859086, 14.236435, 29.290970>,  <7.528112, 14.467364, 29.852945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.859086, 14.236435, 29.290970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.793127, 14.608677, 29.160259>,  <7.753551, 14.832023, 29.081833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.793127, 14.608677, 29.160259>,  <7.859086, 14.236435, 29.290970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.793127, 14.608677, 29.160259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595637, -0.170116, -0.785033,
		-0.786146, -0.324089, -0.526251,
		-0.164897, 0.930606, -0.326776,
		7.743658, 14.887858, 29.062227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.583195, 14.166884, 28.575310>,  <7.859086, 14.236435, 29.290970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.583195, 14.166884, 28.575310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.732302, 14.537137, 28.601391>,  <7.821766, 14.759289, 28.617039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.732302, 14.537137, 28.601391>,  <7.583195, 14.166884, 28.575310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.732302, 14.537137, 28.601391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442460, -0.115542, -0.889314,
		-0.815643, 0.360357, -0.452625,
		0.372768, 0.925631, 0.065202,
		7.844132, 14.814826, 28.620951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.610790, 14.362161, 27.877005>,  <7.583195, 14.166884, 28.575310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.610790, 14.362161, 27.877005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.833804, 14.641188, 28.057028>,  <7.967613, 14.808604, 28.165043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.833804, 14.641188, 28.057028>,  <7.610790, 14.362161, 27.877005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.833804, 14.641188, 28.057028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442735, 0.208751, -0.872014,
		-0.702239, 0.685436, -0.192452,
		0.557536, 0.697568, 0.450059,
		8.001064, 14.850458, 28.192045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.702978, 14.834708, 27.303377>,  <7.610790, 14.362161, 27.877005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.702978, 14.834708, 27.303377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.971079, 14.922453, 27.586966>,  <8.131941, 14.975100, 27.757118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.971079, 14.922453, 27.586966>,  <7.702978, 14.834708, 27.303377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.971079, 14.922453, 27.586966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672687, 0.223916, -0.705233,
		-0.313451, 0.949601, 0.002520,
		0.670254, 0.219361, 0.708971,
		8.172155, 14.988261, 27.799658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.960216, 15.589147, 27.214916>,  <7.702978, 14.834708, 27.303377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.960216, 15.589147, 27.214916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.235810, 15.378782, 27.414402>,  <8.401167, 15.252563, 27.534094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.235810, 15.378782, 27.414402>,  <7.960216, 15.589147, 27.214916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.235810, 15.378782, 27.414402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697771, 0.295238, -0.652649,
		0.195995, 0.797655, 0.570379,
		0.688986, -0.525910, 0.498715,
		8.442506, 15.221009, 27.564016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.507331, 16.093218, 27.491552>,  <7.960216, 15.589147, 27.214916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.507331, 16.093218, 27.491552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.653402, 15.724529, 27.439281>,  <8.741045, 15.503317, 27.407919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.653402, 15.724529, 27.439281>,  <8.507331, 16.093218, 27.491552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.653402, 15.724529, 27.439281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750651, 0.374566, -0.544264,
		0.550606, 0.100661, 0.828674,
		0.365179, -0.921720, -0.130678,
		8.762956, 15.448013, 27.400078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.260313, 16.118679, 27.564463>,  <8.507331, 16.093218, 27.491552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.260313, 16.118679, 27.564463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.194384, 15.765798, 27.388033>,  <9.154826, 15.554069, 27.282175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.194384, 15.765798, 27.388033>,  <9.260313, 16.118679, 27.564463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.194384, 15.765798, 27.388033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775323, 0.160538, -0.610821,
		0.609679, -0.442653, 0.657533,
		-0.164823, -0.882205, -0.441076,
		9.144937, 15.501136, 27.255711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.961864, 15.862423, 27.378738>,  <9.260313, 16.118679, 27.564463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.961864, 15.862423, 27.378738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.693641, 15.670813, 27.152151>,  <9.532706, 15.555846, 27.016199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.693641, 15.670813, 27.152151>,  <9.961864, 15.862423, 27.378738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.693641, 15.670813, 27.152151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598534, 0.101795, -0.794603,
		0.438299, -0.871878, 0.218454,
		-0.670560, -0.479026, -0.566466,
		9.492473, 15.527104, 26.982212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.461191, 15.574357, 26.791378>,  <9.961864, 15.862423, 27.378738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.461191, 15.574357, 26.791378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.082685, 15.544667, 26.665474>,  <9.855582, 15.526854, 26.589931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.082685, 15.544667, 26.665474>,  <10.461191, 15.574357, 26.791378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.082685, 15.544667, 26.665474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297959, 0.178250, -0.937788,
		0.125711, -0.981182, -0.146557,
		-0.946264, -0.074222, -0.314760,
		9.798806, 15.522400, 26.571045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.480868, 15.201201, 26.041336>,  <10.461191, 15.574357, 26.791378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.480868, 15.201201, 26.041336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.137093, 15.400803, 26.085806>,  <9.930827, 15.520563, 26.112488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.137093, 15.400803, 26.085806>,  <10.480868, 15.201201, 26.041336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.137093, 15.400803, 26.085806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000604, 0.218449, -0.975848,
		-0.511236, -0.838616, -0.188045,
		-0.859440, 0.499002, 0.111173,
		9.879260, 15.550503, 26.119158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.058168, 14.933869, 25.512074>,  <10.480868, 15.201201, 26.041336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.058168, 14.933869, 25.512074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.943069, 15.304776, 25.607885>,  <9.874010, 15.527321, 25.665373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.943069, 15.304776, 25.607885>,  <10.058168, 14.933869, 25.512074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.943069, 15.304776, 25.607885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102329, 0.218909, -0.970365,
		-0.952224, -0.303731, 0.031895,
		-0.287747, 0.927268, 0.239531,
		9.856746, 15.582956, 25.679745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.520319, 15.044438, 25.118851>,  <10.058168, 14.933869, 25.512074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.520319, 15.044438, 25.118851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.598908, 15.427379, 25.203590>,  <9.646062, 15.657143, 25.254435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.598908, 15.427379, 25.203590>,  <9.520319, 15.044438, 25.118851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.598908, 15.427379, 25.203590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266170, 0.260021, -0.928193,
		-0.943690, 0.125978, 0.305906,
		0.196474, 0.957350, 0.211848,
		9.657850, 15.714583, 25.267145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.930634, 15.364383, 24.985296>,  <9.520319, 15.044438, 25.118851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.930634, 15.364383, 24.985296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.207741, 15.650913, 24.951954>,  <9.374005, 15.822831, 24.931948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.207741, 15.650913, 24.951954>,  <8.930634, 15.364383, 24.985296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.207741, 15.650913, 24.951954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291855, 0.172788, -0.940726,
		-0.659463, 0.676034, 0.328766,
		0.692769, 0.716326, -0.083357,
		9.415571, 15.865811, 24.926947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.571411, 15.846895, 24.581348>,  <8.930634, 15.364383, 24.985296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.571411, 15.846895, 24.581348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.954781, 15.960895, 24.575668>,  <9.184802, 16.029295, 24.572260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.954781, 15.960895, 24.575668>,  <8.571411, 15.846895, 24.581348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.954781, 15.960895, 24.575668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138613, 0.421496, -0.896174,
		-0.249424, 0.860881, 0.443476,
		0.958423, 0.284999, -0.014198,
		9.242308, 16.046394, 24.571409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.555388, 16.590517, 24.400097>,  <8.571411, 15.846895, 24.581348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.555388, 16.590517, 24.400097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.907719, 16.421886, 24.313917>,  <9.119117, 16.320707, 24.262209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.907719, 16.421886, 24.313917>,  <8.555388, 16.590517, 24.400097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.907719, 16.421886, 24.313917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084938, 0.306974, -0.947920,
		0.465760, 0.853252, 0.234582,
		0.880825, -0.421578, -0.215450,
		9.171967, 16.295412, 24.249283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.903645, 17.217855, 24.006218>,  <8.555388, 16.590517, 24.400097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.903645, 17.217855, 24.006218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.108622, 16.880400, 23.942122>,  <9.231608, 16.677927, 23.903664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.108622, 16.880400, 23.942122>,  <8.903645, 17.217855, 24.006218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.108622, 16.880400, 23.942122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101152, 0.244606, -0.964332,
		0.852743, 0.477957, 0.210682,
		0.512444, -0.843638, -0.160239,
		9.262355, 16.627308, 23.894051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.486329, 17.410160, 23.522335>,  <8.903645, 17.217855, 24.006218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.486329, 17.410160, 23.522335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.475000, 17.013247, 23.474049>,  <9.468203, 16.775099, 23.445078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.475000, 17.013247, 23.474049>,  <9.486329, 17.410160, 23.522335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.475000, 17.013247, 23.474049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274429, 0.108403, -0.955478,
		0.961190, -0.060189, 0.269241,
		-0.028322, -0.992283, -0.120714,
		9.466504, 16.715561, 23.437834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<22.471336, 28.016687, 13.315061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.667336, 27.762783, 13.554051>,  <22.784935, 27.610441, 13.697446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.667336, 27.762783, 13.554051>,  <22.471336, 28.016687, 13.315061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.667336, 27.762783, 13.554051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077335, -0.714349, -0.695503,
		0.868286, 0.294590, -0.399120,
		0.489999, -0.634761, 0.597477,
		22.814335, 27.572355, 13.733294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.128700, 27.777288, 13.068217>,  <22.471336, 28.016687, 13.315061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.128700, 27.777288, 13.068217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.968426, 27.499554, 13.307331>,  <22.872261, 27.332912, 13.450799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.968426, 27.499554, 13.307331>,  <23.128700, 27.777288, 13.068217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.968426, 27.499554, 13.307331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097398, -0.616472, -0.781330,
		0.911025, -0.371289, 0.179383,
		-0.400684, -0.694339, 0.597784,
		22.848221, 27.291252, 13.486667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.360312, 27.084959, 12.864050>,  <23.128700, 27.777288, 13.068217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.360312, 27.084959, 12.864050> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.027540, 27.002741, 13.070213>,  <22.827877, 26.953409, 13.193912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.027540, 27.002741, 13.070213>,  <23.360312, 27.084959, 12.864050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.027540, 27.002741, 13.070213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235229, -0.710624, -0.663084,
		0.502557, -0.672877, 0.542837,
		-0.831928, -0.205547, 0.515409,
		22.777962, 26.941076, 13.224836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.389692, 26.457569, 13.128189>,  <23.360312, 27.084959, 12.864050>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.389692, 26.457569, 13.128189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.005297, 26.542896, 13.057770>,  <22.774658, 26.594093, 13.015518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.005297, 26.542896, 13.057770>,  <23.389692, 26.457569, 13.128189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.005297, 26.542896, 13.057770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034796, -0.724702, -0.688184,
		-0.274386, -0.655212, 0.703854,
		-0.960990, 0.213319, -0.176049,
		22.716999, 26.606892, 13.004955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.962555, 25.803461, 13.147370>,  <23.389692, 26.457569, 13.128189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.962555, 25.803461, 13.147370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.767017, 26.075533, 12.928869>,  <22.649694, 26.238775, 12.797769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.767017, 26.075533, 12.928869>,  <22.962555, 25.803461, 13.147370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.767017, 26.075533, 12.928869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217060, -0.701311, -0.679005,
		-0.844937, -0.213357, 0.490470,
		-0.488842, 0.680178, -0.546252,
		22.620365, 26.279587, 12.764994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.221497, 25.639870, 12.978839>,  <22.962555, 25.803461, 13.147370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.221497, 25.639870, 12.978839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.369070, 25.854652, 12.675374>,  <22.457613, 25.983522, 12.493296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.369070, 25.854652, 12.675374>,  <22.221497, 25.639870, 12.978839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.369070, 25.854652, 12.675374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068357, -0.798357, -0.598293,
		-0.926939, 0.272589, -0.257835,
		0.368932, 0.536956, -0.758661,
		22.479750, 26.015739, 12.447776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.783962, 25.674698, 12.354967>,  <22.221497, 25.639870, 12.978839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.783962, 25.674698, 12.354967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.162825, 25.660006, 12.227504>,  <22.390142, 25.651190, 12.151026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.162825, 25.660006, 12.227504>,  <21.783962, 25.674698, 12.354967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.162825, 25.660006, 12.227504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203277, -0.837210, -0.507698,
		-0.248135, 0.545646, -0.800437,
		0.947158, -0.036733, -0.318658,
		22.446972, 25.648985, 12.131907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.830797, 25.809898, 11.671749>,  <21.783962, 25.674698, 12.354967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.830797, 25.809898, 11.671749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.167942, 25.611158, 11.754432>,  <22.370228, 25.491915, 11.804041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.167942, 25.611158, 11.754432>,  <21.830797, 25.809898, 11.671749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.167942, 25.611158, 11.754432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291089, -0.744019, -0.601418,
		0.452606, 0.446742, -0.771731,
		0.842861, -0.496848, 0.206706,
		22.420801, 25.462105, 11.816443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.950598, 25.453594, 11.082629>,  <21.830797, 25.809898, 11.671749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.950598, 25.453594, 11.082629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.162071, 25.267275, 11.366467>,  <22.288956, 25.155483, 11.536769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.162071, 25.267275, 11.366467>,  <21.950598, 25.453594, 11.082629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.162071, 25.267275, 11.366467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249565, -0.884329, -0.394563,
		0.811301, 0.031510, -0.583779,
		0.528685, -0.465800, 0.709593,
		22.320677, 25.127535, 11.579345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.405972, 24.993034, 10.755914>,  <21.950598, 25.453594, 11.082629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.405972, 24.993034, 10.755914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.287081, 24.891504, 11.124094>,  <22.215746, 24.830585, 11.345002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.287081, 24.891504, 11.124094>,  <22.405972, 24.993034, 10.755914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.287081, 24.891504, 11.124094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281051, -0.898050, -0.338403,
		0.912505, -0.359276, 0.195588,
		-0.297228, -0.253824, 0.920450,
		22.197912, 24.815357, 11.400229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.061502, 24.632563, 10.843304>,  <22.405972, 24.993034, 10.755914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.061502, 24.632563, 10.843304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.924902, 24.575401, 11.214886>,  <22.842941, 24.541105, 11.437835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.924902, 24.575401, 11.214886>,  <23.061502, 24.632563, 10.843304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.924902, 24.575401, 11.214886> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079106, -0.980497, -0.179911,
		0.936547, -0.134926, 0.323535,
		-0.341500, -0.142902, 0.928955,
		22.822453, 24.532532, 11.493572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.601542, 24.145905, 11.127974>,  <23.061502, 24.632563, 10.843304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.601542, 24.145905, 11.127974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.264610, 24.157154, 11.343266>,  <23.062452, 24.163904, 11.472443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.264610, 24.157154, 11.343266>,  <23.601542, 24.145905, 11.127974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.264610, 24.157154, 11.343266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033312, -0.999445, 0.000093,
		0.537936, -0.017851, 0.842797,
		-0.842327, 0.028125, 0.538232,
		23.011911, 24.165592, 11.504736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.668386, 23.553923, 11.541867>,  <23.601542, 24.145905, 11.127974>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.668386, 23.553923, 11.541867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.278261, 23.642056, 11.535910>,  <23.044186, 23.694935, 11.532335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.278261, 23.642056, 11.535910>,  <23.668386, 23.553923, 11.541867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.278261, 23.642056, 11.535910> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220691, -0.974888, 0.029795,
		-0.007956, 0.032347, 0.999445,
		-0.975311, 0.220332, -0.014895,
		22.985668, 23.708155, 11.531441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.395428, 23.100576, 12.088950>,  <23.668386, 23.553923, 11.541867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.395428, 23.100576, 12.088950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.078325, 23.204912, 11.868587>,  <22.888063, 23.267513, 11.736370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.078325, 23.204912, 11.868587>,  <23.395428, 23.100576, 12.088950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.078325, 23.204912, 11.868587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389758, -0.911817, 0.129141,
		-0.468642, 0.317098, 0.824514,
		-0.792757, 0.260840, -0.550907,
		22.840498, 23.283165, 11.703315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.647114, 23.098154, 12.468512>,  <23.395428, 23.100576, 12.088950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.647114, 23.098154, 12.468512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.636665, 23.023607, 12.075659>,  <22.630396, 22.978880, 11.839947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.636665, 23.023607, 12.075659>,  <22.647114, 23.098154, 12.468512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.636665, 23.023607, 12.075659> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532474, -0.828900, 0.171453,
		-0.846043, 0.527439, -0.077584,
		-0.026122, -0.186368, -0.982133,
		22.628828, 22.967697, 11.781019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.957684, 22.836561, 12.231381>,  <22.647114, 23.098154, 12.468512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.957684, 22.836561, 12.231381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.154697, 22.722118, 11.902613>,  <22.272905, 22.653454, 11.705352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.154697, 22.722118, 11.902613>,  <21.957684, 22.836561, 12.231381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.154697, 22.722118, 11.902613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593070, -0.801519, -0.076393,
		-0.636929, 0.525083, -0.564455,
		0.492534, -0.286105, -0.821921,
		22.302458, 22.636288, 11.656036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.412979, 22.631763, 11.809209>,  <21.957684, 22.836561, 12.231381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.412979, 22.631763, 11.809209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.737070, 22.466890, 11.642530>,  <21.931524, 22.367968, 11.542523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.737070, 22.466890, 11.642530>,  <21.412979, 22.631763, 11.809209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.737070, 22.466890, 11.642530> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529822, -0.819082, -0.219986,
		-0.250634, 0.399013, -0.882027,
		0.810229, -0.412182, -0.416696,
		21.980139, 22.343235, 11.517522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.182724, 22.281384, 11.212435>,  <21.412979, 22.631763, 11.809209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.182724, 22.281384, 11.212435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.535778, 22.109602, 11.288877>,  <21.747610, 22.006533, 11.334743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.535778, 22.109602, 11.288877>,  <21.182724, 22.281384, 11.212435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.535778, 22.109602, 11.288877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433835, -0.900759, -0.020499,
		0.180943, -0.064816, -0.981355,
		0.882636, -0.429456, 0.191106,
		21.800570, 21.980764, 11.346210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.393211, 21.747904, 10.687859>,  <21.182724, 22.281384, 11.212435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.393211, 21.747904, 10.687859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.586441, 21.662203, 11.027443>,  <21.702379, 21.610783, 11.231194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.586441, 21.662203, 11.027443>,  <21.393211, 21.747904, 10.687859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.586441, 21.662203, 11.027443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485089, -0.872684, 0.055786,
		0.728922, -0.438770, -0.525503,
		0.483075, -0.214252, 0.848961,
		21.731363, 21.597927, 11.282131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.588293, 21.006239, 10.569709>,  <21.393211, 21.747904, 10.687859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.588293, 21.006239, 10.569709> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.616993, 21.067642, 10.963924>,  <21.634212, 21.104485, 11.200454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.616993, 21.067642, 10.963924>,  <21.588293, 21.006239, 10.569709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.616993, 21.067642, 10.963924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278524, -0.945696, 0.167579,
		0.957746, -0.286520, -0.025098,
		0.071750, 0.153508, 0.985539,
		21.638517, 21.113695, 11.259586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.606247, 20.240145, 10.917852>,  <21.588293, 21.006239, 10.569709>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.606247, 20.240145, 10.917852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.543451, 20.472635, 11.237235>,  <21.505774, 20.612129, 11.428864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.543451, 20.472635, 11.237235>,  <21.606247, 20.240145, 10.917852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.543451, 20.472635, 11.237235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511814, -0.739321, 0.437551,
		0.844631, -0.339971, 0.413543,
		-0.156987, 0.581226, 0.798455,
		21.496355, 20.647003, 11.476771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.916552, 19.877510, 11.468770>,  <21.606247, 20.240145, 10.917852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.916552, 19.877510, 11.468770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.653341, 20.126249, 11.638620>,  <21.495415, 20.275494, 11.740531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.653341, 20.126249, 11.638620>,  <21.916552, 19.877510, 11.468770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.653341, 20.126249, 11.638620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316673, -0.740157, 0.593199,
		0.683171, 0.255871, 0.683964,
		-0.658024, 0.621849, 0.424627,
		21.455935, 20.312803, 11.766008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.988714, 19.628855, 12.111282>,  <21.916552, 19.877510, 11.468770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.988714, 19.628855, 12.111282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.666899, 19.866365, 12.116102>,  <21.473808, 20.008871, 12.118994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.666899, 19.866365, 12.116102>,  <21.988714, 19.628855, 12.111282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.666899, 19.866365, 12.116102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418286, -0.580930, 0.698253,
		0.421605, 0.556733, 0.715750,
		-0.804541, 0.593775, 0.012049,
		21.425537, 20.044498, 12.119717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.854939, 19.758621, 12.808465>,  <21.988714, 19.628855, 12.111282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.854939, 19.758621, 12.808465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.511904, 19.795162, 12.606002>,  <21.306082, 19.817087, 12.484524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.511904, 19.795162, 12.606002>,  <21.854939, 19.758621, 12.808465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.511904, 19.795162, 12.606002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469677, -0.540192, 0.698281,
		-0.209633, 0.836569, 0.506169,
		-0.857588, 0.091353, -0.506159,
		21.254627, 19.822569, 12.454154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.368418, 19.862240, 13.483372>,  <21.854939, 19.758621, 12.808465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.368418, 19.862240, 13.483372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.181545, 19.758144, 13.145373>,  <21.069422, 19.695686, 12.942575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.181545, 19.758144, 13.145373>,  <21.368418, 19.862240, 13.483372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.181545, 19.758144, 13.145373> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533193, -0.679445, 0.504043,
		-0.705301, 0.686025, 0.178665,
		-0.467179, -0.260239, -0.844997,
		21.041391, 19.680073, 12.891874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.619078, 20.001530, 13.499606>,  <21.368418, 19.862240, 13.483372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.619078, 20.001530, 13.499606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.666475, 19.715248, 13.224295>,  <20.694914, 19.543480, 13.059108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.666475, 19.715248, 13.224295>,  <20.619078, 20.001530, 13.499606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.666475, 19.715248, 13.224295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598266, -0.604678, 0.525778,
		-0.792488, 0.349473, -0.499831,
		0.118492, -0.715705, -0.688278,
		20.702023, 19.500536, 13.017811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.061077, 19.498491, 13.618763>,  <20.619078, 20.001530, 13.499606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.061077, 19.498491, 13.618763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.318573, 19.293127, 13.391780>,  <20.473070, 19.169909, 13.255589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.318573, 19.293127, 13.391780>,  <20.061077, 19.498491, 13.618763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.318573, 19.293127, 13.391780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273058, -0.846833, 0.456414,
		-0.714871, -0.138862, -0.685330,
		0.643738, -0.513412, -0.567459,
		20.511694, 19.139103, 13.221542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.766506, 18.890854, 13.605129>,  <20.061077, 19.498491, 13.618763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.766506, 18.890854, 13.605129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.129717, 18.811815, 13.457376>,  <20.347643, 18.764391, 13.368724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.129717, 18.811815, 13.457376>,  <19.766506, 18.890854, 13.605129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.129717, 18.811815, 13.457376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019471, -0.860904, 0.508395,
		-0.418461, -0.468828, -0.777875,
		0.908026, -0.197598, -0.369383,
		20.402124, 18.752537, 13.346560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.726791, 18.154440, 13.429532>,  <19.766506, 18.890854, 13.605129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.726791, 18.154440, 13.429532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.104872, 18.272076, 13.486252>,  <20.331720, 18.342657, 13.520284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.104872, 18.272076, 13.486252>,  <19.726791, 18.154440, 13.429532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.104872, 18.272076, 13.486252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198501, -0.862466, 0.465564,
		0.259215, -0.411905, -0.873580,
		0.945201, 0.294088, 0.141800,
		20.388432, 18.360302, 13.528792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.060364, 17.558062, 13.381659>,  <19.726791, 18.154440, 13.429532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.060364, 17.558062, 13.381659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.324110, 17.787706, 13.575826>,  <20.482357, 17.925493, 13.692327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.324110, 17.787706, 13.575826>,  <20.060364, 17.558062, 13.381659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.324110, 17.787706, 13.575826> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085024, -0.698457, 0.710584,
		0.746999, -0.427262, -0.509352,
		0.659366, 0.574112, 0.485419,
		20.521919, 17.959940, 13.721452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.633841, 17.106501, 13.542044>,  <20.060364, 17.558062, 13.381659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.633841, 17.106501, 13.542044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.651110, 17.413296, 13.798126>,  <20.661472, 17.597374, 13.951776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.651110, 17.413296, 13.798126>,  <20.633841, 17.106501, 13.542044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.651110, 17.413296, 13.798126> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135475, -0.630390, 0.764365,
		0.989840, -0.119733, 0.076691,
		0.043175, 0.766989, 0.640206,
		20.664062, 17.643393, 13.990188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.042326, 16.762432, 14.057809>,  <20.633841, 17.106501, 13.542044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.042326, 16.762432, 14.057809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.873089, 17.077105, 14.237641>,  <20.771545, 17.265907, 14.345541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.873089, 17.077105, 14.237641>,  <21.042326, 16.762432, 14.057809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.873089, 17.077105, 14.237641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073194, -0.464884, 0.882341,
		0.903125, 0.406220, 0.139109,
		-0.423094, 0.786682, 0.449581,
		20.746161, 17.313108, 14.372516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.524740, 17.087732, 14.397660>,  <21.042326, 16.762432, 14.057809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.524740, 17.087732, 14.397660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.173512, 17.162724, 14.573771>,  <20.962774, 17.207718, 14.679437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.173512, 17.162724, 14.573771>,  <21.524740, 17.087732, 14.397660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.173512, 17.162724, 14.573771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412747, -0.168835, 0.895061,
		0.242137, 0.967650, 0.070869,
		-0.878072, 0.187476, 0.440276,
		20.910089, 17.218966, 14.705853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.189344, 17.074177, 14.718160>,  <21.524740, 17.087732, 14.397660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.189344, 17.074177, 14.718160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.533873, 16.888485, 14.800736>,  <22.740589, 16.777069, 14.850283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.533873, 16.888485, 14.800736>,  <22.189344, 17.074177, 14.718160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.533873, 16.888485, 14.800736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479851, 0.609789, -0.630794,
		0.166948, 0.642376, 0.747985,
		0.861320, -0.464231, 0.206442,
		22.792269, 16.749216, 14.862669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.526497, 17.625992, 14.700431>,  <22.189344, 17.074177, 14.718160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.526497, 17.625992, 14.700431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.815884, 17.351282, 14.672343>,  <22.989517, 17.186457, 14.655491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.815884, 17.351282, 14.672343>,  <22.526497, 17.625992, 14.700431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.815884, 17.351282, 14.672343> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540034, 0.626366, -0.562165,
		0.430065, 0.368788, 0.824039,
		0.723469, -0.686776, -0.070219,
		23.032925, 17.145248, 14.651278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.244112, 17.880629, 14.941442>,  <22.526497, 17.625992, 14.700431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.244112, 17.880629, 14.941442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.294924, 17.579281, 14.683356>,  <23.325411, 17.398472, 14.528505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.294924, 17.579281, 14.683356>,  <23.244112, 17.880629, 14.941442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.294924, 17.579281, 14.683356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494868, 0.611880, -0.617016,
		0.859633, -0.240915, 0.450545,
		0.127031, -0.753368, -0.645213,
		23.333033, 17.353270, 14.489792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.006397, 17.946745, 14.763853>,  <23.244112, 17.880629, 14.941442>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.006397, 17.946745, 14.763853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.827120, 17.715429, 14.491177>,  <23.719553, 17.576639, 14.327571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.827120, 17.715429, 14.491177>,  <24.006397, 17.946745, 14.763853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.827120, 17.715429, 14.491177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352517, 0.586442, -0.729258,
		0.821495, -0.567157, -0.058982,
		-0.448193, -0.578290, -0.681692,
		23.692661, 17.541943, 14.286669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.432543, 17.976063, 14.269674>,  <24.006397, 17.946745, 14.763853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.432543, 17.976063, 14.269674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.103210, 17.853794, 14.078388>,  <23.905611, 17.780434, 13.963616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.103210, 17.853794, 14.078388>,  <24.432543, 17.976063, 14.269674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.103210, 17.853794, 14.078388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202087, 0.629473, -0.750283,
		0.530364, -0.714373, -0.456493,
		-0.823332, -0.305672, -0.478215,
		23.856211, 17.762093, 13.934924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.672640, 17.747427, 13.594840>,  <24.432543, 17.976063, 14.269674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.672640, 17.747427, 13.594840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.282602, 17.835777, 13.586778>,  <24.048580, 17.888786, 13.581940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.282602, 17.835777, 13.586778>,  <24.672640, 17.747427, 13.594840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.282602, 17.835777, 13.586778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164559, 0.659544, -0.733432,
		-0.148703, -0.718482, -0.679464,
		-0.975094, 0.220875, -0.020157,
		23.990074, 17.902040, 13.580730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.350760, 17.581970, 12.969166>,  <24.672640, 17.747427, 13.594840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.350760, 17.581970, 12.969166> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.130089, 17.877731, 13.123535>,  <23.997686, 18.055187, 13.216157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.130089, 17.877731, 13.123535>,  <24.350760, 17.581970, 12.969166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.130089, 17.877731, 13.123535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170963, 0.553129, -0.815365,
		-0.816350, -0.383837, -0.431558,
		-0.551674, 0.739403, 0.385924,
		23.964586, 18.099552, 13.239312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.984386, 17.936253, 12.404656>,  <24.350760, 17.581970, 12.969166>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.984386, 17.936253, 12.404656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.904469, 18.200897, 12.693752>,  <23.856518, 18.359684, 12.867209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.904469, 18.200897, 12.693752>,  <23.984386, 17.936253, 12.404656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.904469, 18.200897, 12.693752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037994, 0.742287, -0.669004,
		-0.979101, -0.106203, -0.173442,
		-0.199794, 0.661612, 0.722739,
		23.844530, 18.399382, 12.910574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.613224, 18.372044, 12.119846>,  <23.984386, 17.936253, 12.404656>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.613224, 18.372044, 12.119846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.757803, 18.578005, 12.430775>,  <23.844551, 18.701582, 12.617332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.757803, 18.578005, 12.430775>,  <23.613224, 18.372044, 12.119846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.757803, 18.578005, 12.430775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119312, 0.801289, -0.586260,
		-0.924727, 0.304646, 0.228190,
		0.361448, 0.514905, 0.777321,
		23.866238, 18.732477, 12.663971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.380449, 19.037580, 12.015580>,  <23.613224, 18.372044, 12.119846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.380449, 19.037580, 12.015580> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.691326, 19.080038, 12.263678>,  <23.877853, 19.105513, 12.412537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.691326, 19.080038, 12.263678>,  <23.380449, 19.037580, 12.015580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.691326, 19.080038, 12.263678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299031, 0.804964, -0.512458,
		-0.553670, 0.583751, 0.593872,
		0.777193, 0.106146, 0.620245,
		23.924484, 19.111881, 12.449751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.350262, 19.597977, 12.040402>,  <23.380449, 19.037580, 12.015580>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.350262, 19.597977, 12.040402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.723690, 19.551125, 12.175889>,  <23.947746, 19.523012, 12.257181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.723690, 19.551125, 12.175889>,  <23.350262, 19.597977, 12.040402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.723690, 19.551125, 12.175889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264802, 0.862295, -0.431657,
		-0.241512, 0.492674, 0.836029,
		0.933569, -0.117132, 0.338715,
		24.003761, 19.515985, 12.277504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.554470, 20.229418, 12.298691>,  <23.350262, 19.597977, 12.040402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.554470, 20.229418, 12.298691> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.892323, 20.027925, 12.226187>,  <24.095034, 19.907030, 12.182684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.892323, 20.027925, 12.226187>,  <23.554470, 20.229418, 12.298691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.892323, 20.027925, 12.226187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382573, 0.804781, -0.453834,
		0.374486, 0.313976, 0.872456,
		0.844629, -0.503733, -0.181260,
		24.145712, 19.876806, 12.171808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.007545, 20.738085, 12.278225>,  <23.554470, 20.229418, 12.298691>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.007545, 20.738085, 12.278225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.211334, 20.432102, 12.120602>,  <24.333607, 20.248512, 12.026028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.211334, 20.432102, 12.120602>,  <24.007545, 20.738085, 12.278225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.211334, 20.432102, 12.120602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574890, 0.643334, -0.505591,
		0.640267, 0.031044, 0.767525,
		0.509471, -0.764956, -0.394059,
		24.364176, 20.202616, 12.002384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.751997, 20.787777, 12.485797>,  <24.007545, 20.738085, 12.278225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.751997, 20.787777, 12.485797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.748066, 20.558855, 12.157804>,  <24.745707, 20.421501, 11.961008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.748066, 20.558855, 12.157804>,  <24.751997, 20.787777, 12.485797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.748066, 20.558855, 12.157804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748352, 0.539679, -0.385637,
		0.663229, -0.617426, 0.422981,
		-0.009828, -0.572304, -0.819983,
		24.745117, 20.387163, 11.911809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.398865, 20.717144, 12.371728>,  <24.751997, 20.787777, 12.485797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.398865, 20.717144, 12.371728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.237713, 20.615213, 12.020103>,  <25.141022, 20.554054, 11.809127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.237713, 20.615213, 12.020103>,  <25.398865, 20.717144, 12.371728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.237713, 20.615213, 12.020103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687629, 0.549594, -0.474461,
		0.604033, -0.795619, -0.046193,
		-0.402877, -0.254827, -0.879064,
		25.116850, 20.538765, 11.756383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.937271, 20.535923, 11.861090>,  <25.398865, 20.717144, 12.371728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.937271, 20.535923, 11.861090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.625957, 20.631083, 11.628649>,  <25.439169, 20.688179, 11.489184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.625957, 20.631083, 11.628649>,  <25.937271, 20.535923, 11.861090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.625957, 20.631083, 11.628649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583599, 0.615561, -0.529619,
		0.231708, -0.751324, -0.617919,
		-0.778282, 0.237900, -0.581102,
		25.392473, 20.702452, 11.454318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.228748, 20.505548, 11.145397>,  <25.937271, 20.535923, 11.861090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.228748, 20.505548, 11.145397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.899546, 20.730059, 11.110462>,  <25.702024, 20.864765, 11.089501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.899546, 20.730059, 11.110462>,  <26.228748, 20.505548, 11.145397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.899546, 20.730059, 11.110462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465499, 0.578320, -0.669968,
		-0.325527, -0.592044, -0.737235,
		-0.823008, 0.561275, -0.087337,
		25.652643, 20.898441, 11.084261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.124430, 20.575548, 10.457300>,  <26.228748, 20.505548, 11.145397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.124430, 20.575548, 10.457300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.915237, 20.883120, 10.604403>,  <25.789722, 21.067661, 10.692665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.915237, 20.883120, 10.604403>,  <26.124430, 20.575548, 10.457300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.915237, 20.883120, 10.604403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585261, 0.637628, -0.500899,
		-0.619647, -0.046725, -0.783488,
		-0.522978, 0.768926, 0.367758,
		25.758345, 21.113798, 10.714731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.948965, 20.991114, 9.872418>,  <26.124430, 20.575548, 10.457300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.948965, 20.991114, 9.872418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.962162, 21.232107, 10.191399>,  <25.970079, 21.376703, 10.382787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.962162, 21.232107, 10.191399>,  <25.948965, 20.991114, 9.872418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.962162, 21.232107, 10.191399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549340, 0.655623, -0.518058,
		-0.834947, 0.455163, -0.309337,
		0.032992, 0.602482, 0.797450,
		25.972059, 21.412851, 10.430634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<15.755300, 19.099316, 20.809893> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.492295, 18.813292, 20.714926>,  <15.334493, 18.641676, 20.657946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.492295, 18.813292, 20.714926>,  <15.755300, 19.099316, 20.809893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.492295, 18.813292, 20.714926> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562953, -0.256816, -0.785576,
		0.500764, -0.650178, 0.571405,
		-0.657510, -0.715063, -0.237416,
		15.295042, 18.598772, 20.643702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.121836, 18.507658, 20.715555>,  <15.755300, 19.099316, 20.809893>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.121836, 18.507658, 20.715555> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.783980, 18.435940, 20.513786>,  <15.581267, 18.392908, 20.392725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.783980, 18.435940, 20.513786>,  <16.121836, 18.507658, 20.715555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.783980, 18.435940, 20.513786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527241, -0.115334, -0.841852,
		0.092764, -0.977011, 0.191948,
		-0.844637, -0.179296, -0.504422,
		15.530589, 18.382151, 20.362459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.299717, 17.956333, 20.335518>,  <16.121836, 18.507658, 20.715555>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.299717, 17.956333, 20.335518> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.961902, 18.068022, 20.152742>,  <15.759213, 18.135035, 20.043077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.961902, 18.068022, 20.152742>,  <16.299717, 17.956333, 20.335518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.961902, 18.068022, 20.152742> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410023, -0.211676, -0.887172,
		-0.344442, -0.936604, 0.064280,
		-0.844536, 0.279223, -0.456939,
		15.708541, 18.151789, 20.015661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.091513, 17.397676, 19.850542>,  <16.299717, 17.956333, 20.335518>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.091513, 17.397676, 19.850542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.877293, 17.710264, 19.722483>,  <15.748761, 17.897818, 19.645647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.877293, 17.710264, 19.722483>,  <16.091513, 17.397676, 19.850542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.877293, 17.710264, 19.722483> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165625, -0.274539, -0.947205,
		-0.828104, -0.560298, 0.017597,
		-0.535548, 0.781469, -0.320146,
		15.716628, 17.944706, 19.626438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.610762, 17.069183, 19.366335>,  <16.091513, 17.397676, 19.850542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.610762, 17.069183, 19.366335> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.622787, 17.460211, 19.282951>,  <15.630001, 17.694828, 19.232922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.622787, 17.460211, 19.282951>,  <15.610762, 17.069183, 19.366335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.622787, 17.460211, 19.282951> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196597, -0.198698, -0.960140,
		-0.980023, 0.069846, 0.186214,
		0.030061, 0.977569, -0.208460,
		15.631804, 17.753481, 19.220413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.020048, 17.213575, 18.919926>,  <15.610762, 17.069183, 19.366335>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.020048, 17.213575, 18.919926> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.303375, 17.489382, 18.859455>,  <15.473372, 17.654865, 18.823174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.303375, 17.489382, 18.859455>,  <15.020048, 17.213575, 18.919926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.303375, 17.489382, 18.859455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110401, -0.103315, -0.988503,
		-0.697207, 0.716864, 0.002943,
		0.708318, 0.689516, -0.151175,
		15.515870, 17.696236, 18.814102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.820368, 17.664967, 18.404915>,  <15.020048, 17.213575, 18.919926>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.820368, 17.664967, 18.404915> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.212221, 17.742481, 18.383886>,  <15.447333, 17.788990, 18.371269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.212221, 17.742481, 18.383886>,  <14.820368, 17.664967, 18.404915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.212221, 17.742481, 18.383886> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051380, -0.011175, -0.998617,
		-0.194104, 0.980981, -0.000990,
		0.979635, 0.193785, -0.052571,
		15.506111, 17.800617, 18.368114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.846468, 18.177736, 17.887106>,  <14.820368, 17.664967, 18.404915>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.846468, 18.177736, 17.887106> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.196509, 17.987560, 17.923220>,  <15.406534, 17.873455, 17.944887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.196509, 17.987560, 17.923220>,  <14.846468, 18.177736, 17.887106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.196509, 17.987560, 17.923220> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071220, -0.058002, -0.995773,
		0.478666, 0.877835, -0.016897,
		0.875104, -0.475439, 0.090282,
		15.459041, 17.844929, 17.950304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.268389, 18.486996, 17.425676>,  <14.846468, 18.177736, 17.887106>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.268389, 18.486996, 17.425676> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.457553, 18.140074, 17.487822>,  <15.571052, 17.931921, 17.525108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.457553, 18.140074, 17.487822>,  <15.268389, 18.486996, 17.425676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.457553, 18.140074, 17.487822> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218678, -0.055280, -0.974230,
		0.853543, 0.494698, 0.163518,
		0.472910, -0.867305, 0.155363,
		15.599426, 17.879883, 17.534430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.884275, 18.603756, 17.047451>,  <15.268389, 18.486996, 17.425676>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.884275, 18.603756, 17.047451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.851511, 18.207949, 17.095022>,  <15.831852, 17.970465, 17.123566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.851511, 18.207949, 17.095022>,  <15.884275, 18.603756, 17.047451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.851511, 18.207949, 17.095022> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385252, -0.141489, -0.911900,
		0.919169, -0.028878, 0.392804,
		-0.081911, -0.989519, 0.118927,
		15.826938, 17.911093, 17.130701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.480755, 18.312838, 16.720596>,  <15.884275, 18.603756, 17.047451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.480755, 18.312838, 16.720596> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.215485, 18.013453, 16.720966>,  <16.056322, 17.833820, 16.721188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.215485, 18.013453, 16.720966>,  <16.480755, 18.312838, 16.720596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.215485, 18.013453, 16.720966> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291115, -0.259077, -0.920940,
		0.689530, -0.610475, 0.389703,
		-0.663174, -0.748464, 0.000923,
		16.016533, 17.788914, 16.721243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.823280, 17.849056, 16.400068>,  <16.480755, 18.312838, 16.720596>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.823280, 17.849056, 16.400068> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.439919, 17.739761, 16.367067>,  <16.209902, 17.674185, 16.347267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.439919, 17.739761, 16.367067>,  <16.823280, 17.849056, 16.400068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.439919, 17.739761, 16.367067> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135933, -0.182798, -0.973708,
		0.250972, -0.944419, 0.212336,
		-0.958402, -0.273237, -0.082501,
		16.152397, 17.657791, 16.342318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.774137, 17.159414, 16.040653>,  <16.823280, 17.849056, 16.400068>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.774137, 17.159414, 16.040653> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.451365, 17.391441, 15.996148>,  <16.257700, 17.530657, 15.969445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.451365, 17.391441, 15.996148>,  <16.774137, 17.159414, 16.040653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.451365, 17.391441, 15.996148> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123985, -0.017821, -0.992124,
		-0.577481, -0.814374, -0.057540,
		-0.806935, 0.580067, -0.111262,
		16.209284, 17.565462, 15.962770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.285664, 17.109098, 15.608170>,  <16.774137, 17.159414, 16.040653>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.285664, 17.109098, 15.608170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.011398, 16.836903, 15.711553>,  <16.846840, 16.673584, 15.773582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.011398, 16.836903, 15.711553>,  <17.285664, 17.109098, 15.608170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.011398, 16.836903, 15.711553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537230, 0.712653, 0.451121,
		-0.491175, 0.170464, -0.854219,
		-0.685662, -0.680490, 0.258459,
		16.805700, 16.632755, 15.789090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.872906, 16.632912, 15.697026>,  <17.285664, 17.109098, 15.608170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.872906, 16.632912, 15.697026> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.163891, 16.366091, 15.761321>,  <18.338482, 16.205997, 15.799898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.163891, 16.366091, 15.761321>,  <17.872906, 16.632912, 15.697026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.163891, 16.366091, 15.761321> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482161, -0.330299, 0.811433,
		-0.488180, -0.667787, -0.561909,
		0.727463, -0.667056, 0.160736,
		18.382130, 16.165974, 15.809542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.593302, 15.900690, 15.637728>,  <17.872906, 16.632912, 15.697026>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.593302, 15.900690, 15.637728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.911455, 15.892987, 15.880048>,  <18.102346, 15.888366, 16.025440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.911455, 15.892987, 15.880048>,  <17.593302, 15.900690, 15.637728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.911455, 15.892987, 15.880048> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568872, -0.368638, 0.735180,
		0.209164, -0.929373, -0.304164,
		0.795383, -0.019257, 0.605801,
		18.150070, 15.887210, 16.061789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.689095, 15.163998, 15.934264>,  <17.593302, 15.900690, 15.637728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.689095, 15.163998, 15.934264> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.884552, 15.397883, 16.193289>,  <18.001827, 15.538215, 16.348703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.884552, 15.397883, 16.193289>,  <17.689095, 15.163998, 15.934264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.884552, 15.397883, 16.193289> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528698, -0.391974, 0.752884,
		0.694049, -0.710257, 0.117602,
		0.488644, 0.584715, 0.647561,
		18.031145, 15.573298, 16.387558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.949768, 14.705187, 16.526022>,  <17.689095, 15.163998, 15.934264>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.949768, 14.705187, 16.526022> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.988298, 15.081929, 16.654787>,  <18.011417, 15.307975, 16.732046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.988298, 15.081929, 16.654787>,  <17.949768, 14.705187, 16.526022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.988298, 15.081929, 16.654787> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504985, -0.232458, 0.831236,
		0.857736, -0.242632, 0.453231,
		0.096327, 0.941856, 0.321913,
		18.017197, 15.364486, 16.751362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.922279, 14.571938, 17.173294>,  <17.949768, 14.705187, 16.526022>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.922279, 14.571938, 17.173294> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.884747, 14.969975, 17.160728>,  <17.862226, 15.208797, 17.153189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.884747, 14.969975, 17.160728>,  <17.922279, 14.571938, 17.173294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.884747, 14.969975, 17.160728> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500618, -0.019885, 0.865440,
		0.860568, 0.096935, 0.500027,
		-0.093834, 0.995092, -0.031415,
		17.856596, 15.268502, 17.151304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.194731, 14.840727, 17.792826>,  <17.922279, 14.571938, 17.173294>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.194731, 14.840727, 17.792826> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.915606, 15.097663, 17.666044>,  <17.748131, 15.251824, 17.589975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.915606, 15.097663, 17.666044>,  <18.194731, 14.840727, 17.792826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.915606, 15.097663, 17.666044> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392210, 0.027614, 0.919461,
		0.599358, 0.765923, 0.232662,
		-0.697812, 0.642339, -0.316953,
		17.706263, 15.290364, 17.570959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.044540, 15.177556, 18.407488>,  <18.194731, 14.840727, 17.792826>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.044540, 15.177556, 18.407488> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.737120, 15.283719, 18.174631>,  <17.552668, 15.347417, 18.034918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.737120, 15.283719, 18.174631>,  <18.044540, 15.177556, 18.407488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.737120, 15.283719, 18.174631> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559875, 0.161351, 0.812715,
		0.309631, 0.950539, 0.024589,
		-0.768550, 0.265408, -0.582142,
		17.506556, 15.363341, 17.999989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.795530, 15.809962, 18.663647>,  <18.044540, 15.177556, 18.407488>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.795530, 15.809962, 18.663647> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.501637, 15.642705, 18.449986>,  <17.325300, 15.542351, 18.321789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.501637, 15.642705, 18.449986>,  <17.795530, 15.809962, 18.663647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.501637, 15.642705, 18.449986> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637929, 0.158150, 0.753681,
		-0.230671, 0.894508, -0.382944,
		-0.734737, -0.418144, -0.534151,
		17.281216, 15.517262, 18.289740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.245735, 16.251688, 18.844862>,  <17.795530, 15.809962, 18.663647>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.245735, 16.251688, 18.844862> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.088823, 15.912823, 18.701513>,  <16.994677, 15.709503, 18.615505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.088823, 15.912823, 18.701513>,  <17.245735, 16.251688, 18.844862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.088823, 15.912823, 18.701513> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642563, -0.026401, 0.765778,
		-0.658201, 0.530676, -0.533999,
		-0.392282, -0.847164, -0.358370,
		16.971138, 15.658673, 18.594002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.570404, 16.322809, 18.935642>,  <17.245735, 16.251688, 18.844862>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.570404, 16.322809, 18.935642> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.630152, 15.927553, 18.921389>,  <16.666000, 15.690400, 18.912836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.630152, 15.927553, 18.921389>,  <16.570404, 16.322809, 18.935642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.630152, 15.927553, 18.921389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609739, -0.120419, 0.783401,
		-0.778401, -0.095287, -0.620494,
		0.149367, -0.988140, -0.035634,
		16.674961, 15.631111, 18.910698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.873557, 15.963655, 18.769451>,  <16.570404, 16.322809, 18.935642>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.873557, 15.963655, 18.769451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.107613, 15.677176, 18.921595>,  <16.248047, 15.505288, 19.012880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.107613, 15.677176, 18.921595>,  <15.873557, 15.963655, 18.769451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.107613, 15.677176, 18.921595> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675220, -0.170541, 0.717630,
		-0.449097, -0.676741, -0.583381,
		0.585140, -0.716196, 0.380360,
		16.283155, 15.462317, 19.035702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.319617, 15.392835, 19.036634>,  <15.873557, 15.963655, 18.769451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.319617, 15.392835, 19.036634> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.679888, 15.317292, 19.193153>,  <15.896050, 15.271967, 19.287066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.679888, 15.317292, 19.193153>,  <15.319617, 15.392835, 19.036634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.679888, 15.317292, 19.193153> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432477, -0.476275, 0.765589,
		0.041780, -0.858776, -0.510646,
		0.900677, -0.188856, 0.391299,
		15.950090, 15.260635, 19.310543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.243220, 14.700603, 19.288332>,  <15.319617, 15.392835, 19.036634>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.243220, 14.700603, 19.288332> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.520804, 14.916700, 19.478724>,  <15.687355, 15.046359, 19.592958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.520804, 14.916700, 19.478724>,  <15.243220, 14.700603, 19.288332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.520804, 14.916700, 19.478724> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405991, -0.252353, 0.878345,
		0.594636, -0.802778, 0.044212,
		0.693959, 0.540245, 0.475979,
		15.728992, 15.078773, 19.621517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.323988, 14.385085, 19.878963>,  <15.243220, 14.700603, 19.288332>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.323988, 14.385085, 19.878963> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.481086, 14.744922, 19.955370>,  <15.575344, 14.960824, 20.001215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.481086, 14.744922, 19.955370>,  <15.323988, 14.385085, 19.878963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.481086, 14.744922, 19.955370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401347, -0.019224, 0.915724,
		0.827450, -0.436310, 0.353498,
		0.392744, 0.899591, 0.191019,
		15.598909, 15.014799, 20.012676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.522192, 13.707442, 20.056015>,  <15.323988, 14.385085, 19.878963>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.522192, 13.707442, 20.056015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.169075, 13.528511, 19.998640>,  <14.957205, 13.421152, 19.964214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.169075, 13.528511, 19.998640>,  <15.522192, 13.707442, 20.056015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.169075, 13.528511, 19.998640> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021459, 0.266623, -0.963562,
		0.469273, -0.853703, -0.225774,
		-0.882792, -0.447329, -0.143438,
		14.904237, 13.394313, 19.955608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.549902, 13.272615, 19.432854>,  <15.522192, 13.707442, 20.056015>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.549902, 13.272615, 19.432854> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.159873, 13.354928, 19.466049>,  <14.925856, 13.404315, 19.485966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.159873, 13.354928, 19.466049>,  <15.549902, 13.272615, 19.432854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.159873, 13.354928, 19.466049> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062364, 0.104769, -0.992539,
		-0.212940, -0.972973, -0.089324,
		-0.975073, 0.205781, 0.082988,
		14.867352, 13.416662, 19.490946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.230754, 12.830966, 19.062695>,  <15.549902, 13.272615, 19.432854>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.230754, 12.830966, 19.062695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.972366, 13.135173, 19.089041>,  <14.817334, 13.317698, 19.104849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.972366, 13.135173, 19.089041>,  <15.230754, 12.830966, 19.062695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.972366, 13.135173, 19.089041> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126396, -0.021470, -0.991747,
		-0.752828, -0.648962, 0.109996,
		-0.645968, 0.760518, 0.065863,
		14.778576, 13.363328, 19.108799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.664563, 12.545024, 18.767872>,  <15.230754, 12.830966, 19.062695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.664563, 12.545024, 18.767872> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.598128, 12.939412, 18.761194>,  <14.558268, 13.176044, 18.757187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.598128, 12.939412, 18.761194>,  <14.664563, 12.545024, 18.767872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.598128, 12.939412, 18.761194> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308834, -0.068087, -0.948676,
		-0.936502, -0.152406, 0.315809,
		-0.166086, 0.985970, -0.016695,
		14.548303, 13.235203, 18.756186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.028631, 12.509223, 18.332489>,  <14.664563, 12.545024, 18.767872>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.028631, 12.509223, 18.332489> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.201456, 12.869573, 18.349211>,  <14.305151, 13.085782, 18.359243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.201456, 12.869573, 18.349211>,  <14.028631, 12.509223, 18.332489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.201456, 12.869573, 18.349211> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134658, 0.110278, -0.984736,
		-0.891733, 0.419839, 0.168957,
		0.432063, 0.900874, 0.041804,
		14.331075, 13.139834, 18.361752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.702316, 12.830309, 17.795742>,  <14.028631, 12.509223, 18.332489>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.702316, 12.830309, 17.795742> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.012318, 13.068946, 17.879120>,  <14.198318, 13.212128, 17.929146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.012318, 13.068946, 17.879120>,  <13.702316, 12.830309, 17.795742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.012318, 13.068946, 17.879120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012916, 0.314817, -0.949064,
		-0.631826, 0.738219, 0.236278,
		0.775002, 0.596592, 0.208445,
		14.244819, 13.247924, 17.941654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.478685, 13.607957, 17.521236>,  <13.702316, 12.830309, 17.795742>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.478685, 13.607957, 17.521236> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.872440, 13.539673, 17.538393>,  <14.108693, 13.498703, 17.548687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.872440, 13.539673, 17.538393>,  <13.478685, 13.607957, 17.521236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.872440, 13.539673, 17.538393> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070835, 0.161133, -0.984387,
		0.161133, 0.972057, 0.170710,
		0.984387, -0.170710, 0.042891,
		14.167757, 13.488460, 17.551260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.565192, 14.036899, 17.146280>,  <13.478685, 13.607957, 17.521236>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.565192, 14.036899, 17.146280> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.887487, 13.800583, 17.163029>,  <14.080865, 13.658793, 17.173079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.887487, 13.800583, 17.163029>,  <13.565192, 14.036899, 17.146280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.887487, 13.800583, 17.163029> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166509, 0.158108, -0.973281,
		0.568384, 0.791182, 0.225766,
		0.805738, -0.590790, 0.041873,
		14.129209, 13.623346, 17.175591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.221223, 14.409028, 16.720798>,  <13.565192, 14.036899, 17.146280>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.221223, 14.409028, 16.720798> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.282773, 14.015180, 16.753893>,  <14.319703, 13.778871, 16.773748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.282773, 14.015180, 16.753893>,  <14.221223, 14.409028, 16.720798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.282773, 14.015180, 16.753893> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227916, -0.046106, -0.972588,
		0.961445, 0.168514, 0.217316,
		0.153875, -0.984620, 0.082735,
		14.328936, 13.719793, 16.778713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.866087, 14.386663, 16.353045>,  <14.221223, 14.409028, 16.720798>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.866087, 14.386663, 16.353045> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.716033, 14.016894, 16.380520>,  <14.626000, 13.795033, 16.397005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.716033, 14.016894, 16.380520>,  <14.866087, 14.386663, 16.353045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.716033, 14.016894, 16.380520> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035263, -0.088280, -0.995471,
		0.926299, -0.371013, 0.065715,
		-0.375134, -0.924422, 0.068690,
		14.603493, 13.739568, 16.401127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.267957, 13.958026, 15.857221>,  <14.866087, 14.386663, 16.353045>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.267957, 13.958026, 15.857221> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.933467, 13.763478, 15.958549>,  <14.732773, 13.646749, 16.019346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.933467, 13.763478, 15.958549>,  <15.267957, 13.958026, 15.857221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.933467, 13.763478, 15.958549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169230, -0.210519, -0.962831,
		0.521621, -0.848013, 0.093733,
		-0.836226, -0.486370, 0.253321,
		14.682599, 13.617567, 16.034544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.277678, 13.324706, 15.468220>,  <15.267957, 13.958026, 15.857221>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.277678, 13.324706, 15.468220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.903910, 13.430868, 15.563227>,  <14.679648, 13.494565, 15.620231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.903910, 13.430868, 15.563227>,  <15.277678, 13.324706, 15.468220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.903910, 13.430868, 15.563227> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282303, -0.145295, -0.948259,
		-0.217163, -0.953126, 0.210691,
		-0.934422, 0.265406, 0.237518,
		14.623583, 13.510489, 15.634482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<12.838774, 12.851484, 24.783272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.166410, 12.805030, 25.007984>,  <13.362992, 12.777158, 25.142813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.166410, 12.805030, 25.007984>,  <12.838774, 12.851484, 24.783272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.166410, 12.805030, 25.007984> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573432, 0.138066, -0.807536,
		0.016221, 0.983591, 0.179684,
		0.819093, -0.116135, 0.561782,
		13.412138, 12.770189, 25.176519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.351335, 13.439551, 24.644377>,  <12.838774, 12.851484, 24.783272>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.351335, 13.439551, 24.644377> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.550293, 13.110406, 24.754282>,  <13.669668, 12.912919, 24.820225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.550293, 13.110406, 24.754282>,  <13.351335, 13.439551, 24.644377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.550293, 13.110406, 24.754282> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561644, 0.064058, -0.824895,
		0.661175, 0.564618, 0.494018,
		0.497397, -0.822862, 0.274761,
		13.699512, 12.863547, 24.836710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.011132, 13.529315, 24.395634>,  <13.351335, 13.439551, 24.644377>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.011132, 13.529315, 24.395634> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.012887, 13.140326, 24.488821>,  <14.013940, 12.906932, 24.544733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.012887, 13.140326, 24.488821>,  <14.011132, 13.529315, 24.395634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.012887, 13.140326, 24.488821> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510193, -0.198191, -0.836913,
		0.860049, 0.122531, 0.495280,
		0.004388, -0.972475, 0.232968,
		14.014203, 12.848583, 24.558712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.661867, 13.324333, 24.279245>,  <14.011132, 13.529315, 24.395634>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.661867, 13.324333, 24.279245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.456807, 12.981769, 24.254753>,  <14.333771, 12.776230, 24.240057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.456807, 12.981769, 24.254753>,  <14.661867, 13.324333, 24.279245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.456807, 12.981769, 24.254753> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474188, -0.222955, -0.851726,
		0.715776, -0.465672, 0.520398,
		-0.512650, -0.856411, -0.061231,
		14.303012, 12.724845, 24.236383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.127623, 12.940486, 23.814997>,  <14.661867, 13.324333, 24.279245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.127623, 12.940486, 23.814997> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.782375, 12.738534, 23.810528>,  <14.575227, 12.617363, 23.807846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.782375, 12.738534, 23.810528>,  <15.127623, 12.940486, 23.814997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.782375, 12.738534, 23.810528> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099496, -0.148323, -0.983921,
		0.495105, -0.850351, 0.178254,
		-0.863117, -0.504880, -0.011171,
		14.523440, 12.587070, 23.807177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.187868, 12.294912, 23.481926>,  <15.127623, 12.940486, 23.814997>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.187868, 12.294912, 23.481926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.795935, 12.365602, 23.444626>,  <14.560775, 12.408017, 23.422245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.795935, 12.365602, 23.444626>,  <15.187868, 12.294912, 23.481926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.795935, 12.365602, 23.444626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076380, -0.099992, -0.992052,
		-0.184648, -0.979167, 0.084477,
		-0.979832, 0.176728, -0.093253,
		14.501985, 12.418620, 23.416651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.970842, 11.852627, 22.892038>,  <15.187868, 12.294912, 23.481926>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.970842, 11.852627, 22.892038> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.673412, 12.112159, 22.956680>,  <14.494954, 12.267878, 22.995466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.673412, 12.112159, 22.956680>,  <14.970842, 11.852627, 22.892038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.673412, 12.112159, 22.956680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114687, 0.114352, -0.986798,
		-0.658744, -0.752292, -0.010617,
		-0.743575, 0.648829, 0.161607,
		14.450340, 12.306808, 23.005163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.357187, 11.602609, 22.496771>,  <14.970842, 11.852627, 22.892038>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.357187, 11.602609, 22.496771> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.303660, 11.993902, 22.560211>,  <14.271544, 12.228678, 22.598274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.303660, 11.993902, 22.560211>,  <14.357187, 11.602609, 22.496771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.303660, 11.993902, 22.560211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082904, 0.148427, -0.985442,
		-0.987532, -0.145018, 0.061238,
		-0.133818, 0.978233, 0.158599,
		14.263515, 12.287372, 22.607790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.724238, 11.843572, 21.998545>,  <14.357187, 11.602609, 22.496771>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.724238, 11.843572, 21.998545> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.923016, 12.178444, 22.089911>,  <14.042282, 12.379368, 22.144730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.923016, 12.178444, 22.089911>,  <13.724238, 11.843572, 21.998545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.923016, 12.178444, 22.089911> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012398, 0.256341, -0.966507,
		-0.867694, 0.483132, 0.117008,
		0.496944, 0.837182, 0.228415,
		14.072099, 12.429599, 22.158436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.369722, 12.469252, 21.660404>,  <13.724238, 11.843572, 21.998545>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.369722, 12.469252, 21.660404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.735886, 12.601616, 21.752079>,  <13.955584, 12.681035, 21.807085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.735886, 12.601616, 21.752079>,  <13.369722, 12.469252, 21.660404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.735886, 12.601616, 21.752079> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138108, 0.276612, -0.951006,
		-0.378095, 0.902210, 0.207511,
		0.915407, 0.330912, 0.229188,
		14.010508, 12.700890, 21.820835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.369781, 13.184617, 21.322269>,  <13.369722, 12.469252, 21.660404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.369781, 13.184617, 21.322269> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.744648, 13.068003, 21.398924>,  <13.969568, 12.998034, 21.444918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.744648, 13.068003, 21.398924>,  <13.369781, 13.184617, 21.322269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.744648, 13.068003, 21.398924> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283617, 0.316739, -0.905118,
		0.203176, 0.902598, 0.379522,
		0.937167, -0.291537, 0.191638,
		14.025798, 12.980541, 21.456415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.798965, 13.765085, 21.188313>,  <13.369781, 13.184617, 21.322269>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.798965, 13.765085, 21.188313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.050103, 13.457746, 21.138590>,  <14.200786, 13.273342, 21.108755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.050103, 13.457746, 21.138590>,  <13.798965, 13.765085, 21.188313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.050103, 13.457746, 21.138590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372498, 0.436848, -0.818785,
		0.683416, 0.467764, 0.560480,
		0.627843, -0.768349, -0.124308,
		14.238456, 13.227241, 21.101297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.412379, 14.014584, 20.894947>,  <13.798965, 13.765085, 21.188313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.412379, 14.014584, 20.894947> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.454524, 13.620936, 20.837801>,  <14.479811, 13.384748, 20.803513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.454524, 13.620936, 20.837801>,  <14.412379, 14.014584, 20.894947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.454524, 13.620936, 20.837801> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573245, 0.177499, -0.799928,
		0.812582, 0.002384, 0.582842,
		0.105361, -0.984118, -0.142866,
		14.486133, 13.325701, 20.794941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.073415, 13.995488, 20.582077>,  <14.412379, 14.014584, 20.894947>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.073415, 13.995488, 20.582077> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.857665, 13.674781, 20.479126>,  <14.728215, 13.482356, 20.417356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.857665, 13.674781, 20.479126>,  <15.073415, 13.995488, 20.582077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.857665, 13.674781, 20.479126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295660, 0.105870, -0.949409,
		0.788455, -0.588182, 0.179947,
		-0.539374, -0.801769, -0.257376,
		14.695853, 13.434250, 20.401913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.760882, 14.365286, 20.529652>,  <15.073415, 13.995488, 20.582077>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.760882, 14.365286, 20.529652> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.668341, 14.752348, 20.489416>,  <15.612816, 14.984585, 20.465275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.668341, 14.752348, 20.489416>,  <15.760882, 14.365286, 20.529652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.668341, 14.752348, 20.489416> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325853, 0.020347, 0.945202,
		0.916676, 0.251454, 0.310606,
		-0.231355, 0.967656, -0.100588,
		15.598934, 15.042645, 20.459240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.018799, 14.698812, 21.103100>,  <15.760882, 14.365286, 20.529652>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.018799, 14.698812, 21.103100> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.802936, 15.005628, 20.964293>,  <15.673418, 15.189716, 20.881008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.802936, 15.005628, 20.964293>,  <16.018799, 14.698812, 21.103100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.802936, 15.005628, 20.964293> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214259, 0.273490, 0.937708,
		0.814164, 0.580394, 0.016754,
		-0.539658, 0.767037, -0.347020,
		15.641038, 15.235739, 20.860186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.019726, 15.193890, 21.505598>,  <16.018799, 14.698812, 21.103100>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.019726, 15.193890, 21.505598> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.671089, 15.297834, 21.339321>,  <15.461907, 15.360201, 21.239555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.671089, 15.297834, 21.339321>,  <16.019726, 15.193890, 21.505598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.671089, 15.297834, 21.339321> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328740, 0.319231, 0.888832,
		0.363675, 0.911353, -0.192812,
		-0.871591, 0.259861, -0.415694,
		15.409612, 15.375793, 21.214613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.919920, 15.782360, 21.825966>,  <16.019726, 15.193890, 21.505598>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.919920, 15.782360, 21.825966> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.569016, 15.668360, 21.671465>,  <15.358473, 15.599959, 21.578764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.569016, 15.668360, 21.671465>,  <15.919920, 15.782360, 21.825966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.569016, 15.668360, 21.671465> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472830, 0.374353, 0.797679,
		-0.082744, 0.882403, -0.463161,
		-0.877260, -0.285000, -0.386251,
		15.305838, 15.582860, 21.555590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.488777, 16.380945, 22.059948>,  <15.919920, 15.782360, 21.825966>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.488777, 16.380945, 22.059948> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.243011, 16.078131, 21.971056>,  <15.095551, 15.896441, 21.917721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.243011, 16.078131, 21.971056>,  <15.488777, 16.380945, 22.059948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.243011, 16.078131, 21.971056> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446799, 0.101706, 0.888834,
		-0.650278, 0.645408, -0.400734,
		-0.614418, -0.757037, -0.222230,
		15.058685, 15.851020, 21.904387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.773072, 16.587347, 22.303736>,  <15.488777, 16.380945, 22.059948>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.773072, 16.587347, 22.303736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.725257, 16.196377, 22.234047>,  <14.696568, 15.961795, 22.192234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.725257, 16.196377, 22.234047>,  <14.773072, 16.587347, 22.303736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.725257, 16.196377, 22.234047> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538805, -0.083523, 0.838280,
		-0.833906, 0.194078, -0.516656,
		-0.119539, -0.977424, -0.174221,
		14.689395, 15.903150, 22.181780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.083021, 16.440857, 22.374168>,  <14.773072, 16.587347, 22.303736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.083021, 16.440857, 22.374168> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.245302, 16.077864, 22.417767>,  <14.342670, 15.860067, 22.443926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.245302, 16.077864, 22.417767>,  <14.083021, 16.440857, 22.374168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.245302, 16.077864, 22.417767> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532452, -0.137728, 0.835180,
		-0.742900, -0.396870, -0.539068,
		0.405702, -0.907483, 0.108996,
		14.367013, 15.805619, 22.450466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.503961, 15.886065, 22.511997>,  <14.083021, 16.440857, 22.374168>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.503961, 15.886065, 22.511997> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.854465, 15.757340, 22.655445>,  <14.064767, 15.680105, 22.741514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.854465, 15.757340, 22.655445>,  <13.503961, 15.886065, 22.511997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.854465, 15.757340, 22.655445> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468892, -0.398132, 0.788436,
		-0.110952, -0.859027, -0.499762,
		0.876259, -0.321813, 0.358618,
		14.117342, 15.660796, 22.763031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.421020, 15.175119, 22.638144>,  <13.503961, 15.886065, 22.511997>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.421020, 15.175119, 22.638144> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.737780, 15.280467, 22.858519>,  <13.927835, 15.343676, 22.990744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.737780, 15.280467, 22.858519>,  <13.421020, 15.175119, 22.638144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.737780, 15.280467, 22.858519> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450269, -0.357609, 0.818152,
		0.412496, -0.895965, -0.164603,
		0.791900, 0.263369, 0.550937,
		13.975349, 15.359478, 23.023800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.588668, 14.658507, 23.097221>,  <13.421020, 15.175119, 22.638144>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.588668, 14.658507, 23.097221> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.771194, 14.961439, 23.284081>,  <13.880709, 15.143198, 23.396196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.771194, 14.961439, 23.284081>,  <13.588668, 14.658507, 23.097221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.771194, 14.961439, 23.284081> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413636, -0.284286, 0.864920,
		0.787834, -0.587906, 0.183535,
		0.456315, 0.757330, 0.467149,
		13.908088, 15.188638, 23.424225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.829314, 14.366003, 23.627083>,  <13.588668, 14.658507, 23.097221>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.829314, 14.366003, 23.627083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.838426, 14.753423, 23.726194>,  <13.843892, 14.985874, 23.785662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.838426, 14.753423, 23.726194>,  <13.829314, 14.366003, 23.627083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.838426, 14.753423, 23.726194> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389490, -0.219665, 0.894452,
		0.920749, -0.116882, 0.372237,
		0.022778, 0.968548, 0.247780,
		13.845259, 15.043987, 23.800529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.159768, 14.468466, 24.261209>,  <13.829314, 14.366003, 23.627083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.159768, 14.468466, 24.261209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.932113, 14.797359, 24.259636>,  <13.795520, 14.994695, 24.258692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.932113, 14.797359, 24.259636>,  <14.159768, 14.468466, 24.261209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.932113, 14.797359, 24.259636> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280526, -0.189674, 0.940919,
		0.772908, 0.536616, 0.338608,
		-0.569138, 0.822233, -0.003934,
		13.761372, 15.044028, 24.258455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.315728, 14.737712, 24.889414>,  <14.159768, 14.468466, 24.261209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.315728, 14.737712, 24.889414> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.963049, 14.898212, 24.790131>,  <13.751442, 14.994513, 24.730560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.963049, 14.898212, 24.790131>,  <14.315728, 14.737712, 24.889414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.963049, 14.898212, 24.790131> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328719, -0.145036, 0.933224,
		0.338458, 0.904413, 0.259777,
		-0.881697, 0.401251, -0.248209,
		13.698540, 15.018588, 24.715668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.033395, 14.887321, 24.862778>,  <14.315728, 14.737712, 24.889414>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.033395, 14.887321, 24.862778> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.202192, 14.524687, 24.864647>,  <15.303471, 14.307106, 24.865768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.202192, 14.524687, 24.864647>,  <15.033395, 14.887321, 24.862778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.202192, 14.524687, 24.864647> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216448, 0.095745, -0.971588,
		0.880381, 0.411016, 0.236632,
		0.421994, -0.906587, 0.004671,
		15.328791, 14.252711, 24.866049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<8.083509, 13.655066, 24.028694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.471619, 13.581315, 24.091398>,  <8.704484, 13.537065, 24.129021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.471619, 13.581315, 24.091398>,  <8.083509, 13.655066, 24.028694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.471619, 13.581315, 24.091398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216296, 0.370117, -0.903454,
		0.108556, 0.910505, 0.398995,
		0.970274, -0.184377, 0.156760,
		8.762701, 13.526002, 24.138426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.384323, 14.218859, 23.809736>,  <8.083509, 13.655066, 24.028694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.384323, 14.218859, 23.809736> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.680880, 13.950450, 23.813038>,  <8.858813, 13.789405, 23.815020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.680880, 13.950450, 23.813038>,  <8.384323, 14.218859, 23.809736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.680880, 13.950450, 23.813038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145533, 0.148762, -0.978105,
		0.655103, 0.726360, 0.207947,
		0.741391, -0.671022, 0.008254,
		8.903297, 13.749144, 23.815514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.992997, 14.568464, 23.528925>,  <8.384323, 14.218859, 23.809736>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.992997, 14.568464, 23.528925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.068766, 14.177743, 23.488974>,  <9.114226, 13.943311, 23.465002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.068766, 14.177743, 23.488974>,  <8.992997, 14.568464, 23.528925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.068766, 14.177743, 23.488974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383028, 0.167171, -0.908484,
		0.904107, 0.133829, 0.405809,
		0.189421, -0.976803, -0.099880,
		9.125592, 13.884702, 23.459009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.628292, 14.571766, 23.135527>,  <8.992997, 14.568464, 23.528925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.628292, 14.571766, 23.135527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.505836, 14.191700, 23.111982>,  <9.432362, 13.963660, 23.097857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.505836, 14.191700, 23.111982>,  <9.628292, 14.571766, 23.135527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.505836, 14.191700, 23.111982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413466, -0.077016, -0.907257,
		0.857510, -0.302085, 0.416438,
		-0.306141, -0.950165, -0.058860,
		9.413993, 13.906651, 23.094324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.200872, 14.177315, 22.938364>,  <9.628292, 14.571766, 23.135527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.200872, 14.177315, 22.938364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.882998, 13.967644, 22.815916>,  <9.692272, 13.841841, 22.742447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.882998, 13.967644, 22.815916>,  <10.200872, 14.177315, 22.938364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.882998, 13.967644, 22.815916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457367, -0.185484, -0.869719,
		0.399108, -0.831164, 0.387144,
		-0.794688, -0.524178, -0.306119,
		9.644591, 13.810390, 22.724081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.513877, 13.681541, 22.539742>,  <10.200872, 14.177315, 22.938364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.513877, 13.681541, 22.539742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.135110, 13.723721, 22.418266>,  <9.907849, 13.749028, 22.345381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.135110, 13.723721, 22.418266>,  <10.513877, 13.681541, 22.539742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.135110, 13.723721, 22.418266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303364, -0.019494, -0.952675,
		-0.106379, -0.994234, -0.013530,
		-0.946918, 0.105450, -0.303689,
		9.851034, 13.755355, 22.327160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.440249, 13.240471, 21.917536>,  <10.513877, 13.681541, 22.539742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.440249, 13.240471, 21.917536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.136372, 13.497767, 21.879372>,  <9.954045, 13.652145, 21.856474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.136372, 13.497767, 21.879372>,  <10.440249, 13.240471, 21.917536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.136372, 13.497767, 21.879372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158102, 0.040390, -0.986596,
		-0.630767, -0.764596, -0.132382,
		-0.759695, 0.643242, -0.095408,
		9.908463, 13.690741, 21.850750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.008512, 13.014522, 21.341330>,  <10.440249, 13.240471, 21.917536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.008512, 13.014522, 21.341330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.905793, 13.400274, 21.366705>,  <9.844162, 13.631725, 21.381929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.905793, 13.400274, 21.366705>,  <10.008512, 13.014522, 21.341330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.905793, 13.400274, 21.366705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212572, 0.120391, -0.969700,
		-0.942798, -0.235531, -0.235917,
		-0.256796, 0.964381, 0.063438,
		9.828754, 13.689589, 21.385736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.720657, 13.131042, 20.743395>,  <10.008512, 13.014522, 21.341330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.720657, 13.131042, 20.743395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.799600, 13.502077, 20.870287>,  <9.846965, 13.724698, 20.946423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.799600, 13.502077, 20.870287>,  <9.720657, 13.131042, 20.743395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.799600, 13.502077, 20.870287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050002, 0.313649, -0.948222,
		-0.979056, 0.203000, 0.015520,
		0.197357, 0.927586, 0.317230,
		9.858807, 13.780353, 20.965456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.191444, 13.545678, 20.438112>,  <9.720657, 13.131042, 20.743395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.191444, 13.545678, 20.438112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.486915, 13.797815, 20.533632>,  <9.664197, 13.949098, 20.590944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.486915, 13.797815, 20.533632>,  <9.191444, 13.545678, 20.438112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.486915, 13.797815, 20.533632> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153100, 0.501904, -0.851266,
		-0.656444, 0.592250, 0.467250,
		0.738676, 0.630344, 0.238798,
		9.708517, 13.986918, 20.605272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.059820, 14.248842, 20.161501>,  <9.191444, 13.545678, 20.438112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.059820, 14.248842, 20.161501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.452463, 14.267336, 20.235592>,  <9.688049, 14.278432, 20.280046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.452463, 14.267336, 20.235592>,  <9.059820, 14.248842, 20.161501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.452463, 14.267336, 20.235592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124744, 0.579117, -0.805644,
		-0.144516, 0.813932, 0.562699,
		0.981608, 0.046235, 0.185225,
		9.746945, 14.281206, 20.291159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.302029, 14.970265, 20.157965>,  <9.059820, 14.248842, 20.161501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.302029, 14.970265, 20.157965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.610540, 14.728431, 20.078363>,  <9.795648, 14.583330, 20.030602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.610540, 14.728431, 20.078363>,  <9.302029, 14.970265, 20.157965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.610540, 14.728431, 20.078363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050151, 0.369409, -0.927913,
		0.634517, 0.705701, 0.315238,
		0.771280, -0.604586, -0.199004,
		9.841925, 14.547055, 20.018661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.671285, 15.310375, 19.736206>,  <9.302029, 14.970265, 20.157965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.671285, 15.310375, 19.736206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.808058, 14.941715, 19.662840>,  <9.890121, 14.720519, 19.618820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.808058, 14.941715, 19.662840>,  <9.671285, 15.310375, 19.736206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.808058, 14.941715, 19.662840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102485, 0.230590, -0.967639,
		0.934119, 0.312070, 0.173302,
		0.341932, -0.921651, -0.183416,
		9.910638, 14.665220, 19.607815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.217422, 15.401122, 19.388302>,  <9.671285, 15.310375, 19.736206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.217422, 15.401122, 19.388302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.156286, 15.016654, 19.296394>,  <10.119604, 14.785974, 19.241251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.156286, 15.016654, 19.296394>,  <10.217422, 15.401122, 19.388302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.156286, 15.016654, 19.296394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174461, 0.202604, -0.963594,
		0.972730, -0.187362, 0.136720,
		-0.152841, -0.961169, -0.229767,
		10.110434, 14.728303, 19.227465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.635686, 15.929158, 19.634943>,  <10.217422, 15.401122, 19.388302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.635686, 15.929158, 19.634943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.609143, 16.326748, 19.600046>,  <10.593218, 16.565302, 19.579107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.609143, 16.326748, 19.600046>,  <10.635686, 15.929158, 19.634943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.609143, 16.326748, 19.600046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361354, 0.057562, 0.930650,
		0.930065, 0.093280, 0.355357,
		-0.066356, 0.993975, -0.087243,
		10.589236, 16.624941, 19.573874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.822076, 16.132338, 20.270781>,  <10.635686, 15.929158, 19.634943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.822076, 16.132338, 20.270781> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.613201, 16.433910, 20.111330>,  <10.487876, 16.614855, 20.015659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.613201, 16.433910, 20.111330>,  <10.822076, 16.132338, 20.270781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.613201, 16.433910, 20.111330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407263, 0.190227, 0.893281,
		0.749304, 0.628806, 0.207715,
		-0.522187, 0.753934, -0.398627,
		10.456545, 16.660091, 19.991741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.076534, 16.652504, 20.750269>,  <10.822076, 16.132338, 20.270781>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.076534, 16.652504, 20.750269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.729798, 16.711142, 20.559649>,  <10.521757, 16.746325, 20.445276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.729798, 16.711142, 20.559649>,  <11.076534, 16.652504, 20.750269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.729798, 16.711142, 20.559649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496239, -0.161012, 0.853125,
		0.048334, 0.976005, 0.212318,
		-0.866839, 0.146595, -0.476549,
		10.469747, 16.755119, 20.416683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.766922, 17.059891, 21.206541>,  <11.076534, 16.652504, 20.750269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.766922, 17.059891, 21.206541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.475832, 16.897282, 20.985577>,  <10.301178, 16.799717, 20.852999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.475832, 16.897282, 20.985577>,  <10.766922, 17.059891, 21.206541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.475832, 16.897282, 20.985577> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543142, -0.150250, 0.826088,
		-0.418822, 0.901202, -0.111458,
		-0.727726, -0.406521, -0.552409,
		10.257514, 16.775326, 20.819855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.143152, 17.375399, 21.533953>,  <10.766922, 17.059891, 21.206541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.143152, 17.375399, 21.533953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.999036, 17.073616, 21.314503>,  <9.912565, 16.892548, 21.182833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.999036, 17.073616, 21.314503>,  <10.143152, 17.375399, 21.533953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.999036, 17.073616, 21.314503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682055, -0.188164, 0.706679,
		-0.636389, 0.628802, -0.446786,
		-0.360292, -0.754455, -0.548623,
		9.890948, 16.847279, 21.149916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.407907, 17.543968, 21.540115>,  <10.143152, 17.375399, 21.533953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.407907, 17.543968, 21.540115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.477938, 17.160433, 21.450693>,  <9.519957, 16.930311, 21.397039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.477938, 17.160433, 21.450693>,  <9.407907, 17.543968, 21.540115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.477938, 17.160433, 21.450693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304829, -0.268694, 0.913719,
		-0.936177, -0.091827, -0.339324,
		0.175079, -0.958839, -0.223553,
		9.530461, 16.872782, 21.383627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.780927, 17.162949, 21.687199>,  <9.407907, 17.543968, 21.540115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.780927, 17.162949, 21.687199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.064505, 16.881193, 21.701244>,  <9.234652, 16.712139, 21.709673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.064505, 16.881193, 21.701244>,  <8.780927, 17.162949, 21.687199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.064505, 16.881193, 21.701244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316022, -0.272764, 0.908697,
		-0.630498, -0.655313, -0.415977,
		0.708945, -0.704389, 0.035116,
		9.277188, 16.669876, 21.711779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.428975, 16.625107, 22.016769>,  <8.780927, 17.162949, 21.687199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.428975, 16.625107, 22.016769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.821160, 16.560755, 22.062042>,  <9.056471, 16.522142, 22.089207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.821160, 16.560755, 22.062042>,  <8.428975, 16.625107, 22.016769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.821160, 16.560755, 22.062042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163267, -0.344657, 0.924422,
		-0.109712, -0.924840, -0.364190,
		0.980463, -0.160880, 0.113183,
		9.115299, 16.512491, 22.095997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.409414, 16.179012, 22.549007>,  <8.428975, 16.625107, 22.016769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.409414, 16.179012, 22.549007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.799840, 16.265640, 22.541040>,  <9.034096, 16.317617, 22.536261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.799840, 16.265640, 22.541040>,  <8.409414, 16.179012, 22.549007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.799840, 16.265640, 22.541040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069983, -0.226054, 0.971598,
		0.205916, -0.949735, -0.235799,
		0.976064, 0.216570, -0.019917,
		9.092659, 16.330610, 22.535065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.688809, 15.705505, 22.992807>,  <8.409414, 16.179012, 22.549007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.688809, 15.705505, 22.992807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.975007, 15.984825, 22.984335>,  <9.146726, 16.152416, 22.979252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.975007, 15.984825, 22.984335>,  <8.688809, 15.705505, 22.992807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.975007, 15.984825, 22.984335> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211522, -0.187633, 0.959193,
		0.665829, -0.690777, -0.281955,
		0.715492, 0.698298, -0.021183,
		9.189655, 16.194315, 22.977980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.328634, 15.424095, 23.218866>,  <8.688809, 15.705505, 22.992807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.328634, 15.424095, 23.218866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.378863, 15.813955, 23.292933>,  <9.409000, 16.047873, 23.337372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.378863, 15.813955, 23.292933>,  <9.328634, 15.424095, 23.218866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.378863, 15.813955, 23.292933> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076260, -0.195573, 0.977720,
		0.989149, -0.108654, -0.098885,
		0.125572, 0.974652, 0.185165,
		9.416535, 16.106350, 23.348482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.897738, 15.488208, 23.565372>,  <9.328634, 15.424095, 23.218866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.897738, 15.488208, 23.565372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.709690, 15.826115, 23.667633>,  <9.596862, 16.028858, 23.728989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.709690, 15.826115, 23.667633>,  <9.897738, 15.488208, 23.565372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.709690, 15.826115, 23.667633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150992, -0.208407, 0.966317,
		0.869592, 0.492884, -0.029577,
		-0.470118, 0.844767, 0.255650,
		9.568655, 16.079544, 23.744328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.382969, 15.873182, 24.038391>,  <9.897738, 15.488208, 23.565372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.382969, 15.873182, 24.038391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.007781, 15.998284, 24.098253>,  <9.782668, 16.073345, 24.134171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.007781, 15.998284, 24.098253>,  <10.382969, 15.873182, 24.038391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.007781, 15.998284, 24.098253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163989, 0.019887, 0.986262,
		0.305482, 0.949626, -0.069942,
		-0.937970, 0.312755, 0.149653,
		9.726390, 16.092112, 24.143148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.467582, 16.401716, 24.463041>,  <10.382969, 15.873182, 24.038391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.467582, 16.401716, 24.463041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.077095, 16.323244, 24.499947>,  <9.842803, 16.276161, 24.522089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.077095, 16.323244, 24.499947>,  <10.467582, 16.401716, 24.463041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.077095, 16.323244, 24.499947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071318, 0.111281, 0.991227,
		-0.204726, 0.974233, -0.094643,
		-0.976218, -0.196180, 0.092262,
		9.784229, 16.264391, 24.527626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.682944, 17.182995, 24.510361>,  <10.467582, 16.401716, 24.463041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.682944, 17.182995, 24.510361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.005019, 17.354963, 24.673744>,  <11.198264, 17.458145, 24.771774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.005019, 17.354963, 24.673744>,  <10.682944, 17.182995, 24.510361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.005019, 17.354963, 24.673744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382142, 0.150536, -0.911760,
		-0.453475, 0.890227, -0.043081,
		0.805188, 0.429923, 0.408457,
		11.246575, 17.483940, 24.796282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.759163, 17.726906, 24.101971>,  <10.682944, 17.182995, 24.510361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.759163, 17.726906, 24.101971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.117969, 17.695831, 24.276018>,  <11.333252, 17.677187, 24.380447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.117969, 17.695831, 24.276018>,  <10.759163, 17.726906, 24.101971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.117969, 17.695831, 24.276018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441312, 0.212354, -0.871866,
		-0.024668, 0.974100, 0.224768,
		0.897015, -0.077686, 0.435120,
		11.387073, 17.672525, 24.406553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.104543, 18.299259, 23.764887>,  <10.759163, 17.726906, 24.101971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.104543, 18.299259, 23.764887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.393060, 18.078085, 23.931740>,  <11.566170, 17.945381, 24.031853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.393060, 18.078085, 23.931740>,  <11.104543, 18.299259, 23.764887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.393060, 18.078085, 23.931740> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559227, 0.109580, -0.821741,
		0.408659, 0.825988, 0.388255,
		0.721293, -0.552935, 0.417133,
		11.609447, 17.912205, 24.056879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.819430, 18.724276, 23.852085>,  <11.104543, 18.299259, 23.764887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.819430, 18.724276, 23.852085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.892265, 18.331404, 23.833471>,  <11.935966, 18.095680, 23.822302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.892265, 18.331404, 23.833471>,  <11.819430, 18.724276, 23.852085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.892265, 18.331404, 23.833471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716078, 0.164892, -0.678264,
		0.673851, 0.090181, 0.733343,
		0.182089, -0.982180, -0.046536,
		11.946892, 18.036749, 23.819510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.504861, 18.586691, 24.139826>,  <11.819430, 18.724276, 23.852085>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.504861, 18.586691, 24.139826> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.392901, 18.271908, 23.919878>,  <12.325726, 18.083038, 23.787909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.392901, 18.271908, 23.919878>,  <12.504861, 18.586691, 24.139826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.392901, 18.271908, 23.919878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935961, -0.096236, -0.338698,
		0.213623, -0.609458, 0.763496,
		-0.279898, -0.786956, -0.549871,
		12.308932, 18.035822, 23.754917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.125735, 18.196426, 24.089987>,  <12.504861, 18.586691, 24.139826>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.125735, 18.196426, 24.089987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.879742, 18.101133, 23.789310>,  <12.732145, 18.043957, 23.608904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.879742, 18.101133, 23.789310>,  <13.125735, 18.196426, 24.089987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.879742, 18.101133, 23.789310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772666, 0.008252, -0.634759,
		0.157424, -0.971173, 0.179000,
		-0.614983, -0.238233, -0.751692,
		12.695247, 18.029663, 23.563803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.645952, 17.785154, 23.575306>,  <13.125735, 18.196426, 24.089987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.645952, 17.785154, 23.575306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.319735, 17.850258, 23.353170>,  <13.124004, 17.889320, 23.219889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.319735, 17.850258, 23.353170>,  <13.645952, 17.785154, 23.575306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.319735, 17.850258, 23.353170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578549, 0.250971, -0.776076,
		0.013061, -0.954213, -0.298841,
		-0.815543, 0.162758, -0.555337,
		13.075071, 17.899086, 23.186569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.801182, 17.460070, 22.983521>,  <13.645952, 17.785154, 23.575306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.801182, 17.460070, 22.983521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.504323, 17.689800, 22.845324>,  <13.326208, 17.827639, 22.762405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.504323, 17.689800, 22.845324>,  <13.801182, 17.460070, 22.983521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.504323, 17.689800, 22.845324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464222, 0.068656, -0.883054,
		-0.483442, -0.815741, -0.317569,
		-0.742147, 0.574328, -0.345494,
		13.281679, 17.862099, 22.741674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.400802, 17.118326, 22.368359>,  <13.801182, 17.460070, 22.983521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.400802, 17.118326, 22.368359> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.380919, 17.516870, 22.340673>,  <13.368989, 17.755997, 22.324062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.380919, 17.516870, 22.340673>,  <13.400802, 17.118326, 22.368359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.380919, 17.516870, 22.340673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432758, -0.040969, -0.900579,
		-0.900139, -0.074718, -0.429147,
		-0.049708, 0.996363, -0.069212,
		13.366006, 17.815779, 22.319910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.395636, 17.256744, 21.632113>,  <13.400802, 17.118326, 22.368359>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.395636, 17.256744, 21.632113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.489310, 17.615170, 21.782963>,  <13.545515, 17.830225, 21.873474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.489310, 17.615170, 21.782963>,  <13.395636, 17.256744, 21.632113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.489310, 17.615170, 21.782963> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636992, 0.151622, -0.755812,
		-0.734437, 0.417228, -0.535278,
		0.234186, 0.896065, 0.377128,
		13.559566, 17.883989, 21.896101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.449339, 17.630527, 21.092901>,  <13.395636, 17.256744, 21.632113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.449339, 17.630527, 21.092901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.640588, 17.859253, 21.359564>,  <13.755337, 17.996489, 21.519562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.640588, 17.859253, 21.359564>,  <13.449339, 17.630527, 21.092901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.640588, 17.859253, 21.359564> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633847, 0.300778, -0.712580,
		-0.607978, 0.763257, -0.218634,
		0.478121, 0.571814, 0.666655,
		13.784024, 18.030798, 21.559561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.357498, 18.356981, 20.879435>,  <13.449339, 17.630527, 21.092901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.357498, 18.356981, 20.879435> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.683068, 18.303137, 21.105497>,  <13.878410, 18.270830, 21.241135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.683068, 18.303137, 21.105497>,  <13.357498, 18.356981, 20.879435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.683068, 18.303137, 21.105497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553457, 0.475463, -0.683827,
		-0.176662, 0.869376, 0.461493,
		0.813926, -0.134611, 0.565159,
		13.927246, 18.262754, 21.275045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.812732, 19.005730, 20.903997>,  <13.357498, 18.356981, 20.879435>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.812732, 19.005730, 20.903997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.077388, 18.725712, 21.011457>,  <14.236181, 18.557701, 21.075933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.077388, 18.725712, 21.011457>,  <13.812732, 19.005730, 20.903997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.077388, 18.725712, 21.011457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660533, 0.374591, -0.650675,
		0.354866, 0.607965, 0.710246,
		0.661639, -0.700043, 0.268651,
		14.275880, 18.515699, 21.092052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.515972, 19.322044, 21.067413>,  <13.812732, 19.005730, 20.903997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.515972, 19.322044, 21.067413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.531623, 18.938944, 20.953447>,  <14.541013, 18.709084, 20.885067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.531623, 18.938944, 20.953447>,  <14.515972, 19.322044, 21.067413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.531623, 18.938944, 20.953447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532505, 0.261258, -0.805098,
		0.845522, -0.120220, 0.520231,
		0.039126, -0.957753, -0.284917,
		14.543361, 18.651617, 20.867971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<15.238541, 19.806149, 11.202445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.125011, 19.858900, 10.822539>,  <15.056893, 19.890551, 10.594596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.125011, 19.858900, 10.822539>,  <15.238541, 19.806149, 11.202445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.125011, 19.858900, 10.822539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708656, -0.696100, 0.115114,
		-0.645949, 0.705728, 0.291028,
		-0.283824, 0.131881, -0.949764,
		15.039865, 19.898464, 10.537610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.635795, 20.076214, 11.135590>,  <15.238541, 19.806149, 11.202445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.635795, 20.076214, 11.135590> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.690940, 19.880310, 10.791234>,  <14.724027, 19.762768, 10.584620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.690940, 19.880310, 10.791234>,  <14.635795, 20.076214, 11.135590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.690940, 19.880310, 10.791234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709884, -0.654992, 0.258943,
		-0.690695, 0.575432, -0.437971,
		0.137863, -0.489759, -0.860889,
		14.732299, 19.733383, 10.532968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.941751, 20.009916, 10.875224>,  <14.635795, 20.076214, 11.135590>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.941751, 20.009916, 10.875224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.202510, 19.747618, 10.722897>,  <14.358966, 19.590239, 10.631500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.202510, 19.747618, 10.722897>,  <13.941751, 20.009916, 10.875224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.202510, 19.747618, 10.722897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633680, -0.746919, 0.201398,
		-0.416507, 0.110026, -0.902450,
		0.651898, -0.655748, -0.380818,
		14.398079, 19.550894, 10.608651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.531297, 19.591984, 10.382206>,  <13.941751, 20.009916, 10.875224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.531297, 19.591984, 10.382206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.837316, 19.412037, 10.566519>,  <14.020927, 19.304068, 10.677106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.837316, 19.412037, 10.566519>,  <13.531297, 19.591984, 10.382206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.837316, 19.412037, 10.566519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620886, -0.705162, 0.342414,
		0.170884, -0.548056, -0.818800,
		0.765048, -0.449869, 0.460781,
		14.066830, 19.277077, 10.704753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.993572, 19.642330, 9.849617>,  <13.531297, 19.591984, 10.382206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.993572, 19.642330, 9.849617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.792088, 19.297159, 9.865767>,  <12.671197, 19.090057, 9.875458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.792088, 19.297159, 9.865767>,  <12.993572, 19.642330, 9.849617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.792088, 19.297159, 9.865767> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836743, 0.475739, -0.271170,
		0.214792, -0.170377, -0.961684,
		-0.503712, -0.862928, 0.040377,
		12.640974, 19.038280, 9.877880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.504416, 19.749603, 9.353072>,  <12.993572, 19.642330, 9.849617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.504416, 19.749603, 9.353072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.349367, 19.438009, 9.550223>,  <12.256338, 19.251053, 9.668514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.349367, 19.438009, 9.550223>,  <12.504416, 19.749603, 9.353072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.349367, 19.438009, 9.550223> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902613, 0.429312, -0.031335,
		-0.187189, -0.457025, -0.869533,
		-0.387622, -0.778987, 0.492879,
		12.233081, 19.204313, 9.698087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.879288, 19.488998, 8.955873>,  <12.504416, 19.749603, 9.353072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.879288, 19.488998, 8.955873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.864997, 19.371849, 9.338067>,  <11.856422, 19.301559, 9.567383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.864997, 19.371849, 9.338067>,  <11.879288, 19.488998, 8.955873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.864997, 19.371849, 9.338067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953614, 0.295953, 0.055058,
		-0.298903, -0.909196, -0.289862,
		-0.035727, -0.292873, 0.955483,
		11.854279, 19.283987, 9.624712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.115515, 19.606901, 9.094960>,  <11.879288, 19.488998, 8.955873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.115515, 19.606901, 9.094960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.282368, 19.505207, 9.443985>,  <11.382480, 19.444191, 9.653399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.282368, 19.505207, 9.443985>,  <11.115515, 19.606901, 9.094960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.282368, 19.505207, 9.443985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852932, 0.222044, 0.472444,
		-0.313860, -0.941308, -0.124224,
		0.417132, -0.254236, 0.872562,
		11.407507, 19.428936, 9.705753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.731817, 19.067322, 9.334249>,  <11.115515, 19.606901, 9.094960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.731817, 19.067322, 9.334249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.907722, 19.274658, 9.627623>,  <11.013266, 19.399061, 9.803647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.907722, 19.274658, 9.627623>,  <10.731817, 19.067322, 9.334249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.907722, 19.274658, 9.627623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886822, 0.121530, 0.445845,
		0.141974, -0.846484, 0.513135,
		0.439762, 0.518358, 0.733426,
		11.039652, 19.430161, 9.847653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.494162, 18.738308, 9.885818>,  <10.731817, 19.067322, 9.334249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.494162, 18.738308, 9.885818> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.618753, 19.098782, 10.006383>,  <10.693508, 19.315065, 10.078722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.618753, 19.098782, 10.006383>,  <10.494162, 18.738308, 9.885818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.618753, 19.098782, 10.006383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789858, 0.069189, 0.609374,
		0.528304, -0.427881, 0.733358,
		0.311479, 0.901183, 0.301412,
		10.712197, 19.369137, 10.096807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.366008, 18.767830, 10.597933>,  <10.494162, 18.738308, 9.885818>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.366008, 18.767830, 10.597933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.383058, 19.149828, 10.480515>,  <10.393288, 19.379026, 10.410064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.383058, 19.149828, 10.480515>,  <10.366008, 18.767830, 10.597933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.383058, 19.149828, 10.480515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824907, 0.199400, 0.528931,
		0.563659, 0.219602, 0.796281,
		0.042625, 0.954994, -0.293545,
		10.395845, 19.436327, 10.392451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.326395, 19.230753, 11.132258>,  <10.366008, 18.767830, 10.597933>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.326395, 19.230753, 11.132258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.197290, 19.444094, 10.819500>,  <10.119828, 19.572098, 10.631845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.197290, 19.444094, 10.819500>,  <10.326395, 19.230753, 11.132258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.197290, 19.444094, 10.819500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823066, 0.249724, 0.510099,
		0.467320, 0.808192, 0.358383,
		-0.322761, 0.533352, -0.781896,
		10.100462, 19.604099, 10.584931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.910960, 19.787771, 11.460953>,  <10.326395, 19.230753, 11.132258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.910960, 19.787771, 11.460953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.789456, 19.798153, 11.079995>,  <9.716554, 19.804382, 10.851420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.789456, 19.798153, 11.079995>,  <9.910960, 19.787771, 11.460953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.789456, 19.798153, 11.079995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937485, 0.170072, 0.303640,
		0.169856, 0.985090, -0.027329,
		-0.303760, 0.025954, -0.952395,
		9.698328, 19.805939, 10.794276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.629335, 20.478251, 11.170260>,  <9.910960, 19.787771, 11.460953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.629335, 20.478251, 11.170260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.456185, 20.209639, 10.929705>,  <9.352296, 20.048471, 10.785371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.456185, 20.209639, 10.929705>,  <9.629335, 20.478251, 11.170260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.456185, 20.209639, 10.929705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875745, 0.155076, 0.457191,
		-0.213756, 0.724570, -0.655216,
		-0.432874, -0.671528, -0.601390,
		9.326323, 20.008181, 10.749288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.913290, 20.755640, 11.049726>,  <9.629335, 20.478251, 11.170260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.913290, 20.755640, 11.049726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.900097, 20.364574, 10.966702>,  <8.892181, 20.129934, 10.916886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.900097, 20.364574, 10.966702>,  <8.913290, 20.755640, 11.049726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.900097, 20.364574, 10.966702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948620, -0.034767, 0.314502,
		-0.314694, 0.207272, -0.926286,
		-0.032983, -0.977665, -0.207563,
		8.890202, 20.071276, 10.904432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.215867, 20.568544, 10.802014>,  <8.913290, 20.755640, 11.049726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.215867, 20.568544, 10.802014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.345309, 20.199594, 10.886397>,  <8.422975, 19.978224, 10.937027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.345309, 20.199594, 10.886397>,  <8.215867, 20.568544, 10.802014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.345309, 20.199594, 10.886397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910986, -0.243470, 0.332907,
		-0.255703, -0.299911, -0.919059,
		0.323606, -0.922375, 0.210958,
		8.442391, 19.922882, 10.949684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.650399, 20.133455, 10.539757>,  <8.215867, 20.568544, 10.802014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.650399, 20.133455, 10.539757> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.864416, 19.907486, 10.791024>,  <7.992826, 19.771904, 10.941785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.864416, 19.907486, 10.791024>,  <7.650399, 20.133455, 10.539757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.864416, 19.907486, 10.791024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832393, -0.479603, 0.277674,
		0.144407, -0.671450, -0.726844,
		0.535040, -0.564922, 0.628168,
		8.024928, 19.738010, 10.979475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.461108, 19.430859, 10.483377>,  <7.650399, 20.133455, 10.539757>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.461108, 19.430859, 10.483377> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.649291, 19.454147, 10.835577>,  <7.762201, 19.468121, 11.046897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.649291, 19.454147, 10.835577>,  <7.461108, 19.430859, 10.483377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.649291, 19.454147, 10.835577> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725883, -0.541844, 0.423673,
		0.501760, -0.838460, -0.212653,
		0.470458, 0.058221, 0.880500,
		7.790428, 19.471613, 11.099727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.584856, 18.767494, 10.710776>,  <7.461108, 19.430859, 10.483377>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.584856, 18.767494, 10.710776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.593982, 18.965168, 11.058399>,  <7.599457, 19.083773, 11.266973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.593982, 18.965168, 11.058399>,  <7.584856, 18.767494, 10.710776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.593982, 18.965168, 11.058399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429574, -0.780099, 0.454876,
		0.902743, -0.383703, 0.194491,
		0.022815, 0.494185, 0.869058,
		7.600826, 19.113424, 11.319117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.812049, 18.320780, 11.250092>,  <7.584856, 18.767494, 10.710776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.812049, 18.320780, 11.250092> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.633363, 18.615263, 11.453441>,  <7.526151, 18.791954, 11.575450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.633363, 18.615263, 11.453441>,  <7.812049, 18.320780, 11.250092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.633363, 18.615263, 11.453441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538040, -0.675049, 0.504800,
		0.714813, -0.048022, 0.697664,
		-0.446716, 0.736209, 0.508372,
		7.499348, 18.836126, 11.605952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.839997, 18.030947, 11.774018>,  <7.812049, 18.320780, 11.250092>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.839997, 18.030947, 11.774018> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.574176, 18.322660, 11.839149>,  <7.414684, 18.497688, 11.878226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.574176, 18.322660, 11.839149>,  <7.839997, 18.030947, 11.774018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.574176, 18.322660, 11.839149> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468587, -0.576455, 0.669423,
		0.582062, 0.368569, 0.724818,
		-0.664553, 0.729285, 0.162826,
		7.374810, 18.541447, 11.887997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.767200, 18.086866, 12.467286>,  <7.839997, 18.030947, 11.774018>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.767200, 18.086866, 12.467286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.430828, 18.255615, 12.331721>,  <7.229005, 18.356865, 12.250382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.430828, 18.255615, 12.331721>,  <7.767200, 18.086866, 12.467286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.430828, 18.255615, 12.331721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539476, -0.604434, 0.586195,
		0.042449, 0.675784, 0.735877,
		-0.840930, 0.421871, -0.338912,
		7.178549, 18.382177, 12.230048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.456630, 18.322180, 13.033981>,  <7.767200, 18.086866, 12.467286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.456630, 18.322180, 13.033981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.147107, 18.313091, 12.780777>,  <6.961392, 18.307638, 12.628854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.147107, 18.313091, 12.780777>,  <7.456630, 18.322180, 13.033981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.147107, 18.313091, 12.780777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589610, -0.339364, 0.732934,
		-0.231475, 0.940381, 0.249206,
		-0.773809, -0.022721, -0.633012,
		6.914964, 18.306274, 12.590874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.807589, 18.551197, 13.493311>,  <7.456630, 18.322180, 13.033981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.807589, 18.551197, 13.493311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.690317, 18.342066, 13.173137>,  <6.619953, 18.216587, 12.981032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.690317, 18.342066, 13.173137>,  <6.807589, 18.551197, 13.493311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.690317, 18.342066, 13.173137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721369, -0.428474, 0.544092,
		-0.627432, 0.736927, -0.251532,
		-0.293181, -0.522828, -0.800435,
		6.602362, 18.185217, 12.933006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.078521, 18.531162, 13.634160>,  <6.807589, 18.551197, 13.493311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.078521, 18.531162, 13.634160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.154391, 18.259310, 13.350717>,  <6.199913, 18.096199, 13.180651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.154391, 18.259310, 13.350717>,  <6.078521, 18.531162, 13.634160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.154391, 18.259310, 13.350717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657812, -0.623749, 0.422162,
		-0.728908, 0.386058, -0.565379,
		0.189675, -0.679630, -0.708609,
		6.211293, 18.055420, 13.138134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.460887, 18.279753, 13.323680>,  <6.078521, 18.531162, 13.634160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.460887, 18.279753, 13.323680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.695654, 17.967920, 13.236246>,  <5.836514, 17.780821, 13.183785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.695654, 17.967920, 13.236246>,  <5.460887, 18.279753, 13.323680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.695654, 17.967920, 13.236246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747541, -0.625470, 0.223536,
		-0.310983, 0.032204, -0.949869,
		0.586916, -0.779583, -0.218584,
		5.871729, 17.734045, 13.170671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.990723, 17.785589, 13.037400>,  <5.460887, 18.279753, 13.323680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.990723, 17.785589, 13.037400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.316693, 17.580099, 13.144716>,  <5.512276, 17.456804, 13.209105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.316693, 17.580099, 13.144716>,  <4.990723, 17.785589, 13.037400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.316693, 17.580099, 13.144716> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579415, -0.732674, 0.357026,
		0.013155, -0.446401, -0.894736,
		0.814927, -0.513727, 0.268290,
		5.561171, 17.425982, 13.225204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.890071, 17.129148, 12.736639>,  <4.990723, 17.785589, 13.037400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.890071, 17.129148, 12.736639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.133910, 17.115675, 13.053437>,  <5.280213, 17.107592, 13.243516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.133910, 17.115675, 13.053437>,  <4.890071, 17.129148, 12.736639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.133910, 17.115675, 13.053437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436707, -0.848086, 0.300061,
		0.661574, -0.528786, -0.531700,
		0.609596, -0.033684, 0.791996,
		5.316789, 17.105570, 13.291037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.903442, 16.538155, 12.945335>,  <4.890071, 17.129148, 12.736639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.903442, 16.538155, 12.945335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.129392, 16.653999, 13.254409>,  <5.264962, 16.723507, 13.439853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.129392, 16.653999, 13.254409>,  <4.903442, 16.538155, 12.945335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.129392, 16.653999, 13.254409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297042, -0.802246, 0.517849,
		0.769859, -0.522039, -0.367141,
		0.564875, 0.289614, 0.772684,
		5.298854, 16.740883, 13.486214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.259303, 15.978456, 13.137991>,  <4.903442, 16.538155, 12.945335>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.259303, 15.978456, 13.137991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.238782, 16.193693, 13.474521>,  <5.226469, 16.322834, 13.676438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.238782, 16.193693, 13.474521>,  <5.259303, 15.978456, 13.137991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.238782, 16.193693, 13.474521> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202132, -0.830593, 0.518901,
		0.978014, -0.143438, 0.151378,
		-0.051303, 0.538091, 0.841324,
		5.223391, 16.355120, 13.726918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.691379, 15.680566, 13.536288>,  <5.259303, 15.978456, 13.137991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.691379, 15.680566, 13.536288> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.397774, 15.850209, 13.748461>,  <5.221611, 15.951995, 13.875764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.397774, 15.850209, 13.748461>,  <5.691379, 15.680566, 13.536288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.397774, 15.850209, 13.748461> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171222, -0.871374, 0.459772,
		0.657196, 0.246657, 0.712217,
		-0.734013, 0.424108, 0.530431,
		5.177570, 15.977442, 13.907590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.081581, 15.056518, 13.344346>,  <5.691379, 15.680566, 13.536288>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.081581, 15.056518, 13.344346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.166043, 14.705306, 13.172543>,  <6.216720, 14.494579, 13.069460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.166043, 14.705306, 13.172543>,  <6.081581, 15.056518, 13.344346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.166043, 14.705306, 13.172543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941051, 0.301415, -0.153533,
		0.264267, -0.371771, 0.889915,
		0.211155, -0.878029, -0.429509,
		6.229389, 14.441897, 13.043690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.760993, 14.798229, 13.673036>,  <6.081581, 15.056518, 13.344346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.760993, 14.798229, 13.673036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.720829, 14.594229, 13.331319>,  <6.696730, 14.471828, 13.126288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.720829, 14.594229, 13.331319>,  <6.760993, 14.798229, 13.673036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.720829, 14.594229, 13.331319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913022, 0.293961, -0.282805,
		0.395359, -0.808385, 0.436125,
		-0.100411, -0.510001, -0.854293,
		6.690706, 14.441228, 13.075031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.359422, 14.393473, 13.711125>,  <6.760993, 14.798229, 13.673036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.359422, 14.393473, 13.711125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.217780, 14.423188, 13.338225>,  <7.132795, 14.441017, 13.114485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.217780, 14.423188, 13.338225>,  <7.359422, 14.393473, 13.711125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.217780, 14.423188, 13.338225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877477, 0.371199, -0.303719,
		0.323487, -0.925577, -0.196630,
		-0.354104, 0.074289, -0.932251,
		7.111549, 14.445475, 13.058550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.812689, 14.030374, 13.262596>,  <7.359422, 14.393473, 13.711125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.812689, 14.030374, 13.262596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.625475, 14.297071, 13.030599>,  <7.513146, 14.457090, 12.891400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.625475, 14.297071, 13.030599>,  <7.812689, 14.030374, 13.262596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.625475, 14.297071, 13.030599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882235, 0.314639, -0.350234,
		-0.051027, -0.675614, -0.735488,
		-0.468036, 0.666745, -0.579995,
		7.485064, 14.497095, 12.856600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.100915, 13.882415, 12.652128>,  <7.812689, 14.030374, 13.262596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.100915, 13.882415, 12.652128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.951461, 14.252115, 12.620745>,  <7.861788, 14.473935, 12.601914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.951461, 14.252115, 12.620745>,  <8.100915, 13.882415, 12.652128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.951461, 14.252115, 12.620745> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841633, 0.302245, -0.447550,
		-0.389935, -0.233254, -0.890810,
		-0.373636, 0.924251, -0.078458,
		7.839370, 14.529390, 12.597207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.302157, 14.191450, 12.000172>,  <8.100915, 13.882415, 12.652128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.302157, 14.191450, 12.000172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.183836, 14.511382, 12.209083>,  <8.112844, 14.703341, 12.334430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.183836, 14.511382, 12.209083>,  <8.302157, 14.191450, 12.000172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.183836, 14.511382, 12.209083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820884, 0.492445, -0.289217,
		-0.488517, 0.343179, -0.802234,
		-0.295803, 0.799829, 0.522278,
		8.095095, 14.751330, 12.365766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.431122, 14.781108, 11.682858>,  <8.302157, 14.191450, 12.000172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.431122, 14.781108, 11.682858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.413129, 14.963037, 12.038636>,  <8.402333, 15.072194, 12.252103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.413129, 14.963037, 12.038636>,  <8.431122, 14.781108, 11.682858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.413129, 14.963037, 12.038636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780809, 0.571387, -0.252694,
		-0.623148, 0.683121, -0.380831,
		-0.044981, 0.454822, 0.889446,
		8.399634, 15.099483, 12.305470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.697144, 15.442008, 11.556844>,  <8.431122, 14.781108, 11.682858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.697144, 15.442008, 11.556844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.708919, 15.485880, 11.954256>,  <8.715983, 15.512203, 12.192703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.708919, 15.485880, 11.954256>,  <8.697144, 15.442008, 11.556844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.708919, 15.485880, 11.954256> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760772, 0.642257, -0.093442,
		-0.648351, 0.758601, -0.064535,
		0.029437, 0.109680, 0.993531,
		8.717750, 15.518784, 12.252316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.712942, 16.115759, 11.753457>,  <8.697144, 15.442008, 11.556844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.712942, 16.115759, 11.753457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.870455, 15.983445, 12.096506>,  <8.964963, 15.904057, 12.302336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.870455, 15.983445, 12.096506>,  <8.712942, 16.115759, 11.753457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.870455, 15.983445, 12.096506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654984, 0.755586, -0.009311,
		-0.644928, 0.565396, 0.514195,
		0.393783, -0.330784, 0.857623,
		8.988589, 15.884210, 12.353793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.828267, 16.681412, 12.029708>,  <8.712942, 16.115759, 11.753457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.828267, 16.681412, 12.029708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.068454, 16.438866, 12.238231>,  <9.212565, 16.293339, 12.363344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.068454, 16.438866, 12.238231>,  <8.828267, 16.681412, 12.029708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.068454, 16.438866, 12.238231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675361, 0.733622, 0.075409,
		-0.428168, 0.306791, 0.850030,
		0.600466, -0.606365, 0.521308,
		9.248593, 16.256956, 12.394623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.038223, 17.076172, 12.461639>,  <8.828267, 16.681412, 12.029708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.038223, 17.076172, 12.461639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.289251, 16.768032, 12.506740>,  <9.439868, 16.583147, 12.533799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.289251, 16.768032, 12.506740>,  <9.038223, 17.076172, 12.461639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.289251, 16.768032, 12.506740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773043, 0.633764, 0.027331,
		-0.092511, 0.070008, 0.993248,
		0.627571, -0.770352, 0.112750,
		9.477523, 16.536926, 12.540565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.389714, 17.232302, 13.110182>,  <9.038223, 17.076172, 12.461639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.389714, 17.232302, 13.110182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.620194, 16.999609, 12.880546>,  <9.758482, 16.859993, 12.742764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.620194, 16.999609, 12.880546>,  <9.389714, 17.232302, 13.110182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.620194, 16.999609, 12.880546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774714, 0.612548, 0.156858,
		0.260409, -0.535137, 0.803626,
		0.576200, -0.581733, -0.574091,
		9.793055, 16.825089, 12.708319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.062329, 17.305256, 13.518888>,  <9.389714, 17.232302, 13.110182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.062329, 17.305256, 13.518888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.152899, 17.162905, 13.156213>,  <10.207240, 17.077494, 12.938607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.152899, 17.162905, 13.156213>,  <10.062329, 17.305256, 13.518888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.152899, 17.162905, 13.156213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836278, 0.548269, -0.006356,
		0.499371, -0.756804, 0.421753,
		0.226424, -0.355877, -0.906689,
		10.220826, 17.056141, 12.884206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.791685, 17.270325, 13.515054>,  <10.062329, 17.305256, 13.518888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.791685, 17.270325, 13.515054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.679629, 17.275110, 13.131100>,  <10.612395, 17.277981, 12.900727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.679629, 17.275110, 13.131100>,  <10.791685, 17.270325, 13.515054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.679629, 17.275110, 13.131100> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774013, 0.594278, -0.218488,
		0.567824, -0.804171, -0.175741,
		-0.280141, 0.011964, -0.959885,
		10.595587, 17.278700, 12.843134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.373201, 17.100826, 13.177274>,  <10.791685, 17.270325, 13.515054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.373201, 17.100826, 13.177274> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.127213, 17.292572, 12.926826>,  <10.979621, 17.407619, 12.776558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.127213, 17.292572, 12.926826>,  <11.373201, 17.100826, 13.177274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.127213, 17.292572, 12.926826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716442, 0.671365, -0.189683,
		0.329427, -0.565226, -0.756305,
		-0.614970, 0.479362, -0.626118,
		10.942722, 17.436380, 12.738991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.839008, 17.456846, 12.790614>,  <11.373201, 17.100826, 13.177274>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.839008, 17.456846, 12.790614> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.485850, 17.629602, 12.716898>,  <11.273955, 17.733257, 12.672668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.485850, 17.629602, 12.716898>,  <11.839008, 17.456846, 12.790614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.485850, 17.629602, 12.716898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458175, 0.878284, -0.136721,
		0.102811, -0.205148, -0.973316,
		-0.882896, 0.431893, -0.184291,
		11.220982, 17.759171, 12.661611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.016531, 17.909891, 12.200550>,  <11.839008, 17.456846, 12.790614>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.016531, 17.909891, 12.200550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.686354, 18.027794, 12.393117>,  <11.488248, 18.098536, 12.508657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.686354, 18.027794, 12.393117>,  <12.016531, 17.909891, 12.200550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.686354, 18.027794, 12.393117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366823, 0.928316, 0.060578,
		-0.429053, 0.226599, -0.874395,
		-0.825442, 0.294757, 0.481418,
		11.438721, 18.116220, 12.537542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.829928, 18.534155, 11.915185>,  <12.016531, 17.909891, 12.200550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.829928, 18.534155, 11.915185> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.643168, 18.531767, 12.268901>,  <11.531113, 18.530334, 12.481131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.643168, 18.531767, 12.268901>,  <11.829928, 18.534155, 11.915185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.643168, 18.531767, 12.268901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351733, 0.916220, 0.191896,
		-0.811350, 0.400631, -0.425683,
		-0.466899, -0.005968, 0.884291,
		11.503098, 18.529976, 12.534188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.673710, 19.205524, 12.010772>,  <11.829928, 18.534155, 11.915185>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.673710, 19.205524, 12.010772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.638885, 19.071686, 12.386105>,  <11.617990, 18.991383, 12.611304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.638885, 19.071686, 12.386105>,  <11.673710, 19.205524, 12.010772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.638885, 19.071686, 12.386105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062226, 0.938242, 0.340338,
		-0.994257, 0.088020, -0.060866,
		-0.087064, -0.334596, 0.938331,
		11.612765, 18.971308, 12.667603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.274129, 19.657440, 12.276400>,  <11.673710, 19.205524, 12.010772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.274129, 19.657440, 12.276400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.408039, 19.473738, 12.605521>,  <11.488385, 19.363516, 12.802995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.408039, 19.473738, 12.605521>,  <11.274129, 19.657440, 12.276400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.408039, 19.473738, 12.605521> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272627, 0.883051, 0.381962,
		-0.901998, 0.096447, 0.420830,
		0.334775, -0.459258, 0.822804,
		11.508471, 19.335960, 12.852363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.967267, 19.964415, 12.889132>,  <11.274129, 19.657440, 12.276400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.967267, 19.964415, 12.889132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.310930, 19.794462, 13.003201>,  <11.517128, 19.692492, 13.071644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.310930, 19.794462, 13.003201>,  <10.967267, 19.964415, 12.889132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.310930, 19.794462, 13.003201> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228914, 0.817551, 0.528401,
		-0.457652, -0.388700, 0.799667,
		0.859158, -0.424879, 0.285175,
		11.568678, 19.666998, 13.088754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<13.224068, 16.456022, 25.479189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.109303, 16.081345, 25.398901>,  <13.040443, 15.856539, 25.350727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.109303, 16.081345, 25.398901>,  <13.224068, 16.456022, 25.479189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.109303, 16.081345, 25.398901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494973, -0.034437, 0.868226,
		-0.820173, 0.348456, -0.453757,
		-0.286913, -0.936692, -0.200721,
		13.023229, 15.800337, 25.338684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.448311, 16.396013, 25.564949>,  <13.224068, 16.456022, 25.479189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.448311, 16.396013, 25.564949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.637745, 16.047745, 25.618084>,  <12.751406, 15.838783, 25.649965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.637745, 16.047745, 25.618084>,  <12.448311, 16.396013, 25.564949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.637745, 16.047745, 25.618084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487835, -0.133740, 0.862630,
		-0.733303, -0.473331, -0.488082,
		0.473585, -0.870673, 0.132836,
		12.779820, 15.786543, 25.657934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.916974, 15.904170, 25.804609>,  <12.448311, 16.396013, 25.564949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.916974, 15.904170, 25.804609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.259704, 15.743573, 25.934013>,  <12.465342, 15.647215, 26.011656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.259704, 15.743573, 25.934013>,  <11.916974, 15.904170, 25.804609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.259704, 15.743573, 25.934013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448689, -0.271468, 0.851460,
		-0.254034, -0.874704, -0.412746,
		0.856823, -0.401494, 0.323508,
		12.516750, 15.623126, 26.031067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.762730, 15.358884, 26.278856>,  <11.916974, 15.904170, 25.804609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.762730, 15.358884, 26.278856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.157172, 15.371374, 26.344120>,  <12.393838, 15.378868, 26.383278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.157172, 15.371374, 26.344120>,  <11.762730, 15.358884, 26.278856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.157172, 15.371374, 26.344120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158556, -0.116063, 0.980505,
		0.049554, -0.992751, -0.109499,
		0.986106, 0.031226, 0.163158,
		12.453004, 15.380742, 26.393068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.965913, 14.675421, 26.655697>,  <11.762730, 15.358884, 26.278856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.965913, 14.675421, 26.655697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.260284, 14.938981, 26.717999>,  <12.436908, 15.097117, 26.755379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.260284, 14.938981, 26.717999>,  <11.965913, 14.675421, 26.655697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.260284, 14.938981, 26.717999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077701, -0.146332, 0.986179,
		0.672585, -0.737860, -0.056493,
		0.735929, 0.658900, 0.155753,
		12.481063, 15.136651, 26.764725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.429152, 14.302198, 27.097929>,  <11.965913, 14.675421, 26.655697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.429152, 14.302198, 27.097929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.505011, 14.690451, 27.157141>,  <12.550526, 14.923402, 27.192667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.505011, 14.690451, 27.157141>,  <12.429152, 14.302198, 27.097929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.505011, 14.690451, 27.157141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103167, -0.130229, 0.986102,
		0.976417, -0.202283, 0.075439,
		0.189648, 0.970629, 0.148027,
		12.561905, 14.981640, 27.201550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.929482, 14.283056, 27.578421>,  <12.429152, 14.302198, 27.097929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.929482, 14.283056, 27.578421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.739786, 14.634891, 27.593540>,  <12.625969, 14.845991, 27.602612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.739786, 14.634891, 27.593540>,  <12.929482, 14.283056, 27.578421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.739786, 14.634891, 27.593540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048397, -0.016825, 0.998686,
		0.879065, 0.475445, -0.034591,
		-0.474238, 0.879585, 0.037800,
		12.597515, 14.898766, 27.604881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.282946, 14.516313, 28.069443>,  <12.929482, 14.283056, 27.578421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.282946, 14.516313, 28.069443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.940915, 14.718976, 28.025366>,  <12.735697, 14.840574, 27.998919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.940915, 14.718976, 28.025366>,  <13.282946, 14.516313, 28.069443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.940915, 14.718976, 28.025366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192292, -0.112501, 0.974868,
		0.481529, 0.854775, 0.193623,
		-0.855076, 0.506659, -0.110194,
		12.684393, 14.870974, 27.992308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.318987, 14.945973, 28.488848>,  <13.282946, 14.516313, 28.069443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.318987, 14.945973, 28.488848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.921967, 14.964190, 28.443647>,  <12.683755, 14.975121, 28.416527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.921967, 14.964190, 28.443647>,  <13.318987, 14.945973, 28.488848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.921967, 14.964190, 28.443647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108888, 0.084484, 0.990457,
		0.054655, 0.995384, -0.078896,
		-0.992550, 0.045542, -0.113003,
		12.624202, 14.977853, 28.409746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.111241, 15.376491, 29.009911>,  <13.318987, 14.945973, 28.488848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.111241, 15.376491, 29.009911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.757537, 15.219318, 28.908964>,  <12.545315, 15.125015, 28.848396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.757537, 15.219318, 28.908964>,  <13.111241, 15.376491, 29.009911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.757537, 15.219318, 28.908964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289926, 0.038262, 0.956284,
		-0.366097, 0.918771, -0.147754,
		-0.884260, -0.392931, -0.252368,
		12.492259, 15.101439, 28.833254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.549006, 15.785692, 29.447330>,  <13.111241, 15.376491, 29.009911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.549006, 15.785692, 29.447330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.413261, 15.423573, 29.345137>,  <12.331815, 15.206303, 29.283821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.413261, 15.423573, 29.345137>,  <12.549006, 15.785692, 29.447330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.413261, 15.423573, 29.345137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359697, -0.126070, 0.924513,
		-0.869167, 0.405642, -0.282849,
		-0.339362, -0.905296, -0.255484,
		12.311453, 15.151984, 29.268492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.805231, 15.735181, 29.671154>,  <12.549006, 15.785692, 29.447330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.805231, 15.735181, 29.671154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.941666, 15.360139, 29.644152>,  <12.023526, 15.135114, 29.627951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.941666, 15.360139, 29.644152>,  <11.805231, 15.735181, 29.671154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.941666, 15.360139, 29.644152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308226, -0.179393, 0.934246,
		-0.888064, -0.297851, -0.350183,
		0.341087, -0.937605, -0.067507,
		12.043992, 15.078857, 29.623899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.390350, 15.356896, 29.978071>,  <11.805231, 15.735181, 29.671154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.390350, 15.356896, 29.978071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.717594, 15.127185, 29.966049>,  <11.913940, 14.989358, 29.958836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.717594, 15.127185, 29.966049>,  <11.390350, 15.356896, 29.978071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.717594, 15.127185, 29.966049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158559, -0.275499, 0.948135,
		-0.552773, -0.770911, -0.316445,
		0.818108, -0.574279, -0.030053,
		11.963027, 14.954902, 29.957033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.829049, 15.816339, 30.018335>,  <11.390350, 15.356896, 29.978071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.829049, 15.816339, 30.018335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.597363, 15.562068, 30.222464>,  <10.458352, 15.409506, 30.344940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.597363, 15.562068, 30.222464>,  <10.829049, 15.816339, 30.018335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.597363, 15.562068, 30.222464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777869, 0.243785, -0.579214,
		0.243785, -0.732450, -0.635677,
		0.579214, 0.635677, -0.510319,
		10.423599, 15.371365, 30.375559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.265282, 16.348248, 30.185455>,  <10.829049, 15.816339, 30.018335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.265282, 16.348248, 30.185455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.902891, 16.507729, 30.128548>,  <9.685456, 16.603418, 30.094402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.902891, 16.507729, 30.128548>,  <10.265282, 16.348248, 30.185455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.902891, 16.507729, 30.128548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218466, 0.152491, -0.963856,
		-0.362599, -0.904313, -0.225256,
		-0.905977, 0.398704, -0.142269,
		9.631098, 16.627340, 30.085867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.005115, 16.056240, 29.538593>,  <10.265282, 16.348248, 30.185455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.005115, 16.056240, 29.538593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.795933, 16.388105, 29.616745>,  <9.670424, 16.587225, 29.663637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.795933, 16.388105, 29.616745>,  <10.005115, 16.056240, 29.538593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.795933, 16.388105, 29.616745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286926, 0.387198, -0.876214,
		-0.802616, -0.402160, -0.440540,
		-0.522954, 0.829666, 0.195381,
		9.639047, 16.637005, 29.675360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.682327, 16.195911, 28.878677>,  <10.005115, 16.056240, 29.538593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.682327, 16.195911, 28.878677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.718173, 16.542753, 29.074678>,  <9.739680, 16.750858, 29.192280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.718173, 16.542753, 29.074678>,  <9.682327, 16.195911, 28.878677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.718173, 16.542753, 29.074678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480049, 0.393460, -0.784055,
		-0.872652, 0.305489, -0.380992,
		0.089615, 0.867102, 0.490003,
		9.745057, 16.802883, 29.221680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.529717, 16.711870, 28.401165>,  <9.682327, 16.195911, 28.878677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.529717, 16.711870, 28.401165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.680004, 16.922338, 28.706316>,  <9.770176, 17.048618, 28.889406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.680004, 16.922338, 28.706316>,  <9.529717, 16.711870, 28.401165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.680004, 16.922338, 28.706316> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406039, 0.646508, -0.645880,
		-0.833049, 0.552426, 0.029258,
		0.375716, 0.526169, 0.762878,
		9.792719, 17.080189, 28.935179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.415101, 17.366796, 28.191088>,  <9.529717, 16.711870, 28.401165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.415101, 17.366796, 28.191088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.704225, 17.380774, 28.467154>,  <9.877699, 17.389160, 28.632793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.704225, 17.380774, 28.467154>,  <9.415101, 17.366796, 28.191088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.704225, 17.380774, 28.467154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521415, 0.627850, -0.577867,
		-0.453511, 0.777550, 0.435596,
		0.722810, 0.034943, 0.690163,
		9.921067, 17.391256, 28.674202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.545014, 18.113829, 28.371473>,  <9.415101, 17.366796, 28.191088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.545014, 18.113829, 28.371473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.844273, 17.848759, 28.384977>,  <10.023828, 17.689716, 28.393080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.844273, 17.848759, 28.384977>,  <9.545014, 18.113829, 28.371473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.844273, 17.848759, 28.384977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439715, 0.457039, -0.773153,
		0.496921, 0.593276, 0.633320,
		0.748145, -0.662676, 0.033761,
		10.068716, 17.649956, 28.395105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.912906, 18.360073, 27.862957>,  <9.545014, 18.113829, 28.371473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.912906, 18.360073, 27.862957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.093263, 18.016411, 27.959740>,  <10.201477, 17.810213, 28.017809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.093263, 18.016411, 27.959740>,  <9.912906, 18.360073, 27.862957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.093263, 18.016411, 27.959740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580558, 0.076391, -0.810627,
		0.677973, 0.505976, 0.533235,
		0.450893, -0.859158, 0.241958,
		10.228531, 17.758663, 28.032328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.659284, 18.489517, 27.863214>,  <9.912906, 18.360073, 27.862957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.659284, 18.489517, 27.863214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.649512, 18.091034, 27.829803>,  <10.643650, 17.851944, 27.809757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.649512, 18.091034, 27.829803>,  <10.659284, 18.489517, 27.863214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.649512, 18.091034, 27.829803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651358, 0.047522, -0.757280,
		0.758377, -0.072904, 0.647726,
		-0.024428, -0.996206, -0.083526,
		10.642184, 17.792171, 27.804745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.326353, 18.376909, 27.473063>,  <10.659284, 18.489517, 27.863214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.326353, 18.376909, 27.473063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.125334, 18.031122, 27.468300>,  <11.004722, 17.823650, 27.465443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.125334, 18.031122, 27.468300>,  <11.326353, 18.376909, 27.473063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.125334, 18.031122, 27.468300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288282, -0.154575, -0.944987,
		0.815069, -0.478334, 0.326892,
		-0.502549, -0.864467, -0.011906,
		10.974569, 17.771782, 27.464727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.824675, 17.922098, 27.129007>,  <11.326353, 18.376909, 27.473063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.824675, 17.922098, 27.129007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.469298, 17.759712, 27.043343>,  <11.256073, 17.662281, 26.991943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.469298, 17.759712, 27.043343>,  <11.824675, 17.922098, 27.129007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.469298, 17.759712, 27.043343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291532, -0.138718, -0.946449,
		0.354516, -0.903300, 0.241595,
		-0.888441, -0.405964, -0.214163,
		11.202766, 17.637922, 26.979094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.087757, 17.355394, 26.725666>,  <11.824675, 17.922098, 27.129007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.087757, 17.355394, 26.725666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.696361, 17.395885, 26.653770>,  <11.461522, 17.420179, 26.610632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.696361, 17.395885, 26.653770>,  <12.087757, 17.355394, 26.725666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.696361, 17.395885, 26.653770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183053, 0.024363, -0.982801,
		-0.095108, -0.994565, -0.042369,
		-0.978492, 0.101228, -0.179741,
		11.402813, 17.426254, 26.599848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.801658, 16.822271, 26.276239>,  <12.087757, 17.355394, 26.725666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.801658, 16.822271, 26.276239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.564710, 17.138313, 26.213202>,  <11.422541, 17.327938, 26.175379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.564710, 17.138313, 26.213202>,  <11.801658, 16.822271, 26.276239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.564710, 17.138313, 26.213202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037469, -0.168380, -0.985010,
		-0.804795, -0.589394, 0.070139,
		-0.592369, 0.790103, -0.157596,
		11.386999, 17.375343, 26.165922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.449747, 16.632427, 25.608496>,  <11.801658, 16.822271, 26.276239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.449747, 16.632427, 25.608496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.357355, 17.017899, 25.662117>,  <11.301920, 17.249182, 25.694290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.357355, 17.017899, 25.662117>,  <11.449747, 16.632427, 25.608496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.357355, 17.017899, 25.662117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103946, 0.112551, -0.988194,
		-0.967390, -0.242186, 0.074174,
		-0.230979, 0.963679, 0.134055,
		11.288061, 17.307003, 25.702333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.935974, 16.657246, 25.127991>,  <11.449747, 16.632427, 25.608496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.935974, 16.657246, 25.127991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.058156, 17.028114, 25.214760>,  <11.131465, 17.250635, 25.266821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.058156, 17.028114, 25.214760>,  <10.935974, 16.657246, 25.127991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.058156, 17.028114, 25.214760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017427, 0.222327, -0.974816,
		-0.952047, 0.301542, 0.051753,
		0.305454, 0.927169, 0.216921,
		11.149793, 17.306265, 25.279837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.253687, 16.860991, 25.113655>,  <10.935974, 16.657246, 25.127991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.253687, 16.860991, 25.113655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.972534, 16.583927, 25.048935>,  <9.803843, 16.417688, 25.010103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.972534, 16.583927, 25.048935>,  <10.253687, 16.860991, 25.113655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.972534, 16.583927, 25.048935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092054, -0.136977, 0.986288,
		-0.705324, 0.708139, 0.032517,
		-0.702883, -0.692659, -0.161800,
		9.761669, 16.376129, 25.000395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.723623, 16.988832, 25.500622>,  <10.253687, 16.860991, 25.113655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.723623, 16.988832, 25.500622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.713928, 16.595137, 25.430553>,  <9.708111, 16.358919, 25.388512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.713928, 16.595137, 25.430553>,  <9.723623, 16.988832, 25.500622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.713928, 16.595137, 25.430553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093734, -0.172213, 0.980590,
		-0.995302, 0.040187, -0.088083,
		-0.024238, -0.984240, -0.175171,
		9.706656, 16.299866, 25.378002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.353250, 16.720230, 26.011095>,  <9.723623, 16.988832, 25.500622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.353250, 16.720230, 26.011095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.486896, 16.357964, 25.906681>,  <9.567083, 16.140604, 25.844032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.486896, 16.357964, 25.906681>,  <9.353250, 16.720230, 26.011095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.486896, 16.357964, 25.906681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180434, -0.333288, 0.925398,
		-0.925101, -0.262089, -0.274769,
		0.334114, -0.905664, -0.261036,
		9.587130, 16.086264, 25.828371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.777325, 16.236410, 26.188261>,  <9.353250, 16.720230, 26.011095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.777325, 16.236410, 26.188261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.102014, 16.004793, 26.157751>,  <9.296827, 15.865824, 26.139446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.102014, 16.004793, 26.157751>,  <8.777325, 16.236410, 26.188261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.102014, 16.004793, 26.157751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295709, -0.520087, 0.801290,
		-0.503642, -0.627875, -0.593395,
		0.811728, -0.579035, -0.076269,
		9.345531, 15.831081, 26.134869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.560679, 15.551601, 26.175098>,  <8.777325, 16.236410, 26.188261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.560679, 15.551601, 26.175098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.937070, 15.524673, 26.307783>,  <9.162904, 15.508515, 26.387394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.937070, 15.524673, 26.307783>,  <8.560679, 15.551601, 26.175098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.937070, 15.524673, 26.307783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319747, -0.498273, 0.805907,
		0.111028, -0.864403, -0.490389,
		0.940975, -0.067322, 0.331713,
		9.219362, 15.504476, 26.407297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.730968, 14.848711, 26.214516>,  <8.560679, 15.551601, 26.175098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.730968, 14.848711, 26.214516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.970542, 15.044779, 26.467817>,  <9.114286, 15.162419, 26.619799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.970542, 15.044779, 26.467817>,  <8.730968, 14.848711, 26.214516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.970542, 15.044779, 26.467817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447457, -0.450967, 0.772276,
		0.664124, -0.745896, -0.050769,
		0.598933, 0.490170, 0.633255,
		9.150222, 15.191830, 26.657793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.044701, 14.321093, 26.722717>,  <8.730968, 14.848711, 26.214516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.044701, 14.321093, 26.722717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.050660, 14.688335, 26.881138>,  <9.054235, 14.908681, 26.976191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.050660, 14.688335, 26.881138>,  <9.044701, 14.321093, 26.722717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.050660, 14.688335, 26.881138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383964, -0.360473, 0.850077,
		0.923228, -0.164734, 0.347150,
		0.014898, 0.918108, 0.396050,
		9.055130, 14.963768, 26.999952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.159389, 13.651119, 27.023571>,  <9.044701, 14.321093, 26.722717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.159389, 13.651119, 27.023571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.928466, 13.324866, 27.008274>,  <8.789912, 13.129115, 26.999096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.928466, 13.324866, 27.008274>,  <9.159389, 13.651119, 27.023571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.928466, 13.324866, 27.008274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379067, -0.226232, -0.897289,
		0.723205, -0.532507, 0.439784,
		-0.577306, -0.815632, -0.038243,
		8.755274, 13.080176, 26.996801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.570639, 12.999406, 26.916431>,  <9.159389, 13.651119, 27.023571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.570639, 12.999406, 26.916431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.199863, 12.987375, 26.766829>,  <8.977398, 12.980157, 26.677067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.199863, 12.987375, 26.766829>,  <9.570639, 12.999406, 26.916431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.199863, 12.987375, 26.766829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374335, -0.142282, -0.916312,
		-0.025654, -0.989369, 0.143146,
		-0.926938, -0.030077, -0.374006,
		8.921782, 12.978353, 26.654627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.729977, 12.842576, 26.229748>,  <9.570639, 12.999406, 26.916431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.729977, 12.842576, 26.229748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.336295, 12.907731, 26.202007>,  <9.100086, 12.946824, 26.185364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.336295, 12.907731, 26.202007>,  <9.729977, 12.842576, 26.229748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.336295, 12.907731, 26.202007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050737, -0.115773, -0.991979,
		-0.169610, -0.979829, 0.105680,
		-0.984204, 0.162888, -0.069350,
		9.041034, 12.956597, 26.181202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.551373, 12.322906, 25.795807>,  <9.729977, 12.842576, 26.229748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.551373, 12.322906, 25.795807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.309213, 12.640446, 25.772871>,  <9.163916, 12.830970, 25.759109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.309213, 12.640446, 25.772871>,  <9.551373, 12.322906, 25.795807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.309213, 12.640446, 25.772871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091245, -0.002341, -0.995826,
		-0.790672, -0.608107, -0.071017,
		-0.605403, 0.793852, -0.057337,
		9.127592, 12.878601, 25.755671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.264330, 12.229728, 25.097782>,  <9.551373, 12.322906, 25.795807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.264330, 12.229728, 25.097782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.159455, 12.600251, 25.206015>,  <9.096531, 12.822565, 25.270954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.159455, 12.600251, 25.206015>,  <9.264330, 12.229728, 25.097782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.159455, 12.600251, 25.206015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136477, 0.241978, -0.960636,
		-0.955318, -0.288792, 0.062976,
		-0.262185, 0.926308, 0.270579,
		9.080800, 12.878143, 25.287188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.739491, 12.448055, 24.585733>,  <9.264330, 12.229728, 25.097782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.739491, 12.448055, 24.585733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.857736, 12.793054, 24.750032>,  <8.928682, 13.000052, 24.848612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.857736, 12.793054, 24.750032>,  <8.739491, 12.448055, 24.585733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.857736, 12.793054, 24.750032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065212, 0.447179, -0.892064,
		-0.953079, 0.236920, 0.188437,
		0.295613, 0.862496, 0.410747,
		8.946420, 13.051803, 24.873257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.171894, 12.905628, 24.352646>,  <8.739491, 12.448055, 24.585733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.171894, 12.905628, 24.352646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.498074, 13.114017, 24.453547>,  <8.693782, 13.239050, 24.514086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.498074, 13.114017, 24.453547>,  <8.171894, 12.905628, 24.352646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.498074, 13.114017, 24.453547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032518, 0.476338, -0.878661,
		-0.577913, 0.708301, 0.405371,
		0.815450, 0.520972, 0.252249,
		8.742708, 13.270308, 24.529221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<12.096925, 12.315563, 30.086836> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.127977, 12.695017, 29.964155>,  <12.146609, 12.922689, 29.890547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.127977, 12.695017, 29.964155>,  <12.096925, 12.315563, 30.086836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.127977, 12.695017, 29.964155> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264863, -0.316198, -0.910970,
		-0.961156, -0.010513, -0.275806,
		0.077633, 0.948635, -0.306700,
		12.151267, 12.979608, 29.872145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.832700, 12.454152, 29.438507>,  <12.096925, 12.315563, 30.086836>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.832700, 12.454152, 29.438507> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.108423, 12.740034, 29.485920>,  <12.273857, 12.911564, 29.514368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.108423, 12.740034, 29.485920>,  <11.832700, 12.454152, 29.438507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.108423, 12.740034, 29.485920> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377202, -0.214371, -0.900979,
		-0.618525, 0.665763, -0.417356,
		0.689308, 0.714706, 0.118533,
		12.315216, 12.954446, 29.521481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.856559, 12.995641, 28.873442>,  <11.832700, 12.454152, 29.438507>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.856559, 12.995641, 28.873442> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.227240, 12.959397, 29.019325>,  <12.449648, 12.937651, 29.106855>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.227240, 12.959397, 29.019325>,  <11.856559, 12.995641, 28.873442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.227240, 12.959397, 29.019325> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357628, -0.085467, -0.929945,
		0.115432, 0.992213, -0.046798,
		0.926702, -0.090609, 0.364709,
		12.505250, 12.932215, 29.128738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.213326, 13.338026, 28.350170>,  <11.856559, 12.995641, 28.873442>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.213326, 13.338026, 28.350170> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.497149, 13.131910, 28.542423>,  <12.667442, 13.008241, 28.657774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.497149, 13.131910, 28.542423>,  <12.213326, 13.338026, 28.350170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.497149, 13.131910, 28.542423> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455903, -0.184376, -0.870723,
		0.537292, 0.836948, 0.104097,
		0.709556, -0.515290, 0.480631,
		12.710015, 12.977324, 28.686613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.794290, 13.632572, 28.228271>,  <12.213326, 13.338026, 28.350170>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.794290, 13.632572, 28.228271> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.888252, 13.251858, 28.307188>,  <12.944630, 13.023429, 28.354538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.888252, 13.251858, 28.307188>,  <12.794290, 13.632572, 28.228271>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.888252, 13.251858, 28.307188> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498367, -0.056328, -0.865135,
		0.834536, 0.301548, 0.461107,
		0.234907, -0.951786, 0.197289,
		12.958724, 12.966322, 28.366375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.371734, 13.523409, 27.755529>,  <12.794290, 13.632572, 28.228271>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.371734, 13.523409, 27.755529> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.310173, 13.153192, 27.893911>,  <13.273236, 12.931061, 27.976940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.310173, 13.153192, 27.893911>,  <13.371734, 13.523409, 27.755529>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.310173, 13.153192, 27.893911> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483810, -0.375870, -0.790348,
		0.861535, 0.045740, 0.505634,
		-0.153901, -0.925543, 0.345955,
		13.264003, 12.875528, 27.997698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.995334, 13.180688, 27.845337>,  <13.371734, 13.523409, 27.755529>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.995334, 13.180688, 27.845337> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.693929, 12.923285, 27.791502>,  <13.513085, 12.768843, 27.759201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.693929, 12.923285, 27.791502>,  <13.995334, 13.180688, 27.845337>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.693929, 12.923285, 27.791502> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507034, -0.438513, -0.742040,
		0.418490, -0.627378, 0.656706,
		-0.753513, -0.643509, -0.134589,
		13.467875, 12.730232, 27.751125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.278485, 12.622465, 27.496447>,  <13.995334, 13.180688, 27.845337>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.278485, 12.622465, 27.496447> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.887775, 12.576719, 27.423965>,  <13.653350, 12.549272, 27.380478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.887775, 12.576719, 27.423965>,  <14.278485, 12.622465, 27.496447>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.887775, 12.576719, 27.423965> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203357, -0.228295, -0.952117,
		0.067521, -0.966852, 0.246250,
		-0.976774, -0.114365, -0.181201,
		13.594744, 12.542410, 27.369606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.312905, 12.010918, 27.189634>,  <14.278485, 12.622465, 27.496447>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.312905, 12.010918, 27.189634> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.959446, 12.175684, 27.100649>,  <13.747370, 12.274544, 27.047258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.959446, 12.175684, 27.100649>,  <14.312905, 12.010918, 27.189634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.959446, 12.175684, 27.100649> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178579, -0.142683, -0.973525,
		-0.432753, -0.899982, 0.052521,
		-0.883649, 0.411916, -0.222464,
		13.694351, 12.299258, 27.033909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.016953, 11.540639, 26.792030>,  <14.312905, 12.010918, 27.189634>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.016953, 11.540639, 26.792030> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.825118, 11.875603, 26.687155>,  <13.710017, 12.076581, 26.624229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.825118, 11.875603, 26.687155>,  <14.016953, 11.540639, 26.792030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.825118, 11.875603, 26.687155> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050114, -0.272164, -0.960945,
		-0.876063, -0.473995, 0.088560,
		-0.479586, 0.837410, -0.262187,
		13.681242, 12.126825, 26.608500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.404228, 11.351763, 26.349350>,  <14.016953, 11.540639, 26.792030>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.404228, 11.351763, 26.349350> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.514087, 11.728082, 26.269878>,  <13.580002, 11.953873, 26.222197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.514087, 11.728082, 26.269878>,  <13.404228, 11.351763, 26.349350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.514087, 11.728082, 26.269878> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188372, -0.255262, -0.948344,
		-0.942913, 0.223033, -0.247326,
		0.274645, 0.940796, -0.198677,
		13.596480, 12.010321, 26.210276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.148823, 11.573861, 25.575190>,  <13.404228, 11.351763, 26.349350>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.148823, 11.573861, 25.575190> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.442163, 11.812843, 25.704952>,  <13.618168, 11.956233, 25.782810>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.442163, 11.812843, 25.704952>,  <13.148823, 11.573861, 25.575190>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.442163, 11.812843, 25.704952> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427447, -0.034146, -0.903395,
		-0.528661, 0.801175, -0.280421,
		0.733353, 0.597456, 0.324408,
		13.662169, 11.992080, 25.802275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.401217, 11.342158, 25.719959>,  <13.148823, 11.573861, 25.575190>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.401217, 11.342158, 25.719959> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.061241, 11.169580, 25.598991>,  <11.857256, 11.066032, 25.526411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.061241, 11.169580, 25.598991>,  <12.401217, 11.342158, 25.719959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.061241, 11.169580, 25.598991> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297005, -0.081764, 0.951369,
		-0.435193, 0.898425, -0.058647,
		-0.849939, -0.431447, -0.302420,
		11.806259, 11.040145, 25.508266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.826533, 11.819250, 26.050175>,  <12.401217, 11.342158, 25.719959>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.826533, 11.819250, 26.050175> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.707570, 11.446040, 25.969170>,  <11.636192, 11.222114, 25.920567>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.707570, 11.446040, 25.969170>,  <11.826533, 11.819250, 26.050175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.707570, 11.446040, 25.969170> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375542, -0.080691, 0.923286,
		-0.877791, 0.350644, -0.326392,
		-0.297408, -0.933026, -0.202511,
		11.618347, 11.166132, 25.908417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.108458, 11.733585, 26.264082>,  <11.826533, 11.819250, 26.050175>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.108458, 11.733585, 26.264082> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.228628, 11.354668, 26.219582>,  <11.300731, 11.127316, 26.192881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.228628, 11.354668, 26.219582>,  <11.108458, 11.733585, 26.264082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.228628, 11.354668, 26.219582> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410513, -0.233702, 0.881398,
		-0.860944, -0.219125, -0.459087,
		0.300426, -0.947295, -0.111251,
		11.318756, 11.070479, 26.186207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.505384, 11.335995, 26.252472>,  <11.108458, 11.733585, 26.264082>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.505384, 11.335995, 26.252472> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.802328, 11.092460, 26.364346>,  <10.980494, 10.946339, 26.431469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.802328, 11.092460, 26.364346>,  <10.505384, 11.335995, 26.252472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.802328, 11.092460, 26.364346> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533369, -0.284384, 0.796645,
		-0.405490, -0.740569, -0.535850,
		0.742358, -0.608837, 0.279682,
		11.025036, 10.909809, 26.448250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.237934, 10.783324, 26.472452>,  <10.505384, 11.335995, 26.252472>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.237934, 10.783324, 26.472452> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.592935, 10.751167, 26.653948>,  <10.805935, 10.731874, 26.762846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.592935, 10.751167, 26.653948>,  <10.237934, 10.783324, 26.472452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.592935, 10.751167, 26.653948> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458113, -0.260219, 0.849952,
		0.049743, -0.962197, -0.267773,
		0.887501, -0.080391, 0.453739,
		10.859185, 10.727050, 26.790070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.194162, 10.156852, 26.874966>,  <10.237934, 10.783324, 26.472452>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.194162, 10.156852, 26.874966> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.512793, 10.337964, 27.035194>,  <10.703971, 10.446631, 27.131330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.512793, 10.337964, 27.035194>,  <10.194162, 10.156852, 26.874966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.512793, 10.337964, 27.035194> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302667, -0.274883, 0.912596,
		0.523316, -0.848192, -0.081923,
		0.796576, 0.452781, 0.400570,
		10.751765, 10.473798, 27.155365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.535018, 9.636894, 27.327047>,  <10.194162, 10.156852, 26.874966>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.535018, 9.636894, 27.327047> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.669695, 9.989423, 27.459658>,  <10.750502, 10.200940, 27.539225>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.669695, 9.989423, 27.459658>,  <10.535018, 9.636894, 27.327047>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.669695, 9.989423, 27.459658> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246233, -0.257423, 0.934400,
		0.908849, -0.396238, 0.130339,
		0.336693, 0.881322, 0.331525,
		10.770702, 10.253819, 27.559114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.860023, 9.530845, 27.888365>,  <10.535018, 9.636894, 27.327047>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.860023, 9.530845, 27.888365> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.808429, 9.922401, 27.951780>,  <10.777472, 10.157335, 27.989830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.808429, 9.922401, 27.951780>,  <10.860023, 9.530845, 27.888365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.808429, 9.922401, 27.951780> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338491, -0.193736, 0.920810,
		0.932087, 0.065106, 0.356335,
		-0.128985, 0.978891, 0.158541,
		10.769733, 10.216069, 27.999342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.145623, 9.716696, 28.454351>,  <10.860023, 9.530845, 27.888365>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.145623, 9.716696, 28.454351> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.901052, 10.031932, 28.425875>,  <10.754310, 10.221074, 28.408789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.901052, 10.031932, 28.425875>,  <11.145623, 9.716696, 28.454351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.901052, 10.031932, 28.425875> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232687, -0.093073, 0.968088,
		0.756316, 0.608481, 0.240286,
		-0.611427, 0.788091, -0.071193,
		10.717625, 10.268359, 28.404516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.290863, 10.216866, 28.992037>,  <11.145623, 9.716696, 28.454351>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.290863, 10.216866, 28.992037> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.923224, 10.328211, 28.880484>,  <10.702641, 10.395019, 28.813551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.923224, 10.328211, 28.880484>,  <11.290863, 10.216866, 28.992037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.923224, 10.328211, 28.880484> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291830, -0.005314, 0.956456,
		0.264761, 0.960461, 0.086119,
		-0.919096, 0.278364, -0.278884,
		10.647495, 10.411720, 28.796818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.015784, 10.688459, 29.519468>,  <11.290863, 10.216866, 28.992037>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.015784, 10.688459, 29.519468> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.678897, 10.565605, 29.342228>,  <10.476765, 10.491893, 29.235884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.678897, 10.565605, 29.342228>,  <11.015784, 10.688459, 29.519468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.678897, 10.565605, 29.342228> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461729, -0.013406, 0.886920,
		-0.278344, 0.951572, -0.130523,
		-0.842218, -0.307135, -0.443100,
		10.426231, 10.473465, 29.209297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.525461, 11.100593, 29.847630>,  <11.015784, 10.688459, 29.519468>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.525461, 11.100593, 29.847630> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.334499, 10.778976, 29.705868>,  <10.219922, 10.586006, 29.620811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.334499, 10.778976, 29.705868>,  <10.525461, 11.100593, 29.847630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.334499, 10.778976, 29.705868> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586989, -0.008305, 0.809552,
		-0.653857, 0.594515, -0.467999,
		-0.477404, -0.804041, -0.354404,
		10.191278, 10.537764, 29.599546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.951707, 11.291785, 29.866796>,  <10.525461, 11.100593, 29.847630>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.951707, 11.291785, 29.866796> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.917444, 10.893255, 29.867031>,  <9.896887, 10.654138, 29.867172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.917444, 10.893255, 29.867031>,  <9.951707, 11.291785, 29.866796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.917444, 10.893255, 29.867031> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543525, 0.047223, 0.838064,
		-0.835011, 0.071466, -0.545572,
		-0.085656, -0.996325, 0.000588,
		9.891747, 10.594357, 29.867208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.236679, 11.080585, 29.936796>,  <9.951707, 11.291785, 29.866796>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.236679, 11.080585, 29.936796> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.465428, 10.779776, 30.067898>,  <9.602678, 10.599290, 30.146559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.465428, 10.779776, 30.067898>,  <9.236679, 11.080585, 29.936796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.465428, 10.779776, 30.067898> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451919, 0.044638, 0.890941,
		-0.684639, -0.657624, -0.314326,
		0.571873, -0.752023, 0.327754,
		9.636991, 10.554169, 30.166224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.789744, 11.473855, 29.515150>,  <9.236679, 11.080585, 29.936796>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.789744, 11.473855, 29.515150> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.500422, 11.734681, 29.606045>,  <8.326828, 11.891177, 29.660582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.500422, 11.734681, 29.606045>,  <8.789744, 11.473855, 29.515150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.500422, 11.734681, 29.606045> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083733, 0.243825, -0.966198,
		-0.685430, -0.717885, -0.121761,
		-0.723308, 0.652066, 0.227235,
		8.283429, 11.930301, 29.674215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.118775, 11.325109, 29.131001>,  <8.789744, 11.473855, 29.515150>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.118775, 11.325109, 29.131001> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.156921, 11.712565, 29.222771>,  <8.179809, 11.945040, 29.277834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.156921, 11.712565, 29.222771>,  <8.118775, 11.325109, 29.131001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.156921, 11.712565, 29.222771> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180150, 0.209878, -0.960988,
		-0.979005, 0.132976, -0.154486,
		0.095365, 0.968643, 0.229427,
		8.185531, 12.003159, 29.291599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.633739, 11.758350, 28.651552>,  <8.118775, 11.325109, 29.131001>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.633739, 11.758350, 28.651552> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.925633, 11.998797, 28.781870>,  <8.100770, 12.143065, 28.860060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.925633, 11.998797, 28.781870>,  <7.633739, 11.758350, 28.651552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<7.925633, 11.998797, 28.781870> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060098, 0.418260, -0.906337,
		-0.681083, 0.680967, 0.269093,
		0.729736, 0.601118, 0.325794,
		8.144554, 12.179132, 28.879608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.493391, 12.374169, 28.185406>,  <7.633739, 11.758350, 28.651552>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.493391, 12.374169, 28.185406> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.855107, 12.432297, 28.345974>,  <8.072137, 12.467174, 28.442316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.855107, 12.432297, 28.345974>,  <7.493391, 12.374169, 28.185406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<7.855107, 12.432297, 28.345974> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294309, 0.468940, -0.832753,
		-0.309257, 0.871193, 0.381290,
		0.904291, 0.145318, 0.401423,
		8.126394, 12.475892, 28.466400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.588399, 13.042947, 27.958355>,  <7.493391, 12.374169, 28.185406>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.588399, 13.042947, 27.958355> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.940352, 12.866832, 28.029858>,  <8.151525, 12.761163, 28.072760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.940352, 12.866832, 28.029858>,  <7.588399, 13.042947, 27.958355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<7.940352, 12.866832, 28.029858> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372046, 0.404273, -0.835551,
		0.295615, 0.801693, 0.519520,
		0.879882, -0.440287, 0.178758,
		8.204317, 12.734746, 28.083485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.070177, 13.581401, 27.878252>,  <7.588399, 13.042947, 27.958355>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.070177, 13.581401, 27.878252> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.272808, 13.240381, 27.826809>,  <8.394386, 13.035769, 27.795942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.272808, 13.240381, 27.826809>,  <8.070177, 13.581401, 27.878252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.272808, 13.240381, 27.826809> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366617, 0.348001, -0.862836,
		0.780366, 0.389944, 0.488849,
		0.506578, -0.852548, -0.128608,
		8.424782, 12.984616, 27.788227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.655725, 13.813846, 27.572123>,  <8.070177, 13.581401, 27.878252>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.655725, 13.813846, 27.572123> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.591570, 13.426523, 27.495539>,  <8.553077, 13.194130, 27.449589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.591570, 13.426523, 27.495539>,  <8.655725, 13.813846, 27.572123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.591570, 13.426523, 27.495539> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326042, 0.131111, -0.936219,
		0.931650, -0.212582, 0.294680,
		-0.160388, -0.968307, -0.191460,
		8.543453, 13.136031, 27.438101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.235766, 14.204287, 27.536993>,  <8.655725, 13.813846, 27.572123>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.235766, 14.204287, 27.536993> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.100801, 14.579541, 27.505873>,  <9.019822, 14.804694, 27.487200>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.100801, 14.579541, 27.505873>,  <9.235766, 14.204287, 27.536993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.100801, 14.579541, 27.505873> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540843, -0.125547, 0.831701,
		0.770482, 0.322704, 0.549746,
		-0.337412, 0.938137, -0.077801,
		8.999578, 14.860982, 27.482533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.332164, 14.531429, 28.215975>,  <9.235766, 14.204287, 27.536993>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.332164, 14.531429, 28.215975> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.044984, 14.724059, 28.014923>,  <8.872676, 14.839637, 27.894293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.044984, 14.724059, 28.014923>,  <9.332164, 14.531429, 28.215975>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.044984, 14.724059, 28.014923> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554865, 0.040090, 0.830974,
		0.420327, 0.875488, 0.238427,
		-0.717949, 0.481575, -0.502628,
		8.829599, 14.868531, 27.864134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.165559, 14.993915, 28.736464>,  <9.332164, 14.531429, 28.215975>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.165559, 14.993915, 28.736464> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.879665, 15.005734, 28.456955>,  <8.708129, 15.012826, 28.289249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.879665, 15.005734, 28.456955>,  <9.165559, 14.993915, 28.736464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.879665, 15.005734, 28.456955> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670761, 0.254004, 0.696823,
		0.198081, 0.966752, -0.161725,
		-0.714734, 0.029549, -0.698772,
		8.665245, 15.014599, 28.247324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.761537, 15.543295, 28.914347>,  <9.165559, 14.993915, 28.736464>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.761537, 15.543295, 28.914347> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.516345, 15.342778, 28.670065>,  <8.369230, 15.222468, 28.523495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.516345, 15.342778, 28.670065>,  <8.761537, 15.543295, 28.914347>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.516345, 15.342778, 28.670065> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781565, 0.271422, 0.561681,
		-0.115807, 0.821606, -0.558168,
		-0.612980, -0.501292, -0.610707,
		8.332451, 15.192390, 28.486853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.216354, 16.056250, 28.735634>,  <8.761537, 15.543295, 28.914347>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.216354, 16.056250, 28.735634> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.098479, 15.675943, 28.697258>,  <8.027754, 15.447760, 28.674232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.098479, 15.675943, 28.697258>,  <8.216354, 16.056250, 28.735634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.098479, 15.675943, 28.697258> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670644, 0.134251, 0.729529,
		-0.680731, 0.279324, -0.677187,
		-0.294688, -0.950765, -0.095938,
		8.010073, 15.390714, 28.668476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.560022, 16.168102, 28.810349>,  <8.216354, 16.056250, 28.735634>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.560022, 16.168102, 28.810349> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.623762, 15.778090, 28.872215>,  <7.662006, 15.544083, 28.909336>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.623762, 15.778090, 28.872215>,  <7.560022, 16.168102, 28.810349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<7.623762, 15.778090, 28.872215> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714971, -0.005946, 0.699129,
		-0.680753, -0.221991, -0.698066,
		0.159351, -0.975031, 0.154669,
		7.671567, 15.485581, 28.918615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.061851, 15.677034, 28.372477>,  <7.560022, 16.168102, 28.810349>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.061851, 15.677034, 28.372477> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.194439, 15.498362, 28.704887>,  <7.273992, 15.391158, 28.904333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.194439, 15.498362, 28.704887>,  <7.061851, 15.677034, 28.372477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<7.194439, 15.498362, 28.704887> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792147, 0.346685, 0.502308,
		-0.512477, -0.824793, -0.238923,
		0.331469, -0.446683, 0.831025,
		7.293880, 15.364357, 28.954195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.549446, 15.883900, 28.781818>,  <7.061851, 15.677034, 28.372477>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.549446, 15.883900, 28.781818> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.818179, 15.737189, 29.039227>,  <6.979418, 15.649163, 29.193670>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.818179, 15.737189, 29.039227>,  <6.549446, 15.883900, 28.781818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<6.818179, 15.737189, 29.039227> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574132, 0.291057, 0.765283,
		-0.467989, -0.883606, -0.015037,
		0.671832, -0.366777, 0.643519,
		7.019728, 15.627156, 29.232283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.325650, 15.268377, 29.166456>,  <6.549446, 15.883900, 28.781818>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.325650, 15.268377, 29.166456> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.588798, 15.481206, 29.379663>,  <6.746686, 15.608903, 29.507587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.588798, 15.481206, 29.379663>,  <6.325650, 15.268377, 29.166456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<6.588798, 15.481206, 29.379663> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711833, 0.208138, 0.670800,
		0.245975, -0.820716, 0.515676,
		0.657869, 0.532075, 0.533016,
		6.786159, 15.640827, 29.539568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<12.834851, 15.900144, 15.613212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.206681, 15.966099, 15.745092>,  <13.429779, 16.005672, 15.824221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.206681, 15.966099, 15.745092>,  <12.834851, 15.900144, 15.613212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.206681, 15.966099, 15.745092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358033, 0.190885, 0.913988,
		0.087769, -0.967665, 0.236477,
		0.929574, 0.164886, 0.329702,
		13.485554, 16.015566, 15.844003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.945641, 15.438612, 16.286268>,  <12.834851, 15.900144, 15.613212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.945641, 15.438612, 16.286268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.136178, 15.784855, 16.224533>,  <13.250501, 15.992600, 16.187492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.136178, 15.784855, 16.224533>,  <12.945641, 15.438612, 16.286268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.136178, 15.784855, 16.224533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367692, 0.355551, 0.859294,
		0.798686, -0.352571, 0.487641,
		0.476344, 0.865608, -0.154336,
		13.279081, 16.044537, 16.178232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.296906, 15.512485, 16.842409>,  <12.945641, 15.438612, 16.286268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.296906, 15.512485, 16.842409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.246197, 15.872321, 16.675238>,  <13.215772, 16.088223, 16.574934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.246197, 15.872321, 16.675238>,  <13.296906, 15.512485, 16.842409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.246197, 15.872321, 16.675238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558803, 0.283342, 0.779395,
		0.819554, 0.332345, 0.466775,
		-0.126771, 0.899591, -0.417929,
		13.208165, 16.142199, 16.549858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.518639, 16.030670, 17.308584>,  <13.296906, 15.512485, 16.842409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.518639, 16.030670, 17.308584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.271013, 16.224588, 17.061447>,  <13.122438, 16.340940, 16.913164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.271013, 16.224588, 17.061447>,  <13.518639, 16.030670, 17.308584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.271013, 16.224588, 17.061447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567011, 0.268421, 0.778748,
		0.543377, 0.832419, 0.108716,
		-0.619063, 0.484797, -0.617845,
		13.085294, 16.370028, 16.876093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.396853, 16.664553, 17.637318>,  <13.518639, 16.030670, 17.308584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.396853, 16.664553, 17.637318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.092099, 16.649366, 17.378679>,  <12.909246, 16.640255, 17.223495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.092099, 16.649366, 17.378679>,  <13.396853, 16.664553, 17.637318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.092099, 16.649366, 17.378679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626730, 0.295240, 0.721140,
		0.163522, 0.954669, -0.248733,
		-0.761886, -0.037966, -0.646598,
		12.863533, 16.637976, 17.184700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.013615, 17.161751, 17.886589>,  <13.396853, 16.664553, 17.637318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.013615, 17.161751, 17.886589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.768932, 16.951929, 17.649723>,  <12.622123, 16.826036, 17.507605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.768932, 16.951929, 17.649723>,  <13.013615, 17.161751, 17.886589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.768932, 16.951929, 17.649723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769807, 0.222256, 0.598330,
		-0.182245, 0.821854, -0.539762,
		-0.611706, -0.524555, -0.592164,
		12.585421, 16.794563, 17.472075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.443618, 17.606485, 17.761827>,  <13.013615, 17.161751, 17.886589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.443618, 17.606485, 17.761827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.319831, 17.230595, 17.703665>,  <12.245559, 17.005060, 17.668768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.319831, 17.230595, 17.703665>,  <12.443618, 17.606485, 17.761827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.319831, 17.230595, 17.703665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833385, 0.194391, 0.517379,
		-0.457930, 0.281291, -0.843313,
		-0.309466, -0.939728, -0.145406,
		12.226991, 16.948677, 17.660044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.774948, 17.653913, 17.509171>,  <12.443618, 17.606485, 17.761827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.774948, 17.653913, 17.509171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.790596, 17.278913, 17.647480>,  <11.799985, 17.053913, 17.730465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.790596, 17.278913, 17.647480>,  <11.774948, 17.653913, 17.509171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.790596, 17.278913, 17.647480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838299, 0.157531, 0.521957,
		-0.543806, -0.310281, -0.779744,
		0.039119, -0.937502, 0.345774,
		11.802332, 16.997663, 17.751213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.104609, 17.248137, 17.534708>,  <11.774948, 17.653913, 17.509171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.104609, 17.248137, 17.534708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.317920, 17.078226, 17.827333>,  <11.445906, 16.976280, 18.002909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.317920, 17.078226, 17.827333>,  <11.104609, 17.248137, 17.534708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.317920, 17.078226, 17.827333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767634, 0.120395, 0.629478,
		-0.355463, -0.897258, -0.261868,
		0.533277, -0.424775, 0.731562,
		11.477902, 16.950794, 18.046803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.621394, 16.887957, 17.860693>,  <11.104609, 17.248137, 17.534708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.621394, 16.887957, 17.860693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.915030, 16.895971, 18.132195>,  <11.091212, 16.900780, 18.295095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.915030, 16.895971, 18.132195>,  <10.621394, 16.887957, 17.860693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.915030, 16.895971, 18.132195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678569, -0.016004, 0.734362,
		0.025578, -0.999671, 0.001849,
		0.734091, 0.020038, 0.678755,
		11.135258, 16.901981, 18.335821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.360396, 16.471554, 18.391701>,  <10.621394, 16.887957, 17.860693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.360396, 16.471554, 18.391701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.643961, 16.668434, 18.593763>,  <10.814099, 16.786562, 18.715000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.643961, 16.668434, 18.593763>,  <10.360396, 16.471554, 18.391701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.643961, 16.668434, 18.593763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484943, -0.179910, 0.855840,
		0.512129, -0.851686, 0.111149,
		0.708910, 0.492201, 0.505157,
		10.856634, 16.816095, 18.745310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.438257, 16.142561, 18.895311>,  <10.360396, 16.471554, 18.391701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.438257, 16.142561, 18.895311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.596447, 16.486095, 19.025539>,  <10.691360, 16.692217, 19.103676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.596447, 16.486095, 19.025539>,  <10.438257, 16.142561, 18.895311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.596447, 16.486095, 19.025539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401959, -0.156886, 0.902117,
		0.825850, -0.487631, 0.283174,
		0.395474, 0.858838, 0.325572,
		10.715089, 16.743748, 19.123211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.476569, 15.379769, 18.696894>,  <10.438257, 16.142561, 18.895311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.476569, 15.379769, 18.696894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.320197, 15.014476, 18.742805>,  <10.226374, 14.795300, 18.770353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.320197, 15.014476, 18.742805>,  <10.476569, 15.379769, 18.696894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.320197, 15.014476, 18.742805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041223, -0.107209, -0.993382,
		0.919496, -0.393075, 0.004265,
		-0.390931, -0.913235, 0.114782,
		10.202918, 14.740505, 18.777241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.924310, 14.871750, 18.358633>,  <10.476569, 15.379769, 18.696894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.924310, 14.871750, 18.358633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.548131, 14.735930, 18.365164>,  <10.322424, 14.654439, 18.369081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.548131, 14.735930, 18.365164>,  <10.924310, 14.871750, 18.358633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.548131, 14.735930, 18.365164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000903, -0.045530, -0.998962,
		0.339939, -0.939486, 0.042512,
		-0.940447, -0.339548, 0.016326,
		10.265997, 14.634067, 18.370062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.991836, 14.372542, 17.845535>,  <10.924310, 14.871750, 18.358633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.991836, 14.372542, 17.845535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.595027, 14.421397, 17.858028>,  <10.356942, 14.450710, 17.865524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.595027, 14.421397, 17.858028>,  <10.991836, 14.372542, 17.845535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.595027, 14.421397, 17.858028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037512, -0.049468, -0.998071,
		-0.120362, -0.991279, 0.053655,
		-0.992021, 0.122143, 0.031231,
		10.297421, 14.458038, 17.867397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.645370, 13.774626, 17.497990>,  <10.991836, 14.372542, 17.845535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.645370, 13.774626, 17.497990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.362980, 14.057442, 17.514441>,  <10.193545, 14.227131, 17.524311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.362980, 14.057442, 17.514441>,  <10.645370, 13.774626, 17.497990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.362980, 14.057442, 17.514441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251354, -0.195840, -0.947875,
		-0.662131, -0.679516, 0.315976,
		-0.705977, 0.707039, 0.041127,
		10.151187, 14.269553, 17.526779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.096853, 13.476768, 17.171577>,  <10.645370, 13.774626, 17.497990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.096853, 13.476768, 17.171577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.048080, 13.873781, 17.173086>,  <10.018817, 14.111989, 17.173990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.048080, 13.873781, 17.173086>,  <10.096853, 13.476768, 17.171577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.048080, 13.873781, 17.173086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144840, -0.014036, -0.989356,
		-0.981914, -0.121179, 0.145469,
		-0.121931, 0.992531, 0.003769,
		10.011501, 14.171540, 17.174217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.480601, 13.656492, 16.942373>,  <10.096853, 13.476768, 17.171577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.480601, 13.656492, 16.942373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.659123, 14.012007, 16.900669>,  <9.766236, 14.225316, 16.875647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.659123, 14.012007, 16.900669>,  <9.480601, 13.656492, 16.942373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.659123, 14.012007, 16.900669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279538, 0.027789, -0.959733,
		-0.850101, 0.457477, 0.260852,
		0.446305, 0.888787, -0.104259,
		9.793015, 14.278643, 16.869392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.997498, 14.046816, 16.745098>,  <9.480601, 13.656492, 16.942373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.997498, 14.046816, 16.745098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.339118, 14.214884, 16.622425>,  <9.544090, 14.315724, 16.548820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.339118, 14.214884, 16.622425>,  <8.997498, 14.046816, 16.745098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.339118, 14.214884, 16.622425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334226, -0.008543, -0.942454,
		-0.398611, 0.907405, 0.133136,
		0.854050, 0.420170, -0.306684,
		9.595333, 14.340935, 16.530420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.806129, 14.495098, 16.107080>,  <8.997498, 14.046816, 16.745098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.806129, 14.495098, 16.107080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.204634, 14.473080, 16.080444>,  <9.443736, 14.459868, 16.064463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.204634, 14.473080, 16.080444>,  <8.806129, 14.495098, 16.107080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.204634, 14.473080, 16.080444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070057, -0.063678, -0.995508,
		0.050558, 0.996451, -0.067296,
		0.996261, -0.055045, -0.066589,
		9.503512, 14.456566, 16.060467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.984715, 14.967094, 15.589720>,  <8.806129, 14.495098, 16.107080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.984715, 14.967094, 15.589720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.285091, 14.703293, 15.603216>,  <9.465318, 14.545012, 15.611314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.285091, 14.703293, 15.603216>,  <8.984715, 14.967094, 15.589720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.285091, 14.703293, 15.603216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046861, -0.104186, -0.993453,
		0.658703, 0.744445, -0.109143,
		0.750943, -0.659505, 0.033742,
		9.510374, 14.505442, 15.613338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.436119, 15.200482, 14.985816>,  <8.984715, 14.967094, 15.589720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.436119, 15.200482, 14.985816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.557076, 14.828444, 15.069225>,  <9.629651, 14.605222, 15.119270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.557076, 14.828444, 15.069225>,  <9.436119, 15.200482, 14.985816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.557076, 14.828444, 15.069225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056132, -0.235761, -0.970189,
		0.951529, 0.281675, -0.123501,
		0.302394, -0.930095, 0.208523,
		9.647795, 14.549416, 15.131783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.876090, 15.072288, 14.459107>,  <9.436119, 15.200482, 14.985816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.876090, 15.072288, 14.459107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.824659, 14.698792, 14.592735>,  <9.793801, 14.474695, 14.672913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.824659, 14.698792, 14.592735>,  <9.876090, 15.072288, 14.459107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.824659, 14.698792, 14.592735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165062, -0.352318, -0.921210,
		0.977866, -0.063304, 0.199424,
		-0.128577, -0.933737, 0.334071,
		9.786086, 14.418672, 14.692957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.456429, 14.687175, 14.193583>,  <9.876090, 15.072288, 14.459107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.456429, 14.687175, 14.193583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.148210, 14.436618, 14.240726>,  <9.963279, 14.286283, 14.269012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.148210, 14.436618, 14.240726>,  <10.456429, 14.687175, 14.193583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.148210, 14.436618, 14.240726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155482, -0.364048, -0.918311,
		0.618129, -0.689276, 0.377908,
		-0.770546, -0.626393, 0.117859,
		9.917046, 14.248700, 14.276084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.721315, 14.064240, 13.997157>,  <10.456429, 14.687175, 14.193583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.721315, 14.064240, 13.997157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.323313, 14.048689, 13.960385>,  <10.084511, 14.039359, 13.938322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.323313, 14.048689, 13.960385>,  <10.721315, 14.064240, 13.997157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.323313, 14.048689, 13.960385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097715, -0.567178, -0.817778,
		-0.020348, -0.822677, 0.568145,
		-0.995007, -0.038876, -0.091929,
		10.024811, 14.037026, 13.932807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.287412, 13.651304, 13.993435>,  <10.721315, 14.064240, 13.997157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.287412, 13.651304, 13.993435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.440838, 13.503917, 13.654706>,  <11.532894, 13.415484, 13.451468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.440838, 13.503917, 13.654706>,  <11.287412, 13.651304, 13.993435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.440838, 13.503917, 13.654706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322000, -0.806055, 0.496580,
		-0.865560, -0.463148, -0.190528,
		0.383565, -0.368470, -0.846822,
		11.555908, 13.393376, 13.400660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.518097, 13.044937, 14.220046>,  <11.287412, 13.651304, 13.993435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.518097, 13.044937, 14.220046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.663946, 13.004101, 13.849830>,  <11.751456, 12.979599, 13.627700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.663946, 13.004101, 13.849830>,  <11.518097, 13.044937, 14.220046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.663946, 13.004101, 13.849830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572430, -0.759389, 0.309277,
		-0.734420, -0.642578, -0.218451,
		0.364624, -0.102091, -0.925541,
		11.773334, 12.973474, 13.572167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.310400, 12.782832, 14.842304>,  <11.518097, 13.044937, 14.220046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.310400, 12.782832, 14.842304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.709169, 12.801171, 14.816868>,  <11.948431, 12.812175, 14.801606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.709169, 12.801171, 14.816868>,  <11.310400, 12.782832, 14.842304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.709169, 12.801171, 14.816868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078371, -0.603303, 0.793652,
		-0.001978, -0.796193, -0.605040,
		0.996922, 0.045848, -0.063591,
		12.008246, 12.814925, 14.797791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.587276, 12.136086, 15.171349>,  <11.310400, 12.782832, 14.842304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.587276, 12.136086, 15.171349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.893929, 12.392788, 15.179607>,  <12.077920, 12.546809, 15.184563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.893929, 12.392788, 15.179607>,  <11.587276, 12.136086, 15.171349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.893929, 12.392788, 15.179607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323386, -0.413695, 0.851045,
		0.554705, -0.645760, -0.524686,
		0.766631, 0.641756, 0.020648,
		12.123918, 12.585315, 15.185802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.183819, 11.662950, 15.254579>,  <11.587276, 12.136086, 15.171349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.183819, 11.662950, 15.254579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.248253, 12.033891, 15.389674>,  <12.286913, 12.256455, 15.470732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.248253, 12.033891, 15.389674>,  <12.183819, 11.662950, 15.254579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.248253, 12.033891, 15.389674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138513, -0.360063, 0.922588,
		0.977172, -0.101834, -0.186451,
		0.161085, 0.927353, 0.337739,
		12.296578, 12.312097, 15.490995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.730104, 11.593691, 15.684250>,  <12.183819, 11.662950, 15.254579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.730104, 11.593691, 15.684250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.535720, 11.909196, 15.834819>,  <12.419089, 12.098499, 15.925160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.535720, 11.909196, 15.834819>,  <12.730104, 11.593691, 15.684250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.535720, 11.909196, 15.834819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055502, -0.457682, 0.887382,
		0.872217, 0.410340, 0.266193,
		-0.485960, 0.788764, 0.376423,
		12.389932, 12.145825, 15.947745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.088129, 11.578123, 16.157539>,  <12.730104, 11.593691, 15.684250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.088129, 11.578123, 16.157539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.780493, 11.815522, 16.252417>,  <12.595911, 11.957961, 16.309343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.780493, 11.815522, 16.252417>,  <13.088129, 11.578123, 16.157539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.780493, 11.815522, 16.252417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043921, -0.419311, 0.906779,
		0.637628, 0.686978, 0.348556,
		-0.769091, 0.593497, 0.237192,
		12.549766, 11.993571, 16.323574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.167899, 11.727056, 16.942442>,  <13.088129, 11.578123, 16.157539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.167899, 11.727056, 16.942442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.802352, 11.874673, 16.874735>,  <12.583023, 11.963243, 16.834110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.802352, 11.874673, 16.874735>,  <13.167899, 11.727056, 16.942442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.802352, 11.874673, 16.874735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207915, -0.067287, 0.975830,
		0.348734, 0.926973, 0.138221,
		-0.913869, 0.369043, -0.169266,
		12.528192, 11.985386, 16.823956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.101132, 12.196599, 17.432768>,  <13.167899, 11.727056, 16.942442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.101132, 12.196599, 17.432768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.726948, 12.101007, 17.328615>,  <12.502437, 12.043652, 17.266125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.726948, 12.101007, 17.328615>,  <13.101132, 12.196599, 17.432768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.726948, 12.101007, 17.328615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214728, -0.200857, 0.955797,
		-0.280716, 0.950024, 0.136579,
		-0.935463, -0.238980, -0.260380,
		12.446309, 12.029312, 17.250502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.719210, 12.579006, 17.841074>,  <13.101132, 12.196599, 17.432768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.719210, 12.579006, 17.841074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.485371, 12.273863, 17.730591>,  <12.345067, 12.090776, 17.664301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.485371, 12.273863, 17.730591>,  <12.719210, 12.579006, 17.841074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.485371, 12.273863, 17.730591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222392, -0.176732, 0.958806,
		-0.780248, 0.621942, -0.066337,
		-0.584598, -0.762859, -0.276209,
		12.309991, 12.045005, 17.647728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.236396, 12.622094, 18.333582>,  <12.719210, 12.579006, 17.841074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.236396, 12.622094, 18.333582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.181826, 12.250718, 18.195374>,  <12.149083, 12.027892, 18.112448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.181826, 12.250718, 18.195374>,  <12.236396, 12.622094, 18.333582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.181826, 12.250718, 18.195374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191079, -0.317573, 0.928782,
		-0.972048, 0.192732, -0.134080,
		-0.136426, -0.928441, -0.345523,
		12.140898, 11.972186, 18.091717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.750484, 12.419336, 18.669743>,  <12.236396, 12.622094, 18.333582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.750484, 12.419336, 18.669743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.882819, 12.063540, 18.543661>,  <11.962220, 11.850062, 18.468012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.882819, 12.063540, 18.543661>,  <11.750484, 12.419336, 18.669743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.882819, 12.063540, 18.543661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127599, -0.373111, 0.918970,
		-0.935022, -0.263808, -0.236937,
		0.330836, -0.889490, -0.315205,
		11.982070, 11.796694, 18.449100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.221058, 12.052667, 18.857769>,  <11.750484, 12.419336, 18.669743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.221058, 12.052667, 18.857769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.520648, 11.789206, 18.828888>,  <11.700402, 11.631129, 18.811560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.520648, 11.789206, 18.828888>,  <11.221058, 12.052667, 18.857769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.520648, 11.789206, 18.828888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267982, -0.400771, 0.876110,
		-0.605988, -0.636836, -0.476674,
		0.748975, -0.658653, -0.072202,
		11.745340, 11.591610, 18.807228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.098189, 11.585844, 19.424547>,  <11.221058, 12.052667, 18.857769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.098189, 11.585844, 19.424547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.428192, 11.416463, 19.274855>,  <11.626194, 11.314835, 19.185040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.428192, 11.416463, 19.274855>,  <11.098189, 11.585844, 19.424547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.428192, 11.416463, 19.274855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166978, -0.449990, 0.877284,
		-0.539891, -0.786254, -0.300537,
		0.825006, -0.423454, -0.374233,
		11.675694, 11.289427, 19.162584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.126011, 10.800391, 19.600132>,  <11.098189, 11.585844, 19.424547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.126011, 10.800391, 19.600132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.490396, 10.958840, 19.554111>,  <11.709026, 11.053910, 19.526499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.490396, 10.958840, 19.554111>,  <11.126011, 10.800391, 19.600132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.490396, 10.958840, 19.554111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272890, -0.369583, 0.888222,
		0.309325, -0.840532, -0.444774,
		0.910961, 0.396124, -0.115052,
		11.763683, 11.077678, 19.519596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.472441, 10.262562, 19.855930>,  <11.126011, 10.800391, 19.600132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.472441, 10.262562, 19.855930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.681981, 10.602829, 19.873568>,  <11.807705, 10.806990, 19.884150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.681981, 10.602829, 19.873568>,  <11.472441, 10.262562, 19.855930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.681981, 10.602829, 19.873568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266971, -0.213119, 0.939844,
		0.808892, -0.480566, -0.338746,
		0.523851, 0.850668, 0.044093,
		11.839136, 10.858029, 19.886795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.097119, 10.082476, 20.175262>,  <11.472441, 10.262562, 19.855930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.097119, 10.082476, 20.175262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.024955, 10.471541, 20.233744>,  <11.981656, 10.704981, 20.268831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.024955, 10.471541, 20.233744>,  <12.097119, 10.082476, 20.175262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.024955, 10.471541, 20.233744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244348, -0.099660, 0.964553,
		0.952757, 0.209740, -0.219689,
		-0.180411, 0.972665, 0.146201,
		11.970832, 10.763341, 20.277603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.456577, 10.156741, 20.678976>,  <12.097119, 10.082476, 20.175262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.456577, 10.156741, 20.678976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.241822, 10.494006, 20.690483>,  <12.112969, 10.696365, 20.697388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.241822, 10.494006, 20.690483>,  <12.456577, 10.156741, 20.678976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.241822, 10.494006, 20.690483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221232, 0.107800, 0.969245,
		0.814130, 0.526740, -0.244411,
		-0.536888, 0.843163, 0.028768,
		12.080756, 10.746955, 20.699114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.850785, 10.615947, 21.048409>,  <12.456577, 10.156741, 20.678976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.850785, 10.615947, 21.048409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.473471, 10.747955, 21.062813>,  <12.247082, 10.827160, 21.071455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.473471, 10.747955, 21.062813>,  <12.850785, 10.615947, 21.048409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.473471, 10.747955, 21.062813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062535, 0.070104, 0.995578,
		0.326036, 0.941367, -0.086765,
		-0.943287, 0.330020, 0.036012,
		12.190485, 10.846961, 21.073616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.837400, 11.249319, 21.483637>,  <12.850785, 10.615947, 21.048409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.837400, 11.249319, 21.483637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.463496, 11.107249, 21.480186>,  <12.239154, 11.022007, 21.478117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.463496, 11.107249, 21.480186>,  <12.837400, 11.249319, 21.483637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.463496, 11.107249, 21.480186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049148, 0.105230, 0.993233,
		-0.351864, 0.928858, -0.115821,
		-0.934760, -0.355176, -0.008624,
		12.183068, 11.000696, 21.477598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.458561, 11.647710, 21.949692>,  <12.837400, 11.249319, 21.483637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.458561, 11.647710, 21.949692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.229593, 11.321467, 21.915926>,  <12.092213, 11.125722, 21.895666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.229593, 11.321467, 21.915926>,  <12.458561, 11.647710, 21.949692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.229593, 11.321467, 21.915926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325413, 0.131468, 0.936388,
		-0.752625, 0.563475, -0.340663,
		-0.572418, -0.815605, -0.084416,
		12.057868, 11.076786, 21.890602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.928451, 11.764059, 22.415119>,  <12.458561, 11.647710, 21.949692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.928451, 11.764059, 22.415119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.883251, 11.371927, 22.350389>,  <11.856132, 11.136648, 22.311552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.883251, 11.371927, 22.350389>,  <11.928451, 11.764059, 22.415119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.883251, 11.371927, 22.350389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318907, -0.118465, 0.940353,
		-0.941026, 0.157865, -0.299247,
		-0.112999, -0.980329, -0.161823,
		11.849352, 11.077828, 22.301842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.398781, 11.557009, 22.831802>,  <11.928451, 11.764059, 22.415119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.398781, 11.557009, 22.831802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.584190, 11.210465, 22.757429>,  <11.695436, 11.002540, 22.712805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.584190, 11.210465, 22.757429>,  <11.398781, 11.557009, 22.831802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.584190, 11.210465, 22.757429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351076, -0.372227, 0.859182,
		-0.813567, -0.332975, -0.476693,
		0.463524, -0.866357, -0.185932,
		11.723248, 10.950558, 22.701649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.855418, 11.062248, 22.838470>,  <11.398781, 11.557009, 22.831802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.855418, 11.062248, 22.838470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.218304, 10.915127, 22.920135>,  <11.436035, 10.826854, 22.969135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.218304, 10.915127, 22.920135>,  <10.855418, 11.062248, 22.838470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.218304, 10.915127, 22.920135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290104, -0.195554, 0.936802,
		-0.304634, -0.909109, -0.284111,
		0.907214, -0.367804, 0.204164,
		11.490468, 10.804786, 22.981384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.745089, 10.486502, 23.232632>,  <10.855418, 11.062248, 22.838470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.745089, 10.486502, 23.232632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.135149, 10.544267, 23.299835>,  <11.369185, 10.578925, 23.340157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.135149, 10.544267, 23.299835>,  <10.745089, 10.486502, 23.232632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.135149, 10.544267, 23.299835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180938, 0.081550, 0.980108,
		0.127842, -0.986151, 0.105654,
		0.975150, 0.144416, 0.168006,
		11.427694, 10.587590, 23.350237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.982521, 10.013372, 23.716215>,  <10.745089, 10.486502, 23.232632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.982521, 10.013372, 23.716215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.254393, 10.303548, 23.759623>,  <11.417516, 10.477654, 23.785667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.254393, 10.303548, 23.759623>,  <10.982521, 10.013372, 23.716215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.254393, 10.303548, 23.759623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165384, 0.007427, 0.986201,
		0.714623, -0.688246, 0.125023,
		0.679678, 0.725439, 0.108518,
		11.458296, 10.521179, 23.792177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.341702, 9.758974, 24.252493>,  <10.982521, 10.013372, 23.716215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.341702, 9.758974, 24.252493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.430202, 10.148462, 24.230902>,  <11.483303, 10.382155, 24.217947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.430202, 10.148462, 24.230902>,  <11.341702, 9.758974, 24.252493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.430202, 10.148462, 24.230902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129175, 0.084125, 0.988047,
		0.966624, -0.211635, 0.144393,
		0.221252, 0.973721, -0.053980,
		11.496578, 10.440578, 24.214708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.665332, 9.917416, 24.910572>,  <11.341702, 9.758974, 24.252493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.665332, 9.917416, 24.910572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.558604, 10.290172, 24.812275>,  <11.494568, 10.513825, 24.753296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.558604, 10.290172, 24.812275>,  <11.665332, 9.917416, 24.910572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.558604, 10.290172, 24.812275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132053, 0.217232, 0.967146,
		0.954657, 0.290503, 0.065097,
		-0.266818, 0.931889, -0.245744,
		11.478559, 10.569738, 24.738552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.336184, 10.079370, 24.517813>,  <11.665332, 9.917416, 24.910572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.336184, 10.079370, 24.517813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.942956, 10.139188, 24.475460>,  <11.707020, 10.175079, 24.450048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.942956, 10.139188, 24.475460>,  <12.336184, 10.079370, 24.517813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.942956, 10.139188, 24.475460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133147, -0.186020, 0.973483,
		0.125885, 0.971098, 0.202783,
		-0.983069, 0.149546, -0.105882,
		11.648035, 10.184052, 24.443695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
