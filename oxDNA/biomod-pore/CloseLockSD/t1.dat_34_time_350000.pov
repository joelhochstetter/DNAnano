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
	<4.353650, 14.633629, 15.243878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.404714, 14.874071, 14.928316>,  <4.435352, 15.018336, 14.738978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.404714, 14.874071, 14.928316>,  <4.353650, 14.633629, 15.243878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.404714, 14.874071, 14.928316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149166, 0.798004, 0.583900,
		0.980537, 0.043137, 0.191538,
		0.127660, 0.601107, -0.788907,
		4.443012, 15.054403, 14.691644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.737607, 15.107141, 15.517541>,  <4.353650, 14.633629, 15.243878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.737607, 15.107141, 15.517541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.554155, 15.269680, 15.201429>,  <4.444085, 15.367203, 15.011763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.554155, 15.269680, 15.201429>,  <4.737607, 15.107141, 15.517541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.554155, 15.269680, 15.201429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184105, 0.826581, 0.531855,
		0.869347, 0.389419, -0.304283,
		-0.458629, 0.406346, -0.790280,
		4.416567, 15.391584, 14.964345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.534769, 15.537656, 16.100689>,  <4.737607, 15.107141, 15.517541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.534769, 15.537656, 16.100689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.868286, 15.627919, 16.302231>,  <5.068396, 15.682077, 16.423155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.868286, 15.627919, 16.302231>,  <4.534769, 15.537656, 16.100689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.868286, 15.627919, 16.302231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324972, 0.537172, -0.778356,
		-0.446299, 0.812726, 0.374558,
		0.833793, 0.225659, 0.503853,
		5.118423, 15.695617, 16.453386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.234625, 15.744206, 15.888130>,  <4.534769, 15.537656, 16.100689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.234625, 15.744206, 15.888130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.541403, 15.638766, 16.122160>,  <5.725469, 15.575502, 16.262579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.541403, 15.638766, 16.122160>,  <5.234625, 15.744206, 15.888130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.541403, 15.638766, 16.122160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472126, 0.849284, -0.236248,
		-0.434621, 0.457418, 0.775805,
		0.766943, -0.263599, 0.585076,
		5.771486, 15.559687, 16.297682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.393041, 16.258951, 16.466526>,  <5.234625, 15.744206, 15.888130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.393041, 16.258951, 16.466526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.721290, 16.063776, 16.347534>,  <5.918240, 15.946671, 16.276138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.721290, 16.063776, 16.347534>,  <5.393041, 16.258951, 16.466526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.721290, 16.063776, 16.347534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446925, 0.872378, -0.198031,
		0.356143, 0.029557, 0.933964,
		0.820622, -0.487939, -0.297482,
		5.967477, 15.917395, 16.258289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.900727, 16.662201, 16.793728>,  <5.393041, 16.258951, 16.466526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.900727, 16.662201, 16.793728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.058469, 16.454592, 16.490387>,  <6.153115, 16.330027, 16.308382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.058469, 16.454592, 16.490387>,  <5.900727, 16.662201, 16.793728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.058469, 16.454592, 16.490387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416159, 0.836628, -0.356183,
		0.819326, -0.175132, 0.545924,
		0.394356, -0.519021, -0.758354,
		6.176776, 16.298885, 16.262880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.566315, 17.013083, 16.666235>,  <5.900727, 16.662201, 16.793728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.566315, 17.013083, 16.666235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.488159, 16.812878, 16.328878>,  <6.441266, 16.692755, 16.126465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.488159, 16.812878, 16.328878>,  <6.566315, 17.013083, 16.666235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.488159, 16.812878, 16.328878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431524, 0.728371, -0.532225,
		0.880687, -0.467935, 0.073667,
		-0.195390, -0.500513, -0.843392,
		6.429543, 16.662724, 16.075861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.196777, 17.214884, 16.182373>,  <6.566315, 17.013083, 16.666235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.196777, 17.214884, 16.182373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.883523, 17.101013, 15.961228>,  <6.695570, 17.032690, 15.828542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.883523, 17.101013, 15.961228>,  <7.196777, 17.214884, 16.182373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.883523, 17.101013, 15.961228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322693, 0.573945, -0.752633,
		0.531569, -0.767820, -0.357615,
		-0.783137, -0.284677, -0.552861,
		6.648582, 17.015610, 15.795370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.564291, 17.201841, 15.457024>,  <7.196777, 17.214884, 16.182373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.564291, 17.201841, 15.457024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.165290, 17.213295, 15.431188>,  <6.925890, 17.220167, 15.415687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.165290, 17.213295, 15.431188>,  <7.564291, 17.201841, 15.457024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.165290, 17.213295, 15.431188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062880, 0.776651, -0.626785,
		0.032215, -0.629280, -0.776511,
		-0.997501, 0.028635, -0.064589,
		6.866040, 17.221886, 15.411811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.435497, 17.131262, 14.728866>,  <7.564291, 17.201841, 15.457024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.435497, 17.131262, 14.728866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.104161, 17.293732, 14.883202>,  <6.905359, 17.391214, 14.975803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.104161, 17.293732, 14.883202>,  <7.435497, 17.131262, 14.728866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.104161, 17.293732, 14.883202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038145, 0.646236, -0.762184,
		-0.558924, -0.646066, -0.519810,
		-0.828341, 0.406175, 0.385841,
		6.855659, 17.415585, 14.998954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.953954, 17.091305, 14.203501>,  <7.435497, 17.131262, 14.728866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.953954, 17.091305, 14.203501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.821232, 17.389980, 14.434104>,  <6.741599, 17.569185, 14.572466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.821232, 17.389980, 14.434104>,  <6.953954, 17.091305, 14.203501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.821232, 17.389980, 14.434104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002788, 0.610351, -0.792126,
		-0.943344, -0.264439, -0.200435,
		-0.331805, 0.746689, 0.576508,
		6.721691, 17.613987, 14.607057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.344154, 17.308023, 13.979562>,  <6.953954, 17.091305, 14.203501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.344154, 17.308023, 13.979562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.485354, 17.638569, 14.155068>,  <6.570074, 17.836895, 14.260372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.485354, 17.638569, 14.155068>,  <6.344154, 17.308023, 13.979562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.485354, 17.638569, 14.155068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278573, 0.540517, -0.793875,
		-0.893190, 0.158009, 0.421004,
		0.353000, 0.826362, 0.438767,
		6.591254, 17.886478, 14.286698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.958826, 17.792006, 13.682211>,  <6.344154, 17.308023, 13.979562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.958826, 17.792006, 13.682211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.272793, 18.000933, 13.815531>,  <6.461173, 18.126289, 13.895523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.272793, 18.000933, 13.815531>,  <5.958826, 17.792006, 13.682211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.272793, 18.000933, 13.815531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023049, 0.512940, -0.858115,
		-0.619172, 0.681231, 0.390576,
		0.784917, 0.522318, 0.333299,
		6.508268, 18.157629, 13.915521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.771007, 18.395058, 13.379063>,  <5.958826, 17.792006, 13.682211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.771007, 18.395058, 13.379063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.156855, 18.419956, 13.481538>,  <6.388363, 18.434896, 13.543023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.156855, 18.419956, 13.481538>,  <5.771007, 18.395058, 13.379063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.156855, 18.419956, 13.481538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197753, 0.471815, -0.859235,
		-0.174358, 0.879497, 0.442813,
		0.964621, 0.062247, 0.256188,
		6.446241, 18.438631, 13.558394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.993092, 19.111032, 13.351339>,  <5.771007, 18.395058, 13.379063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.993092, 19.111032, 13.351339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.316612, 18.879030, 13.312485>,  <6.510725, 18.739830, 13.289172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.316612, 18.879030, 13.312485>,  <5.993092, 19.111032, 13.351339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.316612, 18.879030, 13.312485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249397, 0.487876, -0.836528,
		0.532581, 0.652359, 0.539246,
		0.808801, -0.580005, -0.097137,
		6.559253, 18.705029, 13.283343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.593121, 19.508984, 13.297341>,  <5.993092, 19.111032, 13.351339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.593121, 19.508984, 13.297341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.759013, 19.181465, 13.138558>,  <6.858548, 18.984955, 13.043288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.759013, 19.181465, 13.138558>,  <6.593121, 19.508984, 13.297341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.759013, 19.181465, 13.138558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354529, 0.547169, -0.758231,
		0.838039, 0.173727, 0.517214,
		0.414729, -0.818795, -0.396958,
		6.883431, 18.935827, 13.019471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.277056, 19.698866, 12.966648>,  <6.593121, 19.508984, 13.297341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.277056, 19.698866, 12.966648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.195701, 19.343964, 12.801041>,  <7.146888, 19.131021, 12.701676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.195701, 19.343964, 12.801041>,  <7.277056, 19.698866, 12.966648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.195701, 19.343964, 12.801041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346616, 0.330224, -0.877958,
		0.915691, -0.322071, 0.240373,
		-0.203388, -0.887256, -0.414018,
		7.134685, 19.077787, 12.676835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.858101, 19.499561, 12.445138>,  <7.277056, 19.698866, 12.966648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.858101, 19.499561, 12.445138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.559128, 19.246580, 12.363806>,  <7.379744, 19.094791, 12.315006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.559128, 19.246580, 12.363806>,  <7.858101, 19.499561, 12.445138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.559128, 19.246580, 12.363806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239957, 0.028386, -0.970368,
		0.619486, -0.774077, 0.130545,
		-0.747434, -0.632455, -0.203330,
		7.334898, 19.056843, 12.302807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.124129, 18.948721, 12.024364>,  <7.858101, 19.499561, 12.445138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.124129, 18.948721, 12.024364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.729288, 18.966587, 11.962873>,  <7.492383, 18.977306, 11.925979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.729288, 18.966587, 11.962873>,  <8.124129, 18.948721, 12.024364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.729288, 18.966587, 11.962873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157535, 0.100311, -0.982405,
		-0.028461, -0.993953, -0.106054,
		-0.987103, 0.044667, -0.153728,
		7.433156, 18.979986, 11.916755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.987944, 18.478943, 11.430408>,  <8.124129, 18.948721, 12.024364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.987944, 18.478943, 11.430408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.691724, 18.746332, 11.457926>,  <7.513992, 18.906765, 11.474437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.691724, 18.746332, 11.457926>,  <7.987944, 18.478943, 11.430408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.691724, 18.746332, 11.457926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096450, 0.207044, -0.973566,
		-0.665044, -0.714338, -0.217800,
		-0.740550, 0.668471, 0.068796,
		7.469559, 18.946873, 11.478564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.596129, 18.373341, 10.815321>,  <7.987944, 18.478943, 11.430408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.596129, 18.373341, 10.815321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.450330, 18.729683, 10.923776>,  <7.362851, 18.943489, 10.988849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.450330, 18.729683, 10.923776>,  <7.596129, 18.373341, 10.815321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.450330, 18.729683, 10.923776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058330, 0.268753, -0.961441,
		-0.929376, -0.366257, -0.045996,
		-0.364496, 0.890858, 0.271136,
		7.340981, 18.996941, 11.005116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.069750, 18.554737, 10.326621>,  <7.596129, 18.373341, 10.815321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.069750, 18.554737, 10.326621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.169284, 18.890770, 10.519431>,  <7.229005, 19.092390, 10.635117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.169284, 18.890770, 10.519431>,  <7.069750, 18.554737, 10.326621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.169284, 18.890770, 10.519431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186617, 0.529938, -0.827248,
		-0.950397, 0.115894, 0.288640,
		0.248835, 0.840080, 0.482024,
		7.243935, 19.142794, 10.664039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.512201, 19.180660, 10.153006>,  <7.069750, 18.554737, 10.326621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.512201, 19.180660, 10.153006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.863702, 19.328741, 10.273501>,  <7.074603, 19.417589, 10.345799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.863702, 19.328741, 10.273501>,  <6.512201, 19.180660, 10.153006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.863702, 19.328741, 10.273501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015614, 0.653124, -0.757090,
		-0.477023, 0.660591, 0.579715,
		0.878752, 0.370201, 0.301240,
		7.127328, 19.439802, 10.363873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.471817, 19.828720, 9.957315>,  <6.512201, 19.180660, 10.153006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.471817, 19.828720, 9.957315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.868644, 19.794388, 9.994047>,  <7.106740, 19.773788, 10.016087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.868644, 19.794388, 9.994047>,  <6.471817, 19.828720, 9.957315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.868644, 19.794388, 9.994047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120925, 0.452297, -0.883632,
		0.034310, 0.887728, 0.459088,
		0.992068, -0.085833, 0.091830,
		7.166265, 19.768639, 10.021596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.839087, 20.546574, 9.987393>,  <6.471817, 19.828720, 9.957315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.839087, 20.546574, 9.987393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.119053, 20.300907, 9.841560>,  <7.287033, 20.153507, 9.754061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.119053, 20.300907, 9.841560>,  <6.839087, 20.546574, 9.987393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.119053, 20.300907, 9.841560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219660, 0.670820, -0.708344,
		0.679609, 0.415696, 0.604424,
		0.699915, -0.614164, -0.364583,
		7.329028, 20.116657, 9.732185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.510536, 20.898724, 10.041734>,  <6.839087, 20.546574, 9.987393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.510536, 20.898724, 10.041734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.454240, 20.633846, 9.747335>,  <7.420462, 20.474920, 9.570696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.454240, 20.633846, 9.747335>,  <7.510536, 20.898724, 10.041734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.454240, 20.633846, 9.747335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341657, 0.665243, -0.663869,
		0.929227, -0.344892, 0.132617,
		-0.140740, -0.662194, -0.735997,
		7.412018, 20.435188, 9.526537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.992763, 21.045872, 9.440054>,  <7.510536, 20.898724, 10.041734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.992763, 21.045872, 9.440054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.740852, 20.773956, 9.289710>,  <7.589706, 20.610807, 9.199504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.740852, 20.773956, 9.289710>,  <7.992763, 21.045872, 9.440054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.740852, 20.773956, 9.289710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008180, 0.478041, -0.878300,
		0.776734, -0.556206, -0.295498,
		-0.629775, -0.679788, -0.375860,
		7.551919, 20.570021, 9.176952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.282751, 20.764626, 8.757055>,  <7.992763, 21.045872, 9.440054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.282751, 20.764626, 8.757055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.882977, 20.752998, 8.750332>,  <7.643112, 20.746023, 8.746298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.882977, 20.752998, 8.750332>,  <8.282751, 20.764626, 8.757055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.882977, 20.752998, 8.750332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006416, 0.326056, -0.945329,
		0.032957, -0.944904, -0.325686,
		-0.999436, -0.029066, -0.016809,
		7.583146, 20.744278, 8.745289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.119119, 20.353142, 8.176904>,  <8.282751, 20.764626, 8.757055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.119119, 20.353142, 8.176904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.805107, 20.592861, 8.239605>,  <7.616699, 20.736692, 8.277225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.805107, 20.592861, 8.239605>,  <8.119119, 20.353142, 8.176904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.805107, 20.592861, 8.239605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052738, 0.316789, -0.947029,
		-0.617208, -0.735180, -0.280294,
		-0.785030, 0.599296, 0.156753,
		7.569598, 20.772650, 8.286631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.449843, 19.718781, 7.763359>,  <8.119119, 20.353142, 8.176904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.449843, 19.718781, 7.763359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.599367, 19.438419, 8.006341>,  <8.689081, 19.270203, 8.152130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.599367, 19.438419, 8.006341>,  <8.449843, 19.718781, 7.763359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.599367, 19.438419, 8.006341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809637, -0.566104, -0.154967,
		0.452499, -0.433890, -0.779092,
		0.373808, -0.700904, 0.607454,
		8.711510, 19.228148, 8.188578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.655973, 19.040565, 7.364965>,  <8.449843, 19.718781, 7.763359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.655973, 19.040565, 7.364965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.529353, 19.031290, 7.744282>,  <8.453381, 19.025724, 7.971872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.529353, 19.031290, 7.744282>,  <8.655973, 19.040565, 7.364965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.529353, 19.031290, 7.744282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805227, -0.521859, -0.281554,
		0.501402, -0.852717, 0.146525,
		-0.316551, -0.023187, 0.948292,
		8.434388, 19.024334, 8.028769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.458360, 18.385677, 7.657455>,  <8.655973, 19.040565, 7.364965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.458360, 18.385677, 7.657455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.226584, 18.594830, 7.907527>,  <8.087520, 18.720320, 8.057570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.226584, 18.594830, 7.907527>,  <8.458360, 18.385677, 7.657455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.226584, 18.594830, 7.907527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769219, -0.604367, -0.207466,
		0.269359, -0.601115, 0.752401,
		-0.579437, 0.522878, 0.625181,
		8.052753, 18.751694, 8.095081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.095579, 18.252939, 7.404928>,  <8.458360, 18.385677, 7.657455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.095579, 18.252939, 7.404928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.466635, 18.337929, 7.527787>,  <9.689268, 18.388924, 7.601503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.466635, 18.337929, 7.527787>,  <9.095579, 18.252939, 7.404928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.466635, 18.337929, 7.527787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248700, -0.262117, 0.932439,
		0.278630, -0.941354, -0.190307,
		0.927638, 0.212476, 0.307149,
		9.744926, 18.401672, 7.619932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.331250, 17.699238, 7.834746>,  <9.095579, 18.252939, 7.404928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.331250, 17.699238, 7.834746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.522173, 18.037565, 7.930055>,  <9.636726, 18.240561, 7.987240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.522173, 18.037565, 7.930055>,  <9.331250, 17.699238, 7.834746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.522173, 18.037565, 7.930055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224132, -0.145002, 0.963711,
		0.849673, -0.513390, 0.120364,
		0.477306, 0.845817, 0.238272,
		9.665365, 18.291309, 8.001536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.784422, 17.579905, 8.292647>,  <9.331250, 17.699238, 7.834746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.784422, 17.579905, 8.292647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.624735, 17.945543, 8.321072>,  <9.528923, 18.164927, 8.338126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.624735, 17.945543, 8.321072>,  <9.784422, 17.579905, 8.292647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.624735, 17.945543, 8.321072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222561, -0.171802, 0.959662,
		0.889433, 0.367299, 0.272029,
		-0.399218, 0.914098, 0.071060,
		9.504970, 18.219772, 8.342390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.171210, 17.985434, 8.823877>,  <9.784422, 17.579905, 8.292647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.171210, 17.985434, 8.823877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.787856, 18.090445, 8.779019>,  <9.557843, 18.153450, 8.752105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.787856, 18.090445, 8.779019>,  <10.171210, 17.985434, 8.823877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.787856, 18.090445, 8.779019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117156, -0.003464, 0.993107,
		0.260328, 0.964919, 0.034076,
		-0.958386, 0.262526, -0.112144,
		9.500340, 18.169203, 8.745377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.932868, 18.641623, 9.197576>,  <10.171210, 17.985434, 8.823877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.932868, 18.641623, 9.197576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.608758, 18.415922, 9.134237>,  <9.414291, 18.280502, 9.096234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.608758, 18.415922, 9.134237>,  <9.932868, 18.641623, 9.197576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.608758, 18.415922, 9.134237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186158, -0.008388, 0.982484,
		-0.555696, 0.825561, -0.098243,
		-0.810276, -0.564251, -0.158346,
		9.365675, 18.246647, 9.086734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.454000, 18.933537, 9.606637>,  <9.932868, 18.641623, 9.197576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.454000, 18.933537, 9.606637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.358199, 18.550913, 9.540146>,  <9.300719, 18.321339, 9.500251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.358199, 18.550913, 9.540146>,  <9.454000, 18.933537, 9.606637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.358199, 18.550913, 9.540146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197700, -0.119576, 0.972942,
		-0.950555, 0.265883, -0.160474,
		-0.239500, -0.956560, -0.166229,
		9.286349, 18.263945, 9.490277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.861072, 18.843987, 10.023453>,  <9.454000, 18.933537, 9.606637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.861072, 18.843987, 10.023453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.985897, 18.467827, 9.969398>,  <9.060792, 18.242130, 9.936966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.985897, 18.467827, 9.969398>,  <8.861072, 18.843987, 10.023453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.985897, 18.467827, 9.969398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202019, -0.204669, 0.957757,
		-0.928334, -0.271580, -0.253849,
		0.312063, -0.940401, -0.135137,
		9.079515, 18.185707, 9.928858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.294862, 18.379688, 10.347692>,  <8.861072, 18.843987, 10.023453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.294862, 18.379688, 10.347692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.637312, 18.174938, 10.319320>,  <8.842782, 18.052088, 10.302297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.637312, 18.174938, 10.319320>,  <8.294862, 18.379688, 10.347692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.637312, 18.174938, 10.319320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015109, -0.161992, 0.986676,
		-0.516546, -0.843648, -0.146420,
		0.856126, -0.511876, -0.070930,
		8.894150, 18.021376, 10.298040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.267977, 17.839733, 10.904790>,  <8.294862, 18.379688, 10.347692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.267977, 17.839733, 10.904790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.657386, 17.787886, 10.829474>,  <8.891031, 17.756777, 10.784286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.657386, 17.787886, 10.829474>,  <8.267977, 17.839733, 10.904790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.657386, 17.787886, 10.829474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120798, -0.407570, 0.905149,
		-0.194063, -0.903928, -0.381121,
		0.973523, -0.129617, -0.188287,
		8.949443, 17.749001, 10.772988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.481688, 17.207113, 11.196275>,  <8.267977, 17.839733, 10.904790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.481688, 17.207113, 11.196275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.830124, 17.393774, 11.135033>,  <9.039186, 17.505770, 11.098288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.830124, 17.393774, 11.135033>,  <8.481688, 17.207113, 11.196275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.830124, 17.393774, 11.135033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307033, -0.274121, 0.911366,
		0.383320, -0.840890, -0.382061,
		0.871089, 0.466650, -0.153105,
		9.091451, 17.533770, 11.089101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.020512, 16.801064, 11.325550>,  <8.481688, 17.207113, 11.196275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.020512, 16.801064, 11.325550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.205417, 17.151205, 11.382216>,  <9.316360, 17.361290, 11.416217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.205417, 17.151205, 11.382216>,  <9.020512, 16.801064, 11.325550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.205417, 17.151205, 11.382216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272766, -0.292382, 0.916576,
		0.843749, -0.385056, -0.373924,
		0.462262, 0.875354, 0.141667,
		9.344095, 17.413811, 11.424717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.669091, 16.588747, 11.585661>,  <9.020512, 16.801064, 11.325550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.669091, 16.588747, 11.585661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.586578, 16.968599, 11.680022>,  <9.537071, 17.196510, 11.736639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.586578, 16.968599, 11.680022>,  <9.669091, 16.588747, 11.585661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.586578, 16.968599, 11.680022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195886, -0.196131, 0.960813,
		0.958685, 0.244408, -0.145561,
		-0.206281, 0.949630, 0.235904,
		9.524693, 17.253489, 11.750793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.224697, 16.770891, 11.916168>,  <9.669091, 16.588747, 11.585661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.224697, 16.770891, 11.916168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.914832, 17.002232, 12.018468>,  <9.728912, 17.141035, 12.079848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.914832, 17.002232, 12.018468>,  <10.224697, 16.770891, 11.916168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.914832, 17.002232, 12.018468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115336, -0.268427, 0.956370,
		0.621767, 0.770362, 0.141236,
		-0.774664, 0.578350, 0.255750,
		9.682433, 17.175737, 12.095193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.446584, 17.106810, 12.493024>,  <10.224697, 16.770891, 11.916168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.446584, 17.106810, 12.493024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.049242, 17.145004, 12.518722>,  <9.810837, 17.167921, 12.534141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.049242, 17.145004, 12.518722>,  <10.446584, 17.106810, 12.493024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.049242, 17.145004, 12.518722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015577, -0.441546, 0.897103,
		0.114028, 0.892143, 0.437125,
		-0.993355, 0.095486, 0.064245,
		9.751235, 17.173651, 12.537995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.308165, 17.423637, 13.133125>,  <10.446584, 17.106810, 12.493024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.308165, 17.423637, 13.133125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.936355, 17.314854, 13.033508>,  <9.713269, 17.249582, 12.973739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.936355, 17.314854, 13.033508>,  <10.308165, 17.423637, 13.133125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.936355, 17.314854, 13.033508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182678, -0.247062, 0.951625,
		-0.320333, 0.930053, 0.179969,
		-0.929524, -0.271960, -0.249042,
		9.657497, 17.233265, 12.958796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.815797, 17.684408, 13.693995>,  <10.308165, 17.423637, 13.133125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.815797, 17.684408, 13.693995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.631607, 17.390467, 13.494815>,  <9.521093, 17.214102, 13.375307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.631607, 17.390467, 13.494815>,  <9.815797, 17.684408, 13.693995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.631607, 17.390467, 13.494815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199617, -0.460868, 0.864727,
		-0.864938, 0.497583, 0.065529,
		-0.460474, -0.734855, -0.497948,
		9.493465, 17.170010, 13.345430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.265179, 17.528866, 14.056916>,  <9.815797, 17.684408, 13.693995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.265179, 17.528866, 14.056916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.266137, 17.200022, 13.829188>,  <9.266712, 17.002714, 13.692552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.266137, 17.200022, 13.829188>,  <9.265179, 17.528866, 14.056916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.266137, 17.200022, 13.829188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323240, -0.539396, 0.777540,
		-0.946314, 0.182165, -0.267032,
		0.002396, -0.822112, -0.569321,
		9.266856, 16.953388, 13.658392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.625109, 17.179680, 14.265324>,  <9.265179, 17.528866, 14.056916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.625109, 17.179680, 14.265324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.869424, 16.911253, 14.097225>,  <9.016013, 16.750196, 13.996367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.869424, 16.911253, 14.097225>,  <8.625109, 17.179680, 14.265324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.869424, 16.911253, 14.097225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260042, -0.671321, 0.694051,
		-0.747876, -0.314635, -0.584539,
		0.610786, -0.671069, -0.420247,
		9.052660, 16.709932, 13.971151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.187589, 16.545292, 14.078662>,  <8.625109, 17.179680, 14.265324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.187589, 16.545292, 14.078662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.568710, 16.428766, 14.112841>,  <8.797383, 16.358850, 14.133348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.568710, 16.428766, 14.112841>,  <8.187589, 16.545292, 14.078662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.568710, 16.428766, 14.112841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293048, -0.809025, 0.509510,
		-0.079300, -0.510503, -0.856211,
		0.952803, -0.291315, 0.085446,
		8.854551, 16.341372, 14.138474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.126830, 15.785098, 14.002690>,  <8.187589, 16.545292, 14.078662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.126830, 15.785098, 14.002690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.482980, 15.861390, 14.168030>,  <8.696670, 15.907166, 14.267233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.482980, 15.861390, 14.168030>,  <8.126830, 15.785098, 14.002690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.482980, 15.861390, 14.168030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081555, -0.826476, 0.557034,
		0.447865, -0.529679, -0.720317,
		0.890374, 0.190731, 0.413348,
		8.750092, 15.918610, 14.292034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.443592, 15.103655, 14.015870>,  <8.126830, 15.785098, 14.002690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.443592, 15.103655, 14.015870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.632117, 15.344813, 14.273359>,  <8.745233, 15.489509, 14.427853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.632117, 15.344813, 14.273359>,  <8.443592, 15.103655, 14.015870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.632117, 15.344813, 14.273359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233367, -0.618612, 0.750240,
		0.850531, -0.503822, -0.150864,
		0.471314, 0.602895, 0.643724,
		8.773511, 15.525682, 14.466476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.685049, 14.615080, 14.383273>,  <8.443592, 15.103655, 14.015870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.685049, 14.615080, 14.383273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.733762, 14.932791, 14.621364>,  <8.762990, 15.123417, 14.764218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.733762, 14.932791, 14.621364>,  <8.685049, 14.615080, 14.383273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.733762, 14.932791, 14.621364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192868, -0.569323, 0.799170,
		0.973638, -0.212125, 0.083857,
		0.121783, 0.794276, 0.595227,
		8.770296, 15.171074, 14.799932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.250225, 14.458432, 14.738996>,  <8.685049, 14.615080, 14.383273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.250225, 14.458432, 14.738996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.041213, 14.736344, 14.936680>,  <8.915806, 14.903091, 15.055290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.041213, 14.736344, 14.936680>,  <9.250225, 14.458432, 14.738996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.041213, 14.736344, 14.936680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076693, -0.615588, 0.784328,
		0.849165, 0.371931, 0.374947,
		-0.522529, 0.694779, 0.494211,
		8.884455, 14.944778, 15.084943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.626459, 14.678433, 15.318306>,  <9.250225, 14.458432, 14.738996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.626459, 14.678433, 15.318306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.235836, 14.725616, 15.390332>,  <9.001462, 14.753924, 15.433548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.235836, 14.725616, 15.390332>,  <9.626459, 14.678433, 15.318306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.235836, 14.725616, 15.390332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059155, -0.657240, 0.751356,
		0.206972, 0.744394, 0.634855,
		-0.976557, 0.117955, 0.180065,
		8.942869, 14.761002, 15.444352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.533895, 14.650189, 16.075869>,  <9.626459, 14.678433, 15.318306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.533895, 14.650189, 16.075869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.218680, 14.509150, 15.874010>,  <9.029552, 14.424525, 15.752894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.218680, 14.509150, 15.874010>,  <9.533895, 14.650189, 16.075869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.218680, 14.509150, 15.874010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126217, -0.894854, 0.428143,
		-0.602549, 0.273698, 0.749683,
		-0.788038, -0.352599, -0.504648,
		8.982269, 14.403370, 15.722615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.276136, 15.371059, 16.251272>,  <9.533895, 14.650189, 16.075869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.276136, 15.371059, 16.251272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.488542, 15.669734, 16.411514>,  <9.615985, 15.848939, 16.507660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.488542, 15.669734, 16.411514>,  <9.276136, 15.371059, 16.251272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.488542, 15.669734, 16.411514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077313, -0.513487, 0.854607,
		0.843830, -0.422835, -0.330397,
		0.531012, 0.746687, 0.400606,
		9.647845, 15.893740, 16.531696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.032834, 15.150733, 16.426889>,  <9.276136, 15.371059, 16.251272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.032834, 15.150733, 16.426889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.877370, 15.438382, 16.657299>,  <9.784091, 15.610971, 16.795546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.877370, 15.438382, 16.657299>,  <10.032834, 15.150733, 16.426889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.877370, 15.438382, 16.657299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106691, -0.585844, 0.803370,
		0.915183, 0.373695, 0.150971,
		-0.388661, 0.719123, 0.576025,
		9.760772, 15.654119, 16.830107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.522163, 15.361270, 17.063406>,  <10.032834, 15.150733, 16.426889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.522163, 15.361270, 17.063406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.138453, 15.450286, 17.132994>,  <9.908226, 15.503695, 17.174746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.138453, 15.450286, 17.132994>,  <10.522163, 15.361270, 17.063406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.138453, 15.450286, 17.132994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034293, -0.519580, 0.853733,
		0.280381, 0.824932, 0.490789,
		-0.959276, 0.222540, 0.173970,
		9.850670, 15.517048, 17.185184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.642016, 15.485148, 17.771759>,  <10.522163, 15.361270, 17.063406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.642016, 15.485148, 17.771759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.273837, 15.372689, 17.663147>,  <10.052929, 15.305214, 17.597979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.273837, 15.372689, 17.663147>,  <10.642016, 15.485148, 17.771759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.273837, 15.372689, 17.663147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145200, -0.399030, 0.905368,
		-0.362891, 0.872772, 0.326464,
		-0.920449, -0.281147, -0.271531,
		9.997703, 15.288345, 17.581688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.128926, 14.910442, 17.719538>,  <10.642016, 15.485148, 17.771759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.128926, 14.910442, 17.719538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.259898, 15.178415, 17.453011>,  <11.338482, 15.339199, 17.293095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.259898, 15.178415, 17.453011>,  <11.128926, 14.910442, 17.719538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.259898, 15.178415, 17.453011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942281, 0.179298, -0.282769,
		-0.069967, 0.720446, 0.689972,
		0.327430, 0.669933, -0.666318,
		11.358128, 15.379395, 17.253115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.621661, 15.280869, 18.113735>,  <11.128926, 14.910442, 17.719538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.621661, 15.280869, 18.113735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.600600, 15.161013, 18.494774>,  <11.587964, 15.089099, 18.723398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.600600, 15.161013, 18.494774>,  <11.621661, 15.280869, 18.113735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.600600, 15.161013, 18.494774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332332, 0.894290, 0.299669,
		-0.941692, 0.332357, 0.052494,
		-0.052652, -0.299641, 0.952598,
		11.584805, 15.071120, 18.780554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.462179, 15.897672, 18.618616>,  <11.621661, 15.280869, 18.113735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.462179, 15.897672, 18.618616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.637195, 15.630931, 18.859901>,  <11.742204, 15.470886, 19.004673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.637195, 15.630931, 18.859901>,  <11.462179, 15.897672, 18.618616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.637195, 15.630931, 18.859901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405107, 0.745084, 0.529847,
		-0.802775, 0.012538, 0.596150,
		0.437539, -0.666853, 0.603214,
		11.768456, 15.430875, 19.040865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.412201, 16.178171, 19.258759>,  <11.462179, 15.897672, 18.618616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.412201, 16.178171, 19.258759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.714581, 15.916364, 19.263601>,  <11.896009, 15.759280, 19.266506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.714581, 15.916364, 19.263601>,  <11.412201, 16.178171, 19.258759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.714581, 15.916364, 19.263601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577875, 0.675893, 0.457416,
		-0.307569, -0.338788, 0.889170,
		0.755951, -0.654516, 0.012107,
		11.941367, 15.720009, 19.267233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.732020, 16.204599, 20.052378>,  <11.412201, 16.178171, 19.258759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.732020, 16.204599, 20.052378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.983151, 16.068470, 19.772373>,  <12.133830, 15.986793, 19.604370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.983151, 16.068470, 19.772373>,  <11.732020, 16.204599, 20.052378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.983151, 16.068470, 19.772373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747775, 0.513325, 0.421105,
		0.216020, -0.787831, 0.576765,
		0.627828, -0.340324, -0.700009,
		12.171499, 15.966373, 19.562370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.315530, 15.772521, 20.431791>,  <11.732020, 16.204599, 20.052378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.315530, 15.772521, 20.431791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.447689, 15.879042, 20.069593>,  <12.526984, 15.942954, 19.852274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.447689, 15.879042, 20.069593>,  <12.315530, 15.772521, 20.431791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.447689, 15.879042, 20.069593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819976, 0.394119, 0.415102,
		0.467416, -0.879632, -0.088145,
		0.330397, 0.266302, -0.905495,
		12.546808, 15.958932, 19.797945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.999122, 15.618053, 20.477457>,  <12.315530, 15.772521, 20.431791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.999122, 15.618053, 20.477457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.959177, 15.883698, 20.181084>,  <12.935210, 16.043083, 20.003260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.959177, 15.883698, 20.181084>,  <12.999122, 15.618053, 20.477457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.959177, 15.883698, 20.181084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873519, 0.415079, 0.254311,
		0.476438, -0.621825, -0.621563,
		-0.099861, 0.664111, -0.740935,
		12.929219, 16.082932, 19.958803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.636140, 15.734363, 20.249971>,  <12.999122, 15.618053, 20.477457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.636140, 15.734363, 20.249971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.475872, 16.052141, 20.067404>,  <13.379711, 16.242807, 19.957863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.475872, 16.052141, 20.067404>,  <13.636140, 15.734363, 20.249971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.475872, 16.052141, 20.067404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723017, 0.580137, 0.375085,
		0.562771, -0.179714, -0.806841,
		-0.400670, 0.794446, -0.456420,
		13.355671, 16.290476, 19.930477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.203605, 15.938073, 19.952990>,  <13.636140, 15.734363, 20.249971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.203605, 15.938073, 19.952990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.931958, 16.231684, 19.951906>,  <13.768970, 16.407850, 19.951256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.931958, 16.231684, 19.951906>,  <14.203605, 15.938073, 19.952990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.931958, 16.231684, 19.951906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728424, 0.674378, 0.120885,
		0.090558, 0.080124, -0.992663,
		-0.679116, 0.734026, -0.002706,
		13.728224, 16.451891, 19.951094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.579893, 16.450869, 19.638311>,  <14.203605, 15.938073, 19.952990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.579893, 16.450869, 19.638311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.274404, 16.622400, 19.831324>,  <14.091110, 16.725319, 19.947130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.274404, 16.622400, 19.831324>,  <14.579893, 16.450869, 19.638311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.274404, 16.622400, 19.831324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600642, 0.745948, 0.287734,
		-0.236552, 0.509576, -0.827270,
		-0.763723, 0.428828, 0.482528,
		14.045287, 16.751049, 19.976082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.564994, 17.202772, 19.475708>,  <14.579893, 16.450869, 19.638311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.564994, 17.202772, 19.475708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.360039, 17.166363, 19.817274>,  <14.237066, 17.144518, 20.022215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.360039, 17.166363, 19.817274>,  <14.564994, 17.202772, 19.475708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.360039, 17.166363, 19.817274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421673, 0.839568, 0.342516,
		-0.748099, 0.535574, -0.391802,
		-0.512387, -0.091023, 0.853917,
		14.206323, 17.139055, 20.073450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.291399, 17.922358, 19.685732>,  <14.564994, 17.202772, 19.475708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.291399, 17.922358, 19.685732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.305854, 17.680395, 20.003923>,  <14.314527, 17.535217, 20.194838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.305854, 17.680395, 20.003923>,  <14.291399, 17.922358, 19.685732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.305854, 17.680395, 20.003923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382183, 0.743854, 0.548286,
		-0.923380, 0.284204, 0.258066,
		0.036138, -0.604905, 0.795477,
		14.316695, 17.498924, 20.242567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.309349, 18.404205, 20.209661>,  <14.291399, 17.922358, 19.685732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.309349, 18.404205, 20.209661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.355369, 18.042048, 20.373135>,  <14.382980, 17.824753, 20.471218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.355369, 18.042048, 20.373135>,  <14.309349, 18.404205, 20.209661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.355369, 18.042048, 20.373135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456157, 0.413625, 0.787930,
		-0.882431, 0.095774, 0.460590,
		0.115049, -0.905396, 0.408684,
		14.389883, 17.770430, 20.495739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.128594, 18.526415, 20.920082>,  <14.309349, 18.404205, 20.209661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.128594, 18.526415, 20.920082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.374978, 18.212479, 20.892900>,  <14.522808, 18.024117, 20.876591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.374978, 18.212479, 20.892900>,  <14.128594, 18.526415, 20.920082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.374978, 18.212479, 20.892900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669740, 0.476294, 0.569730,
		-0.414781, -0.396442, 0.819018,
		0.615958, -0.784842, -0.067955,
		14.559766, 17.977026, 20.872515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.199091, 18.404175, 21.509884>,  <14.128594, 18.526415, 20.920082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.199091, 18.404175, 21.509884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.513302, 18.243515, 21.321577>,  <14.701829, 18.147120, 21.208593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.513302, 18.243515, 21.321577>,  <14.199091, 18.404175, 21.509884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.513302, 18.243515, 21.321577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618811, 0.504595, 0.602044,
		-0.004263, -0.764240, 0.644918,
		0.785528, -0.401649, -0.470769,
		14.748960, 18.123020, 21.180346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.734110, 18.140909, 21.984076>,  <14.199091, 18.404175, 21.509884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.734110, 18.140909, 21.984076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.971626, 18.172173, 21.663750>,  <15.114136, 18.190931, 21.471554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.971626, 18.172173, 21.663750>,  <14.734110, 18.140909, 21.984076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.971626, 18.172173, 21.663750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669805, 0.503467, 0.545787,
		0.445841, -0.860472, 0.246603,
		0.593791, 0.078158, -0.800814,
		15.149763, 18.195620, 21.423506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.401896, 18.208849, 22.298008>,  <14.734110, 18.140909, 21.984076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.401896, 18.208849, 22.298008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.471989, 18.289528, 21.912550>,  <15.514045, 18.337934, 21.681274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.471989, 18.289528, 21.912550>,  <15.401896, 18.208849, 22.298008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.471989, 18.289528, 21.912550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815541, 0.518580, 0.256843,
		0.551531, -0.830900, -0.073618,
		0.175234, 0.201696, -0.963645,
		15.524559, 18.350037, 21.623457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.091051, 17.913982, 22.040962>,  <15.401896, 18.208849, 22.298008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.091051, 17.913982, 22.040962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.990957, 18.231085, 21.818642>,  <15.930901, 18.421347, 21.685249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.990957, 18.231085, 21.818642>,  <16.091051, 17.913982, 22.040962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.990957, 18.231085, 21.818642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687423, 0.549729, 0.474602,
		0.681785, -0.263310, -0.682522,
		-0.250235, 0.792758, -0.555803,
		15.915887, 18.468912, 21.651901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.747463, 18.189610, 21.709230>,  <16.091051, 17.913982, 22.040962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.747463, 18.189610, 21.709230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.457544, 18.464487, 21.728971>,  <16.283594, 18.629414, 21.740816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.457544, 18.464487, 21.728971>,  <16.747463, 18.189610, 21.709230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.457544, 18.464487, 21.728971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614553, 0.612472, 0.497195,
		0.311441, 0.390695, -0.866234,
		-0.724795, 0.687194, 0.049354,
		16.240107, 18.670645, 21.743778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.108940, 18.875311, 21.801754>,  <16.747463, 18.189610, 21.709230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.108940, 18.875311, 21.801754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.735802, 18.978756, 21.902090>,  <16.511919, 19.040823, 21.962292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.735802, 18.978756, 21.902090>,  <17.108940, 18.875311, 21.801754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.735802, 18.978756, 21.902090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359123, 0.611709, 0.704870,
		0.028848, 0.747617, -0.663504,
		-0.932844, 0.258614, 0.250840,
		16.455948, 19.056339, 21.977343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.118275, 19.626591, 21.847746>,  <17.108940, 18.875311, 21.801754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.118275, 19.626591, 21.847746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.810453, 19.491253, 22.064379>,  <16.625761, 19.410049, 22.194359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.810453, 19.491253, 22.064379>,  <17.118275, 19.626591, 21.847746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.810453, 19.491253, 22.064379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176183, 0.702689, 0.689338,
		-0.613799, 0.625899, -0.481145,
		-0.769552, -0.338345, 0.541583,
		16.579588, 19.389750, 22.226854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.843964, 20.128635, 22.132360>,  <17.118275, 19.626591, 21.847746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.843964, 20.128635, 22.132360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.659775, 19.869543, 22.375147>,  <16.549261, 19.714087, 22.520819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.659775, 19.869543, 22.375147>,  <16.843964, 20.128635, 22.132360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.659775, 19.869543, 22.375147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183070, 0.599774, 0.778946,
		-0.868590, 0.469801, -0.157601,
		-0.460474, -0.647732, 0.606964,
		16.521633, 19.675222, 22.557236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.280293, 20.515776, 22.510635>,  <16.843964, 20.128635, 22.132360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.280293, 20.515776, 22.510635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.388590, 20.183386, 22.705030>,  <16.453568, 19.983952, 22.821667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.388590, 20.183386, 22.705030>,  <16.280293, 20.515776, 22.510635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.388590, 20.183386, 22.705030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218822, 0.544750, 0.809546,
		-0.937451, -0.112835, 0.329322,
		0.270743, -0.830972, 0.485986,
		16.469812, 19.934093, 22.850826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.915210, 20.458773, 23.153450>,  <16.280293, 20.515776, 22.510635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.915210, 20.458773, 23.153450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.254347, 20.251255, 23.197296>,  <16.457829, 20.126743, 23.223604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.254347, 20.251255, 23.197296>,  <15.915210, 20.458773, 23.153450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.254347, 20.251255, 23.197296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220793, 0.533359, 0.816565,
		-0.482094, -0.668116, 0.566750,
		0.847842, -0.518796, 0.109614,
		16.508699, 20.095615, 23.230181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.981878, 20.430548, 23.866230>,  <15.915210, 20.458773, 23.153450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.981878, 20.430548, 23.866230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.343292, 20.341965, 23.719488>,  <16.560141, 20.288815, 23.631443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.343292, 20.341965, 23.719488>,  <15.981878, 20.430548, 23.866230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.343292, 20.341965, 23.719488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428094, 0.428601, 0.795636,
		-0.018965, -0.875933, 0.482061,
		0.903535, -0.221456, -0.366853,
		16.614353, 20.275528, 23.609432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.343805, 20.316029, 24.456396>,  <15.981878, 20.430548, 23.866230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.343805, 20.316029, 24.456396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.630665, 20.363892, 24.181768>,  <16.802780, 20.392609, 24.016991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.630665, 20.363892, 24.181768>,  <16.343805, 20.316029, 24.456396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.630665, 20.363892, 24.181768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535500, 0.535876, 0.652745,
		0.446022, -0.835775, 0.320227,
		0.717150, 0.119657, -0.686570,
		16.845810, 20.399788, 23.975798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.948370, 20.169668, 24.795200>,  <16.343805, 20.316029, 24.456396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.948370, 20.169668, 24.795200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.052839, 20.381470, 24.472359>,  <17.115520, 20.508551, 24.278654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.052839, 20.381470, 24.472359>,  <16.948370, 20.169668, 24.795200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.052839, 20.381470, 24.472359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595675, 0.569528, 0.566400,
		0.759579, -0.628699, -0.166666,
		0.261174, 0.529504, -0.807102,
		17.131191, 20.540321, 24.230228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.508669, 20.352573, 24.943157>,  <16.948370, 20.169668, 24.795200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.508669, 20.352573, 24.943157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.472485, 20.616632, 24.644890>,  <17.450773, 20.775068, 24.465929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.472485, 20.616632, 24.644890>,  <17.508669, 20.352573, 24.943157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.472485, 20.616632, 24.644890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467918, 0.689123, 0.553320,
		0.879130, -0.298857, -0.371235,
		-0.090463, 0.660147, -0.745669,
		17.445345, 20.814676, 24.421188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.091801, 20.654284, 24.777979>,  <17.508669, 20.352573, 24.943157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.091801, 20.654284, 24.777979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.820164, 20.929337, 24.675220>,  <17.657181, 21.094368, 24.613565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.820164, 20.929337, 24.675220>,  <18.091801, 20.654284, 24.777979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.820164, 20.929337, 24.675220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374397, 0.625488, 0.684538,
		0.631394, 0.368684, -0.682212,
		-0.679094, 0.687631, -0.256895,
		17.616436, 21.135626, 24.598152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.509153, 21.235003, 24.589237>,  <18.091801, 20.654284, 24.777979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.509153, 21.235003, 24.589237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.137678, 21.364170, 24.662191>,  <17.914793, 21.441669, 24.705963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.137678, 21.364170, 24.662191>,  <18.509153, 21.235003, 24.589237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.137678, 21.364170, 24.662191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367728, 0.737961, 0.565853,
		0.048129, 0.592569, -0.804081,
		-0.928687, 0.322917, 0.182386,
		17.859072, 21.461044, 24.716908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.488232, 21.961805, 24.469584>,  <18.509153, 21.235003, 24.589237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.488232, 21.961805, 24.469584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.159187, 21.896040, 24.687309>,  <17.961760, 21.856581, 24.817944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.159187, 21.896040, 24.687309>,  <18.488232, 21.961805, 24.469584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.159187, 21.896040, 24.687309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162435, 0.849438, 0.502066,
		-0.544907, 0.501421, -0.672051,
		-0.822612, -0.164414, 0.544313,
		17.912403, 21.846716, 24.850603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.208366, 22.646420, 24.585875>,  <18.488232, 21.961805, 24.469584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.208366, 22.646420, 24.585875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.058250, 22.420456, 24.879824>,  <17.968182, 22.284878, 25.056192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.058250, 22.420456, 24.879824>,  <18.208366, 22.646420, 24.585875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.058250, 22.420456, 24.879824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026846, 0.785864, 0.617817,
		-0.926519, 0.251589, -0.279762,
		-0.375290, -0.564908, 0.734871,
		17.945663, 22.250984, 25.100285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.660789, 23.073122, 24.956465>,  <18.208366, 22.646420, 24.585875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.660789, 23.073122, 24.956465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.740711, 22.780268, 25.216944>,  <17.788664, 22.604555, 25.373230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.740711, 22.780268, 25.216944>,  <17.660789, 23.073122, 24.956465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.740711, 22.780268, 25.216944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093151, 0.675780, 0.731194,
		-0.975398, -0.085437, 0.203223,
		0.199805, -0.732135, 0.651196,
		17.800653, 22.560627, 25.412302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.188393, 23.246531, 25.481739>,  <17.660789, 23.073122, 24.956465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.188393, 23.246531, 25.481739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.464062, 22.992929, 25.622070>,  <17.629463, 22.840769, 25.706270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.464062, 22.992929, 25.622070>,  <17.188393, 23.246531, 25.481739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.464062, 22.992929, 25.622070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218336, 0.643369, 0.733762,
		-0.690919, -0.429090, 0.581818,
		0.689174, -0.634002, 0.350830,
		17.670815, 22.802729, 25.727320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.085533, 23.295364, 26.132950>,  <17.188393, 23.246531, 25.481739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.085533, 23.295364, 26.132950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.459486, 23.161274, 26.086275>,  <17.683859, 23.080820, 26.058271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.459486, 23.161274, 26.086275>,  <17.085533, 23.295364, 26.132950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.459486, 23.161274, 26.086275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323612, 0.669905, 0.668209,
		-0.145834, -0.662458, 0.734766,
		0.934884, -0.335227, -0.116685,
		17.739952, 23.060705, 26.051270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.254023, 23.252811, 26.886124>,  <17.085533, 23.295364, 26.132950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.254023, 23.252811, 26.886124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.613733, 23.200527, 26.719168>,  <17.829559, 23.169157, 26.618994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.613733, 23.200527, 26.719168>,  <17.254023, 23.252811, 26.886124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.613733, 23.200527, 26.719168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394650, 0.653883, 0.645514,
		0.188549, -0.745219, 0.639608,
		0.899278, -0.130710, -0.417390,
		17.883516, 23.161314, 26.593950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.791248, 23.137527, 27.449488>,  <17.254023, 23.252811, 26.886124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.791248, 23.137527, 27.449488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.969461, 23.305788, 27.133373>,  <18.076389, 23.406744, 26.943705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.969461, 23.305788, 27.133373>,  <17.791248, 23.137527, 27.449488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.969461, 23.305788, 27.133373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412122, 0.687283, 0.598162,
		0.794769, -0.592194, 0.132846,
		0.445531, 0.420652, -0.790288,
		18.103121, 23.431984, 26.896288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.542545, 23.247469, 27.629377>,  <17.791248, 23.137527, 27.449488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.542545, 23.247469, 27.629377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.437267, 23.493553, 27.332125>,  <18.374100, 23.641205, 27.153774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.437267, 23.493553, 27.332125>,  <18.542545, 23.247469, 27.629377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.437267, 23.493553, 27.332125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439062, 0.762278, 0.475560,
		0.859041, -0.201114, -0.470745,
		-0.263197, 0.615212, -0.743130,
		18.358309, 23.678116, 27.109186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.164566, 23.535427, 27.544466>,  <18.542545, 23.247469, 27.629377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.164566, 23.535427, 27.544466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.881304, 23.777426, 27.398869>,  <18.711346, 23.922625, 27.311510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.881304, 23.777426, 27.398869>,  <19.164566, 23.535427, 27.544466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.881304, 23.777426, 27.398869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469645, 0.788567, 0.396984,
		0.527208, 0.110179, -0.842563,
		-0.708156, 0.604998, -0.363994,
		18.668858, 23.958925, 27.289671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.428694, 23.995731, 27.099297>,  <19.164566, 23.535427, 27.544466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.428694, 23.995731, 27.099297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.119516, 24.177963, 27.275934>,  <18.934010, 24.287302, 27.381918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.119516, 24.177963, 27.275934>,  <19.428694, 23.995731, 27.099297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.119516, 24.177963, 27.275934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590607, 0.770937, 0.238409,
		-0.231828, 0.445086, -0.864959,
		-0.772942, 0.455581, 0.441595,
		18.887634, 24.314638, 27.408413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.681459, 24.564972, 27.022964>,  <19.428694, 23.995731, 27.099297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.681459, 24.564972, 27.022964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.352665, 24.655161, 27.232153>,  <19.155388, 24.709274, 27.357666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.352665, 24.655161, 27.232153>,  <19.681459, 24.564972, 27.022964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.352665, 24.655161, 27.232153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461287, 0.802132, 0.379207,
		-0.333990, 0.552943, -0.763351,
		-0.821988, 0.225473, 0.522969,
		19.106068, 24.722803, 27.389044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.655478, 25.264360, 27.107613>,  <19.681459, 24.564972, 27.022964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.655478, 25.264360, 27.107613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.361357, 25.173815, 27.363142>,  <19.184885, 25.119488, 27.516459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.361357, 25.173815, 27.363142>,  <19.655478, 25.264360, 27.107613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.361357, 25.173815, 27.363142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132323, 0.876484, 0.462889,
		-0.664699, 0.424893, -0.614525,
		-0.735300, -0.226366, 0.638821,
		19.140766, 25.105906, 27.554789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.172554, 25.869986, 27.210577>,  <19.655478, 25.264360, 27.107613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.172554, 25.869986, 27.210577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.170681, 25.644461, 27.540934>,  <19.169558, 25.509146, 27.739147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.170681, 25.644461, 27.540934>,  <19.172554, 25.869986, 27.210577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.170681, 25.644461, 27.540934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369841, 0.766360, 0.525271,
		-0.929083, 0.307907, 0.204933,
		-0.004682, -0.563813, 0.825889,
		19.169277, 25.475317, 27.788700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.973351, 26.280535, 27.727200>,  <19.172554, 25.869986, 27.210577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.973351, 26.280535, 27.727200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.185202, 25.991306, 27.904585>,  <19.312313, 25.817768, 28.011015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.185202, 25.991306, 27.904585>,  <18.973351, 26.280535, 27.727200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.185202, 25.991306, 27.904585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334163, 0.658393, 0.674428,
		-0.779633, -0.209009, 0.590329,
		0.529630, -0.723073, 0.443462,
		19.344091, 25.774385, 28.037622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.691813, 26.254019, 28.405151>,  <18.973351, 26.280535, 27.727200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.691813, 26.254019, 28.405151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.073181, 26.136965, 28.375898>,  <19.302002, 26.066732, 28.358347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.073181, 26.136965, 28.375898>,  <18.691813, 26.254019, 28.405151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.073181, 26.136965, 28.375898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265672, 0.699872, 0.663021,
		-0.142840, -0.651569, 0.745020,
		0.953423, -0.292636, -0.073134,
		19.359207, 26.049173, 28.353958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.954836, 26.069715, 29.090347>,  <18.691813, 26.254019, 28.405151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.954836, 26.069715, 29.090347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.258574, 26.208029, 28.869865>,  <19.440817, 26.291018, 28.737576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.258574, 26.208029, 28.869865>,  <18.954836, 26.069715, 29.090347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.258574, 26.208029, 28.869865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379578, 0.452644, 0.806867,
		0.528502, -0.821916, 0.212460,
		0.759346, 0.345786, -0.551205,
		19.486378, 26.311764, 28.704504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.706244, 25.807337, 29.213312>,  <18.954836, 26.069715, 29.090347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.706244, 25.807337, 29.213312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.702808, 26.192522, 29.105515>,  <19.700747, 26.423634, 29.040836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.702808, 26.192522, 29.105515>,  <19.706244, 25.807337, 29.213312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.702808, 26.192522, 29.105515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333622, 0.256822, 0.907050,
		0.942668, -0.082119, -0.323471,
		-0.008588, 0.962964, -0.269494,
		19.700232, 26.481411, 29.024666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.997854, 25.415510, 29.765778>,  <19.706244, 25.807337, 29.213312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.997854, 25.415510, 29.765778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.294216, 25.401230, 29.497515>,  <20.472034, 25.392662, 29.336557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.294216, 25.401230, 29.497515>,  <19.997854, 25.415510, 29.765778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.294216, 25.401230, 29.497515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630338, 0.381618, 0.676048,
		0.231801, -0.923630, 0.305246,
		0.740906, -0.035700, -0.670659,
		20.516487, 25.390520, 29.296316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.683388, 25.113869, 30.042442>,  <19.997854, 25.415510, 29.765778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.683388, 25.113869, 30.042442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.783873, 25.333851, 29.723835>,  <20.844164, 25.465841, 29.532671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.783873, 25.333851, 29.723835>,  <20.683388, 25.113869, 30.042442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.783873, 25.333851, 29.723835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833646, 0.295232, 0.466768,
		0.491860, -0.781271, -0.384303,
		0.251214, 0.549957, -0.796517,
		20.859238, 25.498838, 29.484880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.020237, 25.875919, 29.979523>,  <20.683388, 25.113869, 30.042442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.020237, 25.875919, 29.979523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.261496, 25.916529, 30.295980>,  <21.406250, 25.940893, 30.485855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.261496, 25.916529, 30.295980>,  <21.020237, 25.875919, 29.979523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.261496, 25.916529, 30.295980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406848, -0.892295, -0.195667,
		0.686069, 0.439891, -0.579487,
		0.603145, 0.101522, 0.791144,
		21.442440, 25.946985, 30.533323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.689457, 25.902494, 29.698856>,  <21.020237, 25.875919, 29.979523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.689457, 25.902494, 29.698856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.606579, 25.731346, 30.050764>,  <21.556852, 25.628656, 30.261909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.606579, 25.731346, 30.050764>,  <21.689457, 25.902494, 29.698856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.606579, 25.731346, 30.050764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237158, -0.894430, -0.379146,
		0.949118, 0.130087, 0.286797,
		-0.207197, -0.427870, 0.879771,
		21.544420, 25.602985, 30.314695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.145870, 25.316992, 29.689308>,  <21.689457, 25.902494, 29.698856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.145870, 25.316992, 29.689308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.845413, 25.245872, 29.943607>,  <21.665140, 25.203201, 30.096188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.845413, 25.245872, 29.943607>,  <22.145870, 25.316992, 29.689308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.845413, 25.245872, 29.943607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061704, -0.939920, -0.335773,
		0.657253, -0.291441, 0.695040,
		-0.751140, -0.177801, 0.635748,
		21.620071, 25.192532, 30.134331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.306290, 24.724836, 30.010115>,  <22.145870, 25.316992, 29.689308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.306290, 24.724836, 30.010115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.907204, 24.751167, 30.016247>,  <21.667753, 24.766966, 30.019926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.907204, 24.751167, 30.016247>,  <22.306290, 24.724836, 30.010115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.907204, 24.751167, 30.016247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067124, -0.938507, -0.338673,
		-0.007907, -0.338927, 0.940779,
		-0.997713, 0.065827, 0.015329,
		21.607889, 24.770916, 30.020845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.099154, 24.011433, 30.077200>,  <22.306290, 24.724836, 30.010115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.099154, 24.011433, 30.077200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.765469, 24.224346, 30.019566>,  <21.565258, 24.352095, 29.984985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.765469, 24.224346, 30.019566>,  <22.099154, 24.011433, 30.077200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.765469, 24.224346, 30.019566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526765, -0.846488, -0.077311,
		-0.163120, 0.011406, 0.986540,
		-0.834213, 0.532286, -0.144087,
		21.515205, 24.384031, 29.976339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.530346, 23.958593, 30.580650>,  <22.099154, 24.011433, 30.077200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.530346, 23.958593, 30.580650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.350908, 24.021580, 30.228748>,  <21.243246, 24.059372, 30.017607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.350908, 24.021580, 30.228748>,  <21.530346, 23.958593, 30.580650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.350908, 24.021580, 30.228748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444925, -0.893056, 0.067025,
		-0.775118, 0.421492, 0.470678,
		-0.448592, 0.157464, -0.879756,
		21.216331, 24.068819, 29.964821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.889618, 23.659599, 30.757318>,  <21.530346, 23.958593, 30.580650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.889618, 23.659599, 30.757318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.928885, 23.699480, 30.361254>,  <20.952444, 23.723410, 30.123615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.928885, 23.699480, 30.361254>,  <20.889618, 23.659599, 30.757318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.928885, 23.699480, 30.361254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509188, -0.849834, -0.136054,
		-0.855039, 0.517534, -0.032655,
		0.098164, 0.099704, -0.990163,
		20.958334, 23.729391, 30.064205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.253538, 23.458263, 30.455051>,  <20.889618, 23.659599, 30.757318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.253538, 23.458263, 30.455051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.503210, 23.434273, 30.143461>,  <20.653013, 23.419878, 29.956507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.503210, 23.434273, 30.143461>,  <20.253538, 23.458263, 30.455051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.503210, 23.434273, 30.143461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444993, -0.846811, -0.291365,
		-0.642169, 0.528502, -0.555252,
		0.624180, -0.059978, -0.778975,
		20.690464, 23.416279, 29.909769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.825361, 23.384565, 29.790905>,  <20.253538, 23.458263, 30.455051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.825361, 23.384565, 29.790905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.189995, 23.237080, 29.718168>,  <20.408775, 23.148588, 29.674526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.189995, 23.237080, 29.718168>,  <19.825361, 23.384565, 29.790905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.189995, 23.237080, 29.718168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409250, -0.771757, -0.486729,
		0.039126, 0.518113, -0.854417,
		0.911583, -0.368714, -0.181841,
		20.463470, 23.126465, 29.663616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.763704, 23.268850, 29.124277>,  <19.825361, 23.384565, 29.790905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.763704, 23.268850, 29.124277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.077261, 23.046825, 29.235577>,  <20.265394, 22.913610, 29.302357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.077261, 23.046825, 29.235577>,  <19.763704, 23.268850, 29.124277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.077261, 23.046825, 29.235577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318269, -0.743996, -0.587516,
		0.533124, 0.371990, -0.759870,
		0.783890, -0.555062, 0.278249,
		20.312428, 22.880306, 29.319052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.046215, 23.047009, 28.480783>,  <19.763704, 23.268850, 29.124277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.046215, 23.047009, 28.480783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.185175, 22.797594, 28.760931>,  <20.268551, 22.647945, 28.929020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.185175, 22.797594, 28.760931>,  <20.046215, 23.047009, 28.480783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.185175, 22.797594, 28.760931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184344, -0.777724, -0.600969,
		0.919418, 0.079669, -0.385127,
		0.347401, -0.623537, 0.700367,
		20.289394, 22.610533, 28.971041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.444689, 22.572481, 28.105476>,  <20.046215, 23.047009, 28.480783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.444689, 22.572481, 28.105476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.353636, 22.400314, 28.454859>,  <20.299004, 22.297014, 28.664488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.353636, 22.400314, 28.454859>,  <20.444689, 22.572481, 28.105476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.353636, 22.400314, 28.454859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155047, -0.869540, -0.468893,
		0.961324, -0.242163, 0.131201,
		-0.227633, -0.430415, 0.873456,
		20.285345, 22.271191, 28.716896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.832718, 22.063507, 28.042824>,  <20.444689, 22.572481, 28.105476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.832718, 22.063507, 28.042824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.544357, 21.955605, 28.298178>,  <20.371342, 21.890863, 28.451389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.544357, 21.955605, 28.298178>,  <20.832718, 22.063507, 28.042824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.544357, 21.955605, 28.298178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127569, -0.853746, -0.504821,
		0.681196, -0.445364, 0.581054,
		-0.720901, -0.269757, 0.638382,
		20.328087, 21.874678, 28.489693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.982883, 21.314089, 28.158176>,  <20.832718, 22.063507, 28.042824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.982883, 21.314089, 28.158176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.596453, 21.365026, 28.248049>,  <20.364595, 21.395588, 28.301973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.596453, 21.365026, 28.248049>,  <20.982883, 21.314089, 28.158176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.596453, 21.365026, 28.248049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239957, -0.764275, -0.598585,
		0.095494, -0.632193, 0.768904,
		-0.966075, 0.127343, 0.224683,
		20.306629, 21.403229, 28.315454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.659266, 20.666988, 28.436701>,  <20.982883, 21.314089, 28.158176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.659266, 20.666988, 28.436701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.345814, 20.874020, 28.299276>,  <20.157742, 20.998240, 28.216822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.345814, 20.874020, 28.299276>,  <20.659266, 20.666988, 28.436701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.345814, 20.874020, 28.299276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338259, -0.819362, -0.462847,
		-0.521060, -0.246490, 0.817153,
		-0.783631, 0.517580, -0.343559,
		20.110723, 21.029293, 28.196209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.199100, 20.223637, 28.363083>,  <20.659266, 20.666988, 28.436701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.199100, 20.223637, 28.363083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.989157, 20.504965, 28.171307>,  <19.863190, 20.673761, 28.056240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.989157, 20.504965, 28.171307>,  <20.199100, 20.223637, 28.363083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.989157, 20.504965, 28.171307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545996, -0.710298, -0.444259,
		-0.653001, 0.028599, 0.756817,
		-0.524860, 0.703320, -0.479440,
		19.831699, 20.715961, 28.027475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.549019, 20.054060, 28.392969>,  <20.199100, 20.223637, 28.363083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.549019, 20.054060, 28.392969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.591742, 20.302259, 28.082209>,  <19.617376, 20.451180, 27.895752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.591742, 20.302259, 28.082209>,  <19.549019, 20.054060, 28.392969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.591742, 20.302259, 28.082209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462409, -0.660727, -0.591285,
		-0.880210, 0.422400, 0.216353,
		0.106808, 0.620499, -0.776900,
		19.623783, 20.488409, 27.849138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.933218, 20.194309, 28.101234>,  <19.549019, 20.054060, 28.392969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.933218, 20.194309, 28.101234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.183287, 20.266245, 27.797440>,  <19.333328, 20.309406, 27.615162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.183287, 20.266245, 27.797440>,  <18.933218, 20.194309, 28.101234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.183287, 20.266245, 27.797440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511343, -0.640787, -0.572643,
		-0.589652, 0.746358, -0.308642,
		0.625171, 0.179838, -0.759487,
		19.370838, 20.320196, 27.569593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.554003, 20.235355, 27.466703>,  <18.933218, 20.194309, 28.101234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.554003, 20.235355, 27.466703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.915358, 20.161907, 27.311691>,  <19.132170, 20.117838, 27.218685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.915358, 20.161907, 27.311691>,  <18.554003, 20.235355, 27.466703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.915358, 20.161907, 27.311691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402008, -0.677218, -0.616251,
		-0.149284, 0.712501, -0.685606,
		0.903385, -0.183622, -0.387529,
		19.186373, 20.106821, 27.195433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.530628, 20.311060, 26.764421>,  <18.554003, 20.235355, 27.466703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.530628, 20.311060, 26.764421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.810320, 20.045664, 26.870899>,  <18.978134, 19.886427, 26.934786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.810320, 20.045664, 26.870899>,  <18.530628, 20.311060, 26.764421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.810320, 20.045664, 26.870899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395922, -0.669435, -0.628572,
		0.595251, 0.334124, -0.730779,
		0.699230, -0.663489, 0.266195,
		19.020088, 19.846617, 26.950758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.862453, 19.999527, 26.190540>,  <18.530628, 20.311060, 26.764421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.862453, 19.999527, 26.190540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.861839, 19.745237, 26.499306>,  <18.861471, 19.592663, 26.684565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.861839, 19.745237, 26.499306>,  <18.862453, 19.999527, 26.190540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.861839, 19.745237, 26.499306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384833, -0.712092, -0.587221,
		0.922985, -0.297961, -0.243553,
		-0.001536, -0.635723, 0.771915,
		18.861378, 19.554520, 26.730881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.216866, 19.392677, 25.985538>,  <18.862453, 19.999527, 26.190540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.216866, 19.392677, 25.985538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.974148, 19.293097, 26.287485>,  <18.828518, 19.233349, 26.468653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.974148, 19.293097, 26.287485>,  <19.216866, 19.392677, 25.985538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.974148, 19.293097, 26.287485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359425, -0.761111, -0.539929,
		0.708955, -0.598943, 0.372357,
		-0.606792, -0.248950, 0.754869,
		18.792110, 19.218410, 26.513947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.077257, 18.698250, 25.901569>,  <19.216866, 19.392677, 25.985538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.077257, 18.698250, 25.901569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.804075, 18.730782, 26.191936>,  <18.640165, 18.750299, 26.366158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.804075, 18.730782, 26.191936>,  <19.077257, 18.698250, 25.901569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.804075, 18.730782, 26.191936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489608, -0.788466, -0.372297,
		0.542083, -0.609678, 0.578307,
		-0.682957, 0.081328, 0.725918,
		18.599188, 18.755180, 26.409712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.860613, 17.969517, 26.302643>,  <19.077257, 18.698250, 25.901569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.860613, 17.969517, 26.302643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.554693, 18.227089, 26.310951>,  <18.371141, 18.381632, 26.315937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.554693, 18.227089, 26.310951>,  <18.860613, 17.969517, 26.302643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.554693, 18.227089, 26.310951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563474, -0.652912, -0.506165,
		-0.312374, -0.398819, 0.862186,
		-0.764800, 0.643932, 0.020771,
		18.325253, 18.420269, 26.317183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.285980, 17.606222, 26.613951>,  <18.860613, 17.969517, 26.302643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.285980, 17.606222, 26.613951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.148268, 17.894112, 26.372799>,  <18.065639, 18.066845, 26.228107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.148268, 17.894112, 26.372799>,  <18.285980, 17.606222, 26.613951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.148268, 17.894112, 26.372799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525718, -0.679812, -0.511348,
		-0.777875, 0.140897, 0.612420,
		-0.344283, 0.719725, -0.602881,
		18.044983, 18.110029, 26.191935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.659262, 17.421396, 26.617550>,  <18.285980, 17.606222, 26.613951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.659262, 17.421396, 26.617550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.645226, 17.694172, 26.325323>,  <17.636805, 17.857838, 26.149986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.645226, 17.694172, 26.325323>,  <17.659262, 17.421396, 26.617550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.645226, 17.694172, 26.325323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469891, -0.656431, -0.590170,
		-0.882027, 0.322579, 0.343471,
		-0.035088, 0.681939, -0.730567,
		17.634699, 17.898754, 26.106153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.896997, 17.593552, 26.357616>,  <17.659262, 17.421396, 26.617550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.896997, 17.593552, 26.357616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.102121, 17.690128, 26.028076>,  <17.225195, 17.748074, 25.830351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.102121, 17.690128, 26.028076>,  <16.896997, 17.593552, 26.357616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.102121, 17.690128, 26.028076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552651, -0.641519, -0.532006,
		-0.656965, 0.728120, -0.195545,
		0.512810, 0.241441, -0.823852,
		17.255964, 17.762560, 25.780920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.371910, 17.839998, 25.884981>,  <16.896997, 17.593552, 26.357616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.371910, 17.839998, 25.884981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.704041, 17.721882, 25.695936>,  <16.903318, 17.651012, 25.582508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.704041, 17.721882, 25.695936>,  <16.371910, 17.839998, 25.884981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.704041, 17.721882, 25.695936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552997, -0.541545, -0.633185,
		-0.068966, 0.787103, -0.612954,
		0.830324, -0.295293, -0.472614,
		16.953138, 17.633293, 25.554152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.185759, 17.897057, 25.229797>,  <16.371910, 17.839998, 25.884981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.185759, 17.897057, 25.229797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.503216, 17.664715, 25.157421>,  <16.693691, 17.525311, 25.113995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.503216, 17.664715, 25.157421>,  <16.185759, 17.897057, 25.229797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.503216, 17.664715, 25.157421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514645, -0.482368, -0.708845,
		0.324454, 0.655691, -0.681761,
		0.793644, -0.580853, -0.180942,
		16.741308, 17.490459, 25.103138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.243816, 17.912754, 24.507225>,  <16.185759, 17.897057, 25.229797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.243816, 17.912754, 24.507225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.465084, 17.598625, 24.618418>,  <16.597845, 17.410149, 24.685133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.465084, 17.598625, 24.618418>,  <16.243816, 17.912754, 24.507225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.465084, 17.598625, 24.618418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330702, -0.513270, -0.791953,
		0.764617, 0.346157, -0.543633,
		0.553171, -0.785321, 0.277980,
		16.631035, 17.363029, 24.701813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.551638, 17.607584, 23.945499>,  <16.243816, 17.912754, 24.507225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.551638, 17.607584, 23.945499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.572248, 17.303755, 24.204851>,  <16.584614, 17.121458, 24.360462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.572248, 17.303755, 24.204851>,  <16.551638, 17.607584, 23.945499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.572248, 17.303755, 24.204851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370681, -0.617408, -0.693832,
		0.927330, -0.204592, -0.313371,
		0.051525, -0.759571, 0.648380,
		16.587706, 17.075884, 24.399364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.780466, 17.037254, 23.554708>,  <16.551638, 17.607584, 23.945499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.780466, 17.037254, 23.554708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.630322, 16.861616, 23.881218>,  <16.540236, 16.756233, 24.077124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.630322, 16.861616, 23.881218>,  <16.780466, 17.037254, 23.554708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.630322, 16.861616, 23.881218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391370, -0.723224, -0.569013,
		0.840199, -0.533049, 0.099622,
		-0.375361, -0.439095, 0.816272,
		16.517714, 16.729887, 24.126099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.943211, 16.386084, 23.414028>,  <16.780466, 17.037254, 23.554708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.943211, 16.386084, 23.414028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.643909, 16.398411, 23.679106>,  <16.464329, 16.405807, 23.838152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.643909, 16.398411, 23.679106>,  <16.943211, 16.386084, 23.414028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.643909, 16.398411, 23.679106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450876, -0.756384, -0.473913,
		0.486648, -0.653401, 0.579863,
		-0.748255, 0.030818, 0.662695,
		16.419434, 16.407656, 23.877914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.683901, 15.748514, 23.374662>,  <16.943211, 16.386084, 23.414028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.683901, 15.748514, 23.374662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.392260, 15.924646, 23.584240>,  <16.217276, 16.030325, 23.709986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.392260, 15.924646, 23.584240>,  <16.683901, 15.748514, 23.374662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.392260, 15.924646, 23.584240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679640, -0.555984, -0.478508,
		0.080602, -0.704975, 0.704637,
		-0.729103, 0.440331, 0.523943,
		16.173529, 16.056746, 23.741423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.358339, 15.275705, 23.702280>,  <16.683901, 15.748514, 23.374662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.358339, 15.275705, 23.702280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.103151, 15.579664, 23.652405>,  <15.950038, 15.762040, 23.622480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.103151, 15.579664, 23.652405>,  <16.358339, 15.275705, 23.702280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.103151, 15.579664, 23.652405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607797, -0.596319, -0.524392,
		-0.472838, -0.258764, 0.842298,
		-0.637972, 0.759899, -0.124686,
		15.911759, 15.807633, 23.615000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.635031, 14.990754, 23.865086>,  <16.358339, 15.275705, 23.702280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.635031, 14.990754, 23.865086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.611692, 15.315457, 23.632656>,  <15.597690, 15.510280, 23.493198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.611692, 15.315457, 23.632656>,  <15.635031, 14.990754, 23.865086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.611692, 15.315457, 23.632656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611314, -0.489221, -0.622060,
		-0.789235, 0.318923, 0.524782,
		-0.058345, 0.811758, -0.581072,
		15.594189, 15.558985, 23.458334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.940415, 15.154939, 23.842806>,  <15.635031, 14.990754, 23.865086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.940415, 15.154939, 23.842806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.109876, 15.325257, 23.523001>,  <15.211552, 15.427448, 23.331118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.109876, 15.325257, 23.523001>,  <14.940415, 15.154939, 23.842806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.109876, 15.325257, 23.523001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656722, -0.463536, -0.594854,
		-0.623889, 0.777066, 0.083253,
		0.423650, 0.425797, -0.799511,
		15.236971, 15.452996, 23.283148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.425894, 15.517335, 23.444752>,  <14.940415, 15.154939, 23.842806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.425894, 15.517335, 23.444752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.734188, 15.443696, 23.200760>,  <14.919165, 15.399512, 23.054365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.734188, 15.443696, 23.200760>,  <14.425894, 15.517335, 23.444752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.734188, 15.443696, 23.200760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609016, -0.494219, -0.620361,
		-0.187255, 0.849621, -0.493031,
		0.770737, -0.184098, -0.609978,
		14.965409, 15.388467, 23.017767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.142586, 15.570527, 22.731590>,  <14.425894, 15.517335, 23.444752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.142586, 15.570527, 22.731590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.506898, 15.429682, 22.645338>,  <14.725485, 15.345175, 22.593586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.506898, 15.429682, 22.645338>,  <14.142586, 15.570527, 22.731590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.506898, 15.429682, 22.645338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379944, -0.510293, -0.771520,
		0.161627, 0.784613, -0.598548,
		0.910780, -0.352113, -0.215632,
		14.780132, 15.324048, 22.580648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.348089, 15.746963, 22.067007>,  <14.142586, 15.570527, 22.731590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.348089, 15.746963, 22.067007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.522214, 15.401804, 22.169704>,  <14.626689, 15.194709, 22.231323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.522214, 15.401804, 22.169704>,  <14.348089, 15.746963, 22.067007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.522214, 15.401804, 22.169704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318261, -0.414263, -0.852700,
		0.842149, 0.289479, -0.454959,
		0.435311, -0.862895, 0.256741,
		14.652807, 15.142936, 22.246727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.546401, 15.369581, 21.451836>,  <14.348089, 15.746963, 22.067007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.546401, 15.369581, 21.451836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.600609, 15.078142, 21.720396>,  <14.633134, 14.903278, 21.881533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.600609, 15.078142, 21.720396>,  <14.546401, 15.369581, 21.451836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.600609, 15.078142, 21.720396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358461, -0.667802, -0.652339,
		0.923656, -0.152266, -0.351674,
		0.135519, -0.728598, 0.671401,
		14.641265, 14.859563, 21.921816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.727997, 14.832897, 21.071598>,  <14.546401, 15.369581, 21.451836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.727997, 14.832897, 21.071598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.610542, 14.689083, 21.425888>,  <14.540070, 14.602795, 21.638462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.610542, 14.689083, 21.425888>,  <14.727997, 14.832897, 21.071598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.610542, 14.689083, 21.425888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375559, -0.808677, -0.452765,
		0.879052, -0.465591, 0.102430,
		-0.293636, -0.359536, 0.885727,
		14.522451, 14.581223, 21.691607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.993624, 14.116440, 21.146713>,  <14.727997, 14.832897, 21.071598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.993624, 14.116440, 21.146713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.673775, 14.171236, 21.380581>,  <14.481865, 14.204114, 21.520901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.673775, 14.171236, 21.380581>,  <14.993624, 14.116440, 21.146713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.673775, 14.171236, 21.380581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487154, -0.717274, -0.498195,
		0.351119, -0.683192, 0.640285,
		-0.799623, 0.136992, 0.584668,
		14.433887, 14.212334, 21.555981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.709595, 13.511511, 21.561625>,  <14.993624, 14.116440, 21.146713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.709595, 13.511511, 21.561625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.374418, 13.724569, 21.514051>,  <14.173312, 13.852405, 21.485508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.374418, 13.724569, 21.514051>,  <14.709595, 13.511511, 21.561625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.374418, 13.724569, 21.514051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441416, -0.789596, -0.426252,
		-0.320949, -0.304675, 0.896752,
		-0.837940, 0.532646, -0.118931,
		14.123036, 13.884363, 21.478373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.220436, 13.053257, 21.581713>,  <14.709595, 13.511511, 21.561625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.220436, 13.053257, 21.581713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.028497, 13.368624, 21.427755>,  <13.913333, 13.557844, 21.335381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.028497, 13.368624, 21.427755>,  <14.220436, 13.053257, 21.581713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.028497, 13.368624, 21.427755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508994, -0.607491, -0.609819,
		-0.714612, -0.096711, 0.692803,
		-0.479848, 0.788417, -0.384896,
		13.884542, 13.605148, 21.312286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.870660, 12.661921, 21.627615>,  <14.220436, 13.053257, 21.581713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.870660, 12.661921, 21.627615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.119442, 12.515057, 21.350960>,  <15.268711, 12.426938, 21.184967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.119442, 12.515057, 21.350960>,  <14.870660, 12.661921, 21.627615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.119442, 12.515057, 21.350960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668865, 0.708379, 0.225429,
		0.407175, -0.602821, 0.686160,
		0.621955, -0.367160, -0.691640,
		15.306028, 12.404909, 21.143467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.507124, 12.710306, 21.977859>,  <14.870660, 12.661921, 21.627615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.507124, 12.710306, 21.977859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.609764, 12.626163, 21.600521>,  <15.671349, 12.575676, 21.374117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.609764, 12.626163, 21.600521>,  <15.507124, 12.710306, 21.977859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.609764, 12.626163, 21.600521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727719, 0.684375, 0.045337,
		0.636067, -0.698126, 0.328694,
		0.256600, -0.210360, -0.943348,
		15.686744, 12.563055, 21.317516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.268681, 12.572224, 21.982635>,  <15.507124, 12.710306, 21.977859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.268681, 12.572224, 21.982635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.163784, 12.697352, 21.617479>,  <16.100847, 12.772429, 21.398386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.163784, 12.697352, 21.617479>,  <16.268681, 12.572224, 21.982635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.163784, 12.697352, 21.617479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804715, 0.593002, -0.027960,
		0.532601, -0.741951, -0.407242,
		-0.262240, 0.312822, -0.912892,
		16.085112, 12.791199, 21.343611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.928762, 12.691349, 21.672806>,  <16.268681, 12.572224, 21.982635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.928762, 12.691349, 21.672806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.646343, 12.860616, 21.445675>,  <16.476891, 12.962175, 21.309397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.646343, 12.860616, 21.445675>,  <16.928762, 12.691349, 21.672806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.646343, 12.860616, 21.445675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647372, 0.710715, -0.275306,
		0.287062, -0.561974, -0.775745,
		-0.706049, 0.423166, -0.567825,
		16.434528, 12.987565, 21.275328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.167574, 12.785947, 21.041370>,  <16.928762, 12.691349, 21.672806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.167574, 12.785947, 21.041370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.891336, 13.070470, 21.093710>,  <16.725594, 13.241184, 21.125113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.891336, 13.070470, 21.093710>,  <17.167574, 12.785947, 21.041370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.891336, 13.070470, 21.093710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713816, 0.699460, -0.034968,
		-0.116395, 0.069252, -0.990786,
		-0.690594, 0.711308, 0.130847,
		16.684158, 13.283862, 21.132963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.458969, 13.300438, 20.754551>,  <17.167574, 12.785947, 21.041370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.458969, 13.300438, 20.754551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.166914, 13.527792, 20.906256>,  <16.991682, 13.664205, 20.997278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.166914, 13.527792, 20.906256>,  <17.458969, 13.300438, 20.754551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.166914, 13.527792, 20.906256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600710, 0.798458, -0.040163,
		-0.325653, 0.198502, -0.924417,
		-0.730136, 0.568386, 0.379262,
		16.947874, 13.698308, 21.020035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.344460, 13.909822, 20.315434>,  <17.458969, 13.300438, 20.754551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.344460, 13.909822, 20.315434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.242096, 13.985392, 20.694658>,  <17.180677, 14.030734, 20.922194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.242096, 13.985392, 20.694658>,  <17.344460, 13.909822, 20.315434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.242096, 13.985392, 20.694658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546602, 0.837170, -0.019285,
		-0.797331, 0.513276, -0.317506,
		-0.255908, 0.188926, 0.948060,
		17.165323, 14.042069, 20.979076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.303217, 14.627261, 20.366615>,  <17.344460, 13.909822, 20.315434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.303217, 14.627261, 20.366615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.323288, 14.533462, 20.754944>,  <17.335331, 14.477181, 20.987940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.323288, 14.533462, 20.754944>,  <17.303217, 14.627261, 20.366615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.323288, 14.533462, 20.754944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412931, 0.889943, 0.193621,
		-0.909379, 0.391167, 0.141487,
		0.050178, -0.234499, 0.970820,
		17.338341, 14.463112, 21.046190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.180555, 15.250931, 20.699863>,  <17.303217, 14.627261, 20.366615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.180555, 15.250931, 20.699863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.357681, 15.032482, 20.984304>,  <17.463957, 14.901413, 21.154968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.357681, 15.032482, 20.984304>,  <17.180555, 15.250931, 20.699863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.357681, 15.032482, 20.984304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523746, 0.801273, 0.289227,
		-0.727739, 0.244361, 0.640846,
		0.442817, -0.546122, 0.711100,
		17.490526, 14.868646, 21.197634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.187771, 15.669413, 21.245398>,  <17.180555, 15.250931, 20.699863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.187771, 15.669413, 21.245398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.447016, 15.407704, 21.401285>,  <17.602562, 15.250679, 21.494818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.447016, 15.407704, 21.401285>,  <17.187771, 15.669413, 21.245398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.447016, 15.407704, 21.401285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472933, 0.746898, 0.467415,
		-0.596897, -0.118626, 0.793500,
		0.648111, -0.654271, 0.389719,
		17.641449, 15.211423, 21.518202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.292240, 15.902821, 21.929771>,  <17.187771, 15.669413, 21.245398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.292240, 15.902821, 21.929771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.619553, 15.683999, 21.859179>,  <17.815941, 15.552706, 21.816822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.619553, 15.683999, 21.859179>,  <17.292240, 15.902821, 21.929771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.619553, 15.683999, 21.859179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514484, 0.560094, 0.649308,
		-0.256360, -0.622114, 0.739766,
		0.818282, -0.547054, -0.176482,
		17.865038, 15.519883, 21.806234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.647104, 15.681141, 22.568634>,  <17.292240, 15.902821, 21.929771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.647104, 15.681141, 22.568634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.952078, 15.647798, 22.311966>,  <18.135063, 15.627791, 22.157965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.952078, 15.647798, 22.311966>,  <17.647104, 15.681141, 22.568634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.952078, 15.647798, 22.311966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611050, 0.418979, 0.671621,
		0.212861, -0.904161, 0.370381,
		0.762436, -0.083359, -0.641672,
		18.180809, 15.622790, 22.119465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.117258, 15.232779, 22.902979>,  <17.647104, 15.681141, 22.568634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.117258, 15.232779, 22.902979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.308134, 15.494165, 22.667940>,  <18.422659, 15.650998, 22.526917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.308134, 15.494165, 22.667940>,  <18.117258, 15.232779, 22.902979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.308134, 15.494165, 22.667940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469801, 0.375378, 0.798986,
		0.742683, -0.657321, -0.127873,
		0.477189, 0.653468, -0.587597,
		18.451290, 15.690206, 22.491661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.651962, 15.436118, 23.342646>,  <18.117258, 15.232779, 22.902979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.651962, 15.436118, 23.342646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.628769, 15.739416, 23.082891>,  <18.614853, 15.921395, 22.927038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.628769, 15.739416, 23.082891>,  <18.651962, 15.436118, 23.342646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.628769, 15.739416, 23.082891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579846, 0.555090, 0.596367,
		0.812660, -0.341964, -0.471852,
		-0.057984, 0.758245, -0.649386,
		18.611374, 15.966889, 22.888075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.367529, 15.624676, 23.270376>,  <18.651962, 15.436118, 23.342646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.367529, 15.624676, 23.270376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.175154, 15.945803, 23.129417>,  <19.059729, 16.138479, 23.044842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.175154, 15.945803, 23.129417>,  <19.367529, 15.624676, 23.270376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.175154, 15.945803, 23.129417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609609, 0.595074, 0.523702,
		0.630140, 0.037042, -0.775598,
		-0.480937, 0.802817, -0.352399,
		19.030872, 16.186647, 23.023697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.947330, 16.001106, 23.131336>,  <19.367529, 15.624676, 23.270376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.947330, 16.001106, 23.131336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.634501, 16.249170, 23.155865>,  <19.446802, 16.398008, 23.170582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.634501, 16.249170, 23.155865>,  <19.947330, 16.001106, 23.131336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.634501, 16.249170, 23.155865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515601, 0.588656, 0.622607,
		0.350018, 0.518543, -0.780129,
		-0.782076, 0.620159, 0.061321,
		19.399878, 16.435219, 23.174261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.192249, 16.633770, 22.891636>,  <19.947330, 16.001106, 23.131336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.192249, 16.633770, 22.891636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.866116, 16.746376, 23.094013>,  <19.670435, 16.813940, 23.215439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.866116, 16.746376, 23.094013>,  <20.192249, 16.633770, 22.891636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.866116, 16.746376, 23.094013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509523, 0.763885, 0.396062,
		-0.274985, 0.580713, -0.766261,
		-0.815334, 0.281516, 0.505944,
		19.621515, 16.830832, 23.245796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.285725, 17.308683, 22.861898>,  <20.192249, 16.633770, 22.891636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.285725, 17.308683, 22.861898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.026533, 17.244400, 23.159704>,  <19.871019, 17.205830, 23.338387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.026533, 17.244400, 23.159704>,  <20.285725, 17.308683, 22.861898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.026533, 17.244400, 23.159704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481028, 0.671531, 0.563612,
		-0.590541, 0.723339, -0.357831,
		-0.647977, -0.160709, 0.744512,
		19.832140, 17.196188, 23.383059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.091812, 17.981419, 23.040470>,  <20.285725, 17.308683, 22.861898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.091812, 17.981419, 23.040470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.008997, 17.733727, 23.343439>,  <19.959309, 17.585112, 23.525221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.008997, 17.733727, 23.343439>,  <20.091812, 17.981419, 23.040470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.008997, 17.733727, 23.343439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509301, 0.592800, 0.623860,
		-0.835313, 0.514918, 0.192643,
		-0.207038, -0.619231, 0.757422,
		19.946886, 17.547956, 23.570665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.712492, 18.373697, 23.456404>,  <20.091812, 17.981419, 23.040470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.712492, 18.373697, 23.456404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.891264, 18.088392, 23.672369>,  <19.998528, 17.917210, 23.801949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.891264, 18.088392, 23.672369>,  <19.712492, 18.373697, 23.456404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.891264, 18.088392, 23.672369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352143, 0.695093, 0.626770,
		-0.822344, -0.089995, 0.561829,
		0.446930, -0.713264, 0.539914,
		20.025343, 17.874413, 23.834343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.623444, 18.587603, 24.155813>,  <19.712492, 18.373697, 23.456404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.623444, 18.587603, 24.155813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.905182, 18.306787, 24.197845>,  <20.074224, 18.138298, 24.223064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.905182, 18.306787, 24.197845>,  <19.623444, 18.587603, 24.155813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.905182, 18.306787, 24.197845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469102, 0.571431, 0.673358,
		-0.532768, -0.424983, 0.731811,
		0.704345, -0.702037, 0.105080,
		20.116486, 18.096176, 24.229370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.662569, 18.574980, 24.906563>,  <19.623444, 18.587603, 24.155813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.662569, 18.574980, 24.906563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.005470, 18.456347, 24.738205>,  <20.211212, 18.385166, 24.637190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.005470, 18.456347, 24.738205>,  <19.662569, 18.574980, 24.906563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.005470, 18.456347, 24.738205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509045, 0.611021, 0.606239,
		0.077372, -0.733955, 0.674776,
		0.857255, -0.296586, -0.420892,
		20.262648, 18.367371, 24.611937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.992483, 18.394312, 25.472239>,  <19.662569, 18.574980, 24.906563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.992483, 18.394312, 25.472239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.267736, 18.467583, 25.191406>,  <20.432888, 18.511545, 25.022907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.267736, 18.467583, 25.191406>,  <19.992483, 18.394312, 25.472239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.267736, 18.467583, 25.191406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528848, 0.535871, 0.658151,
		0.496782, -0.824190, 0.271880,
		0.688134, 0.183174, -0.702082,
		20.474176, 18.522535, 24.980782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.679884, 18.298532, 25.795172>,  <19.992483, 18.394312, 25.472239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.679884, 18.298532, 25.795172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.765522, 18.525805, 25.477345>,  <20.816904, 18.662169, 25.286648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.765522, 18.525805, 25.477345>,  <20.679884, 18.298532, 25.795172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.765522, 18.525805, 25.477345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562664, 0.593192, 0.575789,
		0.798482, -0.570346, -0.192697,
		0.214093, 0.568181, -0.794566,
		20.829750, 18.696259, 25.238976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.415735, 18.316305, 25.771919>,  <20.679884, 18.298532, 25.795172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.415735, 18.316305, 25.771919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.286631, 18.637253, 25.571110>,  <21.209167, 18.829823, 25.450624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.286631, 18.637253, 25.571110>,  <21.415735, 18.316305, 25.771919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.286631, 18.637253, 25.571110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581287, 0.586634, 0.563885,
		0.746948, -0.109819, -0.655750,
		-0.322760, 0.802371, -0.502022,
		21.189802, 18.877964, 25.420504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.060099, 18.599134, 25.532301>,  <21.415735, 18.316305, 25.771919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.060099, 18.599134, 25.532301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.796257, 18.899738, 25.537220>,  <21.637951, 19.080101, 25.540171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.796257, 18.899738, 25.537220>,  <22.060099, 18.599134, 25.532301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.796257, 18.899738, 25.537220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693656, 0.602363, 0.394969,
		0.289417, 0.269053, -0.918612,
		-0.659605, 0.751511, 0.012296,
		21.598375, 19.125193, 25.540909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.467176, 19.125938, 25.326807>,  <22.060099, 18.599134, 25.532301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.467176, 19.125938, 25.326807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.152908, 19.292990, 25.509371>,  <21.964348, 19.393221, 25.618910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.152908, 19.292990, 25.509371>,  <22.467176, 19.125938, 25.326807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.152908, 19.292990, 25.509371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609300, 0.650112, 0.453990,
		-0.107119, 0.634778, -0.765234,
		-0.785671, 0.417626, 0.456410,
		21.917208, 19.418278, 25.646294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.406719, 19.912313, 25.262394>,  <22.467176, 19.125938, 25.326807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.406719, 19.912313, 25.262394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.220083, 19.847733, 25.610239>,  <22.108101, 19.808985, 25.818947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.220083, 19.847733, 25.610239>,  <22.406719, 19.912313, 25.262394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.220083, 19.847733, 25.610239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523172, 0.742374, 0.418536,
		-0.713152, 0.650242, -0.261917,
		-0.466590, -0.161452, 0.869613,
		22.080107, 19.799297, 25.871122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.189608, 20.541763, 25.523537>,  <22.406719, 19.912313, 25.262394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.189608, 20.541763, 25.523537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.168005, 20.303335, 25.843983>,  <22.155043, 20.160278, 26.036251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.168005, 20.303335, 25.843983>,  <22.189608, 20.541763, 25.523537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.168005, 20.303335, 25.843983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621791, 0.607682, 0.494064,
		-0.781319, 0.524809, 0.337811,
		-0.054007, -0.596069, 0.801115,
		22.151802, 20.124514, 26.084316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.157978, 20.967466, 26.128633>,  <22.189608, 20.541763, 25.523537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.157978, 20.967466, 26.128633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.273981, 20.616053, 26.280460>,  <22.343582, 20.405205, 26.371557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.273981, 20.616053, 26.280460>,  <22.157978, 20.967466, 26.128633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.273981, 20.616053, 26.280460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795497, 0.441785, 0.414742,
		-0.532053, 0.181668, 0.826992,
		0.290007, -0.878535, 0.379569,
		22.360983, 20.352491, 26.394331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.399384, 21.156754, 26.804136>,  <22.157978, 20.967466, 26.128633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.399384, 21.156754, 26.804136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.554993, 20.797724, 26.721167>,  <22.648359, 20.582306, 26.671385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.554993, 20.797724, 26.721167>,  <22.399384, 21.156754, 26.804136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.554993, 20.797724, 26.721167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843797, 0.256821, 0.471222,
		-0.369686, -0.358340, 0.857278,
		0.389024, -0.897572, -0.207423,
		22.671700, 20.528452, 26.658939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.659533, 20.872393, 27.462566>,  <22.399384, 21.156754, 26.804136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.659533, 20.872393, 27.462566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.861265, 20.695431, 27.165937>,  <22.982306, 20.589252, 26.987961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.861265, 20.695431, 27.165937>,  <22.659533, 20.872393, 27.462566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.861265, 20.695431, 27.165937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840000, 0.052322, 0.540057,
		-0.200124, -0.895287, 0.398010,
		0.504331, -0.442407, -0.741570,
		23.012564, 20.562708, 26.943466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.803310, 21.571678, 27.341944>,  <22.659533, 20.872393, 27.462566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.803310, 21.571678, 27.341944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.952152, 21.817375, 27.620295>,  <23.041456, 21.964792, 27.787306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.952152, 21.817375, 27.620295>,  <22.803310, 21.571678, 27.341944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.952152, 21.817375, 27.620295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662140, 0.701056, -0.264748,
		-0.650468, -0.362256, 0.667579,
		0.372103, 0.614241, 0.695879,
		23.063784, 22.001648, 27.829058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.231825, 21.863300, 27.989202>,  <22.803310, 21.571678, 27.341944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.231825, 21.863300, 27.989202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.539555, 22.107161, 27.912819>,  <22.724194, 22.253477, 27.866989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.539555, 22.107161, 27.912819>,  <22.231825, 21.863300, 27.989202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.539555, 22.107161, 27.912819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628938, 0.670286, -0.393896,
		-0.112142, 0.423136, 0.899099,
		0.769325, 0.609650, -0.190959,
		22.770351, 22.290056, 27.855532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.953712, 22.478952, 28.040457>,  <22.231825, 21.863300, 27.989202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.953712, 22.478952, 28.040457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.284842, 22.523003, 27.820425>,  <22.483519, 22.549433, 27.688406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.284842, 22.523003, 27.820425>,  <21.953712, 22.478952, 28.040457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.284842, 22.523003, 27.820425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472700, 0.664969, -0.578248,
		0.302105, 0.738708, 0.602531,
		0.827821, 0.110125, -0.550078,
		22.533188, 22.556040, 27.655401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.167810, 23.076853, 28.117096>,  <21.953712, 22.478952, 28.040457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.167810, 23.076853, 28.117096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.277472, 22.978607, 27.745178>,  <22.343267, 22.919661, 27.522028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.277472, 22.978607, 27.745178>,  <22.167810, 23.076853, 28.117096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.277472, 22.978607, 27.745178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540648, 0.760220, -0.360230,
		0.795324, 0.601448, 0.075625,
		0.274151, -0.245613, -0.929793,
		22.359716, 22.904922, 27.466240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.596203, 23.639988, 27.749475>,  <22.167810, 23.076853, 28.117096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.596203, 23.639988, 27.749475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.362984, 23.406513, 27.523428>,  <22.223051, 23.266428, 27.387798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.362984, 23.406513, 27.523428>,  <22.596203, 23.639988, 27.749475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.362984, 23.406513, 27.523428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604685, 0.776327, -0.177966,
		0.542595, 0.237956, -0.805585,
		-0.583050, -0.583689, -0.565120,
		22.188068, 23.231407, 27.353891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.277275, 24.055544, 27.161726>,  <22.596203, 23.639988, 27.749475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.277275, 24.055544, 27.161726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.025671, 23.755552, 27.243587>,  <21.874708, 23.575558, 27.292704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.025671, 23.755552, 27.243587>,  <22.277275, 24.055544, 27.161726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.025671, 23.755552, 27.243587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777250, 0.611848, -0.146713,
		-0.015185, -0.251349, -0.967777,
		-0.629008, -0.749977, 0.204652,
		21.836967, 23.530560, 27.304983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.846458, 24.548992, 26.747746>,  <22.277275, 24.055544, 27.161726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.846458, 24.548992, 26.747746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.128302, 24.661192, 26.487024>,  <22.297407, 24.728512, 26.330591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.128302, 24.661192, 26.487024>,  <21.846458, 24.548992, 26.747746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.128302, 24.661192, 26.487024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223283, -0.784252, -0.578872,
		-0.673551, 0.553414, -0.489960,
		0.704608, 0.280500, -0.651802,
		22.339684, 24.745342, 26.291483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.462168, 24.534370, 26.080870>,  <21.846458, 24.548992, 26.747746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.462168, 24.534370, 26.080870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.849592, 24.537956, 25.981424>,  <22.082047, 24.540108, 25.921757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.849592, 24.537956, 25.981424>,  <21.462168, 24.534370, 26.080870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.849592, 24.537956, 25.981424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191444, -0.611315, -0.767882,
		-0.158866, 0.791336, -0.590380,
		0.968561, 0.008966, -0.248614,
		22.140162, 24.540646, 25.906839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.448425, 24.572355, 25.401283>,  <21.462168, 24.534370, 26.080870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.448425, 24.572355, 25.401283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.810028, 24.430683, 25.497057>,  <22.026989, 24.345680, 25.554522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.810028, 24.430683, 25.497057>,  <21.448425, 24.572355, 25.401283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.810028, 24.430683, 25.497057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141673, -0.776592, -0.613868,
		0.403364, 0.521019, -0.752222,
		0.904006, -0.354181, 0.239435,
		22.081230, 24.324429, 25.568888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.863678, 24.500927, 24.805124>,  <21.448425, 24.572355, 25.401283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.863678, 24.500927, 24.805124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.020496, 24.235888, 25.060392>,  <22.114588, 24.076864, 25.213554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.020496, 24.235888, 25.060392>,  <21.863678, 24.500927, 24.805124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.020496, 24.235888, 25.060392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184598, -0.736258, -0.651036,
		0.901235, 0.137431, -0.410961,
		0.392046, -0.662599, 0.638171,
		22.138111, 24.037107, 25.251844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.324310, 24.088383, 24.394548>,  <21.863678, 24.500927, 24.805124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.324310, 24.088383, 24.394548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.227510, 23.837605, 24.690758>,  <22.169432, 23.687138, 24.868483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.227510, 23.837605, 24.690758>,  <22.324310, 24.088383, 24.394548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.227510, 23.837605, 24.690758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164761, -0.725571, -0.668132,
		0.956186, -0.283696, 0.072291,
		-0.241998, -0.626948, 0.740523,
		22.154911, 23.649521, 24.912914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.551571, 23.500746, 24.122519>,  <22.324310, 24.088383, 24.394548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.551571, 23.500746, 24.122519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.335899, 23.379478, 24.436811>,  <22.206495, 23.306719, 24.625387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.335899, 23.379478, 24.436811>,  <22.551571, 23.500746, 24.122519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.335899, 23.379478, 24.436811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245264, -0.836001, -0.490865,
		0.805686, -0.457376, 0.376399,
		-0.539180, -0.303166, 0.785732,
		22.174145, 23.288528, 24.672531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.829130, 22.773760, 24.190828>,  <22.551571, 23.500746, 24.122519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.829130, 22.773760, 24.190828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.479912, 22.772324, 24.385878>,  <22.270380, 22.771461, 24.502907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.479912, 22.772324, 24.385878>,  <22.829130, 22.773760, 24.190828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.479912, 22.772324, 24.385878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184605, -0.923114, -0.337315,
		0.451343, -0.384510, 0.805259,
		-0.873047, -0.003590, 0.487623,
		22.217999, 22.771246, 24.532166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.718243, 22.076912, 24.384861>,  <22.829130, 22.773760, 24.190828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.718243, 22.076912, 24.384861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.353258, 22.239677, 24.401979>,  <22.134268, 22.337337, 24.412251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.353258, 22.239677, 24.401979>,  <22.718243, 22.076912, 24.384861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.353258, 22.239677, 24.401979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391278, -0.837217, -0.382059,
		-0.119637, -0.365360, 0.923146,
		-0.912463, 0.406916, 0.042795,
		22.079519, 22.361752, 24.414818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.183344, 21.517841, 24.540277>,  <22.718243, 22.076912, 24.384861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.183344, 21.517841, 24.540277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.929068, 21.803154, 24.422211>,  <21.776501, 21.974342, 24.351370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.929068, 21.803154, 24.422211>,  <22.183344, 21.517841, 24.540277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.929068, 21.803154, 24.422211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704530, -0.692363, -0.155792,
		-0.315488, 0.108919, 0.942658,
		-0.635693, 0.713281, -0.295169,
		21.738359, 22.017138, 24.333660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.489397, 21.298454, 24.739964>,  <22.183344, 21.517841, 24.540277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.489397, 21.298454, 24.739964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.440891, 21.566656, 24.447191>,  <21.411787, 21.727577, 24.271528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.440891, 21.566656, 24.447191>,  <21.489397, 21.298454, 24.739964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.440891, 21.566656, 24.447191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595507, -0.639076, -0.486779,
		-0.794145, 0.376838, 0.476788,
		-0.121266, 0.670503, -0.731928,
		21.404510, 21.767807, 24.227613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.834742, 21.160612, 24.469839>,  <21.489397, 21.298454, 24.739964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.834742, 21.160612, 24.469839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.973301, 21.386070, 24.169889>,  <21.056437, 21.521345, 23.989920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.973301, 21.386070, 24.169889>,  <20.834742, 21.160612, 24.469839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.973301, 21.386070, 24.169889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590173, -0.490412, -0.641243,
		-0.729181, 0.664682, 0.162769,
		0.346398, 0.563644, -0.749876,
		21.077221, 21.555164, 23.944927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.264881, 21.242756, 24.070551>,  <20.834742, 21.160612, 24.469839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.264881, 21.242756, 24.070551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.577906, 21.276079, 23.823763>,  <20.765720, 21.296074, 23.675690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.577906, 21.276079, 23.823763>,  <20.264881, 21.242756, 24.070551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.577906, 21.276079, 23.823763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483736, -0.542475, -0.686819,
		-0.391910, 0.835931, -0.384221,
		0.782564, 0.083310, -0.616971,
		20.812675, 21.301073, 23.638672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.994978, 21.326950, 23.485140>,  <20.264881, 21.242756, 24.070551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.994978, 21.326950, 23.485140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.356653, 21.220577, 23.351440>,  <20.573658, 21.156754, 23.271221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.356653, 21.220577, 23.351440>,  <19.994978, 21.326950, 23.485140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.356653, 21.220577, 23.351440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427110, -0.555209, -0.713667,
		0.004208, 0.788051, -0.615595,
		0.904190, -0.265930, -0.334248,
		20.627911, 21.140799, 23.251165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.982742, 21.425539, 22.686089>,  <19.994978, 21.326950, 23.485140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.982742, 21.425539, 22.686089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.247734, 21.147926, 22.798830>,  <20.406729, 20.981359, 22.866474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.247734, 21.147926, 22.798830>,  <19.982742, 21.425539, 22.686089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.247734, 21.147926, 22.798830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436673, -0.663530, -0.607491,
		0.608636, 0.279373, -0.742640,
		0.662480, -0.694031, 0.281853,
		20.446478, 20.939716, 22.883387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.169497, 21.160509, 22.079277>,  <19.982742, 21.425539, 22.686089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.169497, 21.160509, 22.079277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.304089, 20.882238, 22.333149>,  <20.384844, 20.715277, 22.485472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.304089, 20.882238, 22.333149>,  <20.169497, 21.160509, 22.079277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.304089, 20.882238, 22.333149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428169, -0.713304, -0.554859,
		0.838720, -0.085050, -0.537880,
		0.336482, -0.695675, 0.634678,
		20.405033, 20.673536, 22.523552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.406460, 20.579256, 21.653524>,  <20.169497, 21.160509, 22.079277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.406460, 20.579256, 21.653524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.369713, 20.419100, 22.018215>,  <20.347666, 20.323006, 22.237030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.369713, 20.419100, 22.018215>,  <20.406460, 20.579256, 21.653524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.369713, 20.419100, 22.018215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245019, -0.878361, -0.410423,
		0.965156, -0.261095, -0.017411,
		-0.091866, -0.400389, 0.911729,
		20.342154, 20.298983, 22.291735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.687426, 19.914978, 21.611750>,  <20.406460, 20.579256, 21.653524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.687426, 19.914978, 21.611750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.442444, 19.875942, 21.925533>,  <20.295454, 19.852520, 22.113804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.442444, 19.875942, 21.925533>,  <20.687426, 19.914978, 21.611750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.442444, 19.875942, 21.925533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268789, -0.907515, -0.322753,
		0.743405, -0.408526, 0.529581,
		-0.612455, -0.097590, 0.784458,
		20.258707, 19.846664, 22.160872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.810354, 19.239990, 21.873873>,  <20.687426, 19.914978, 21.611750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.810354, 19.239990, 21.873873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.444075, 19.327660, 22.008606>,  <20.224306, 19.380262, 22.089447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.444075, 19.327660, 22.008606>,  <20.810354, 19.239990, 21.873873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.444075, 19.327660, 22.008606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368106, -0.793737, -0.484232,
		0.161227, -0.567402, 0.807503,
		-0.915699, 0.219175, 0.336835,
		20.169365, 19.393412, 22.109657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.456150, 18.673079, 21.791895>,  <20.810354, 19.239990, 21.873873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.456150, 18.673079, 21.791895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.136877, 18.883413, 21.909472>,  <19.945314, 19.009615, 21.980017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.136877, 18.883413, 21.909472>,  <20.456150, 18.673079, 21.791895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.136877, 18.883413, 21.909472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600529, -0.733140, -0.319172,
		0.047668, -0.431277, 0.900959,
		-0.798181, 0.525837, 0.293942,
		19.897423, 19.041164, 21.997654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.115301, 18.261492, 22.195230>,  <20.456150, 18.673079, 21.791895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.115301, 18.261492, 22.195230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.860147, 18.534966, 22.053427>,  <19.707056, 18.699051, 21.968344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.860147, 18.534966, 22.053427>,  <20.115301, 18.261492, 22.195230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.860147, 18.534966, 22.053427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568360, -0.728542, -0.382352,
		-0.519684, -0.042407, 0.853305,
		-0.637884, 0.683687, -0.354509,
		19.668783, 18.740072, 21.947075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.528046, 18.001612, 22.353302>,  <20.115301, 18.261492, 22.195230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.528046, 18.001612, 22.353302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.444658, 18.264711, 22.063776>,  <19.394627, 18.422571, 21.890060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.444658, 18.264711, 22.063776>,  <19.528046, 18.001612, 22.353302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.444658, 18.264711, 22.063776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432860, -0.725696, -0.534787,
		-0.877026, 0.201826, 0.435995,
		-0.208466, 0.657747, -0.723817,
		19.382118, 18.462036, 21.846630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.860239, 17.861237, 22.119251>,  <19.528046, 18.001612, 22.353302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.860239, 17.861237, 22.119251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.029612, 18.043943, 21.806313>,  <19.131235, 18.153568, 21.618549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.029612, 18.043943, 21.806313>,  <18.860239, 17.861237, 22.119251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.029612, 18.043943, 21.806313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341122, -0.719637, -0.604780,
		-0.839250, 0.522959, -0.148904,
		0.423432, 0.456767, -0.782348,
		19.156641, 18.180973, 21.571608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.450954, 17.719389, 21.574757>,  <18.860239, 17.861237, 22.119251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.450954, 17.719389, 21.574757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.790977, 17.819023, 21.389130>,  <18.994991, 17.878803, 21.277754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.790977, 17.819023, 21.389130>,  <18.450954, 17.719389, 21.574757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.790977, 17.819023, 21.389130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233409, -0.611699, -0.755874,
		-0.472148, 0.750854, -0.461839,
		0.850057, 0.249087, -0.464068,
		19.045994, 17.893749, 21.249908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.279678, 17.861620, 20.829308>,  <18.450954, 17.719389, 21.574757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.279678, 17.861620, 20.829308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.674042, 17.796074, 20.842772>,  <18.910660, 17.756746, 20.850851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.674042, 17.796074, 20.842772>,  <18.279678, 17.861620, 20.829308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.674042, 17.796074, 20.842772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066001, -0.565915, -0.821818,
		0.153719, 0.808015, -0.568755,
		0.985908, -0.163867, 0.033662,
		18.969814, 17.746914, 20.852871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.485664, 17.743244, 20.081499>,  <18.279678, 17.861620, 20.829308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.485664, 17.743244, 20.081499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.790091, 17.615368, 20.307268>,  <18.972746, 17.538643, 20.442730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.790091, 17.615368, 20.307268>,  <18.485664, 17.743244, 20.081499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.790091, 17.615368, 20.307268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205484, -0.706491, -0.677234,
		0.615266, 0.631401, -0.471996,
		0.761068, -0.319691, 0.564423,
		19.018412, 17.519461, 20.476595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.008276, 17.552588, 19.627779>,  <18.485664, 17.743244, 20.081499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.008276, 17.552588, 19.627779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.092415, 17.339539, 19.955698>,  <19.142899, 17.211710, 20.152449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.092415, 17.339539, 19.955698>,  <19.008276, 17.552588, 19.627779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.092415, 17.339539, 19.955698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310301, -0.758824, -0.572625,
		0.927075, 0.374834, 0.005657,
		0.210346, -0.532622, 0.819798,
		19.155519, 17.179752, 20.201637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.704319, 17.231596, 19.489388>,  <19.008276, 17.552588, 19.627779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.704319, 17.231596, 19.489388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.521940, 17.019659, 19.775431>,  <19.412512, 16.892496, 19.947056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.521940, 17.019659, 19.775431>,  <19.704319, 17.231596, 19.489388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.521940, 17.019659, 19.775431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113500, -0.831541, -0.543743,
		0.882739, -0.166755, 0.439277,
		-0.455949, -0.529841, 0.715107,
		19.385155, 16.860706, 19.989964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.096405, 16.732031, 19.533115>,  <19.704319, 17.231596, 19.489388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.096405, 16.732031, 19.533115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.750010, 16.602610, 19.685627>,  <19.542171, 16.524958, 19.777134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.750010, 16.602610, 19.685627>,  <20.096405, 16.732031, 19.533115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.750010, 16.602610, 19.685627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082503, -0.844462, -0.529223,
		0.493209, -0.426845, 0.757990,
		-0.865990, -0.323554, 0.381280,
		19.490213, 16.505543, 19.800011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.166359, 16.020544, 19.583982>,  <20.096405, 16.732031, 19.533115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.166359, 16.020544, 19.583982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.770775, 16.079813, 19.584408>,  <19.533424, 16.115374, 19.584663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.770775, 16.079813, 19.584408>,  <20.166359, 16.020544, 19.583982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.770775, 16.079813, 19.584408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122296, -0.812171, -0.570458,
		-0.083662, -0.564291, 0.821326,
		-0.988961, 0.148170, 0.001063,
		19.474087, 16.124264, 19.584726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.782251, 15.365193, 19.878105>,  <20.166359, 16.020544, 19.583982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.782251, 15.365193, 19.878105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.524933, 15.580834, 19.660650>,  <19.370543, 15.710219, 19.530178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.524933, 15.580834, 19.660650>,  <19.782251, 15.365193, 19.878105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.524933, 15.580834, 19.660650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274333, -0.825219, -0.493716,
		-0.714781, -0.168469, 0.678753,
		-0.643296, 0.539103, -0.543634,
		19.331945, 15.742565, 19.497559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.252337, 14.787518, 19.799191>,  <19.782251, 15.365193, 19.878105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.252337, 14.787518, 19.799191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.138678, 15.076601, 19.547174>,  <19.070482, 15.250051, 19.395964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.138678, 15.076601, 19.547174>,  <19.252337, 14.787518, 19.799191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.138678, 15.076601, 19.547174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404019, -0.686192, -0.604905,
		-0.869499, 0.082667, 0.486967,
		-0.284147, 0.722708, -0.630042,
		19.053432, 15.293413, 19.358162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.584017, 14.622918, 19.703026>,  <19.252337, 14.787518, 19.799191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.584017, 14.622918, 19.703026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.687088, 14.869466, 19.405384>,  <18.748930, 15.017395, 19.226799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.687088, 14.869466, 19.405384>,  <18.584017, 14.622918, 19.703026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.687088, 14.869466, 19.405384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451129, -0.604271, -0.656764,
		-0.854450, 0.504920, 0.122355,
		0.257678, 0.616370, -0.744104,
		18.764391, 15.054377, 19.182154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.955345, 14.722767, 19.237492>,  <18.584017, 14.622918, 19.703026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.955345, 14.722767, 19.237492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.283354, 14.800722, 19.022240>,  <18.480160, 14.847495, 18.893089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.283354, 14.800722, 19.022240>,  <17.955345, 14.722767, 19.237492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.283354, 14.800722, 19.022240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277607, -0.686790, -0.671755,
		-0.500497, 0.700242, -0.509081,
		0.820023, 0.194887, -0.538128,
		18.529360, 14.859188, 18.860802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.684132, 14.781337, 18.489412>,  <17.955345, 14.722767, 19.237492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.684132, 14.781337, 18.489412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.081619, 14.772822, 18.445465>,  <18.320112, 14.767714, 18.419096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.081619, 14.772822, 18.445465>,  <17.684132, 14.781337, 18.489412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.081619, 14.772822, 18.445465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101885, -0.578232, -0.809486,
		-0.046300, 0.815595, -0.576768,
		0.993718, -0.021285, -0.109869,
		18.379734, 14.766437, 18.412504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.855265, 15.005459, 17.791578>,  <17.684132, 14.781337, 18.489412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.855265, 15.005459, 17.791578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.141008, 14.757467, 17.921391>,  <18.312454, 14.608672, 17.999277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.141008, 14.757467, 17.921391>,  <17.855265, 15.005459, 17.791578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.141008, 14.757467, 17.921391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039076, -0.498376, -0.866080,
		0.698688, 0.606010, -0.380246,
		0.714359, -0.619978, 0.324528,
		18.355316, 14.571474, 18.018749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.240671, 14.959751, 17.279736>,  <17.855265, 15.005459, 17.791578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.240671, 14.959751, 17.279736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.311857, 14.625251, 17.487202>,  <18.354568, 14.424550, 17.611681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.311857, 14.625251, 17.487202>,  <18.240671, 14.959751, 17.279736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.311857, 14.625251, 17.487202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070535, -0.514882, -0.854355,
		0.981506, 0.188628, -0.032645,
		0.177964, -0.836251, 0.518664,
		18.365246, 14.374375, 17.642801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.672016, 14.588862, 16.859514>,  <18.240671, 14.959751, 17.279736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.672016, 14.588862, 16.859514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.578655, 14.294274, 17.113485>,  <18.522638, 14.117521, 17.265867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.578655, 14.294274, 17.113485>,  <18.672016, 14.588862, 16.859514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.578655, 14.294274, 17.113485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057087, -0.662215, -0.747136,
		0.970703, -0.138139, 0.196607,
		-0.233404, -0.736471, 0.634928,
		18.508635, 14.073333, 17.303963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.069231, 14.118002, 16.637684>,  <18.672016, 14.588862, 16.859514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.069231, 14.118002, 16.637684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.793566, 13.936303, 16.863503>,  <18.628166, 13.827284, 16.998993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.793566, 13.936303, 16.863503>,  <19.069231, 14.118002, 16.637684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.793566, 13.936303, 16.863503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224495, -0.606922, -0.762396,
		0.688951, -0.652154, 0.316294,
		-0.689165, -0.454247, 0.564545,
		18.586817, 13.800029, 17.032866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.232178, 13.343445, 16.681183>,  <19.069231, 14.118002, 16.637684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.232178, 13.343445, 16.681183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.845831, 13.433174, 16.732996>,  <18.614023, 13.487012, 16.764084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.845831, 13.433174, 16.732996>,  <19.232178, 13.343445, 16.681183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.845831, 13.433174, 16.732996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243464, -0.615375, -0.749693,
		-0.088462, -0.755640, 0.648985,
		-0.965867, 0.224324, 0.129534,
		18.556070, 13.500471, 16.771856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.902719, 12.732484, 16.666569>,  <19.232178, 13.343445, 16.681183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.902719, 12.732484, 16.666569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.621244, 13.005141, 16.586380>,  <18.452360, 13.168736, 16.538267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.621244, 13.005141, 16.586380>,  <18.902719, 12.732484, 16.666569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.621244, 13.005141, 16.586380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339474, -0.570413, -0.747921,
		-0.624170, -0.458244, 0.632791,
		-0.703683, 0.681646, -0.200473,
		18.410139, 13.209635, 16.526239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.194082, 12.436032, 16.639208>,  <18.902719, 12.732484, 16.666569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.194082, 12.436032, 16.639208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.181391, 12.759342, 16.404028>,  <18.173777, 12.953328, 16.262920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.181391, 12.759342, 16.404028>,  <18.194082, 12.436032, 16.639208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.181391, 12.759342, 16.404028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363094, -0.557379, -0.746653,
		-0.931212, 0.189791, 0.311164,
		-0.031728, 0.808274, -0.587951,
		18.171873, 13.001824, 16.227642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.641459, 12.181588, 16.222462>,  <18.194082, 12.436032, 16.639208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.641459, 12.181588, 16.222462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.852903, 12.469716, 16.042814>,  <17.979771, 12.642593, 15.935026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.852903, 12.469716, 16.042814>,  <17.641459, 12.181588, 16.222462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.852903, 12.469716, 16.042814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187319, -0.417053, -0.889370,
		-0.827936, 0.554262, -0.085531,
		0.528614, 0.720320, -0.449117,
		18.011488, 12.685812, 15.908079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.591124, 11.467386, 16.339663>,  <17.641459, 12.181588, 16.222462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.591124, 11.467386, 16.339663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.547844, 11.142056, 16.111000>,  <17.521877, 10.946856, 15.973803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.547844, 11.142056, 16.111000>,  <17.591124, 11.467386, 16.339663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.547844, 11.142056, 16.111000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932095, -0.116954, 0.342813,
		-0.345677, 0.569930, -0.745444,
		-0.108197, -0.813328, -0.571657,
		17.515385, 10.898057, 15.939503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.352098, 11.263864, 16.273693>,  <17.591124, 11.467386, 16.339663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.352098, 11.263864, 16.273693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.544571, 11.097553, 16.582392>,  <18.660055, 10.997766, 16.767611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.544571, 11.097553, 16.582392>,  <18.352098, 11.263864, 16.273693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.544571, 11.097553, 16.582392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871237, 0.129411, -0.473496,
		0.096997, 0.900212, 0.424511,
		0.481183, -0.415777, 0.771746,
		18.688927, 10.972820, 16.813915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.851095, 11.761372, 16.357204>,  <18.352098, 11.263864, 16.273693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.851095, 11.761372, 16.357204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.967709, 11.424271, 16.538214>,  <19.037676, 11.222011, 16.646820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.967709, 11.424271, 16.538214>,  <18.851095, 11.761372, 16.357204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.967709, 11.424271, 16.538214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924588, 0.126974, -0.359186,
		0.245246, 0.523113, 0.816215,
		0.291533, -0.842752, 0.452524,
		19.055168, 11.171445, 16.673971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.440407, 11.751448, 16.890902>,  <18.851095, 11.761372, 16.357204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.440407, 11.751448, 16.890902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.435120, 11.426351, 16.657911>,  <19.431948, 11.231293, 16.518118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.435120, 11.426351, 16.657911>,  <19.440407, 11.751448, 16.890902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.435120, 11.426351, 16.657911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897411, 0.247271, -0.365391,
		0.440998, -0.527549, 0.726094,
		-0.013219, -0.812742, -0.582474,
		19.431154, 11.182528, 16.483170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.165195, 11.465767, 16.913980>,  <19.440407, 11.751448, 16.890902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.165195, 11.465767, 16.913980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.974987, 11.341883, 16.584627>,  <19.860863, 11.267552, 16.387014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.974987, 11.341883, 16.584627>,  <20.165195, 11.465767, 16.913980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.974987, 11.341883, 16.584627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770039, 0.306013, -0.559817,
		0.425348, -0.900241, 0.092975,
		-0.475519, -0.309711, -0.823384,
		19.832331, 11.248969, 16.337612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.576096, 11.126682, 16.704016>,  <20.165195, 11.465767, 16.913980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.576096, 11.126682, 16.704016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.334648, 11.248661, 16.409357>,  <20.189779, 11.321849, 16.232561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.334648, 11.248661, 16.409357>,  <20.576096, 11.126682, 16.704016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.334648, 11.248661, 16.409357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774945, 0.441542, -0.452217,
		0.187359, -0.843829, -0.502841,
		-0.603620, 0.304948, -0.736648,
		20.153563, 11.340145, 16.188362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.853838, 10.821297, 16.064035>,  <20.576096, 11.126682, 16.704016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.853838, 10.821297, 16.064035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.956638, 10.488267, 15.867763>,  <21.018318, 10.288449, 15.749999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.956638, 10.488267, 15.867763>,  <20.853838, 10.821297, 16.064035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.956638, 10.488267, 15.867763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026862, 0.513695, -0.857552,
		0.966038, 0.207210, 0.154384,
		0.257000, -0.832575, -0.490683,
		21.033739, 10.238494, 15.720558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.385227, 11.170308, 15.801402>,  <20.853838, 10.821297, 16.064035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.385227, 11.170308, 15.801402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.252695, 10.845277, 15.609595>,  <21.173176, 10.650258, 15.494511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.252695, 10.845277, 15.609595>,  <21.385227, 11.170308, 15.801402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.252695, 10.845277, 15.609595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075732, 0.483681, -0.871962,
		0.940471, -0.325221, -0.098719,
		-0.331328, -0.812579, -0.479517,
		21.153296, 10.601503, 15.465740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.648537, 11.243059, 15.070643>,  <21.385227, 11.170308, 15.801402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.648537, 11.243059, 15.070643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.415916, 10.919616, 15.034980>,  <21.276344, 10.725550, 15.013581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.415916, 10.919616, 15.034980>,  <21.648537, 11.243059, 15.070643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.415916, 10.919616, 15.034980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028327, 0.089403, -0.995593,
		0.813015, -0.581515, -0.029087,
		-0.581553, -0.808608, -0.089159,
		21.241451, 10.677033, 15.008232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.021639, 10.868757, 14.629823>,  <21.648537, 11.243059, 15.070643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.021639, 10.868757, 14.629823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.641897, 10.743129, 14.626040>,  <21.414053, 10.667751, 14.623770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.641897, 10.743129, 14.626040>,  <22.021639, 10.868757, 14.629823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.641897, 10.743129, 14.626040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095930, 0.318373, -0.943099,
		0.299200, -0.894430, -0.332377,
		-0.949356, -0.314060, -0.009454,
		21.357092, 10.648908, 14.623202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.941172, 10.276565, 14.089649>,  <22.021639, 10.868757, 14.629823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.941172, 10.276565, 14.089649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.600328, 10.475588, 14.154573>,  <21.395823, 10.595002, 14.193528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.600328, 10.475588, 14.154573>,  <21.941172, 10.276565, 14.089649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.600328, 10.475588, 14.154573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026164, 0.269242, -0.962717,
		-0.522709, -0.824587, -0.216405,
		-0.852110, 0.497558, 0.162310,
		21.344696, 10.624855, 14.203266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.527161, 9.902869, 13.509203>,  <21.941172, 10.276565, 14.089649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.527161, 9.902869, 13.509203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.345079, 10.244904, 13.608498>,  <21.235830, 10.450124, 13.668075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.345079, 10.244904, 13.608498>,  <21.527161, 9.902869, 13.509203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.345079, 10.244904, 13.608498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036029, 0.296257, -0.954429,
		-0.889660, -0.425513, -0.165664,
		-0.455201, 0.855085, 0.248237,
		21.208519, 10.501430, 13.682969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.916174, 9.957313, 13.105855>,  <21.527161, 9.902869, 13.509203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.916174, 9.957313, 13.105855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.972788, 10.331041, 13.236704>,  <21.006756, 10.555279, 13.315213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.972788, 10.331041, 13.236704>,  <20.916174, 9.957313, 13.105855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.972788, 10.331041, 13.236704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002216, 0.330748, -0.943716,
		-0.989931, 0.132845, 0.048883,
		0.141537, 0.934322, 0.327123,
		21.015249, 10.611338, 13.334841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.492458, 10.326458, 12.602756>,  <20.916174, 9.957313, 13.105855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.492458, 10.326458, 12.602756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.764664, 10.560722, 12.778893>,  <20.927988, 10.701281, 12.884575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.764664, 10.560722, 12.778893>,  <20.492458, 10.326458, 12.602756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.764664, 10.560722, 12.778893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259360, 0.369522, -0.892292,
		-0.685296, 0.721426, 0.099569,
		0.680516, 0.585660, 0.440341,
		20.968819, 10.736421, 12.910995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.276070, 11.001262, 12.455561>,  <20.492458, 10.326458, 12.602756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.276070, 11.001262, 12.455561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.664883, 11.040947, 12.540701>,  <20.898170, 11.064758, 12.591785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.664883, 11.040947, 12.540701>,  <20.276070, 11.001262, 12.455561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.664883, 11.040947, 12.540701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144450, 0.462029, -0.875022,
		-0.185157, 0.881298, 0.434777,
		0.972034, 0.099213, 0.212851,
		20.956493, 11.070711, 12.604556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.481800, 11.718225, 12.203594>,  <20.276070, 11.001262, 12.455561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.481800, 11.718225, 12.203594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.831024, 11.529559, 12.253069>,  <21.040558, 11.416359, 12.282754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.831024, 11.529559, 12.253069>,  <20.481800, 11.718225, 12.203594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.831024, 11.529559, 12.253069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358369, 0.448651, -0.818709,
		0.330665, 0.759107, 0.560729,
		0.873059, -0.471667, 0.123687,
		21.092941, 11.388059, 12.290175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.102781, 12.211866, 12.070762>,  <20.481800, 11.718225, 12.203594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.102781, 12.211866, 12.070762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.275356, 11.852057, 12.043296>,  <21.378902, 11.636170, 12.026816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.275356, 11.852057, 12.043296>,  <21.102781, 12.211866, 12.070762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.275356, 11.852057, 12.043296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469964, 0.289072, -0.834009,
		0.770061, 0.327555, 0.547461,
		0.431439, -0.899525, -0.068664,
		21.404789, 11.582199, 12.022696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.844128, 12.298717, 12.076682>,  <21.102781, 12.211866, 12.070762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.844128, 12.298717, 12.076682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.762712, 11.954420, 11.890052>,  <21.713863, 11.747842, 11.778073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.762712, 11.954420, 11.890052>,  <21.844128, 12.298717, 12.076682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.762712, 11.954420, 11.890052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516389, 0.310499, -0.798081,
		0.831814, -0.403376, 0.381279,
		-0.203540, -0.860743, -0.466576,
		21.701651, 11.696198, 11.750079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.470547, 12.078647, 11.798326>,  <21.844128, 12.298717, 12.076682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.470547, 12.078647, 11.798326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.203222, 11.886019, 11.571540>,  <22.042828, 11.770442, 11.435468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.203222, 11.886019, 11.571540>,  <22.470547, 12.078647, 11.798326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.203222, 11.886019, 11.571540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460158, 0.331219, -0.823741,
		0.584479, -0.811409, 0.000241,
		-0.668311, -0.481570, -0.566967,
		22.002729, 11.741549, 11.401450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.830450, 11.955967, 11.118292>,  <22.470547, 12.078647, 11.798326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.830450, 11.955967, 11.118292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.448444, 11.856275, 11.054000>,  <22.219242, 11.796459, 11.015425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.448444, 11.856275, 11.054000>,  <22.830450, 11.955967, 11.118292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.448444, 11.856275, 11.054000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081764, 0.299694, -0.950525,
		0.285055, -0.920910, -0.265836,
		-0.955018, -0.249216, -0.160726,
		22.161940, 11.781506, 11.005780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.789629, 11.538027, 10.544513>,  <22.830450, 11.955967, 11.118292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.789629, 11.538027, 10.544513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.430155, 11.709934, 10.579535>,  <22.214470, 11.813079, 10.600548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.430155, 11.709934, 10.579535>,  <22.789629, 11.538027, 10.544513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.430155, 11.709934, 10.579535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156731, 0.501120, -0.851067,
		-0.409637, -0.751118, -0.517707,
		-0.898684, 0.429769, 0.087554,
		22.160549, 11.838865, 10.605801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.602112, 11.746084, 9.814795>,  <22.789629, 11.538027, 10.544513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.602112, 11.746084, 9.814795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.326296, 11.952187, 10.018379>,  <22.160807, 12.075848, 10.140531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.326296, 11.952187, 10.018379>,  <22.602112, 11.746084, 9.814795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.326296, 11.952187, 10.018379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030474, 0.681485, -0.731198,
		-0.723605, -0.519702, -0.454210,
		-0.689542, 0.515256, 0.508963,
		22.119432, 12.106764, 10.171068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.968733, 11.942774, 9.413283>,  <22.602112, 11.746084, 9.814795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.968733, 11.942774, 9.413283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.960140, 12.225323, 9.696289>,  <21.954985, 12.394852, 9.866093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.960140, 12.225323, 9.696289>,  <21.968733, 11.942774, 9.413283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.960140, 12.225323, 9.696289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174127, 0.694219, -0.698384,
		-0.984489, -0.138198, 0.108087,
		-0.021479, 0.706372, 0.707515,
		21.953697, 12.437234, 9.908544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.470453, 12.411496, 9.206882>,  <21.968733, 11.942774, 9.413283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.470453, 12.411496, 9.206882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.684263, 12.638419, 9.457463>,  <21.812550, 12.774573, 9.607812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.684263, 12.638419, 9.457463>,  <21.470453, 12.411496, 9.206882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.684263, 12.638419, 9.457463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055180, 0.716224, -0.695686,
		-0.843348, 0.406430, 0.351537,
		0.534527, 0.567308, 0.626453,
		21.844622, 12.808612, 9.645399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.265472, 13.084634, 9.017962>,  <21.470453, 12.411496, 9.206882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.265472, 13.084634, 9.017962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.608953, 13.128324, 9.218243>,  <21.815042, 13.154537, 9.338411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.608953, 13.128324, 9.218243>,  <21.265472, 13.084634, 9.017962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.608953, 13.128324, 9.218243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220269, 0.803510, -0.553039,
		-0.462726, 0.585185, 0.665916,
		0.858700, 0.109225, 0.500703,
		21.866564, 13.161091, 9.368454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.252007, 13.767496, 9.415062>,  <21.265472, 13.084634, 9.017962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.252007, 13.767496, 9.415062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.621202, 13.639296, 9.329861>,  <21.842720, 13.562375, 9.278740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.621202, 13.639296, 9.329861>,  <21.252007, 13.767496, 9.415062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.621202, 13.639296, 9.329861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165832, 0.830730, -0.531401,
		0.347263, 0.455155, 0.819904,
		0.922989, -0.320502, -0.213002,
		21.898100, 13.543145, 9.265960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.784464, 14.232641, 9.709905>,  <21.252007, 13.767496, 9.415062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.784464, 14.232641, 9.709905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.971346, 14.043469, 9.411093>,  <22.083475, 13.929966, 9.231806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.971346, 14.043469, 9.411093>,  <21.784464, 14.232641, 9.709905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.971346, 14.043469, 9.411093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215596, 0.880350, -0.422495,
		0.857459, 0.036336, 0.513267,
		0.467207, -0.472931, -0.747031,
		22.111507, 13.901590, 9.186983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.874311, 14.595537, 9.045594>,  <21.784464, 14.232641, 9.709905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.874311, 14.595537, 9.045594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.839077, 14.845098, 8.734986>,  <21.817936, 14.994836, 8.548621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.839077, 14.845098, 8.734986>,  <21.874311, 14.595537, 9.045594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.839077, 14.845098, 8.734986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048193, 0.781307, 0.622283,
		0.994946, 0.017391, -0.098889,
		-0.088085, 0.623904, -0.776521,
		21.812651, 15.032269, 8.502030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.454512, 15.167370, 8.946977>,  <21.874311, 14.595537, 9.045594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.454512, 15.167370, 8.946977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.081409, 15.270413, 8.846096>,  <21.857548, 15.332239, 8.785567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.081409, 15.270413, 8.846096>,  <22.454512, 15.167370, 8.946977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.081409, 15.270413, 8.846096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061069, 0.802362, 0.593705,
		0.355300, 0.538379, -0.764140,
		-0.932755, 0.257609, -0.252201,
		21.801582, 15.347696, 8.770435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.513702, 15.097157, 9.723295>,  <22.454512, 15.167370, 8.946977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.513702, 15.097157, 9.723295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.138060, 15.155430, 9.847780>,  <21.912674, 15.190394, 9.922471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.138060, 15.155430, 9.847780>,  <22.513702, 15.097157, 9.723295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.138060, 15.155430, 9.847780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338632, 0.546172, 0.766175,
		-0.058356, 0.824907, -0.562247,
		-0.939107, 0.145684, 0.311213,
		21.856327, 15.199135, 9.941144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.280935, 15.758160, 9.652576>,  <22.513702, 15.097157, 9.723295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.280935, 15.758160, 9.652576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.089924, 15.597590, 9.965199>,  <21.975317, 15.501249, 10.152772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.089924, 15.597590, 9.965199>,  <22.280935, 15.758160, 9.652576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.089924, 15.597590, 9.965199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551948, 0.555043, 0.622319,
		-0.683609, 0.728552, -0.043483,
		-0.477527, -0.401423, 0.781555,
		21.946667, 15.477163, 10.199665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.695169, 16.179501, 10.048935>,  <22.280935, 15.758160, 9.652576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.695169, 16.179501, 10.048935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.916502, 15.966427, 10.305082>,  <22.049301, 15.838583, 10.458771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.916502, 15.966427, 10.305082>,  <21.695169, 16.179501, 10.048935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.916502, 15.966427, 10.305082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273014, 0.842300, 0.464751,
		-0.786949, -0.082332, 0.611501,
		0.553331, -0.532683, 0.640369,
		22.082500, 15.806622, 10.497193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.628279, 16.407354, 10.764153>,  <21.695169, 16.179501, 10.048935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.628279, 16.407354, 10.764153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.993589, 16.246946, 10.735557>,  <22.212776, 16.150702, 10.718399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.993589, 16.246946, 10.735557>,  <21.628279, 16.407354, 10.764153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.993589, 16.246946, 10.735557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345641, 0.670045, 0.656941,
		-0.215545, -0.624678, 0.750545,
		0.913276, -0.401019, -0.071490,
		22.267572, 16.126640, 10.714109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.838499, 16.288897, 11.442164>,  <21.628279, 16.407354, 10.764153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.838499, 16.288897, 11.442164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.171585, 16.310108, 11.221702>,  <22.371437, 16.322834, 11.089424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.171585, 16.310108, 11.221702>,  <21.838499, 16.288897, 11.442164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.171585, 16.310108, 11.221702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476473, 0.438444, 0.762063,
		0.282060, -0.897193, 0.339833,
		0.832716, 0.053026, -0.551156,
		22.421400, 16.326017, 11.056355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.390545, 15.858009, 11.712163>,  <21.838499, 16.288897, 11.442164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.390545, 15.858009, 11.712163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.518024, 16.193762, 11.536039>,  <22.594511, 16.395212, 11.430365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.518024, 16.193762, 11.536039>,  <22.390545, 15.858009, 11.712163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.518024, 16.193762, 11.536039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465444, 0.266083, 0.844134,
		0.825708, -0.473963, -0.305884,
		0.318697, 0.839380, -0.440310,
		22.613634, 16.445576, 11.403946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.165331, 15.176573, 11.891912>,  <22.390545, 15.858009, 11.712163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.165331, 15.176573, 11.891912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.075657, 15.435786, 12.183060>,  <22.021852, 15.591314, 12.357749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.075657, 15.435786, 12.183060>,  <22.165331, 15.176573, 11.891912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.075657, 15.435786, 12.183060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658919, -0.449498, 0.603140,
		0.718031, 0.614821, -0.326232,
		-0.224183, 0.648033, 0.727870,
		22.008402, 15.630197, 12.401421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.831926, 15.342001, 12.123816>,  <22.165331, 15.176573, 11.891912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.831926, 15.342001, 12.123816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.581257, 15.438814, 12.420112>,  <22.430855, 15.496902, 12.597890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.581257, 15.438814, 12.420112>,  <22.831926, 15.342001, 12.123816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.581257, 15.438814, 12.420112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625862, -0.410022, 0.663459,
		0.464299, 0.879376, 0.105472,
		-0.626676, 0.242033, 0.740741,
		22.393253, 15.511424, 12.642334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.224260, 15.552326, 12.596683>,  <22.831926, 15.342001, 12.123816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.224260, 15.552326, 12.596683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.896526, 15.432381, 12.792140>,  <22.699886, 15.360414, 12.909414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.896526, 15.432381, 12.792140>,  <23.224260, 15.552326, 12.596683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.896526, 15.432381, 12.792140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569249, -0.526838, 0.631187,
		0.068165, 0.795313, 0.602355,
		-0.819335, -0.299865, 0.488643,
		22.650726, 15.342422, 12.938733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.506670, 15.493191, 13.313264>,  <23.224260, 15.552326, 12.596683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.506670, 15.493191, 13.313264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.167715, 15.282678, 13.285085>,  <22.964342, 15.156370, 13.268177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.167715, 15.282678, 13.285085>,  <23.506670, 15.493191, 13.313264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.167715, 15.282678, 13.285085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315680, -0.606022, 0.730125,
		-0.426945, 0.596459, 0.679672,
		-0.847386, -0.526283, -0.070448,
		22.913500, 15.124793, 13.263950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.276991, 15.418256, 13.995650>,  <23.506670, 15.493191, 13.313264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.276991, 15.418256, 13.995650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.049492, 15.155970, 13.797029>,  <22.912992, 14.998598, 13.677857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.049492, 15.155970, 13.797029>,  <23.276991, 15.418256, 13.995650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.049492, 15.155970, 13.797029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121486, -0.664049, 0.737753,
		-0.813491, 0.359271, 0.457337,
		-0.568747, -0.655715, -0.496552,
		22.878868, 14.959255, 13.648064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.602896, 15.095658, 14.368182>,  <23.276991, 15.418256, 13.995650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.602896, 15.095658, 14.368182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.708885, 14.829535, 14.088997>,  <22.772478, 14.669861, 13.921486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.708885, 14.829535, 14.088997>,  <22.602896, 15.095658, 14.368182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.708885, 14.829535, 14.088997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165289, -0.744462, 0.646881,
		-0.949984, -0.056039, -0.307229,
		0.264972, -0.665309, -0.697965,
		22.788376, 14.629942, 13.879607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.242014, 14.420912, 14.586172>,  <22.602896, 15.095658, 14.368182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.242014, 14.420912, 14.586172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.522007, 14.289667, 14.332441>,  <22.690002, 14.210920, 14.180203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.522007, 14.289667, 14.332441>,  <22.242014, 14.420912, 14.586172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.522007, 14.289667, 14.332441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084056, -0.919889, 0.383065,
		-0.709198, -0.214819, -0.671485,
		0.699981, -0.328111, -0.634326,
		22.732002, 14.191234, 14.142143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.985859, 13.826812, 14.442814>,  <22.242014, 14.420912, 14.586172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.985859, 13.826812, 14.442814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.367031, 13.795338, 14.325695>,  <22.595736, 13.776453, 14.255424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.367031, 13.795338, 14.325695>,  <21.985859, 13.826812, 14.442814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.367031, 13.795338, 14.325695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007223, -0.971354, 0.237529,
		-0.303100, -0.224234, -0.926202,
		0.952932, -0.078685, -0.292797,
		22.652910, 13.771732, 14.237856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.067533, 13.153683, 14.001020>,  <21.985859, 13.826812, 14.442814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.067533, 13.153683, 14.001020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.437717, 13.239966, 14.125595>,  <22.659828, 13.291737, 14.200340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.437717, 13.239966, 14.125595>,  <22.067533, 13.153683, 14.001020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.437717, 13.239966, 14.125595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142768, -0.960041, 0.240704,
		0.350915, -0.178299, -0.919276,
		0.925460, 0.215710, 0.311437,
		22.715355, 13.304680, 14.219027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.534554, 12.713054, 13.759064>,  <22.067533, 13.153683, 14.001020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.534554, 12.713054, 13.759064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.730350, 12.872247, 14.069420>,  <22.847828, 12.967762, 14.255634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.730350, 12.872247, 14.069420>,  <22.534554, 12.713054, 13.759064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.730350, 12.872247, 14.069420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443437, -0.879745, 0.171498,
		0.750840, 0.260112, -0.607109,
		0.489492, 0.397982, 0.775891,
		22.877197, 12.991641, 14.302187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.198029, 12.420203, 13.772635>,  <22.534554, 12.713054, 13.759064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.198029, 12.420203, 13.772635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.207567, 12.571483, 14.142802>,  <23.213291, 12.662251, 14.364902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.207567, 12.571483, 14.142802>,  <23.198029, 12.420203, 13.772635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.207567, 12.571483, 14.142802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414155, -0.846248, 0.335172,
		0.909894, 0.375272, -0.176815,
		0.023849, 0.378200, 0.925417,
		23.214722, 12.684942, 14.420427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.902885, 12.336204, 14.079310>,  <23.198029, 12.420203, 13.772635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.902885, 12.336204, 14.079310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.636515, 12.361149, 14.376674>,  <23.476692, 12.376116, 14.555092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.636515, 12.361149, 14.376674>,  <23.902885, 12.336204, 14.079310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.636515, 12.361149, 14.376674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398738, -0.812464, 0.425334,
		0.630517, 0.579666, 0.516174,
		-0.665925, 0.062362, 0.743408,
		23.436737, 12.379857, 14.599696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.274172, 12.013241, 14.558927>,  <23.902885, 12.336204, 14.079310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.274172, 12.013241, 14.558927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.911749, 12.031804, 14.727167>,  <23.694296, 12.042942, 14.828112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.911749, 12.031804, 14.727167>,  <24.274172, 12.013241, 14.558927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.911749, 12.031804, 14.727167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211501, -0.811240, 0.545121,
		0.366507, 0.582869, 0.725215,
		-0.906057, 0.046407, 0.420602,
		23.639931, 12.045726, 14.853348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.398697, 11.960183, 15.276073>,  <24.274172, 12.013241, 14.558927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.398697, 11.960183, 15.276073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.024090, 11.837719, 15.207718>,  <23.799326, 11.764240, 15.166705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.024090, 11.837719, 15.207718>,  <24.398697, 11.960183, 15.276073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.024090, 11.837719, 15.207718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230986, -0.905399, 0.356226,
		-0.263784, 0.294139, 0.918640,
		-0.936517, -0.306160, -0.170888,
		23.743135, 11.745871, 15.156451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.941088, 11.877603, 15.995946>,  <24.398697, 11.960183, 15.276073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.941088, 11.877603, 15.995946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.875402, 11.665035, 15.663529>,  <23.835991, 11.537495, 15.464080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.875402, 11.665035, 15.663529>,  <23.941088, 11.877603, 15.995946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.875402, 11.665035, 15.663529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257517, -0.836358, 0.483932,
		-0.952218, -0.134538, 0.274191,
		-0.164215, -0.531418, -0.831041,
		23.826138, 11.505610, 15.414217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.208605, 12.580691, 16.046608>,  <23.941088, 11.877603, 15.995946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.208605, 12.580691, 16.046608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.543941, 12.778834, 15.955565>,  <24.745144, 12.897720, 15.900940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.543941, 12.778834, 15.955565>,  <24.208605, 12.580691, 16.046608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.543941, 12.778834, 15.955565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116583, 0.570766, 0.812795,
		0.532534, -0.654864, 0.536247,
		0.838341, 0.495358, -0.227606,
		24.795444, 12.927442, 15.887283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.515940, 12.625662, 16.605801>,  <24.208605, 12.580691, 16.046608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.515940, 12.625662, 16.605801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.662718, 12.928889, 16.390141>,  <24.750784, 13.110826, 16.260744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.662718, 12.928889, 16.390141>,  <24.515940, 12.625662, 16.605801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.662718, 12.928889, 16.390141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029459, 0.588760, 0.807771,
		0.929776, -0.280524, 0.238374,
		0.366944, 0.758068, -0.539151,
		24.772800, 13.156310, 16.228395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.142052, 12.739004, 16.980707>,  <24.515940, 12.625662, 16.605801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.142052, 12.739004, 16.980707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.024620, 13.059433, 16.772057>,  <24.954161, 13.251690, 16.646866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.024620, 13.059433, 16.772057>,  <25.142052, 12.739004, 16.980707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.024620, 13.059433, 16.772057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138497, 0.575559, 0.805947,
		0.945849, 0.164364, -0.279917,
		-0.293577, 0.801072, -0.521628,
		24.936546, 13.299755, 16.615568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.824314, 13.235771, 17.515858>,  <25.142052, 12.739004, 16.980707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.824314, 13.235771, 17.515858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.747541, 13.448871, 17.186169>,  <24.701479, 13.576731, 16.988356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.747541, 13.448871, 17.186169>,  <24.824314, 13.235771, 17.515858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.747541, 13.448871, 17.186169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838451, -0.525493, -0.144418,
		-0.510061, 0.663350, 0.547543,
		-0.191931, 0.532750, -0.824220,
		24.689962, 13.608696, 16.938902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.866617, 13.957076, 17.761366>,  <24.824314, 13.235771, 17.515858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.866617, 13.957076, 17.761366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.195213, 13.730254, 17.785374>,  <25.392370, 13.594161, 17.799778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.195213, 13.730254, 17.785374>,  <24.866617, 13.957076, 17.761366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.195213, 13.730254, 17.785374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049027, -0.034624, -0.998197,
		0.568110, 0.822952, -0.000642,
		0.821491, -0.567055, 0.060017,
		25.441660, 13.560138, 17.803379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.534842, 14.341981, 17.539351>,  <24.866617, 13.957076, 17.761366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.534842, 14.341981, 17.539351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.497881, 13.954933, 17.445395>,  <25.475704, 13.722705, 17.389021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.497881, 13.954933, 17.445395>,  <25.534842, 14.341981, 17.539351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.497881, 13.954933, 17.445395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136005, 0.245956, -0.959692,
		0.986389, -0.056732, -0.154328,
		-0.092403, -0.967619, -0.234892,
		25.470160, 13.664647, 17.374928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.034479, 14.153834, 17.142162>,  <25.534842, 14.341981, 17.539351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.034479, 14.153834, 17.142162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.734583, 13.917877, 17.022221>,  <25.554646, 13.776302, 16.950254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.734583, 13.917877, 17.022221>,  <26.034479, 14.153834, 17.142162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.734583, 13.917877, 17.022221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116809, 0.328046, -0.937412,
		0.651340, -0.737842, -0.177044,
		-0.749741, -0.589894, -0.299856,
		25.509661, 13.740910, 16.932264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.356541, 14.131602, 16.506556>,  <26.034479, 14.153834, 17.142162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.356541, 14.131602, 16.506556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.995371, 13.959694, 16.504795>,  <25.778667, 13.856548, 16.503738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.995371, 13.959694, 16.504795>,  <26.356541, 14.131602, 16.506556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.995371, 13.959694, 16.504795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089563, 0.198162, -0.976069,
		0.420360, -0.880924, -0.217418,
		-0.902927, -0.429772, -0.004402,
		25.724493, 13.830763, 16.503475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.367020, 13.664734, 15.992040>,  <26.356541, 14.131602, 16.506556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.367020, 13.664734, 15.992040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.989361, 13.770251, 16.071037>,  <25.762766, 13.833562, 16.118435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.989361, 13.770251, 16.071037>,  <26.367020, 13.664734, 15.992040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.989361, 13.770251, 16.071037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163020, 0.146948, -0.975618,
		-0.286382, -0.953321, -0.095737,
		-0.944145, 0.263792, 0.197493,
		25.706118, 13.849389, 16.130285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.643671, 14.453795, 15.929740>,  <26.367020, 13.664734, 15.992040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.643671, 14.453795, 15.929740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.376472, 14.653045, 15.708596>,  <26.216152, 14.772594, 15.575910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.376472, 14.653045, 15.708596>,  <26.643671, 14.453795, 15.929740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.376472, 14.653045, 15.708596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722189, 0.613141, -0.320157,
		0.179503, -0.613133, -0.769316,
		-0.667998, 0.498122, -0.552859,
		26.176073, 14.802482, 15.542739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.901369, 14.397725, 15.136023>,  <26.643671, 14.453795, 15.929740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.901369, 14.397725, 15.136023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.689314, 14.711570, 15.264606>,  <26.562080, 14.899877, 15.341757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.689314, 14.711570, 15.264606>,  <26.901369, 14.397725, 15.136023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.689314, 14.711570, 15.264606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794364, 0.592174, -0.135333,
		-0.296544, 0.183611, -0.937203,
		-0.530138, 0.784613, 0.321460,
		26.530272, 14.946954, 15.361044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<17.281862, 23.057796, 20.592209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.088165, 22.849548, 20.873482>,  <16.971947, 22.724600, 21.042246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.088165, 22.849548, 20.873482>,  <17.281862, 23.057796, 20.592209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.088165, 22.849548, 20.873482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124630, -0.754458, -0.644407,
		0.866012, -0.399687, 0.300456,
		-0.484242, -0.520619, 0.703182,
		16.942892, 22.693363, 21.084436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.607647, 22.336529, 20.642002>,  <17.281862, 23.057796, 20.592209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.607647, 22.336529, 20.642002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.254543, 22.274649, 20.819452>,  <17.042681, 22.237520, 20.925922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.254543, 22.274649, 20.819452>,  <17.607647, 22.336529, 20.642002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.254543, 22.274649, 20.819452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110431, -0.849464, -0.515962,
		0.456663, -0.504460, 0.732789,
		-0.882759, -0.154698, 0.443626,
		16.989716, 22.228239, 20.952539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.668068, 21.700500, 20.840050>,  <17.607647, 22.336529, 20.642002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.668068, 21.700500, 20.840050> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.270281, 21.740873, 20.851685>,  <17.031609, 21.765097, 20.858665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.270281, 21.740873, 20.851685>,  <17.668068, 21.700500, 20.840050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.270281, 21.740873, 20.851685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098992, -0.807986, -0.580826,
		-0.035121, -0.580492, 0.813508,
		-0.994468, 0.100930, 0.029087,
		16.971941, 21.771152, 20.860411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.445051, 21.081116, 20.973476>,  <17.668068, 21.700500, 20.840050>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.445051, 21.081116, 20.973476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.099546, 21.212820, 20.820898>,  <16.892244, 21.291843, 20.729351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.099546, 21.212820, 20.820898>,  <17.445051, 21.081116, 20.973476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.099546, 21.212820, 20.820898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077160, -0.834486, -0.545600,
		-0.497956, -0.441836, 0.746204,
		-0.863763, 0.329262, -0.381445,
		16.840418, 21.311598, 20.706465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.904034, 20.502678, 20.996582>,  <17.445051, 21.081116, 20.973476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.904034, 20.502678, 20.996582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.769758, 20.756113, 20.717762>,  <16.689192, 20.908175, 20.550470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.769758, 20.756113, 20.717762>,  <16.904034, 20.502678, 20.996582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.769758, 20.756113, 20.717762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240772, -0.773123, -0.586778,
		-0.910682, -0.029144, 0.412079,
		-0.335689, 0.633586, -0.697052,
		16.669052, 20.946188, 20.508646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.202372, 20.288504, 20.797150>,  <16.904034, 20.502678, 20.996582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.202372, 20.288504, 20.797150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.314726, 20.514130, 20.486555>,  <16.382139, 20.649506, 20.300198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.314726, 20.514130, 20.486555>,  <16.202372, 20.288504, 20.797150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.314726, 20.514130, 20.486555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332454, -0.701783, -0.630060,
		-0.900321, 0.435121, -0.009596,
		0.280887, 0.564066, -0.776487,
		16.398993, 20.683350, 20.253609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.639183, 20.311066, 20.372923>,  <16.202372, 20.288504, 20.797150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.639183, 20.311066, 20.372923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.968287, 20.396202, 20.162111>,  <16.165751, 20.447283, 20.035624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.968287, 20.396202, 20.162111>,  <15.639183, 20.311066, 20.372923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.968287, 20.396202, 20.162111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250029, -0.697180, -0.671881,
		-0.510439, 0.684572, -0.520397,
		0.822762, 0.212840, -0.527031,
		16.215117, 20.460054, 20.004002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.423990, 20.571043, 19.619162>,  <15.639183, 20.311066, 20.372923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.423990, 20.571043, 19.619162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.792015, 20.414970, 19.633270>,  <16.012831, 20.321327, 19.641735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.792015, 20.414970, 19.633270>,  <15.423990, 20.571043, 19.619162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.792015, 20.414970, 19.633270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266964, -0.690305, -0.672465,
		0.286730, 0.609294, -0.739288,
		0.920063, -0.390179, 0.035272,
		16.068033, 20.297916, 19.643852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.800897, 20.500076, 18.860909>,  <15.423990, 20.571043, 19.619162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.800897, 20.500076, 18.860909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.004189, 20.245155, 19.092615>,  <16.126163, 20.092203, 19.231640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.004189, 20.245155, 19.092615>,  <15.800897, 20.500076, 18.860909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.004189, 20.245155, 19.092615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108093, -0.714495, -0.691240,
		0.854412, 0.288694, -0.432014,
		0.508229, -0.637301, 0.579267,
		16.156656, 20.053965, 19.266396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.261183, 20.094801, 18.358038>,  <15.800897, 20.500076, 18.860909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.261183, 20.094801, 18.358038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.223595, 19.898088, 18.704292>,  <16.201042, 19.780062, 18.912045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.223595, 19.898088, 18.704292>,  <16.261183, 20.094801, 18.358038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.223595, 19.898088, 18.704292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120480, -0.857474, -0.500224,
		0.988258, -0.151299, 0.021328,
		-0.093972, -0.491780, 0.865634,
		16.195402, 19.750555, 18.963982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.746349, 19.632214, 18.281950>,  <16.261183, 20.094801, 18.358038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.746349, 19.632214, 18.281950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.507856, 19.472151, 18.560341>,  <16.364761, 19.376114, 18.727375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.507856, 19.472151, 18.560341>,  <16.746349, 19.632214, 18.281950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.507856, 19.472151, 18.560341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088505, -0.894402, -0.438419,
		0.797919, -0.199801, 0.568686,
		-0.596231, -0.400155, 0.695977,
		16.328987, 19.352104, 18.769135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.982855, 19.003189, 18.456829>,  <16.746349, 19.632214, 18.281950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.982855, 19.003189, 18.456829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.598177, 18.966265, 18.560076>,  <16.367371, 18.944109, 18.622025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.598177, 18.966265, 18.560076>,  <16.982855, 19.003189, 18.456829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.598177, 18.966265, 18.560076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036364, -0.890313, -0.453894,
		0.271707, -0.445893, 0.852851,
		-0.961693, -0.092313, 0.258119,
		16.309669, 18.938570, 18.637512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.852184, 18.304287, 18.834177>,  <16.982855, 19.003189, 18.456829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.852184, 18.304287, 18.834177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.499693, 18.442600, 18.705263>,  <16.288198, 18.525589, 18.627914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.499693, 18.442600, 18.705263>,  <16.852184, 18.304287, 18.834177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.499693, 18.442600, 18.705263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179353, -0.875425, -0.448848,
		-0.437340, -0.337735, 0.833468,
		-0.881230, 0.345784, -0.322284,
		16.235325, 18.546335, 18.608578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.369869, 17.830038, 19.046556>,  <16.852184, 18.304287, 18.834177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.369869, 17.830038, 19.046556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.209768, 18.033693, 18.741774>,  <16.113708, 18.155888, 18.558905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.209768, 18.033693, 18.741774>,  <16.369869, 17.830038, 19.046556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.209768, 18.033693, 18.741774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126502, -0.854197, -0.504325,
		-0.907633, -0.105467, 0.406300,
		-0.400249, 0.509140, -0.761956,
		16.089693, 18.186436, 18.513187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.835093, 17.446293, 18.789856>,  <16.369869, 17.830038, 19.046556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.835093, 17.446293, 18.789856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.828105, 17.699455, 18.480244>,  <15.823912, 17.851353, 18.294477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.828105, 17.699455, 18.480244>,  <15.835093, 17.446293, 18.789856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.828105, 17.699455, 18.480244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397818, -0.714633, -0.575361,
		-0.917298, 0.297871, 0.264268,
		-0.017472, 0.632908, -0.774030,
		15.822864, 17.889328, 18.248035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.120845, 17.527657, 18.519100>,  <15.835093, 17.446293, 18.789856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.120845, 17.527657, 18.519100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.349236, 17.642895, 18.211597>,  <15.486272, 17.712038, 18.027096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.349236, 17.642895, 18.211597>,  <15.120845, 17.527657, 18.519100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.349236, 17.642895, 18.211597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337646, -0.771134, -0.539767,
		-0.748316, 0.567763, -0.343028,
		0.570980, 0.288094, -0.768755,
		15.520531, 17.729322, 17.980970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.703506, 17.490141, 17.929808>,  <15.120845, 17.527657, 18.519100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.703506, 17.490141, 17.929808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.060062, 17.496990, 17.748642>,  <15.273996, 17.501101, 17.639942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.060062, 17.496990, 17.748642>,  <14.703506, 17.490141, 17.929808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.060062, 17.496990, 17.748642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305721, -0.715003, -0.628734,
		-0.334601, 0.698912, -0.632111,
		0.891391, 0.017125, -0.452912,
		15.327479, 17.502129, 17.612768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.553335, 17.628447, 17.179956>,  <14.703506, 17.490141, 17.929808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.553335, 17.628447, 17.179956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.909955, 17.449553, 17.208576>,  <15.123927, 17.342216, 17.225748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.909955, 17.449553, 17.208576>,  <14.553335, 17.628447, 17.179956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.909955, 17.449553, 17.208576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228932, -0.581292, -0.780826,
		0.390804, 0.679766, -0.620638,
		0.891551, -0.447234, 0.071551,
		15.177421, 17.315382, 17.230042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.743071, 17.488096, 16.354561>,  <14.553335, 17.628447, 17.179956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.743071, 17.488096, 16.354561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.984113, 17.265411, 16.583275>,  <15.128738, 17.131800, 16.720503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.984113, 17.265411, 16.583275>,  <14.743071, 17.488096, 16.354561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.984113, 17.265411, 16.583275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095121, -0.761485, -0.641166,
		0.792350, 0.331982, -0.511830,
		0.602606, -0.556713, 0.571784,
		15.164895, 17.098398, 16.754810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.277750, 17.266071, 15.851337>,  <14.743071, 17.488096, 16.354561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.277750, 17.266071, 15.851337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.265611, 16.998144, 16.148100>,  <15.258327, 16.837387, 16.326157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.265611, 16.998144, 16.148100>,  <15.277750, 17.266071, 15.851337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.265611, 16.998144, 16.148100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214273, -0.729352, -0.649718,
		0.976302, 0.139252, 0.165659,
		-0.030349, -0.669817, 0.741906,
		15.256506, 16.797199, 16.370672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.925843, 16.973665, 15.849156>,  <15.277750, 17.266071, 15.851337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.925843, 16.973665, 15.849156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.691929, 16.718927, 16.050135>,  <15.551580, 16.566084, 16.170721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.691929, 16.718927, 16.050135>,  <15.925843, 16.973665, 15.849156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.691929, 16.718927, 16.050135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305302, -0.746644, -0.591028,
		0.751542, -0.192227, 0.631058,
		-0.584787, -0.636845, 0.502447,
		15.516493, 16.527874, 16.200869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.400791, 16.402197, 16.024225>,  <15.925843, 16.973665, 15.849156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.400791, 16.402197, 16.024225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.024105, 16.269424, 16.002319>,  <15.798094, 16.189762, 15.989176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.024105, 16.269424, 16.002319>,  <16.400791, 16.402197, 16.024225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.024105, 16.269424, 16.002319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318268, -0.826279, -0.464723,
		0.109003, -0.455066, 0.883761,
		-0.941713, -0.331929, -0.054766,
		15.741591, 16.169846, 15.985889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.860029, 16.001694, 16.487608>,  <16.400791, 16.402197, 16.024225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.860029, 16.001694, 16.487608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.228508, 15.883461, 16.386396>,  <17.449596, 15.812522, 16.325668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.228508, 15.883461, 16.386396>,  <16.860029, 16.001694, 16.487608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.228508, 15.883461, 16.386396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389088, 0.702429, 0.595990,
		0.001572, -0.647476, 0.762084,
		0.921199, -0.295580, -0.253030,
		17.504868, 15.794786, 16.310488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.232803, 15.920347, 17.104101>,  <16.860029, 16.001694, 16.487608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.232803, 15.920347, 17.104101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.510302, 15.998284, 16.826756>,  <17.676800, 16.045046, 16.660349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.510302, 15.998284, 16.826756>,  <17.232803, 15.920347, 17.104101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.510302, 15.998284, 16.826756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391537, 0.705994, 0.590146,
		0.604495, -0.680889, 0.413493,
		0.693747, 0.194842, -0.693363,
		17.718426, 16.056738, 16.618746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.783875, 16.118452, 17.524273>,  <17.232803, 15.920347, 17.104101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.783875, 16.118452, 17.524273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.871439, 16.278683, 17.168383>,  <17.923979, 16.374821, 16.954847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.871439, 16.278683, 17.168383>,  <17.783875, 16.118452, 17.524273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.871439, 16.278683, 17.168383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361150, 0.813823, 0.455262,
		0.906448, -0.420988, 0.033487,
		0.218912, 0.400577, -0.889728,
		17.937113, 16.398855, 16.901464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.533318, 16.271025, 17.493608>,  <17.783875, 16.118452, 17.524273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.533318, 16.271025, 17.493608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.387953, 16.497555, 17.197716>,  <18.300734, 16.633472, 17.020180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.387953, 16.497555, 17.197716>,  <18.533318, 16.271025, 17.493608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.387953, 16.497555, 17.197716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393259, 0.813065, 0.429271,
		0.844559, -0.134904, -0.518191,
		-0.363412, 0.566327, -0.739733,
		18.278929, 16.667454, 16.975796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.059607, 16.653099, 17.313030>,  <18.533318, 16.271025, 17.493608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.059607, 16.653099, 17.313030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.762690, 16.865896, 17.150063>,  <18.584539, 16.993574, 17.052282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.762690, 16.865896, 17.150063>,  <19.059607, 16.653099, 17.313030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.762690, 16.865896, 17.150063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450217, 0.846288, 0.284783,
		0.496295, 0.027965, -0.867703,
		-0.742291, 0.531991, -0.407418,
		18.540003, 17.025494, 17.027838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.440739, 17.265934, 17.232573>,  <19.059607, 16.653099, 17.313030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.440739, 17.265934, 17.232573> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.055338, 17.359135, 17.179846>,  <18.824097, 17.415054, 17.148211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.055338, 17.359135, 17.179846>,  <19.440739, 17.265934, 17.232573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.055338, 17.359135, 17.179846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180512, 0.929082, 0.322835,
		0.197688, 0.287258, -0.937231,
		-0.963502, 0.233002, -0.131815,
		18.766287, 17.429035, 17.140301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.432865, 17.778774, 16.664621>,  <19.440739, 17.265934, 17.232573>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.432865, 17.778774, 16.664621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.114586, 17.825907, 16.902271>,  <18.923618, 17.854187, 17.044861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.114586, 17.825907, 16.902271>,  <19.432865, 17.778774, 16.664621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.114586, 17.825907, 16.902271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307315, 0.923800, 0.228366,
		-0.521944, 0.364293, -0.771275,
		-0.795696, 0.117830, 0.594124,
		18.875877, 17.861256, 17.080509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.090351, 18.354021, 16.440256>,  <19.432865, 17.778774, 16.664621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.090351, 18.354021, 16.440256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.003880, 18.299276, 16.826942>,  <18.951996, 18.266430, 17.058954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.003880, 18.299276, 16.826942>,  <19.090351, 18.354021, 16.440256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.003880, 18.299276, 16.826942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032623, 0.988562, 0.147248,
		-0.975809, 0.063369, -0.209241,
		-0.216179, -0.136859, 0.966714,
		18.939026, 18.258219, 17.116957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.622362, 18.900715, 16.614761>,  <19.090351, 18.354021, 16.440256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.622362, 18.900715, 16.614761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.734024, 18.772642, 16.976879>,  <18.801022, 18.695799, 17.194149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.734024, 18.772642, 16.976879>,  <18.622362, 18.900715, 16.614761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.734024, 18.772642, 16.976879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042727, 0.937697, 0.344816,
		-0.959296, -0.134937, 0.248081,
		0.279153, -0.320181, 0.905294,
		18.817770, 18.676588, 17.248466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.146660, 19.118441, 17.092974>,  <18.622362, 18.900715, 16.614761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.146660, 19.118441, 17.092974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.482134, 19.066401, 17.304512>,  <18.683418, 19.035177, 17.431435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.482134, 19.066401, 17.304512>,  <18.146660, 19.118441, 17.092974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.482134, 19.066401, 17.304512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155664, 0.873272, 0.461697,
		-0.521894, -0.469541, 0.712150,
		0.838687, -0.130100, 0.528846,
		18.733740, 19.027370, 17.463165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.941748, 19.450029, 17.647778>,  <18.146660, 19.118441, 17.092974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.941748, 19.450029, 17.647778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.332565, 19.387457, 17.705620>,  <18.567057, 19.349915, 17.740326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.332565, 19.387457, 17.705620>,  <17.941748, 19.450029, 17.647778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.332565, 19.387457, 17.705620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032460, 0.780206, 0.624680,
		-0.210540, -0.605647, 0.767375,
		0.977046, -0.156429, 0.144606,
		18.625679, 19.340528, 17.749002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.031918, 19.531166, 18.383991>,  <17.941748, 19.450029, 17.647778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.031918, 19.531166, 18.383991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.396694, 19.587965, 18.230003>,  <18.615561, 19.622044, 18.137611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.396694, 19.587965, 18.230003>,  <18.031918, 19.531166, 18.383991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.396694, 19.587965, 18.230003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124673, 0.797968, 0.589664,
		0.390922, -0.585734, 0.709997,
		0.911941, 0.141995, -0.384969,
		18.670277, 19.630564, 18.114513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.530529, 19.552612, 18.984150>,  <18.031918, 19.531166, 18.383991>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.530529, 19.552612, 18.984150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.666052, 19.738672, 18.657019>,  <18.747366, 19.850307, 18.460739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.666052, 19.738672, 18.657019>,  <18.530529, 19.552612, 18.984150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.666052, 19.738672, 18.657019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422312, 0.701571, 0.573978,
		0.840751, -0.539847, 0.041259,
		0.338807, 0.465149, -0.817830,
		18.767694, 19.878218, 18.411669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.178865, 19.837090, 19.135874>,  <18.530529, 19.552612, 18.984150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.178865, 19.837090, 19.135874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.075241, 20.051399, 18.814419>,  <19.013067, 20.179985, 18.621546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.075241, 20.051399, 18.814419>,  <19.178865, 19.837090, 19.135874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.075241, 20.051399, 18.814419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232267, 0.842185, 0.486597,
		0.937518, -0.060601, -0.342619,
		-0.259061, 0.535773, -0.803639,
		18.997522, 20.212132, 18.573328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.758011, 20.064167, 18.870136>,  <19.178865, 19.837090, 19.135874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.758011, 20.064167, 18.870136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.480215, 20.324924, 18.748339>,  <19.313538, 20.481379, 18.675261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.480215, 20.324924, 18.748339>,  <19.758011, 20.064167, 18.870136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.480215, 20.324924, 18.748339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290303, 0.641105, 0.710428,
		0.658337, 0.404991, -0.634488,
		-0.694490, 0.651895, -0.304493,
		19.271868, 20.520493, 18.656990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.104923, 20.720118, 18.901152>,  <19.758011, 20.064167, 18.870136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.104923, 20.720118, 18.901152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.719316, 20.825230, 18.885052>,  <19.487953, 20.888298, 18.875391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.719316, 20.825230, 18.885052>,  <20.104923, 20.720118, 18.901152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.719316, 20.825230, 18.885052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175767, 0.743614, 0.645092,
		0.199451, 0.614803, -0.763044,
		-0.964015, 0.262782, -0.040252,
		19.430113, 20.904064, 18.872976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.094397, 21.431894, 18.683985>,  <20.104923, 20.720118, 18.901152>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.094397, 21.431894, 18.683985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.748262, 21.345661, 18.864967>,  <19.540583, 21.293921, 18.973557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.748262, 21.345661, 18.864967>,  <20.094397, 21.431894, 18.683985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.748262, 21.345661, 18.864967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033737, 0.875658, 0.481752,
		-0.500056, 0.432142, -0.750465,
		-0.865336, -0.215585, 0.452457,
		19.488661, 21.280985, 19.000704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.676094, 22.051161, 18.573587>,  <20.094397, 21.431894, 18.683985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.676094, 22.051161, 18.573587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.547625, 21.828485, 18.880035>,  <19.470543, 21.694880, 19.063904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.547625, 21.828485, 18.880035>,  <19.676094, 22.051161, 18.573587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.547625, 21.828485, 18.880035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016807, 0.812205, 0.583130,
		-0.946871, 0.174411, -0.270217,
		-0.321176, -0.556691, 0.766121,
		19.451271, 21.661478, 19.109871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<19.201984, 22.483133, 18.950336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.269434, 22.175362, 19.196764>,  <19.309904, 21.990698, 19.344622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.269434, 22.175362, 19.196764>,  <19.201984, 22.483133, 18.950336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.269434, 22.175362, 19.196764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151146, 0.597444, 0.787537,
		-0.974023, -0.225914, -0.015553,
		0.168624, -0.769430, 0.616071,
		19.320021, 21.944532, 19.381586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.633215, 22.447884, 19.364103>,  <19.201984, 22.483133, 18.950336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.633215, 22.447884, 19.364103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.929232, 22.265514, 19.561880>,  <19.106842, 22.156092, 19.680546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.929232, 22.265514, 19.561880>,  <18.633215, 22.447884, 19.364103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.929232, 22.265514, 19.561880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093688, 0.658112, 0.747068,
		-0.666006, -0.599184, 0.444314,
		0.740040, -0.455925, 0.494443,
		19.151243, 22.128736, 19.710213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.379387, 22.422045, 20.012924>,  <18.633215, 22.447884, 19.364103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.379387, 22.422045, 20.012924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.771450, 22.357328, 20.058737>,  <19.006687, 22.318499, 20.086226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.771450, 22.357328, 20.058737>,  <18.379387, 22.422045, 20.012924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.771450, 22.357328, 20.058737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006400, 0.551660, 0.834044,
		-0.198123, -0.818227, 0.539678,
		0.980156, -0.161789, 0.114533,
		19.065496, 22.308792, 20.093098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.557287, 22.357399, 20.753002>,  <18.379387, 22.422045, 20.012924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.557287, 22.357399, 20.753002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.901852, 22.457121, 20.575998>,  <19.108591, 22.516954, 20.469795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.901852, 22.457121, 20.575998>,  <18.557287, 22.357399, 20.753002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.901852, 22.457121, 20.575998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253923, 0.543163, 0.800311,
		0.439875, -0.801761, 0.404584,
		0.861414, 0.249304, -0.442510,
		19.160276, 22.531912, 20.443245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.114731, 22.249756, 21.343517>,  <18.557287, 22.357399, 20.753002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.114731, 22.249756, 21.343517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.236420, 22.492590, 21.049879>,  <19.309433, 22.638290, 20.873697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.236420, 22.492590, 21.049879>,  <19.114731, 22.249756, 21.343517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.236420, 22.492590, 21.049879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178932, 0.720487, 0.669986,
		0.935646, -0.335177, 0.110560,
		0.304221, 0.607087, -0.734094,
		19.327686, 22.674717, 20.829651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.735708, 22.542263, 21.534298>,  <19.114731, 22.249756, 21.343517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.735708, 22.542263, 21.534298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.615494, 22.790554, 21.244644>,  <19.543365, 22.939529, 21.070852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.615494, 22.790554, 21.244644>,  <19.735708, 22.542263, 21.534298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.615494, 22.790554, 21.244644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426312, 0.766597, 0.480195,
		0.853191, -0.164391, -0.495015,
		-0.300538, 0.620729, -0.724136,
		19.525333, 22.976772, 21.027403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.302284, 22.945841, 21.400921>,  <19.735708, 22.542263, 21.534298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.302284, 22.945841, 21.400921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.998060, 23.157558, 21.250511>,  <19.815525, 23.284588, 21.160265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.998060, 23.157558, 21.250511>,  <20.302284, 22.945841, 21.400921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.998060, 23.157558, 21.250511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249968, 0.773221, 0.582790,
		0.599218, 0.349254, -0.720389,
		-0.760562, 0.529292, -0.376026,
		19.769892, 23.316345, 21.137703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.646612, 23.627520, 21.347942>,  <20.302284, 22.945841, 21.400921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.646612, 23.627520, 21.347942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.250502, 23.678804, 21.326365>,  <20.012835, 23.709576, 21.313417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.250502, 23.678804, 21.326365>,  <20.646612, 23.627520, 21.347942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.250502, 23.678804, 21.326365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091780, 0.893691, 0.439195,
		0.104521, 0.429974, -0.896771,
		-0.990278, 0.128211, -0.053947,
		19.953419, 23.717268, 21.310181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.474560, 24.363279, 21.034267>,  <20.646612, 23.627520, 21.347942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.474560, 24.363279, 21.034267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.146713, 24.250877, 21.233973>,  <19.950005, 24.183435, 21.353796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.146713, 24.250877, 21.233973>,  <20.474560, 24.363279, 21.034267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.146713, 24.250877, 21.233973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000189, 0.871581, 0.490252,
		-0.572914, 0.401724, -0.714414,
		-0.819616, -0.281007, 0.499264,
		19.900829, 24.166574, 21.383753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.929884, 24.858471, 20.868071>,  <20.474560, 24.363279, 21.034267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.929884, 24.858471, 20.868071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.898689, 24.682810, 21.226080>,  <19.879972, 24.577414, 21.440886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.898689, 24.682810, 21.226080>,  <19.929884, 24.858471, 20.868071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.898689, 24.682810, 21.226080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032315, 0.896171, 0.442531,
		-0.996431, 0.063434, -0.055698,
		-0.077986, -0.439151, 0.895022,
		19.875294, 24.551064, 21.494587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.670563, 25.424938, 21.271427>,  <19.929884, 24.858471, 20.868071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.670563, 25.424938, 21.271427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.761274, 25.151377, 21.548800>,  <19.815701, 24.987240, 21.715223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.761274, 25.151377, 21.548800>,  <19.670563, 25.424938, 21.271427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.761274, 25.151377, 21.548800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118551, 0.726070, 0.677324,
		-0.966705, -0.071395, 0.245734,
		0.226777, -0.683904, 0.693432,
		19.829308, 24.946205, 21.756828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.461866, 25.685553, 21.858927>,  <19.670563, 25.424938, 21.271427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.461866, 25.685553, 21.858927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.678728, 25.393970, 22.026112>,  <19.808846, 25.219021, 22.126423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.678728, 25.393970, 22.026112>,  <19.461866, 25.685553, 21.858927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.678728, 25.393970, 22.026112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288654, 0.628707, 0.722085,
		-0.789143, -0.270836, 0.551273,
		0.542155, -0.728955, 0.417962,
		19.841375, 25.175283, 22.151501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.276709, 25.622486, 22.577259>,  <19.461866, 25.685553, 21.858927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.276709, 25.622486, 22.577259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.654139, 25.494585, 22.542789>,  <19.880596, 25.417845, 22.522108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.654139, 25.494585, 22.542789>,  <19.276709, 25.622486, 22.577259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.654139, 25.494585, 22.542789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255294, 0.536597, 0.804294,
		-0.210936, -0.780910, 0.587950,
		0.943574, -0.319755, -0.086174,
		19.937210, 25.398659, 22.516937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.461050, 25.403767, 23.215040>,  <19.276709, 25.622486, 22.577259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.461050, 25.403767, 23.215040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.800104, 25.487759, 23.020136>,  <20.003536, 25.538155, 22.903193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.800104, 25.487759, 23.020136>,  <19.461050, 25.403767, 23.215040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.800104, 25.487759, 23.020136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286395, 0.592010, 0.753327,
		0.446648, -0.778095, 0.441670,
		0.847634, 0.209980, -0.487263,
		20.054394, 25.550753, 22.873957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.898294, 25.368481, 23.709547>,  <19.461050, 25.403767, 23.215040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.898294, 25.368481, 23.709547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.153448, 25.540739, 23.454157>,  <20.306540, 25.644094, 23.300922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.153448, 25.540739, 23.454157>,  <19.898294, 25.368481, 23.709547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.153448, 25.540739, 23.454157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531041, 0.354474, 0.769639,
		0.557765, -0.829995, -0.002578,
		0.637882, 0.430647, -0.638474,
		20.344812, 25.669933, 23.262615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.631962, 25.213978, 23.926058>,  <19.898294, 25.368481, 23.709547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.631962, 25.213978, 23.926058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.648193, 25.542225, 23.698044>,  <20.657932, 25.739174, 23.561235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.648193, 25.542225, 23.698044>,  <20.631962, 25.213978, 23.926058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.648193, 25.542225, 23.698044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520758, 0.469521, 0.712994,
		0.852739, -0.325783, -0.408291,
		0.040580, 0.820619, -0.570033,
		20.660368, 25.788410, 23.527035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.284557, 25.551468, 24.078056>,  <20.631962, 25.213978, 23.926058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.284557, 25.551468, 24.078056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.068893, 25.836847, 23.899038>,  <20.939495, 26.008076, 23.791628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.068893, 25.836847, 23.899038>,  <21.284557, 25.551468, 24.078056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.068893, 25.836847, 23.899038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541512, 0.700659, 0.464588,
		0.645036, 0.008137, -0.764109,
		-0.539160, 0.713450, -0.447544,
		20.907145, 26.050882, 23.764774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.804159, 25.956345, 24.067894>,  <21.284557, 25.551468, 24.078056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.804159, 25.956345, 24.067894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.490307, 26.174370, 23.949736>,  <21.301996, 26.305185, 23.878841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.490307, 26.174370, 23.949736>,  <21.804159, 25.956345, 24.067894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.490307, 26.174370, 23.949736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348427, 0.781802, 0.517092,
		0.512790, 0.302802, -0.803341,
		-0.784630, 0.545065, -0.295396,
		21.254917, 26.337889, 23.861116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.074142, 26.546886, 23.829428>,  <21.804159, 25.956345, 24.067894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.074142, 26.546886, 23.829428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.702065, 26.597708, 23.967180>,  <21.478819, 26.628201, 24.049831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.702065, 26.597708, 23.967180>,  <22.074142, 26.546886, 23.829428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.702065, 26.597708, 23.967180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291457, 0.825972, 0.482518,
		-0.223142, 0.549207, -0.805344,
		-0.930194, 0.127054, 0.344379,
		21.423006, 26.635824, 24.070494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.957132, 27.276291, 23.838999>,  <22.074142, 26.546886, 23.829428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.957132, 27.276291, 23.838999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.677950, 27.125391, 24.082485>,  <21.510441, 27.034851, 24.228577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.677950, 27.125391, 24.082485>,  <21.957132, 27.276291, 23.838999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.677950, 27.125391, 24.082485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140866, 0.761070, 0.633189,
		-0.702149, 0.527686, -0.478052,
		-0.697957, -0.377252, 0.608718,
		21.468563, 27.012215, 24.265100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.636858, 27.962975, 24.065655>,  <21.957132, 27.276291, 23.838999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.636858, 27.962975, 24.065655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.589151, 27.661251, 24.323895>,  <21.560528, 27.480217, 24.478838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.589151, 27.661251, 24.323895>,  <21.636858, 27.962975, 24.065655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.589151, 27.661251, 24.323895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102489, 0.637413, 0.763676,
		-0.987558, 0.157248, 0.001286,
		-0.119267, -0.754306, 0.645599,
		21.553371, 27.434959, 24.517574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.249561, 28.186928, 24.606838>,  <21.636858, 27.962975, 24.065655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.249561, 28.186928, 24.606838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.468222, 27.889948, 24.761728>,  <21.599417, 27.711760, 24.854662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.468222, 27.889948, 24.761728>,  <21.249561, 28.186928, 24.606838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.468222, 27.889948, 24.761728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403534, 0.638770, 0.655082,
		-0.733713, -0.201843, 0.648787,
		0.546650, -0.742450, 0.387224,
		21.632217, 27.667213, 24.877895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.200010, 28.192072, 25.301121>,  <21.249561, 28.186928, 24.606838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.200010, 28.192072, 25.301121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.553022, 28.008936, 25.258184>,  <21.764830, 27.899054, 25.232422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.553022, 28.008936, 25.258184>,  <21.200010, 28.192072, 25.301121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.553022, 28.008936, 25.258184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409102, 0.634925, 0.655367,
		-0.231900, -0.622295, 0.747644,
		0.882529, -0.457842, -0.107343,
		21.817781, 27.871584, 25.225981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.633564, 27.795038, 25.482447>,  <21.200010, 28.192072, 25.301121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.633564, 27.795038, 25.482447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.892969, 27.528008, 25.336147>,  <21.048613, 27.367788, 25.248367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.892969, 27.528008, 25.336147>,  <20.633564, 27.795038, 25.482447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.892969, 27.528008, 25.336147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644218, -0.225394, -0.730877,
		0.405479, 0.709605, -0.576236,
		0.648514, -0.667577, -0.365748,
		21.087523, 27.327734, 25.226423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.167562, 27.730852, 26.043158>,  <20.633564, 27.795038, 25.482447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.167562, 27.730852, 26.043158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.877636, 27.797094, 26.310654>,  <19.703680, 27.836840, 26.471151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.877636, 27.797094, 26.310654>,  <20.167562, 27.730852, 26.043158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.877636, 27.797094, 26.310654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514338, -0.775882, -0.365327,
		0.458363, -0.608754, 0.647551,
		-0.724818, 0.165608, 0.668740,
		19.660191, 27.846777, 26.511276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.058863, 27.028173, 26.372355>,  <20.167562, 27.730852, 26.043158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.058863, 27.028173, 26.372355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.739452, 27.259367, 26.439629>,  <19.547806, 27.398083, 26.479994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.739452, 27.259367, 26.439629>,  <20.058863, 27.028173, 26.372355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.739452, 27.259367, 26.439629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598153, -0.793245, -0.113907,
		0.067575, -0.191559, 0.979152,
		-0.798527, 0.577986, 0.168185,
		19.499893, 27.432762, 26.490084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.587969, 26.669016, 26.700481>,  <20.058863, 27.028173, 26.372355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.587969, 26.669016, 26.700481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.336937, 26.942978, 26.552401>,  <19.186317, 27.107355, 26.463552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.336937, 26.942978, 26.552401>,  <19.587969, 26.669016, 26.700481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.336937, 26.942978, 26.552401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651432, -0.722345, -0.232066,
		-0.426357, 0.095522, 0.899497,
		-0.627580, 0.684904, -0.370203,
		19.148663, 27.148449, 26.441339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.028816, 26.558224, 26.949697>,  <19.587969, 26.669016, 26.700481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.028816, 26.558224, 26.949697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.928915, 26.762257, 26.620470>,  <18.868975, 26.884676, 26.422934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.928915, 26.762257, 26.620470>,  <19.028816, 26.558224, 26.949697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.928915, 26.762257, 26.620470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630666, -0.730685, -0.261458,
		-0.734766, 0.453777, 0.504187,
		-0.249758, 0.510084, -0.823064,
		18.853989, 26.915281, 26.373550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.250393, 26.451679, 26.908236>,  <19.028816, 26.558224, 26.949697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.250393, 26.451679, 26.908236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.370945, 26.554888, 26.541063>,  <18.443275, 26.616814, 26.320761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.370945, 26.554888, 26.541063>,  <18.250393, 26.451679, 26.908236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.370945, 26.554888, 26.541063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583534, -0.711448, -0.391573,
		-0.754094, 0.653655, -0.063852,
		0.301381, 0.258023, -0.917929,
		18.461359, 26.632296, 26.265684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.689899, 26.299269, 26.442631>,  <18.250393, 26.451679, 26.908236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.689899, 26.299269, 26.442631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.011650, 26.318283, 26.205744>,  <18.204700, 26.329693, 26.063612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.011650, 26.318283, 26.205744>,  <17.689899, 26.299269, 26.442631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.011650, 26.318283, 26.205744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415328, -0.667777, -0.617719,
		-0.424834, 0.742842, -0.517400,
		0.804375, 0.047537, -0.592217,
		18.252962, 26.332544, 26.028078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.439827, 25.876860, 25.980202>,  <17.689899, 26.299269, 26.442631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.439827, 25.876860, 25.980202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.802368, 25.923845, 25.817856>,  <18.019894, 25.952036, 25.720448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.802368, 25.923845, 25.817856>,  <17.439827, 25.876860, 25.980202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.802368, 25.923845, 25.817856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159012, -0.795130, -0.585221,
		-0.391458, 0.594954, -0.701990,
		0.906353, 0.117465, -0.405865,
		18.074274, 25.959085, 25.696096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.391626, 25.998451, 25.246435>,  <17.439827, 25.876860, 25.980202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.391626, 25.998451, 25.246435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.760494, 25.851194, 25.293880>,  <17.981815, 25.762840, 25.322348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.760494, 25.851194, 25.293880>,  <17.391626, 25.998451, 25.246435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.760494, 25.851194, 25.293880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122419, -0.568713, -0.813375,
		0.366896, 0.735551, -0.569519,
		0.922172, -0.368144, 0.118613,
		18.037146, 25.740751, 25.329464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.815321, 26.193563, 24.635605>,  <17.391626, 25.998451, 25.246435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.815321, 26.193563, 24.635605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.979156, 25.869699, 24.803741>,  <18.077457, 25.675381, 24.904623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.979156, 25.869699, 24.803741>,  <17.815321, 26.193563, 24.635605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.979156, 25.869699, 24.803741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073039, -0.488389, -0.869564,
		0.909343, 0.325461, -0.259174,
		0.409587, -0.809662, 0.420341,
		18.102032, 25.626801, 24.929844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.432735, 25.997826, 24.226862>,  <17.815321, 26.193563, 24.635605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.432735, 25.997826, 24.226862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.337706, 25.658815, 24.416708>,  <18.280687, 25.455410, 24.530615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.337706, 25.658815, 24.416708>,  <18.432735, 25.997826, 24.226862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.337706, 25.658815, 24.416708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153330, -0.449759, -0.879890,
		0.959191, -0.281813, -0.023099,
		-0.237576, -0.847525, 0.474615,
		18.266434, 25.404558, 24.559093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.618898, 25.548000, 23.691372>,  <18.432735, 25.997826, 24.226862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.618898, 25.548000, 23.691372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.400614, 25.336248, 23.951204>,  <18.269644, 25.209198, 24.107103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.400614, 25.336248, 23.951204>,  <18.618898, 25.548000, 23.691372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.400614, 25.336248, 23.951204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201431, -0.669584, -0.714900,
		0.813404, -0.520974, 0.258765,
		-0.545710, -0.529380, 0.649583,
		18.236900, 25.177435, 24.146080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.959232, 24.913048, 23.629757>,  <18.618898, 25.548000, 23.691372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.959232, 24.913048, 23.629757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.590807, 24.879662, 23.781904>,  <18.369753, 24.859629, 23.873192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.590807, 24.879662, 23.781904>,  <18.959232, 24.913048, 23.629757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.590807, 24.879662, 23.781904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221857, -0.690268, -0.688702,
		0.320039, -0.718724, 0.617261,
		-0.921062, -0.083468, 0.380367,
		18.314489, 24.854622, 23.896015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.873232, 24.215553, 23.602549>,  <18.959232, 24.913048, 23.629757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.873232, 24.215553, 23.602549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.501225, 24.360073, 23.629456>,  <18.278019, 24.446785, 23.645599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.501225, 24.360073, 23.629456>,  <18.873232, 24.215553, 23.602549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.501225, 24.360073, 23.629456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296286, -0.628826, -0.718883,
		-0.217432, -0.688506, 0.691869,
		-0.930020, 0.361299, 0.067267,
		18.222218, 24.468462, 23.649635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.481318, 23.688915, 23.587175>,  <18.873232, 24.215553, 23.602549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.481318, 23.688915, 23.587175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.227827, 23.979071, 23.479692>,  <18.075733, 24.153164, 23.415203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.227827, 23.979071, 23.479692>,  <18.481318, 23.688915, 23.587175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.227827, 23.979071, 23.479692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424225, -0.616372, -0.663414,
		-0.646861, -0.306426, 0.698337,
		-0.633723, 0.725389, -0.268714,
		18.037708, 24.196686, 23.399080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.741634, 23.428604, 23.746735>,  <18.481318, 23.688915, 23.587175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.741634, 23.428604, 23.746735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.720196, 23.693810, 23.448061>,  <17.707333, 23.852934, 23.268856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.720196, 23.693810, 23.448061>,  <17.741634, 23.428604, 23.746735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.720196, 23.693810, 23.448061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470849, -0.676193, -0.566625,
		-0.880584, 0.321206, 0.348422,
		-0.053597, 0.663015, -0.746685,
		17.704117, 23.892714, 23.224056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.092169, 23.384939, 23.465910>,  <17.741634, 23.428604, 23.746735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.092169, 23.384939, 23.465910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.304390, 23.567608, 23.180262>,  <17.431723, 23.677208, 23.008873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.304390, 23.567608, 23.180262>,  <17.092169, 23.384939, 23.465910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.304390, 23.567608, 23.180262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496573, -0.515322, -0.698469,
		-0.686972, 0.725186, -0.046635,
		0.530552, 0.456671, -0.714119,
		17.463556, 23.704609, 22.966026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.568798, 23.495007, 22.986670>,  <17.092169, 23.384939, 23.465910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.568798, 23.495007, 22.986670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.912777, 23.521536, 22.784246>,  <17.119164, 23.537453, 22.662792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.912777, 23.521536, 22.784246>,  <16.568798, 23.495007, 22.986670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.912777, 23.521536, 22.784246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439325, -0.408480, -0.800086,
		-0.259778, 0.910354, -0.322133,
		0.859947, 0.066323, -0.506056,
		17.170761, 23.541433, 22.632429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.436766, 23.761908, 22.273682>,  <16.568798, 23.495007, 22.986670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.436766, 23.761908, 22.273682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.793068, 23.580357, 22.264330>,  <17.006849, 23.471426, 22.258718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.793068, 23.580357, 22.264330>,  <16.436766, 23.761908, 22.273682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.793068, 23.580357, 22.264330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286335, -0.520509, -0.804414,
		0.352938, 0.723231, -0.593609,
		0.890756, -0.453880, -0.023379,
		17.060295, 23.444193, 22.257317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.474331, 23.818769, 21.553436>,  <16.436766, 23.761908, 22.273682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.474331, 23.818769, 21.553436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.749723, 23.544630, 21.648336>,  <16.914959, 23.380146, 21.705276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.749723, 23.544630, 21.648336>,  <16.474331, 23.818769, 21.553436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.749723, 23.544630, 21.648336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338651, -0.593069, -0.730469,
		0.641331, 0.422571, -0.640412,
		0.688484, -0.685349, 0.237249,
		16.956268, 23.339025, 21.719511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.811890, 23.580597, 20.950506>,  <16.474331, 23.818769, 21.553436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.811890, 23.580597, 20.950506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.879007, 23.275126, 21.199871>,  <16.919279, 23.091843, 21.349489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.879007, 23.275126, 21.199871>,  <16.811890, 23.580597, 20.950506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.879007, 23.275126, 21.199871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097642, -0.642143, -0.760341,
		0.980974, 0.066711, -0.182316,
		0.167797, -0.763677, 0.623412,
		16.929346, 23.046022, 21.386894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<24.927576, 10.200465, 6.884306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.879623, 10.258152, 7.277209>,  <24.850853, 10.292765, 7.512951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.879623, 10.258152, 7.277209>,  <24.927576, 10.200465, 6.884306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.879623, 10.258152, 7.277209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986551, 0.128038, 0.101605,
		-0.111113, 0.981228, -0.157627,
		-0.119880, 0.144217, 0.982258,
		24.843658, 10.301417, 7.571886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.186722, 10.832565, 7.197021>,  <24.927576, 10.200465, 6.884306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.186722, 10.832565, 7.197021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.198648, 10.508710, 7.431490>,  <25.205805, 10.314397, 7.572171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.198648, 10.508710, 7.431490>,  <25.186722, 10.832565, 7.197021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.198648, 10.508710, 7.431490> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998597, -0.001546, -0.052928,
		0.043759, 0.586928, 0.808455,
		0.029815, -0.809637, 0.586173,
		25.207592, 10.265819, 7.607342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.148329, 11.338000, 6.581463>,  <25.186722, 10.832565, 7.197021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.148329, 11.338000, 6.581463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.374289, 11.514699, 6.860246>,  <25.509865, 11.620718, 7.027515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.374289, 11.514699, 6.860246>,  <25.148329, 11.338000, 6.581463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.374289, 11.514699, 6.860246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794543, -0.519140, -0.314951,
		0.222689, 0.731678, -0.644249,
		0.564898, 0.441748, 0.696957,
		25.543758, 11.647223, 7.069333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.509171, 11.253415, 7.028274>,  <25.148329, 11.338000, 6.581463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.509171, 11.253415, 7.028274> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.573683, 11.577311, 7.253951>,  <24.612391, 11.771647, 7.389357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.573683, 11.577311, 7.253951>,  <24.509171, 11.253415, 7.028274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.573683, 11.577311, 7.253951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983371, 0.083490, 0.161280,
		0.083490, -0.580822, 0.809738,
		-0.161280, -0.809738, -0.564193,
		24.622066, 11.820231, 7.423208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.216705, 11.339553, 7.754553>,  <24.509171, 11.253415, 7.028274>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.216705, 11.339553, 7.754553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.271345, 11.697165, 7.583882>,  <24.304129, 11.911732, 7.481479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.271345, 11.697165, 7.583882>,  <24.216705, 11.339553, 7.754553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.271345, 11.697165, 7.583882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960360, 0.225166, 0.164342,
		0.243000, 0.387317, 0.889346,
		0.136598, 0.894028, -0.426679,
		24.312325, 11.965373, 7.455879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.156895, 11.880490, 8.252511>,  <24.216705, 11.339553, 7.754553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.156895, 11.880490, 8.252511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.022051, 11.948744, 7.882162>,  <23.941145, 11.989696, 7.659953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.022051, 11.948744, 7.882162>,  <24.156895, 11.880490, 8.252511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.022051, 11.948744, 7.882162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891001, 0.259828, 0.372298,
		0.304094, 0.950460, 0.064444,
		-0.337110, 0.170633, -0.925873,
		23.920918, 11.999934, 7.604400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.815329, 12.542481, 8.378643>,  <24.156895, 11.880490, 8.252511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.815329, 12.542481, 8.378643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.642866, 12.336877, 8.082023>,  <23.539389, 12.213514, 7.904050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.642866, 12.336877, 8.082023>,  <23.815329, 12.542481, 8.378643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.642866, 12.336877, 8.082023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902061, 0.263565, 0.341788,
		0.019764, 0.816287, -0.577308,
		-0.431155, -0.514012, -0.741550,
		23.513519, 12.182673, 7.859558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.282917, 12.916632, 8.034043>,  <23.815329, 12.542481, 8.378643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.282917, 12.916632, 8.034043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.206331, 12.526143, 7.993380>,  <23.160379, 12.291850, 7.968982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.206331, 12.526143, 7.993380>,  <23.282917, 12.916632, 8.034043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.206331, 12.526143, 7.993380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943745, 0.154656, 0.292280,
		-0.269608, 0.151900, -0.950914,
		-0.191462, -0.976221, -0.101658,
		23.148893, 12.233276, 7.962883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.807756, 13.533935, 8.038960>,  <23.282917, 12.916632, 8.034043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.807756, 13.533935, 8.038960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.762339, 13.738562, 8.379643>,  <22.735088, 13.861338, 8.584053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.762339, 13.738562, 8.379643>,  <22.807756, 13.533935, 8.038960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.762339, 13.738562, 8.379643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556430, -0.742940, 0.372057,
		0.823100, -0.431671, 0.369009,
		-0.113545, 0.511568, 0.851708,
		22.728275, 13.892032, 8.635156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.834187, 13.080004, 8.626304>,  <22.807756, 13.533935, 8.038960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.834187, 13.080004, 8.626304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.677900, 13.406440, 8.796639>,  <22.584129, 13.602302, 8.898841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.677900, 13.406440, 8.796639>,  <22.834187, 13.080004, 8.626304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.677900, 13.406440, 8.796639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362943, -0.561712, 0.743473,
		0.845940, 0.135930, 0.515664,
		-0.390715, 0.816090, 0.425840,
		22.560686, 13.651267, 8.924392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.182972, 13.214269, 9.242987>,  <22.834187, 13.080004, 8.626304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.182972, 13.214269, 9.242987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.798603, 13.324630, 9.234011>,  <22.567982, 13.390846, 9.228625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.798603, 13.324630, 9.234011>,  <23.182972, 13.214269, 9.242987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.798603, 13.324630, 9.234011> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166054, -0.509672, 0.844192,
		0.221477, 0.814930, 0.535571,
		-0.960924, 0.275903, -0.022441,
		22.510326, 13.407401, 9.227279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.006914, 13.425987, 9.946205>,  <23.182972, 13.214269, 9.242987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.006914, 13.425987, 9.946205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.645390, 13.344743, 9.795540>,  <22.428474, 13.295996, 9.705141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.645390, 13.344743, 9.795540>,  <23.006914, 13.425987, 9.946205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.645390, 13.344743, 9.795540> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284211, -0.373129, 0.883175,
		-0.319926, 0.905274, 0.279512,
		-0.903809, -0.203111, -0.376662,
		22.374247, 13.283810, 9.682541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.529039, 13.541970, 10.484252>,  <23.006914, 13.425987, 9.946205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.529039, 13.541970, 10.484252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.326929, 13.322924, 10.217475>,  <22.205664, 13.191496, 10.057408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.326929, 13.322924, 10.217475>,  <22.529039, 13.541970, 10.484252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.326929, 13.322924, 10.217475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218355, -0.666574, 0.712741,
		-0.834875, 0.505762, 0.217229,
		-0.505276, -0.547616, -0.666942,
		22.175346, 13.158639, 10.017392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.936913, 13.372705, 10.816142>,  <22.529039, 13.541970, 10.484252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.936913, 13.372705, 10.816142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.952095, 13.073629, 10.550957>,  <21.961205, 12.894184, 10.391846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.952095, 13.073629, 10.550957>,  <21.936913, 13.372705, 10.816142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.952095, 13.073629, 10.550957> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385222, -0.623111, 0.680688,
		-0.922043, 0.229552, -0.311677,
		0.037956, -0.747689, -0.662964,
		21.963482, 12.849322, 10.352068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.384748, 12.908555, 10.902134>,  <21.936913, 13.372705, 10.816142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.384748, 12.908555, 10.902134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.621103, 12.666983, 10.688174>,  <21.762917, 12.522039, 10.559798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.621103, 12.666983, 10.688174>,  <21.384748, 12.908555, 10.902134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.621103, 12.666983, 10.688174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197902, -0.751277, 0.629617,
		-0.782103, -0.266176, -0.563441,
		0.590889, -0.603931, -0.534899,
		21.798370, 12.485804, 10.527704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.028160, 12.344652, 10.952348>,  <21.384748, 12.908555, 10.902134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.028160, 12.344652, 10.952348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.389521, 12.228924, 10.825754>,  <21.606337, 12.159487, 10.749798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.389521, 12.228924, 10.825754>,  <21.028160, 12.344652, 10.952348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.389521, 12.228924, 10.825754> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051715, -0.806196, 0.589384,
		-0.425670, -0.516083, -0.743279,
		0.903400, -0.289321, -0.316484,
		21.660540, 12.142127, 10.730809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.891216, 11.600536, 10.791629>,  <21.028160, 12.344652, 10.952348>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.891216, 11.600536, 10.791629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.286539, 11.648444, 10.829383>,  <21.523733, 11.677189, 10.852036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.286539, 11.648444, 10.829383>,  <20.891216, 11.600536, 10.791629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.286539, 11.648444, 10.829383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007037, -0.582477, 0.812817,
		0.152329, -0.803975, -0.574822,
		0.988305, 0.119770, 0.094385,
		21.583031, 11.684375, 10.857698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.211740, 10.924629, 10.838471>,  <20.891216, 11.600536, 10.791629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.211740, 10.924629, 10.838471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.447876, 11.196709, 11.012290>,  <21.589558, 11.359957, 11.116581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.447876, 11.196709, 11.012290>,  <21.211740, 10.924629, 10.838471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.447876, 11.196709, 11.012290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143199, -0.441568, 0.885727,
		0.794352, -0.585104, -0.163270,
		0.590337, 0.680199, 0.434547,
		21.624977, 11.400768, 11.142654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.542944, 10.517359, 11.318998>,  <21.211740, 10.924629, 10.838471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.542944, 10.517359, 11.318998> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.602465, 10.896791, 11.430752>,  <21.638178, 11.124450, 11.497804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.602465, 10.896791, 11.430752>,  <21.542944, 10.517359, 11.318998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.602465, 10.896791, 11.430752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062817, -0.272891, 0.959992,
		0.986870, -0.160399, 0.018980,
		0.148803, 0.948579, 0.279384,
		21.647106, 11.181364, 11.514567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.927336, 10.394529, 11.925827>,  <21.542944, 10.517359, 11.318998>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.927336, 10.394529, 11.925827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.761644, 10.757800, 11.949926>,  <21.662230, 10.975762, 11.964386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.761644, 10.757800, 11.949926>,  <21.927336, 10.394529, 11.925827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.761644, 10.757800, 11.949926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229012, -0.168061, 0.958806,
		0.880891, 0.383366, 0.277599,
		-0.414227, 0.908177, 0.060248,
		21.637377, 11.030253, 11.968001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.260237, 10.763995, 12.427084>,  <21.927336, 10.394529, 11.925827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.260237, 10.763995, 12.427084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.900169, 10.931521, 12.379268>,  <21.684130, 11.032037, 12.350578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.900169, 10.931521, 12.379268>,  <22.260237, 10.763995, 12.427084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.900169, 10.931521, 12.379268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194994, -0.142116, 0.970454,
		0.389452, 0.896882, 0.209595,
		-0.900169, 0.418815, -0.119540,
		21.630119, 11.057166, 12.343406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.247719, 11.283799, 12.891853>,  <22.260237, 10.763995, 12.427084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.247719, 11.283799, 12.891853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.871632, 11.185808, 12.797214>,  <21.645979, 11.127014, 12.740430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.871632, 11.185808, 12.797214>,  <22.247719, 11.283799, 12.891853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.871632, 11.185808, 12.797214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222071, -0.085735, 0.971254,
		-0.258220, 0.965730, 0.026208,
		-0.940217, -0.244977, -0.236599,
		21.589567, 11.112315, 12.726233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.893398, 11.626108, 13.331819>,  <22.247719, 11.283799, 12.891853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.893398, 11.626108, 13.331819> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.628824, 11.362370, 13.188844>,  <21.470079, 11.204126, 13.103059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.628824, 11.362370, 13.188844>,  <21.893398, 11.626108, 13.331819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.628824, 11.362370, 13.188844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402838, -0.089673, 0.910868,
		-0.632631, 0.746471, -0.206297,
		-0.661437, -0.659348, -0.357437,
		21.430393, 11.164565, 13.081613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.216093, 11.836233, 13.659657>,  <21.893398, 11.626108, 13.331819>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.216093, 11.836233, 13.659657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.155741, 11.453778, 13.559228>,  <21.119530, 11.224305, 13.498970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.155741, 11.453778, 13.559228>,  <21.216093, 11.836233, 13.659657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.155741, 11.453778, 13.559228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326997, -0.191413, 0.925437,
		-0.932903, 0.221730, -0.283773,
		-0.150879, -0.956137, -0.251075,
		21.110477, 11.166937, 13.483906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.625368, 11.648668, 13.994468>,  <21.216093, 11.836233, 13.659657>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.625368, 11.648668, 13.994468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.813948, 11.303902, 13.919807>,  <20.927095, 11.097042, 13.875011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.813948, 11.303902, 13.919807>,  <20.625368, 11.648668, 13.994468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.813948, 11.303902, 13.919807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144350, -0.284211, 0.947833,
		-0.870000, -0.419910, -0.258408,
		0.471447, -0.861916, -0.186650,
		20.955381, 11.045327, 13.863812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.185053, 11.173476, 14.322594>,  <20.625368, 11.648668, 13.994468>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.185053, 11.173476, 14.322594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.546988, 11.006820, 14.287540>,  <20.764149, 10.906826, 14.266508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.546988, 11.006820, 14.287540>,  <20.185053, 11.173476, 14.322594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.546988, 11.006820, 14.287540> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125737, -0.458149, 0.879937,
		-0.406764, -0.785183, -0.466938,
		0.904839, -0.416638, -0.087632,
		20.818439, 10.881827, 14.261250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.078896, 10.442250, 14.605566>,  <20.185053, 11.173476, 14.322594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.078896, 10.442250, 14.605566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.473118, 10.509489, 14.613783>,  <20.709652, 10.549832, 14.618712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.473118, 10.509489, 14.613783>,  <20.078896, 10.442250, 14.605566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.473118, 10.509489, 14.613783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094803, -0.648163, 0.755578,
		0.140325, -0.742717, -0.654737,
		0.985556, 0.168098, 0.020542,
		20.768785, 10.559918, 14.619946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.350695, 9.872219, 14.776453>,  <20.078896, 10.442250, 14.605566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.350695, 9.872219, 14.776453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.671978, 10.103639, 14.833212>,  <20.864748, 10.242491, 14.867268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.671978, 10.103639, 14.833212>,  <20.350695, 9.872219, 14.776453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.671978, 10.103639, 14.833212> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226297, -0.516690, 0.825725,
		0.551040, -0.631119, -0.545934,
		0.803209, 0.578550, 0.141897,
		20.912941, 10.277204, 14.875781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.887964, 9.510341, 14.691651>,  <20.350695, 9.872219, 14.776453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.887964, 9.510341, 14.691651> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.992037, 9.819059, 14.923733>,  <21.054480, 10.004291, 15.062982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.992037, 9.819059, 14.923733>,  <20.887964, 9.510341, 14.691651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.992037, 9.819059, 14.923733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059337, -0.612544, 0.788206,
		0.963735, -0.170648, -0.205168,
		0.260180, 0.771796, 0.580204,
		21.070091, 10.050598, 15.097794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.378078, 9.183539, 15.037659>,  <20.887964, 9.510341, 14.691651>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.378078, 9.183539, 15.037659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.271261, 9.504785, 15.250711>,  <21.207170, 9.697532, 15.378543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.271261, 9.504785, 15.250711>,  <21.378078, 9.183539, 15.037659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.271261, 9.504785, 15.250711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135891, -0.578563, 0.804238,
		0.954055, 0.142387, 0.263637,
		-0.267044, 0.803113, 0.532632,
		21.191149, 9.745719, 15.410501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.840261, 9.276463, 15.732338>,  <21.378078, 9.183539, 15.037659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.840261, 9.276463, 15.732338> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.467478, 9.417391, 15.766564>,  <21.243807, 9.501947, 15.787101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.467478, 9.417391, 15.766564>,  <21.840261, 9.276463, 15.732338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.467478, 9.417391, 15.766564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147433, -0.583881, 0.798340,
		0.331232, 0.731405, 0.596097,
		-0.931960, 0.352320, 0.085567,
		21.187889, 9.523087, 15.792234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.762323, 9.576283, 16.365284>,  <21.840261, 9.276463, 15.732338>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.762323, 9.576283, 16.365284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.409134, 9.440303, 16.235800>,  <21.197220, 9.358715, 16.158110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.409134, 9.440303, 16.235800>,  <21.762323, 9.576283, 16.365284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.409134, 9.440303, 16.235800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057083, -0.606723, 0.792861,
		-0.465937, 0.718555, 0.516315,
		-0.882975, -0.339950, -0.323712,
		21.144241, 9.338318, 16.138685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.276905, 10.036933, 16.102776>,  <21.762323, 9.576283, 16.365284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.276905, 10.036933, 16.102776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.566927, 9.763047, 16.132338>,  <22.740940, 9.598716, 16.150074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.566927, 9.763047, 16.132338>,  <22.276905, 10.036933, 16.102776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.566927, 9.763047, 16.132338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310645, 0.229384, -0.922433,
		0.614649, 0.691774, 0.379019,
		0.725056, -0.684713, 0.073906,
		22.784443, 9.557633, 16.154509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.957043, 10.331512, 16.048647>,  <22.276905, 10.036933, 16.102776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.957043, 10.331512, 16.048647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.942888, 9.959225, 15.903040>,  <22.934395, 9.735851, 15.815677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.942888, 9.959225, 15.903040>,  <22.957043, 10.331512, 16.048647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.942888, 9.959225, 15.903040> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209006, 0.349297, -0.913405,
		0.977274, -0.108402, 0.182166,
		-0.035386, -0.930721, -0.364015,
		22.932272, 9.680009, 15.793836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.678167, 10.105517, 15.836951>,  <22.957043, 10.331512, 16.048647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.678167, 10.105517, 15.836951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.344400, 9.987924, 15.650480>,  <23.144140, 9.917367, 15.538597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.344400, 9.987924, 15.650480>,  <23.678167, 10.105517, 15.836951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.344400, 9.987924, 15.650480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259640, 0.536425, -0.803016,
		0.486142, -0.791090, -0.371273,
		-0.834418, -0.293982, -0.466177,
		23.094076, 9.899728, 15.510627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.818628, 9.983171, 15.135358>,  <23.678167, 10.105517, 15.836951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.818628, 9.983171, 15.135358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.437494, 10.103524, 15.151242>,  <23.208815, 10.175736, 15.160773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.437494, 10.103524, 15.151242>,  <23.818628, 9.983171, 15.135358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.437494, 10.103524, 15.151242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173637, 0.647776, -0.741780,
		-0.248913, -0.699897, -0.669467,
		-0.952834, 0.300883, 0.039712,
		23.151644, 10.193789, 15.163156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.244379, 10.542361, 15.233809>,  <23.818628, 9.983171, 15.135358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.244379, 10.542361, 15.233809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.855761, 10.476566, 15.301980>,  <23.622589, 10.437089, 15.342882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.855761, 10.476566, 15.301980>,  <24.244379, 10.542361, 15.233809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.855761, 10.476566, 15.301980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187140, 0.974136, -0.126637,
		-0.145188, -0.154927, -0.977199,
		-0.971544, -0.164487, 0.170426,
		23.564297, 10.427220, 15.353107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.780951, 10.849925, 14.622300>,  <24.244379, 10.542361, 15.233809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.780951, 10.849925, 14.622300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.574354, 10.817556, 14.963284>,  <23.450396, 10.798136, 15.167875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.574354, 10.817556, 14.963284>,  <23.780951, 10.849925, 14.622300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.574354, 10.817556, 14.963284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250437, 0.966271, -0.060011,
		-0.818852, -0.244483, -0.519336,
		-0.516491, -0.080921, 0.852461,
		23.419407, 10.793281, 15.219023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.116995, 11.093793, 14.448675>,  <23.780951, 10.849925, 14.622300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.116995, 11.093793, 14.448675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.207582, 11.159115, 14.832767>,  <23.261936, 11.198308, 15.063223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.207582, 11.159115, 14.832767>,  <23.116995, 11.093793, 14.448675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.207582, 11.159115, 14.832767> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347084, 0.934660, -0.077097,
		-0.910079, -0.315821, 0.268353,
		0.226470, 0.163305, 0.960231,
		23.275524, 11.208106, 15.120836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.510550, 11.422180, 14.865436>,  <23.116995, 11.093793, 14.448675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.510550, 11.422180, 14.865436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.878839, 11.533044, 14.975306>,  <23.099813, 11.599562, 15.041227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.878839, 11.533044, 14.975306>,  <22.510550, 11.422180, 14.865436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.878839, 11.533044, 14.975306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234894, 0.955765, -0.177026,
		-0.311589, 0.098473, 0.945101,
		0.920726, 0.277158, 0.274675,
		23.155058, 11.616191, 15.057708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.410534, 11.868793, 15.282682>,  <22.510550, 11.422180, 14.865436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.410534, 11.868793, 15.282682> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.791882, 11.958244, 15.201611>,  <23.020689, 12.011915, 15.152967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.791882, 11.958244, 15.201611>,  <22.410534, 11.868793, 15.282682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.791882, 11.958244, 15.201611> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245995, 0.964844, -0.092540,
		0.174859, 0.138083, 0.974863,
		0.953368, 0.223630, -0.202679,
		23.077892, 12.025333, 15.140807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.678419, 12.474266, 15.655612>,  <22.410534, 11.868793, 15.282682>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.678419, 12.474266, 15.655612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.909790, 12.448586, 15.330330>,  <23.048613, 12.433179, 15.135160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.909790, 12.448586, 15.330330>,  <22.678419, 12.474266, 15.655612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.909790, 12.448586, 15.330330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181541, 0.961767, -0.205055,
		0.795278, 0.266239, 0.544656,
		0.578425, -0.064198, -0.813205,
		23.083317, 12.429327, 15.086369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.084677, 13.126902, 15.650052>,  <22.678419, 12.474266, 15.655612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.084677, 13.126902, 15.650052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.138222, 12.998545, 15.275009>,  <23.170349, 12.921531, 15.049983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.138222, 12.998545, 15.275009>,  <23.084677, 13.126902, 15.650052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.138222, 12.998545, 15.275009> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010658, 0.945603, -0.325149,
		0.990943, 0.053519, 0.123160,
		0.133863, -0.320892, -0.937608,
		23.178381, 12.902277, 14.993727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.645849, 13.521313, 15.264200>,  <23.084677, 13.126902, 15.650052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.645849, 13.521313, 15.264200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.421782, 13.373021, 14.967884>,  <23.287340, 13.284046, 14.790094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.421782, 13.373021, 14.967884>,  <23.645849, 13.521313, 15.264200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.421782, 13.373021, 14.967884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078890, 0.914076, -0.397796,
		0.824613, -0.164393, -0.541285,
		-0.560170, -0.370730, -0.740790,
		23.253731, 13.261803, 14.745647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.924820, 13.771196, 14.686195>,  <23.645849, 13.521313, 15.264200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.924820, 13.771196, 14.686195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.568428, 13.640738, 14.559842>,  <23.354593, 13.562462, 14.484030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.568428, 13.640738, 14.559842>,  <23.924820, 13.771196, 14.686195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.568428, 13.640738, 14.559842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006324, 0.686733, -0.726882,
		0.453998, -0.649635, -0.609803,
		-0.890980, -0.326147, -0.315884,
		23.301134, 13.542893, 14.465076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.931465, 13.728995, 13.943017>,  <23.924820, 13.771196, 14.686195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.931465, 13.728995, 13.943017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.542789, 13.731784, 14.037484>,  <23.309584, 13.733457, 14.094164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.542789, 13.731784, 14.037484>,  <23.931465, 13.728995, 13.943017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.542789, 13.731784, 14.037484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163140, 0.703242, -0.691980,
		-0.170906, -0.710916, -0.682194,
		-0.971687, 0.006970, 0.236167,
		23.251284, 13.733875, 14.108335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.622532, 13.765144, 13.305789>,  <23.931465, 13.728995, 13.943017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.622532, 13.765144, 13.305789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.332752, 13.878384, 13.557194>,  <23.158884, 13.946327, 13.708036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.332752, 13.878384, 13.557194>,  <23.622532, 13.765144, 13.305789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.332752, 13.878384, 13.557194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290352, 0.701627, -0.650704,
		-0.625195, -0.653892, -0.426095,
		-0.724450, 0.283099, 0.628512,
		23.115417, 13.963313, 13.745748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.032194, 13.739677, 12.924765>,  <23.622532, 13.765144, 13.305789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.032194, 13.739677, 12.924765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.984814, 14.005808, 13.219603>,  <22.956385, 14.165486, 13.396505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.984814, 14.005808, 13.219603>,  <23.032194, 13.739677, 12.924765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.984814, 14.005808, 13.219603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285094, 0.688278, -0.667079,
		-0.951152, -0.289159, 0.108152,
		-0.118453, 0.665327, 0.737095,
		22.949278, 14.205406, 13.440731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.435167, 14.058801, 12.722765>,  <23.032194, 13.739677, 12.924765>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.435167, 14.058801, 12.722765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.558760, 14.299973, 13.016977>,  <22.632915, 14.444677, 13.193504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.558760, 14.299973, 13.016977>,  <22.435167, 14.058801, 12.722765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.558760, 14.299973, 13.016977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457145, 0.772326, -0.441056,
		-0.833996, -0.199967, 0.514261,
		0.308980, 0.602931, 0.735531,
		22.651453, 14.480853, 13.237637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.765394, 14.450841, 13.114798>,  <22.435167, 14.058801, 12.722765>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.765394, 14.450841, 13.114798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.103508, 14.659381, 13.161603>,  <22.306376, 14.784505, 13.189686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.103508, 14.659381, 13.161603>,  <21.765394, 14.450841, 13.114798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.103508, 14.659381, 13.161603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459273, 0.820843, -0.339536,
		-0.273066, 0.233263, 0.933286,
		0.845283, 0.521349, 0.117012,
		22.357094, 14.815785, 13.196707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.638590, 15.022221, 13.633401>,  <21.765394, 14.450841, 13.114798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.638590, 15.022221, 13.633401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.949518, 15.106683, 13.396357>,  <22.136074, 15.157360, 13.254130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.949518, 15.106683, 13.396357>,  <21.638590, 15.022221, 13.633401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.949518, 15.106683, 13.396357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519795, 0.746202, -0.415927,
		0.354383, 0.631344, 0.689795,
		0.777320, 0.211154, -0.592611,
		22.182714, 15.170029, 13.218574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.646204, 15.744437, 13.635798>,  <21.638590, 15.022221, 13.633401>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.646204, 15.744437, 13.635798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.852373, 15.610250, 13.320382>,  <21.976074, 15.529737, 13.131132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.852373, 15.610250, 13.320382>,  <21.646204, 15.744437, 13.635798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.852373, 15.610250, 13.320382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518077, 0.610990, -0.598571,
		0.682594, 0.717043, 0.141120,
		0.515424, -0.335470, -0.788542,
		22.007000, 15.509608, 13.083819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<19.773092, 19.841560, 17.451168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.447447, 19.773010, 17.673105>,  <19.252060, 19.731880, 17.806267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.447447, 19.773010, 17.673105>,  <19.773092, 19.841560, 17.451168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.447447, 19.773010, 17.673105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066240, -0.921818, -0.381920,
		0.576915, -0.347679, 0.739113,
		-0.814114, -0.171376, 0.554841,
		19.203213, 19.721598, 17.839558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.942888, 19.189308, 17.881714>,  <19.773092, 19.841560, 17.451168>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.942888, 19.189308, 17.881714> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.544397, 19.220116, 17.865721>,  <19.305304, 19.238600, 17.856125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.544397, 19.220116, 17.865721>,  <19.942888, 19.189308, 17.881714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.544397, 19.220116, 17.865721> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045331, -0.854761, -0.517038,
		-0.073999, -0.513275, 0.855028,
		-0.996228, 0.077020, -0.039984,
		19.245529, 19.243221, 17.853725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.698240, 18.660292, 18.268105>,  <19.942888, 19.189308, 17.881714>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.698240, 18.660292, 18.268105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.396873, 18.760725, 18.025019>,  <19.216053, 18.820986, 17.879168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.396873, 18.760725, 18.025019>,  <19.698240, 18.660292, 18.268105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.396873, 18.760725, 18.025019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001336, -0.924806, -0.380437,
		-0.657541, -0.285816, 0.697100,
		-0.753417, 0.251084, -0.607716,
		19.170849, 18.836050, 17.842703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.236609, 18.168623, 18.329590>,  <19.698240, 18.660292, 18.268105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.236609, 18.168623, 18.329590> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.086174, 18.347607, 18.005037>,  <18.995913, 18.454996, 17.810307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.086174, 18.347607, 18.005037>,  <19.236609, 18.168623, 18.329590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.086174, 18.347607, 18.005037> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287811, -0.888767, -0.356732,
		-0.880750, 0.099360, 0.463041,
		-0.376091, 0.447460, -0.811379,
		18.973347, 18.481844, 17.761623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.532242, 17.998108, 18.336357>,  <19.236609, 18.168623, 18.329590>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.532242, 17.998108, 18.336357> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.671968, 18.078728, 17.970329>,  <18.755804, 18.127100, 17.750711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.671968, 18.078728, 17.970329>,  <18.532242, 17.998108, 18.336357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.671968, 18.078728, 17.970329> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295183, -0.903195, -0.311618,
		-0.889295, 0.378967, -0.256006,
		0.349316, 0.201551, -0.915071,
		18.776764, 18.139193, 17.695808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.947859, 17.983433, 17.920834>,  <18.532242, 17.998108, 18.336357>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.947859, 17.983433, 17.920834> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.241924, 17.939121, 17.653322>,  <18.418364, 17.912535, 17.492815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.241924, 17.939121, 17.653322>,  <17.947859, 17.983433, 17.920834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.241924, 17.939121, 17.653322> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416071, -0.852608, -0.316141,
		-0.535182, 0.510674, -0.672898,
		0.735163, -0.110780, -0.668777,
		18.462473, 17.905888, 17.452688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.570505, 17.791630, 17.400326>,  <17.947859, 17.983433, 17.920834>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.570505, 17.791630, 17.400326> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.949705, 17.713469, 17.299839>,  <18.177225, 17.666571, 17.239548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.949705, 17.713469, 17.299839>,  <17.570505, 17.791630, 17.400326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.949705, 17.713469, 17.299839> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270035, -0.911603, -0.309938,
		-0.168447, 0.361659, -0.916967,
		0.948002, -0.195405, -0.251217,
		18.234106, 17.654846, 17.224474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.520380, 17.735037, 16.694376>,  <17.570505, 17.791630, 17.400326>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.520380, 17.735037, 16.694376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.840143, 17.515509, 16.792147>,  <18.032001, 17.383791, 16.850809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.840143, 17.515509, 16.792147>,  <17.520380, 17.735037, 16.694376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.840143, 17.515509, 16.792147> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403797, -0.792059, -0.457812,
		0.444856, 0.267280, -0.854789,
		0.799407, -0.548821, 0.244425,
		18.079966, 17.350863, 16.865475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.817770, 17.480286, 16.085199>,  <17.520380, 17.735037, 16.694376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.817770, 17.480286, 16.085199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.959564, 17.227440, 16.360813>,  <18.044640, 17.075733, 16.526182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.959564, 17.227440, 16.360813>,  <17.817770, 17.480286, 16.085199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.959564, 17.227440, 16.360813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275937, -0.774789, -0.568824,
		0.893420, 0.011509, -0.449074,
		0.354484, -0.632115, 0.689037,
		18.065910, 17.037806, 16.567524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.108816, 16.945585, 15.723149>,  <17.817770, 17.480286, 16.085199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.108816, 16.945585, 15.723149> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.059799, 16.770655, 16.079515>,  <18.030390, 16.665697, 16.293335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.059799, 16.770655, 16.079515>,  <18.108816, 16.945585, 15.723149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.059799, 16.770655, 16.079515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108649, -0.886374, -0.450040,
		0.986498, -0.151946, 0.061102,
		-0.122541, -0.437325, 0.890916,
		18.023037, 16.639458, 16.346790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.429031, 16.187880, 15.591244>,  <18.108816, 16.945585, 15.723149>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.429031, 16.187880, 15.591244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.234766, 16.142300, 15.937919>,  <18.118206, 16.114952, 16.145924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.234766, 16.142300, 15.937919>,  <18.429031, 16.187880, 15.591244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.234766, 16.142300, 15.937919> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441847, -0.823485, -0.355869,
		0.754255, -0.555776, 0.349588,
		-0.485664, -0.113951, 0.866687,
		18.089067, 16.108114, 16.197926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.642977, 15.577988, 15.863741>,  <18.429031, 16.187880, 15.591244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.642977, 15.577988, 15.863741> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.283190, 15.632304, 16.029882>,  <18.067318, 15.664894, 16.129568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.283190, 15.632304, 16.029882>,  <18.642977, 15.577988, 15.863741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.283190, 15.632304, 16.029882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275599, -0.913902, -0.298039,
		0.339122, -0.382548, 0.859450,
		-0.899467, 0.135792, 0.415354,
		18.013350, 15.673042, 16.154490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.550940, 14.994344, 16.265949>,  <18.642977, 15.577988, 15.863741>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.550940, 14.994344, 16.265949> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.203362, 15.164272, 16.164392>,  <17.994814, 15.266230, 16.103458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.203362, 15.164272, 16.164392>,  <18.550940, 14.994344, 16.265949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.203362, 15.164272, 16.164392> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335526, -0.882794, -0.328782,
		-0.363807, -0.200506, 0.909638,
		-0.868946, 0.424821, -0.253892,
		17.942678, 15.291718, 16.088224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.985952, 14.514684, 16.521706>,  <18.550940, 14.994344, 16.265949>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.985952, 14.514684, 16.521706> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.895489, 14.748178, 16.209782>,  <17.841209, 14.888275, 16.022627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.895489, 14.748178, 16.209782>,  <17.985952, 14.514684, 16.521706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.895489, 14.748178, 16.209782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205295, -0.811133, -0.547647,
		-0.952211, 0.036235, 0.303284,
		-0.226160, 0.583738, -0.779809,
		17.827641, 14.923300, 15.975839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.410406, 13.970446, 16.421604>,  <17.985952, 14.514684, 16.521706>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.410406, 13.970446, 16.421604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.683704, 13.681699, 16.465572>,  <17.847683, 13.508451, 16.491953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.683704, 13.681699, 16.465572>,  <17.410406, 13.970446, 16.421604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.683704, 13.681699, 16.465572> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223565, 0.350114, 0.909636,
		-0.695120, -0.596932, 0.400598,
		0.683247, -0.721867, 0.109918,
		17.888678, 13.465138, 16.498549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.281792, 13.651192, 17.105528>,  <17.410406, 13.970446, 16.421604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.281792, 13.651192, 17.105528> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.661850, 13.637612, 16.981544>,  <17.889885, 13.629465, 16.907154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.661850, 13.637612, 16.981544>,  <17.281792, 13.651192, 17.105528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.661850, 13.637612, 16.981544> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300966, 0.359753, 0.883175,
		0.081526, -0.932430, 0.352035,
		0.950144, -0.033949, -0.309959,
		17.946894, 13.627428, 16.888557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.577272, 13.226455, 17.662117>,  <17.281792, 13.651192, 17.105528>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.577272, 13.226455, 17.662117> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.887999, 13.390059, 17.470587>,  <18.074434, 13.488221, 17.355669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.887999, 13.390059, 17.470587>,  <17.577272, 13.226455, 17.662117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.887999, 13.390059, 17.470587> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363550, 0.329578, 0.871326,
		0.514191, -0.850934, 0.107325,
		0.776813, 0.409010, -0.478823,
		18.121042, 13.512761, 17.326941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.067568, 13.171063, 18.096420>,  <17.577272, 13.226455, 17.662117>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.067568, 13.171063, 18.096420> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.218008, 13.466349, 17.872423>,  <18.308273, 13.643519, 17.738026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.218008, 13.466349, 17.872423>,  <18.067568, 13.171063, 18.096420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.218008, 13.466349, 17.872423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190613, 0.529796, 0.826428,
		0.906760, -0.417562, 0.058544,
		0.376102, 0.738213, -0.559991,
		18.330839, 13.687813, 17.704426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.599926, 13.371840, 18.483549>,  <18.067568, 13.171063, 18.096420>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.599926, 13.371840, 18.483549> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.489073, 13.648666, 18.216944>,  <18.422562, 13.814763, 18.056980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.489073, 13.648666, 18.216944>,  <18.599926, 13.371840, 18.483549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.489073, 13.648666, 18.216944> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267405, 0.721832, 0.638322,
		0.922872, -0.001329, -0.385105,
		-0.277132, 0.692068, -0.666513,
		18.405933, 13.856287, 18.016991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.259947, 13.743883, 18.384998>,  <18.599926, 13.371840, 18.483549>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.259947, 13.743883, 18.384998> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.963463, 13.991846, 18.281986>,  <18.785572, 14.140624, 18.220179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.963463, 13.991846, 18.281986>,  <19.259947, 13.743883, 18.384998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.963463, 13.991846, 18.281986> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368957, 0.696722, 0.615182,
		0.560783, 0.360962, -0.745137,
		-0.741210, 0.619907, -0.257530,
		18.741100, 14.177818, 18.204727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.597506, 14.357320, 18.229811>,  <19.259947, 13.743883, 18.384998>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.597506, 14.357320, 18.229811> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.223705, 14.487926, 18.286518>,  <18.999426, 14.566289, 18.320543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.223705, 14.487926, 18.286518>,  <19.597506, 14.357320, 18.229811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.223705, 14.487926, 18.286518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334952, 0.671793, 0.660682,
		0.120482, 0.664893, -0.737157,
		-0.934500, 0.326513, 0.141768,
		18.943356, 14.585879, 18.329048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.586924, 15.085954, 18.145372>,  <19.597506, 14.357320, 18.229811>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.586924, 15.085954, 18.145372> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.256796, 15.024893, 18.362829>,  <19.058720, 14.988256, 18.493303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.256796, 15.024893, 18.362829>,  <19.586924, 15.085954, 18.145372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.256796, 15.024893, 18.362829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251008, 0.763232, 0.595375,
		-0.505811, 0.627833, -0.591593,
		-0.825318, -0.152652, 0.543642,
		19.009201, 14.979097, 18.525923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.216640, 15.676165, 18.127596>,  <19.586924, 15.085954, 18.145372>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.216640, 15.676165, 18.127596> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.090141, 15.494370, 18.460686>,  <19.014242, 15.385292, 18.660540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.090141, 15.494370, 18.460686>,  <19.216640, 15.676165, 18.127596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.090141, 15.494370, 18.460686> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038980, 0.870807, 0.490077,
		-0.947875, 0.187446, -0.257676,
		-0.316249, -0.454488, 0.832723,
		18.995266, 15.358024, 18.710503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.761578, 16.135256, 18.418709>,  <19.216640, 15.676165, 18.127596>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.761578, 16.135256, 18.418709> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.850864, 15.892519, 18.723843>,  <18.904436, 15.746877, 18.906923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.850864, 15.892519, 18.723843>,  <18.761578, 16.135256, 18.418709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.850864, 15.892519, 18.723843> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014758, 0.780387, 0.625122,
		-0.974657, -0.150796, 0.165240,
		0.223217, -0.606842, 0.762835,
		18.917830, 15.710466, 18.952694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.277918, 16.268223, 18.911068>,  <18.761578, 16.135256, 18.418709>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.277918, 16.268223, 18.911068> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.578211, 16.105738, 19.119450>,  <18.758387, 16.008245, 19.244478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.578211, 16.105738, 19.119450>,  <18.277918, 16.268223, 18.911068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.578211, 16.105738, 19.119450> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121409, 0.690324, 0.713241,
		-0.649355, -0.598701, 0.468930,
		0.750731, -0.406214, 0.520953,
		18.803431, 15.983873, 19.275736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.216042, 16.378811, 19.545218>,  <18.277918, 16.268223, 18.911068>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.216042, 16.378811, 19.545218> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.602613, 16.280502, 19.575176>,  <18.834557, 16.221518, 19.593151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.602613, 16.280502, 19.575176>,  <18.216042, 16.378811, 19.545218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.602613, 16.280502, 19.575176> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083047, 0.574668, 0.814162,
		-0.243137, -0.780611, 0.575787,
		0.966430, -0.245770, 0.074896,
		18.892542, 16.206772, 19.597645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.326759, 16.234245, 20.283619>,  <18.216042, 16.378811, 19.545218>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.326759, 16.234245, 20.283619> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.688433, 16.313211, 20.132105>,  <18.905437, 16.360592, 20.041197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.688433, 16.313211, 20.132105>,  <18.326759, 16.234245, 20.283619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.688433, 16.313211, 20.132105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178980, 0.630081, 0.755622,
		0.387838, -0.751016, 0.534375,
		0.904184, 0.197417, -0.378786,
		18.959688, 16.372437, 20.018469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.663889, 16.209385, 20.852896>,  <18.326759, 16.234245, 20.283619>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.663889, 16.209385, 20.852896> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.863043, 16.414576, 20.573191>,  <18.982536, 16.537689, 20.405369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.863043, 16.414576, 20.573191>,  <18.663889, 16.209385, 20.852896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.863043, 16.414576, 20.573191> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097592, 0.768042, 0.632920,
		0.861734, -0.383364, 0.332334,
		0.497886, 0.512976, -0.699261,
		19.012409, 16.568468, 20.363413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.042362, 15.526715, 21.202721>,  <18.663889, 16.209385, 20.852896>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.042362, 15.526715, 21.202721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.793776, 15.535102, 21.515984>,  <18.644623, 15.540134, 21.703941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.793776, 15.535102, 21.515984>,  <19.042362, 15.526715, 21.202721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.793776, 15.535102, 21.515984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529766, -0.747695, -0.400374,
		0.577169, -0.663711, 0.475777,
		-0.621469, 0.020967, 0.783158,
		18.607334, 15.541392, 21.750931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.963591, 14.852869, 21.596298>,  <19.042362, 15.526715, 21.202721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.963591, 14.852869, 21.596298> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.629208, 15.062341, 21.661947>,  <18.428577, 15.188024, 21.701336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.629208, 15.062341, 21.661947>,  <18.963591, 14.852869, 21.596298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.629208, 15.062341, 21.661947> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546934, -0.819604, -0.170623,
		0.045162, -0.232397, 0.971572,
		-0.835957, 0.523680, 0.164121,
		18.378420, 15.219444, 21.711184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.524315, 14.364312, 21.868687>,  <18.963591, 14.852869, 21.596298>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.524315, 14.364312, 21.868687> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.238203, 14.630375, 21.782953>,  <18.066536, 14.790012, 21.731512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.238203, 14.630375, 21.782953>,  <18.524315, 14.364312, 21.868687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.238203, 14.630375, 21.782953> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617302, -0.745144, -0.252385,
		-0.327587, -0.048217, 0.943590,
		-0.715280, 0.665158, -0.214335,
		18.023619, 14.829923, 21.718653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.002335, 14.220377, 22.196281>,  <18.524315, 14.364312, 21.868687>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.002335, 14.220377, 22.196281> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.851057, 14.423105, 21.886415>,  <17.760290, 14.544743, 21.700497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.851057, 14.423105, 21.886415>,  <18.002335, 14.220377, 22.196281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.851057, 14.423105, 21.886415> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659271, -0.734912, -0.158956,
		-0.649871, 0.450596, 0.612070,
		-0.378193, 0.506821, -0.774663,
		17.737598, 14.575151, 21.654016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.280149, 14.121984, 22.295326>,  <18.002335, 14.220377, 22.196281>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.280149, 14.121984, 22.295326> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.304211, 14.237335, 21.913076>,  <17.318647, 14.306546, 21.683727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.304211, 14.237335, 21.913076>,  <17.280149, 14.121984, 22.295326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.304211, 14.237335, 21.913076> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713020, -0.657570, -0.243317,
		-0.698558, 0.696016, 0.166066,
		0.060152, 0.288380, -0.955625,
		17.322256, 14.323849, 21.626389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.656631, 14.258374, 22.181726>,  <17.280149, 14.121984, 22.295326>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.656631, 14.258374, 22.181726> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.818966, 14.198814, 21.821032>,  <16.916367, 14.163078, 21.604614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.818966, 14.198814, 21.821032>,  <16.656631, 14.258374, 22.181726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.818966, 14.198814, 21.821032> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699722, -0.685336, -0.201752,
		-0.587951, 0.712842, -0.382322,
		0.405837, -0.148899, -0.901735,
		16.940718, 14.154145, 21.550510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.052755, 14.344939, 21.712097>,  <16.656631, 14.258374, 22.181726>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.052755, 14.344939, 21.712097> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.338736, 14.150165, 21.511402>,  <16.510324, 14.033299, 21.390985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.338736, 14.150165, 21.511402>,  <16.052755, 14.344939, 21.712097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.338736, 14.150165, 21.511402> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691563, -0.598110, -0.404976,
		-0.102895, 0.636519, -0.764366,
		0.714950, -0.486937, -0.501736,
		16.553221, 14.004084, 21.360882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.702312, 14.225846, 21.100431>,  <16.052755, 14.344939, 21.712097>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.702312, 14.225846, 21.100431> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.007524, 13.967800, 21.116461>,  <16.190653, 13.812972, 21.126078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.007524, 13.967800, 21.116461>,  <15.702312, 14.225846, 21.100431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.007524, 13.967800, 21.116461> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621266, -0.749107, -0.229929,
		0.178350, 0.150548, -0.972382,
		0.763033, -0.645116, 0.040073,
		16.236435, 13.774265, 21.128483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.561382, 13.716375, 20.549353>,  <15.702312, 14.225846, 21.100431>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.561382, 13.716375, 20.549353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.816742, 13.500648, 20.769018>,  <15.969958, 13.371211, 20.900818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.816742, 13.500648, 20.769018>,  <15.561382, 13.716375, 20.549353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.816742, 13.500648, 20.769018> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520030, -0.828223, -0.208845,
		0.567463, -0.152254, -0.809200,
		0.638400, -0.539320, 0.549162,
		16.008263, 13.338852, 20.933767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.696761, 13.137143, 20.170567>,  <15.561382, 13.716375, 20.549353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.696761, 13.137143, 20.170567> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.792511, 13.043339, 20.547440>,  <15.849960, 12.987056, 20.773563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.792511, 13.043339, 20.547440>,  <15.696761, 13.137143, 20.170567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.792511, 13.043339, 20.547440> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451045, -0.886187, -0.105980,
		0.859801, -0.399597, -0.317905,
		0.239374, -0.234511, 0.942181,
		15.864323, 12.972985, 20.830093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.996617, 12.507833, 20.009525>,  <15.696761, 13.137143, 20.170567>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.996617, 12.507833, 20.009525> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.901887, 12.527268, 20.397659>,  <15.845049, 12.538930, 20.630541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.901887, 12.527268, 20.397659>,  <15.996617, 12.507833, 20.009525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.901887, 12.527268, 20.397659> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355074, -0.933987, -0.039893,
		0.904343, -0.353988, 0.238444,
		-0.236826, 0.048589, 0.970336,
		15.830839, 12.541845, 20.688761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.216333, 11.892431, 20.365229>,  <15.996617, 12.507833, 20.009525>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.216333, 11.892431, 20.365229> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.906962, 12.040168, 20.571297>,  <15.721340, 12.128810, 20.694937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.906962, 12.040168, 20.571297>,  <16.216333, 11.892431, 20.365229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.906962, 12.040168, 20.571297> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511044, -0.844143, -0.162038,
		0.375028, -0.388598, 0.841632,
		-0.773426, 0.369342, 0.515168,
		15.674934, 12.150970, 20.725847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<20.700855, 20.012707, 25.479057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.002455, 19.750286, 25.492233>,  <21.183414, 19.592834, 25.500139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.002455, 19.750286, 25.492233>,  <20.700855, 20.012707, 25.479057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.002455, 19.750286, 25.492233> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439571, -0.541190, -0.716861,
		0.488126, 0.526031, -0.696437,
		0.753996, -0.656052, 0.032941,
		21.228653, 19.553471, 25.502115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.974728, 19.925316, 24.759626>,  <20.700855, 20.012707, 25.479057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.974728, 19.925316, 24.759626> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.047873, 19.583590, 24.954235>,  <21.091761, 19.378553, 25.071001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.047873, 19.583590, 24.954235>,  <20.974728, 19.925316, 24.759626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.047873, 19.583590, 24.954235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262270, -0.519323, -0.813338,
		0.947510, 0.021130, -0.319027,
		0.182864, -0.854317, 0.486521,
		21.102732, 19.327295, 25.100191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.098270, 19.387037, 24.242113>,  <20.974728, 19.925316, 24.759626>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.098270, 19.387037, 24.242113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.002485, 19.175270, 24.567657>,  <20.945015, 19.048210, 24.762985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.002485, 19.175270, 24.567657>,  <21.098270, 19.387037, 24.242113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.002485, 19.175270, 24.567657> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503329, -0.649123, -0.570350,
		0.830252, -0.546218, -0.111033,
		-0.239461, -0.529420, 0.813863,
		20.930647, 19.016443, 24.811817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.285854, 18.664333, 24.009293>,  <21.098270, 19.387037, 24.242113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.285854, 18.664333, 24.009293> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.019255, 18.643845, 24.306789>,  <20.859295, 18.631552, 24.485289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.019255, 18.643845, 24.306789>,  <21.285854, 18.664333, 24.009293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.019255, 18.643845, 24.306789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551713, -0.637071, -0.538288,
		0.501388, -0.769102, 0.396349,
		-0.666500, -0.051220, 0.743743,
		20.819305, 18.628479, 24.529913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.357153, 17.992044, 24.043457>,  <21.285854, 18.664333, 24.009293>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.357153, 17.992044, 24.043457> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.016001, 18.093161, 24.226189>,  <20.811310, 18.153831, 24.335829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.016001, 18.093161, 24.226189>,  <21.357153, 17.992044, 24.043457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.016001, 18.093161, 24.226189> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488064, -0.696800, -0.525608,
		0.185450, -0.671242, 0.717665,
		-0.852879, 0.252792, 0.456831,
		20.760138, 18.168999, 24.363237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.139477, 17.315725, 24.305372>,  <21.357153, 17.992044, 24.043457>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.139477, 17.315725, 24.305372> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.834967, 17.573408, 24.275826>,  <20.652260, 17.728018, 24.258099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.834967, 17.573408, 24.275826>,  <21.139477, 17.315725, 24.305372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.834967, 17.573408, 24.275826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534869, -0.688263, -0.490111,
		-0.366572, -0.333601, 0.868524,
		-0.761275, 0.644208, -0.073865,
		20.606585, 17.766670, 24.253666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.454885, 16.934216, 24.636490>,  <21.139477, 17.315725, 24.305372>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.454885, 16.934216, 24.636490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.326742, 17.227583, 24.396667>,  <20.249857, 17.403603, 24.252773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.326742, 17.227583, 24.396667>,  <20.454885, 16.934216, 24.636490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.326742, 17.227583, 24.396667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576008, -0.653282, -0.491364,
		-0.752055, 0.187937, 0.631738,
		-0.320357, 0.733418, -0.599557,
		20.230635, 17.447609, 24.216801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.731022, 16.821445, 24.609379>,  <20.454885, 16.934216, 24.636490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.731022, 16.821445, 24.609379> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.790602, 17.047291, 24.284657>,  <19.826349, 17.182798, 24.089823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.790602, 17.047291, 24.284657>,  <19.731022, 16.821445, 24.609379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.790602, 17.047291, 24.284657> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651477, -0.561574, -0.510111,
		-0.743903, 0.604854, 0.284184,
		0.148952, 0.564612, -0.811804,
		19.835287, 17.216675, 24.041115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.008583, 16.902044, 24.311651>,  <19.731022, 16.821445, 24.609379>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.008583, 16.902044, 24.311651> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.283432, 16.983406, 24.032656>,  <19.448341, 17.032223, 23.865259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.283432, 16.983406, 24.032656>,  <19.008583, 16.902044, 24.311651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.283432, 16.983406, 24.032656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499474, -0.564927, -0.656797,
		-0.527625, 0.799678, -0.286580,
		0.687123, 0.203403, -0.697488,
		19.489569, 17.044428, 23.823410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.627911, 17.174936, 23.938419>,  <19.008583, 16.902044, 24.311651>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.627911, 17.174936, 23.938419> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.934166, 17.053247, 23.711706>,  <19.117920, 16.980234, 23.575678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.934166, 17.053247, 23.711706>,  <18.627911, 17.174936, 23.938419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.934166, 17.053247, 23.711706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642785, -0.396054, -0.655720,
		-0.024991, 0.866365, -0.498785,
		0.765639, -0.304224, -0.566785,
		19.163858, 16.961981, 23.541672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.320372, 17.215778, 23.298077>,  <18.627911, 17.174936, 23.938419>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.320372, 17.215778, 23.298077> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.654886, 17.000393, 23.256727>,  <18.855595, 16.871162, 23.231918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.654886, 17.000393, 23.256727>,  <18.320372, 17.215778, 23.298077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.654886, 17.000393, 23.256727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440653, -0.547860, -0.711107,
		0.326269, 0.640241, -0.695442,
		0.836285, -0.538462, -0.103374,
		18.905771, 16.838854, 23.225716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.478477, 17.253923, 22.569859>,  <18.320372, 17.215778, 23.298077>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.478477, 17.253923, 22.569859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.635571, 16.922213, 22.728886>,  <18.729826, 16.723186, 22.824303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.635571, 16.922213, 22.728886>,  <18.478477, 17.253923, 22.569859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.635571, 16.922213, 22.728886> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516698, -0.556589, -0.650563,
		0.760778, 0.050075, -0.647077,
		0.392733, -0.829277, 0.397567,
		18.753391, 16.673429, 22.848156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.450941, 16.862965, 21.962841>,  <18.478477, 17.253923, 22.569859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.450941, 16.862965, 21.962841> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.528620, 16.610800, 22.263472>,  <18.575228, 16.459501, 22.443850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.528620, 16.610800, 22.263472>,  <18.450941, 16.862965, 21.962841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.528620, 16.610800, 22.263472> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518346, -0.716412, -0.466981,
		0.832829, -0.298890, -0.465897,
		0.194198, -0.630412, 0.751577,
		18.586880, 16.421677, 22.488945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.737068, 16.303658, 21.681816>,  <18.450941, 16.862965, 21.962841>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.737068, 16.303658, 21.681816> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.518576, 16.219988, 22.006254>,  <18.387480, 16.169786, 22.200918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.518576, 16.219988, 22.006254>,  <18.737068, 16.303658, 21.681816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.518576, 16.219988, 22.006254> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505876, -0.689404, -0.518471,
		0.667624, -0.693519, 0.270757,
		-0.546230, -0.209174, 0.811098,
		18.354706, 16.157236, 22.249584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.352427, 16.460745, 21.280914>,  <18.737068, 16.303658, 21.681816>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.352427, 16.460745, 21.280914> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.288301, 16.683767, 20.955109>,  <19.249826, 16.817581, 20.759626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.288301, 16.683767, 20.955109>,  <19.352427, 16.460745, 21.280914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.288301, 16.683767, 20.955109> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142756, 0.829606, 0.539791,
		0.976689, -0.029742, -0.212589,
		-0.160311, 0.557556, -0.814513,
		19.240208, 16.851034, 20.710754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.937599, 16.970398, 21.201426>,  <19.352427, 16.460745, 21.280914>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.937599, 16.970398, 21.201426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.663931, 17.145912, 20.968403>,  <19.499729, 17.251221, 20.828588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.663931, 17.145912, 20.968403>,  <19.937599, 16.970398, 21.201426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.663931, 17.145912, 20.968403> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127024, 0.858252, 0.497260,
		0.718173, 0.266213, -0.642930,
		-0.684173, 0.438786, -0.582558,
		19.458679, 17.277548, 20.793636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.220825, 17.571598, 21.020039>,  <19.937599, 16.970398, 21.201426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.220825, 17.571598, 21.020039> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.837072, 17.640781, 20.930889>,  <19.606821, 17.682291, 20.877399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.837072, 17.640781, 20.930889>,  <20.220825, 17.571598, 21.020039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.837072, 17.640781, 20.930889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022190, 0.833837, 0.551565,
		0.281237, 0.524215, -0.803806,
		-0.959382, 0.172957, -0.222874,
		19.549257, 17.692669, 20.864027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.164915, 18.247177, 20.752575>,  <20.220825, 17.571598, 21.020039>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.164915, 18.247177, 20.752575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.802544, 18.143095, 20.886192>,  <19.585121, 18.080647, 20.966364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.802544, 18.143095, 20.886192>,  <20.164915, 18.247177, 20.752575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.802544, 18.143095, 20.886192> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066506, 0.866553, 0.494634,
		-0.418173, 0.425887, -0.802341,
		-0.905930, -0.260203, 0.334045,
		19.530766, 18.065035, 20.986406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.826498, 18.820986, 20.648689>,  <20.164915, 18.247177, 20.752575>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.826498, 18.820986, 20.648689> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.605621, 18.613350, 20.909651>,  <19.473095, 18.488770, 21.066227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.605621, 18.613350, 20.909651>,  <19.826498, 18.820986, 20.648689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.605621, 18.613350, 20.909651> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166407, 0.835402, 0.523844,
		-0.816941, 0.180698, -0.547682,
		-0.552192, -0.519088, 0.652404,
		19.439964, 18.457624, 21.105371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.199202, 19.255444, 20.837606>,  <19.826498, 18.820986, 20.648689>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.199202, 19.255444, 20.837606> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.262577, 19.008560, 21.145880>,  <19.300602, 18.860430, 21.330843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.262577, 19.008560, 21.145880>,  <19.199202, 19.255444, 20.837606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.262577, 19.008560, 21.145880> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015706, 0.778867, 0.626992,
		-0.987244, -0.111444, 0.113709,
		0.158439, -0.617208, 0.770682,
		19.310108, 18.823399, 21.377085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.861223, 19.553349, 21.332830>,  <19.199202, 19.255444, 20.837606>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.861223, 19.553349, 21.332830> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.117651, 19.312838, 21.523617>,  <19.271507, 19.168531, 21.638088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.117651, 19.312838, 21.523617>,  <18.861223, 19.553349, 21.332830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.117651, 19.312838, 21.523617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172184, 0.718300, 0.674090,
		-0.747919, -0.350013, 0.564011,
		0.641069, -0.601279, 0.476964,
		19.309971, 19.132454, 21.666706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.829725, 19.730110, 22.081516>,  <18.861223, 19.553349, 21.332830>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.829725, 19.730110, 22.081516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.171759, 19.522930, 22.072041>,  <19.376978, 19.398623, 22.066355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.171759, 19.522930, 22.072041>,  <18.829725, 19.730110, 22.081516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.171759, 19.522930, 22.072041> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319343, 0.490112, 0.811055,
		-0.408476, -0.701084, 0.584490,
		0.855083, -0.517949, -0.023688,
		19.428284, 19.367546, 22.064934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.050974, 19.713297, 22.681517>,  <18.829725, 19.730110, 22.081516>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.050974, 19.713297, 22.681517> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.400866, 19.618256, 22.512571>,  <19.610800, 19.561232, 22.411203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.400866, 19.618256, 22.512571>,  <19.050974, 19.713297, 22.681517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.400866, 19.618256, 22.512571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444638, 0.740118, 0.504501,
		0.192729, -0.629102, 0.753051,
		0.874730, -0.237603, -0.422365,
		19.663284, 19.546974, 22.385862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.444000, 19.721962, 23.195606>,  <19.050974, 19.713297, 22.681517>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.444000, 19.721962, 23.195606> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.685442, 19.762066, 22.879225>,  <19.830307, 19.786129, 22.689396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.685442, 19.762066, 22.879225>,  <19.444000, 19.721962, 23.195606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.685442, 19.762066, 22.879225> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602523, 0.592333, 0.534891,
		0.522135, -0.799431, 0.297127,
		0.603606, 0.100260, -0.790954,
		19.866524, 19.792145, 22.641939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.109932, 19.770416, 23.456511>,  <19.444000, 19.721962, 23.195606>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.109932, 19.770416, 23.456511> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.180775, 19.938437, 23.100491>,  <20.223280, 20.039248, 22.886879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.180775, 19.938437, 23.100491>,  <20.109932, 19.770416, 23.456511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.180775, 19.938437, 23.100491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629770, 0.646597, 0.430467,
		0.756323, -0.636766, -0.150019,
		0.177105, 0.420049, -0.890052,
		20.233906, 20.064451, 22.833475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.769844, 19.800167, 23.375534>,  <20.109932, 19.770416, 23.456511>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.769844, 19.800167, 23.375534> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.651293, 20.082132, 23.117773>,  <20.580162, 20.251312, 22.963118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.651293, 20.082132, 23.117773>,  <20.769844, 19.800167, 23.375534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.651293, 20.082132, 23.117773> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606670, 0.660064, 0.443022,
		0.737639, -0.259636, -0.623280,
		-0.296380, 0.704915, -0.644401,
		20.562378, 20.293608, 22.924452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.363688, 20.068768, 23.097157>,  <20.769844, 19.800167, 23.375534>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.363688, 20.068768, 23.097157> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.082520, 20.349493, 23.050922>,  <20.913818, 20.517927, 23.023182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.082520, 20.349493, 23.050922>,  <21.363688, 20.068768, 23.097157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.082520, 20.349493, 23.050922> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646591, 0.698219, 0.307262,
		0.296346, 0.141244, -0.944579,
		-0.702922, 0.701812, -0.115588,
		20.871643, 20.560036, 23.016247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.751198, 20.675289, 22.833391>,  <21.363688, 20.068768, 23.097157>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.751198, 20.675289, 22.833391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.402494, 20.817991, 22.967710>,  <21.193272, 20.903612, 23.048302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.402494, 20.817991, 22.967710>,  <21.751198, 20.675289, 22.833391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.402494, 20.817991, 22.967710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489734, 0.654141, 0.576420,
		-0.014017, 0.666951, -0.744969,
		-0.871759, 0.356757, 0.335798,
		21.140966, 20.925018, 23.068449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<16.565126, 21.722183, 24.826689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.960518, 21.698200, 24.771095>,  <17.197752, 21.683811, 24.737740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.960518, 21.698200, 24.771095>,  <16.565126, 21.722183, 24.826689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.960518, 21.698200, 24.771095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145441, -0.630550, -0.762400,
		-0.041925, 0.773829, -0.632005,
		0.988478, -0.059956, -0.138982,
		17.257061, 21.680214, 24.729401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.751019, 21.979084, 24.148952>,  <16.565126, 21.722183, 24.826689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.751019, 21.979084, 24.148952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.025650, 21.718102, 24.277271>,  <17.190430, 21.561512, 24.354263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.025650, 21.718102, 24.277271>,  <16.751019, 21.979084, 24.148952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.025650, 21.718102, 24.277271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223196, -0.609069, -0.761064,
		0.691947, 0.450931, -0.563800,
		0.686580, -0.652454, 0.320798,
		17.231625, 21.522366, 24.373510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.057228, 21.702097, 23.570555>,  <16.751019, 21.979084, 24.148952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.057228, 21.702097, 23.570555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.183458, 21.425741, 23.830734>,  <17.259197, 21.259928, 23.986841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.183458, 21.425741, 23.830734>,  <17.057228, 21.702097, 23.570555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.183458, 21.425741, 23.830734> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277661, -0.722707, -0.632929,
		0.907368, 0.019133, -0.419902,
		0.315576, -0.690890, 0.650448,
		17.278131, 21.218473, 24.025869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.499636, 21.193613, 23.156775>,  <17.057228, 21.702097, 23.570555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.499636, 21.193613, 23.156775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.382862, 20.987963, 23.479376>,  <17.312798, 20.864573, 23.672937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.382862, 20.987963, 23.479376>,  <17.499636, 21.193613, 23.156775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.382862, 20.987963, 23.479376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225249, -0.782560, -0.580398,
		0.929536, -0.351103, 0.112651,
		-0.291936, -0.514126, 0.806503,
		17.295280, 20.833725, 23.721327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.798378, 20.581919, 23.158365>,  <17.499636, 21.193613, 23.156775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.798378, 20.581919, 23.158365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.484636, 20.514986, 23.397293>,  <17.296391, 20.474827, 23.540649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.484636, 20.514986, 23.397293>,  <17.798378, 20.581919, 23.158365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.484636, 20.514986, 23.397293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225593, -0.820047, -0.525957,
		0.577838, -0.547287, 0.605458,
		-0.784353, -0.167331, 0.597319,
		17.249331, 20.464787, 23.576488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.766159, 19.908911, 23.147234>,  <17.798378, 20.581919, 23.158365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.766159, 19.908911, 23.147234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.416502, 20.010668, 23.312721>,  <17.206709, 20.071722, 23.412014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.416502, 20.010668, 23.312721>,  <17.766159, 19.908911, 23.147234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.416502, 20.010668, 23.312721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451789, -0.738528, -0.500463,
		0.178227, -0.624388, 0.760510,
		-0.874141, 0.254393, 0.413717,
		17.154261, 20.086987, 23.436836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.445961, 19.259338, 23.459173>,  <17.766159, 19.908911, 23.147234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.445961, 19.259338, 23.459173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.138914, 19.505163, 23.386419>,  <16.954687, 19.652658, 23.342768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.138914, 19.505163, 23.386419>,  <17.445961, 19.259338, 23.459173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.138914, 19.505163, 23.386419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458947, -0.725168, -0.513321,
		-0.447363, -0.310559, 0.838701,
		-0.767616, 0.614560, -0.181884,
		16.908628, 19.689531, 23.331854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.783907, 18.827103, 23.511028>,  <17.445961, 19.259338, 23.459173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.783907, 18.827103, 23.511028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.698381, 19.159933, 23.306313>,  <16.647066, 19.359632, 23.183483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.698381, 19.159933, 23.306313>,  <16.783907, 18.827103, 23.511028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.698381, 19.159933, 23.306313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623364, -0.519591, -0.584331,
		-0.752131, 0.194094, 0.629783,
		-0.213814, 0.832078, -0.511791,
		16.634237, 19.409557, 23.152775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.053715, 18.804260, 23.357916>,  <16.783907, 18.827103, 23.511028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.053715, 18.804260, 23.357916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.209641, 19.070986, 23.103859>,  <16.303196, 19.231022, 22.951426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.209641, 19.070986, 23.103859>,  <16.053715, 18.804260, 23.357916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.209641, 19.070986, 23.103859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535238, -0.397188, -0.745495,
		-0.749377, 0.630555, 0.202075,
		0.389814, 0.666815, -0.635140,
		16.326584, 19.271030, 22.913317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.520093, 18.929987, 22.869558>,  <16.053715, 18.804260, 23.357916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.520093, 18.929987, 22.869558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.843971, 19.072937, 22.683365>,  <16.038298, 19.158707, 22.571648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.843971, 19.072937, 22.683365>,  <15.520093, 18.929987, 22.869558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.843971, 19.072937, 22.683365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400999, -0.242210, -0.883479,
		-0.428479, 0.902007, -0.052808,
		0.809695, 0.357376, -0.465485,
		16.086880, 19.180149, 22.543718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.276645, 19.308477, 22.308784>,  <15.520093, 18.929987, 22.869558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.276645, 19.308477, 22.308784> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.645753, 19.190559, 22.209517>,  <15.867218, 19.119808, 22.149956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.645753, 19.190559, 22.209517>,  <15.276645, 19.308477, 22.308784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.645753, 19.190559, 22.209517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332336, -0.282827, -0.899756,
		0.195053, 0.912746, -0.358955,
		0.922771, -0.294794, -0.248172,
		15.922585, 19.102121, 22.135065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.304300, 19.573814, 21.693489>,  <15.276645, 19.308477, 22.308784>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.304300, 19.573814, 21.693489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.594654, 19.300453, 21.724609>,  <15.768867, 19.136436, 21.743280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.594654, 19.300453, 21.724609>,  <15.304300, 19.573814, 21.693489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.594654, 19.300453, 21.724609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285827, -0.402591, -0.869611,
		0.625617, 0.609000, -0.487569,
		0.725884, -0.683403, 0.077799,
		15.812419, 19.095432, 21.747950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.641783, 19.590157, 21.062374>,  <15.304300, 19.573814, 21.693489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.641783, 19.590157, 21.062374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.710165, 19.246428, 21.255180>,  <15.751195, 19.040190, 21.370863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.710165, 19.246428, 21.255180>,  <15.641783, 19.590157, 21.062374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.710165, 19.246428, 21.255180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460585, -0.502173, -0.731904,
		0.870997, -0.096885, -0.481641,
		0.170956, -0.859323, 0.482015,
		15.761452, 18.988630, 21.399784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.582595, 19.082178, 20.576740>,  <15.641783, 19.590157, 21.062374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.582595, 19.082178, 20.576740> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.567004, 18.825583, 20.883196>,  <15.557650, 18.671625, 21.067070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.567004, 18.825583, 20.883196>,  <15.582595, 19.082178, 20.576740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.567004, 18.825583, 20.883196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291587, -0.726052, -0.622757,
		0.955750, -0.247670, -0.158750,
		-0.038977, -0.641489, 0.766141,
		15.555311, 18.633135, 21.113039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.219343, 19.177439, 20.118532>,  <15.582595, 19.082178, 20.576740>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.219343, 19.177439, 20.118532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.202072, 19.341663, 19.754208>,  <16.191710, 19.440199, 19.535614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.202072, 19.341663, 19.754208>,  <16.219343, 19.177439, 20.118532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.202072, 19.341663, 19.754208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320466, 0.869178, 0.376604,
		0.946275, -0.275623, -0.169100,
		-0.043177, 0.410562, -0.910810,
		16.189119, 19.464832, 19.480965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.930607, 19.461630, 20.122948>,  <16.219343, 19.177439, 20.118532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.930607, 19.461630, 20.122948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.706810, 19.640427, 19.843760>,  <16.572531, 19.747705, 19.676247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.706810, 19.640427, 19.843760>,  <16.930607, 19.461630, 20.122948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.706810, 19.640427, 19.843760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114601, 0.875744, 0.468977,
		0.820873, 0.182401, -0.541200,
		-0.559494, 0.446993, -0.697971,
		16.538961, 19.774525, 19.634369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.383062, 19.964828, 19.654131>,  <16.930607, 19.461630, 20.122948>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.383062, 19.964828, 19.654131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.993069, 20.053621, 19.658730>,  <16.759073, 20.106897, 19.661488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.993069, 20.053621, 19.658730>,  <17.383062, 19.964828, 19.654131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.993069, 20.053621, 19.658730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204764, 0.876825, 0.435028,
		0.086489, 0.426499, -0.900344,
		-0.974983, 0.221983, 0.011495,
		16.700573, 20.120216, 19.662178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.298561, 20.661589, 19.309704>,  <17.383062, 19.964828, 19.654131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.298561, 20.661589, 19.309704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.982048, 20.591602, 19.544058>,  <16.792141, 20.549610, 19.684669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.982048, 20.591602, 19.544058>,  <17.298561, 20.661589, 19.309704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.982048, 20.591602, 19.544058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071121, 0.925344, 0.372398,
		-0.607301, 0.336341, -0.719764,
		-0.791282, -0.174968, 0.585883,
		16.744663, 20.539112, 19.719822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.876551, 21.268774, 19.202784>,  <17.298561, 20.661589, 19.309704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.876551, 21.268774, 19.202784> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.749897, 21.099974, 19.542585>,  <16.673904, 20.998693, 19.746466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.749897, 21.099974, 19.542585>,  <16.876551, 21.268774, 19.202784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.749897, 21.099974, 19.542585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044637, 0.901222, 0.431053,
		-0.947496, 0.098568, -0.304195,
		-0.316635, -0.422000, 0.849505,
		16.654907, 20.973373, 19.797438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.321125, 21.699829, 19.509169>,  <16.876551, 21.268774, 19.202784>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.321125, 21.699829, 19.509169> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.449713, 21.486227, 19.821960>,  <16.526865, 21.358065, 20.009636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.449713, 21.486227, 19.821960>,  <16.321125, 21.699829, 19.509169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.449713, 21.486227, 19.821960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039038, 0.817640, 0.574405,
		-0.946115, -0.215181, 0.241999,
		0.321469, -0.534006, 0.781981,
		16.546154, 21.326025, 20.056555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.822468, 21.933708, 20.135351>,  <16.321125, 21.699829, 19.509169>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.822468, 21.933708, 20.135351> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.150326, 21.762724, 20.287909>,  <16.347040, 21.660133, 20.379442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.150326, 21.762724, 20.287909>,  <15.822468, 21.933708, 20.135351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.150326, 21.762724, 20.287909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107142, 0.768391, 0.630948,
		-0.562765, -0.476289, 0.675606,
		0.819644, -0.427461, 0.381393,
		16.396219, 21.634485, 20.402327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.668317, 22.105051, 20.871845>,  <15.822468, 21.933708, 20.135351>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.668317, 22.105051, 20.871845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.060949, 22.033468, 20.898596>,  <16.296530, 21.990519, 20.914646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.060949, 22.033468, 20.898596>,  <15.668317, 22.105051, 20.871845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.060949, 22.033468, 20.898596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056182, 0.604983, 0.794254,
		-0.182596, -0.775868, 0.603894,
		0.981582, -0.178955, 0.066878,
		16.355423, 21.979782, 20.918659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.900007, 22.092249, 21.659904>,  <15.668317, 22.105051, 20.871845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.900007, 22.092249, 21.659904> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.237017, 22.122133, 21.446524>,  <16.439222, 22.140064, 21.318495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.237017, 22.122133, 21.446524>,  <15.900007, 22.092249, 21.659904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.237017, 22.122133, 21.446524> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256375, 0.815352, 0.519108,
		0.473734, -0.574125, 0.667800,
		0.842524, 0.074711, -0.533451,
		16.489775, 22.144547, 21.286488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.503345, 21.930216, 22.051285>,  <15.900007, 22.092249, 21.659904>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.503345, 21.930216, 22.051285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.640978, 22.172129, 21.763996>,  <16.723557, 22.317276, 21.591623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.640978, 22.172129, 21.763996>,  <16.503345, 21.930216, 22.051285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.640978, 22.172129, 21.763996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324488, 0.641208, 0.695385,
		0.881088, -0.472323, 0.024381,
		0.344080, 0.604784, -0.718224,
		16.744202, 22.353563, 21.548529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.155466, 22.145273, 22.283014>,  <16.503345, 21.930216, 22.051285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.155466, 22.145273, 22.283014> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.062670, 22.402946, 21.991478>,  <17.006992, 22.557550, 21.816557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.062670, 22.402946, 21.991478>,  <17.155466, 22.145273, 22.283014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.062670, 22.402946, 21.991478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338268, 0.755944, 0.560467,
		0.912006, -0.116520, -0.393279,
		-0.231991, 0.644183, -0.728840,
		16.993073, 22.596201, 21.772825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.797678, 22.409096, 22.193628>,  <17.155466, 22.145273, 22.283014>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.797678, 22.409096, 22.193628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.533989, 22.678610, 22.060099>,  <17.375774, 22.840319, 21.979980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.533989, 22.678610, 22.060099>,  <17.797678, 22.409096, 22.193628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.533989, 22.678610, 22.060099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433547, 0.703303, 0.563384,
		0.614378, 0.226668, -0.755752,
		-0.659224, 0.673785, -0.333823,
		17.336222, 22.880745, 21.959951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.245031, 22.968870, 22.022066>,  <17.797678, 22.409096, 22.193628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.245031, 22.968870, 22.022066> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.876753, 23.110346, 22.088062>,  <17.655787, 23.195230, 22.127661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.876753, 23.110346, 22.088062>,  <18.245031, 22.968870, 22.022066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.876753, 23.110346, 22.088062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372020, 0.667540, 0.644974,
		0.117981, 0.655206, -0.746181,
		-0.920696, 0.353689, 0.164992,
		17.600544, 23.216452, 22.137560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.324245, 23.636042, 21.852669>,  <18.245031, 22.968870, 22.022066>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.324245, 23.636042, 21.852669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.003275, 23.611351, 22.090088>,  <17.810692, 23.596537, 22.232540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.003275, 23.611351, 22.090088>,  <18.324245, 23.636042, 21.852669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.003275, 23.611351, 22.090088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391265, 0.696588, 0.601396,
		-0.450580, 0.714812, -0.534810,
		-0.802427, -0.061724, 0.593550,
		17.762547, 23.592834, 22.268152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.635231, 23.840569, 21.308109>,  <18.324245, 23.636042, 21.852669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.635231, 23.840569, 21.308109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.033369, 23.802031, 21.309399>,  <19.272251, 23.778908, 21.310173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.033369, 23.802031, 21.309399>,  <18.635231, 23.840569, 21.308109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.033369, 23.802031, 21.309399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059917, -0.644505, -0.762249,
		0.075517, 0.758506, -0.647276,
		0.995343, -0.096346, 0.003224,
		19.331972, 23.773127, 21.310366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.862267, 24.019421, 20.604763>,  <18.635231, 23.840569, 21.308109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.862267, 24.019421, 20.604763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.144934, 23.788473, 20.768353>,  <19.314535, 23.649904, 20.866507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.144934, 23.788473, 20.768353>,  <18.862267, 24.019421, 20.604763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.144934, 23.788473, 20.768353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000387, -0.578335, -0.815799,
		0.707543, 0.576343, -0.408916,
		0.706670, -0.577371, 0.408974,
		19.356936, 23.615261, 20.891045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.316591, 23.856686, 20.054075>,  <18.862267, 24.019421, 20.604763>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.316591, 23.856686, 20.054075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.372850, 23.599239, 20.355000>,  <19.406607, 23.444771, 20.535555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.372850, 23.599239, 20.355000>,  <19.316591, 23.856686, 20.054075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.372850, 23.599239, 20.355000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078638, -0.764728, -0.639537,
		0.986932, 0.030790, -0.158170,
		0.140648, -0.643617, 0.752313,
		19.415045, 23.406155, 20.580694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.846390, 23.416363, 19.814262>,  <19.316591, 23.856686, 20.054075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.846390, 23.416363, 19.814262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.673540, 23.213123, 20.112284>,  <19.569830, 23.091179, 20.291098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.673540, 23.213123, 20.112284>,  <19.846390, 23.416363, 19.814262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.673540, 23.213123, 20.112284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076409, -0.843830, -0.531143,
		0.898572, -0.172590, 0.403461,
		-0.432122, -0.508099, 0.745054,
		19.543903, 23.060694, 20.335800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.250050, 22.858112, 19.812075>,  <19.846390, 23.416363, 19.814262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.250050, 22.858112, 19.812075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.926607, 22.741695, 20.016603>,  <19.732542, 22.671844, 20.139320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.926607, 22.741695, 20.016603>,  <20.250050, 22.858112, 19.812075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.926607, 22.741695, 20.016603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086547, -0.918463, -0.385921,
		0.581948, -0.267805, 0.767865,
		-0.808607, -0.291043, 0.511320,
		19.684025, 22.654383, 20.170000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.455532, 22.188629, 20.211737>,  <20.250050, 22.858112, 19.812075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.455532, 22.188629, 20.211737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.058605, 22.209236, 20.166748>,  <19.820448, 22.221601, 20.139755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.058605, 22.209236, 20.166748>,  <20.455532, 22.188629, 20.211737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.058605, 22.209236, 20.166748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015546, -0.850026, -0.526511,
		-0.122731, -0.524215, 0.842695,
		-0.992318, 0.051519, -0.112474,
		19.760910, 22.224691, 20.133005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.119936, 21.469841, 20.325176>,  <20.455532, 22.188629, 20.211737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.119936, 21.469841, 20.325176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.840029, 21.684658, 20.136749>,  <19.672085, 21.813549, 20.023693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.840029, 21.684658, 20.136749>,  <20.119936, 21.469841, 20.325176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.840029, 21.684658, 20.136749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082657, -0.715860, -0.693334,
		-0.709573, -0.446236, 0.545326,
		-0.699768, 0.537046, -0.471070,
		19.630098, 21.845772, 19.995428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.659958, 20.968525, 20.129063>,  <20.119936, 21.469841, 20.325176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.659958, 20.968525, 20.129063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.556665, 21.275669, 19.894556>,  <19.494690, 21.459955, 19.753853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.556665, 21.275669, 19.894556>,  <19.659958, 20.968525, 20.129063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.556665, 21.275669, 19.894556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273654, -0.640133, -0.717875,
		-0.926515, -0.024942, 0.375429,
		-0.258230, 0.767860, -0.586267,
		19.479197, 21.506027, 19.718676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.944702, 20.910736, 20.001232>,  <19.659958, 20.968525, 20.129063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.944702, 20.910736, 20.001232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.105221, 21.134369, 19.711021>,  <19.201532, 21.268549, 19.536896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.105221, 21.134369, 19.711021>,  <18.944702, 20.910736, 20.001232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.105221, 21.134369, 19.711021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486342, -0.541164, -0.686013,
		-0.776165, 0.628149, 0.054736,
		0.401297, 0.559080, -0.725528,
		19.225611, 21.302094, 19.493362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.337328, 20.984821, 19.577457>,  <18.944702, 20.910736, 20.001232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.337328, 20.984821, 19.577457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.688694, 21.051094, 19.398153>,  <18.899513, 21.090857, 19.290571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.688694, 21.051094, 19.398153>,  <18.337328, 20.984821, 19.577457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.688694, 21.051094, 19.398153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290400, -0.559891, -0.776009,
		-0.379547, 0.811832, -0.443703,
		0.878414, 0.165681, -0.448261,
		18.952219, 21.100798, 19.263676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.186172, 21.183910, 18.923582>,  <18.337328, 20.984821, 19.577457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.186172, 21.183910, 18.923582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.567463, 21.063559, 18.912035>,  <18.796238, 20.991348, 18.905106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.567463, 21.063559, 18.912035>,  <18.186172, 21.183910, 18.923582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.567463, 21.063559, 18.912035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219485, -0.623347, -0.750510,
		0.207816, 0.721742, -0.660228,
		0.953226, -0.300878, -0.028870,
		18.853430, 20.973295, 18.903374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.310993, 21.259005, 18.203646>,  <18.186172, 21.183910, 18.923582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.310993, 21.259005, 18.203646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.600092, 21.036427, 18.367599>,  <18.773552, 20.902880, 18.465971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.600092, 21.036427, 18.367599>,  <18.310993, 21.259005, 18.203646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.600092, 21.036427, 18.367599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043302, -0.628375, -0.776704,
		0.689755, 0.543612, -0.478252,
		0.722747, -0.556445, 0.409885,
		18.816916, 20.869493, 18.490564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.819334, 21.098078, 17.633615>,  <18.310993, 21.259005, 18.203646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.819334, 21.098078, 17.633615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.876293, 20.820156, 17.915602>,  <18.910469, 20.653404, 18.084793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.876293, 20.820156, 17.915602>,  <18.819334, 21.098078, 17.633615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.876293, 20.820156, 17.915602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067666, -0.717388, -0.693380,
		0.987494, 0.051033, -0.149168,
		0.142396, -0.694802, 0.704963,
		18.919012, 20.611715, 18.127090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.361273, 20.633240, 17.397635>,  <18.819334, 21.098078, 17.633615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.361273, 20.633240, 17.397635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.166672, 20.410166, 17.666647>,  <19.049911, 20.276321, 17.828054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.166672, 20.410166, 17.666647>,  <19.361273, 20.633240, 17.397635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.166672, 20.410166, 17.666647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139744, -0.710188, -0.690003,
		0.862430, -0.429672, 0.267576,
		-0.486504, -0.557687, 0.672532,
		19.020721, 20.242859, 17.868406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<5.634900, 21.857336, 6.222135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.031375, 21.868195, 6.170280>,  <6.269261, 21.874710, 6.139167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.031375, 21.868195, 6.170280>,  <5.634900, 21.857336, 6.222135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.031375, 21.868195, 6.170280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053662, 0.812523, 0.580453,
		0.121090, -0.582296, 0.803908,
		0.991190, 0.027148, -0.129636,
		6.328732, 21.876339, 6.131389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.023565, 21.940096, 6.966837>,  <5.634900, 21.857336, 6.222135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.023565, 21.940096, 6.966837> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.277096, 22.058914, 6.681172>,  <6.429214, 22.130205, 6.509773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.277096, 22.058914, 6.681172>,  <6.023565, 21.940096, 6.966837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.277096, 22.058914, 6.681172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451598, 0.607483, 0.653470,
		0.627949, -0.736702, 0.250897,
		0.633829, 0.297041, -0.714162,
		6.467244, 22.148027, 6.466923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.738806, 21.850159, 7.246397>,  <6.023565, 21.940096, 6.966837>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.738806, 21.850159, 7.246397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.828828, 21.586870, 7.533756>,  <6.882841, 21.428896, 7.706172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.828828, 21.586870, 7.533756>,  <6.738806, 21.850159, 7.246397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.828828, 21.586870, 7.533756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009649, -0.735770, -0.677163,
		0.974298, 0.159331, -0.159237,
		0.225055, -0.658222, 0.718397,
		6.896344, 21.389404, 7.749275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.973186, 21.344881, 6.768354>,  <6.738806, 21.850159, 7.246397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.973186, 21.344881, 6.768354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.003918, 21.239666, 7.153043>,  <7.022357, 21.176537, 7.383856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.003918, 21.239666, 7.153043>,  <6.973186, 21.344881, 6.768354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.003918, 21.239666, 7.153043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006897, -0.964690, -0.263298,
		0.997020, 0.013596, -0.075931,
		0.076830, -0.263037, 0.961722,
		7.026967, 21.160755, 7.441560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.535224, 20.883688, 6.851737>,  <6.973186, 21.344881, 6.768354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.535224, 20.883688, 6.851737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.292640, 20.805706, 7.160074>,  <7.147089, 20.758917, 7.345076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.292640, 20.805706, 7.160074>,  <7.535224, 20.883688, 6.851737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.292640, 20.805706, 7.160074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115413, -0.937624, -0.327935,
		0.786692, -0.287845, 0.546133,
		-0.606461, -0.194953, 0.770842,
		7.110701, 20.747221, 7.391326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.568027, 20.176235, 7.160373>,  <7.535224, 20.883688, 6.851737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.568027, 20.176235, 7.160373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.212570, 20.247591, 7.329366>,  <6.999295, 20.290405, 7.430761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.212570, 20.247591, 7.329366>,  <7.568027, 20.176235, 7.160373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.212570, 20.247591, 7.329366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304102, -0.918789, -0.251693,
		0.343272, -0.352143, 0.870724,
		-0.888643, 0.178389, 0.422482,
		6.945977, 20.301107, 7.456110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.319891, 19.531631, 7.269818>,  <7.568027, 20.176235, 7.160373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.319891, 19.531631, 7.269818> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.999722, 19.762392, 7.334944>,  <6.807621, 19.900848, 7.374019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.999722, 19.762392, 7.334944>,  <7.319891, 19.531631, 7.269818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.999722, 19.762392, 7.334944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599319, -0.764792, -0.236452,
		-0.011891, -0.286839, 0.957905,
		-0.800422, 0.576902, 0.162814,
		6.759596, 19.935463, 7.383788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.156044, 19.374889, 7.930681>,  <7.319891, 19.531631, 7.269818>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.156044, 19.374889, 7.930681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.911960, 19.347000, 8.246346>,  <6.765509, 19.330267, 8.435746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.911960, 19.347000, 8.246346>,  <7.156044, 19.374889, 7.930681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.911960, 19.347000, 8.246346> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606339, 0.600015, 0.521857,
		-0.509897, 0.796944, -0.323860,
		-0.610212, -0.069725, 0.789164,
		6.728896, 19.326082, 8.483096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.751119, 19.521700, 8.509710>,  <7.156044, 19.374889, 7.930681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.751119, 19.521700, 8.509710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.738575, 19.849110, 8.739158>,  <7.731050, 20.045555, 8.876825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.738575, 19.849110, 8.739158>,  <7.751119, 19.521700, 8.509710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.738575, 19.849110, 8.739158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366267, -0.524568, 0.768555,
		0.929981, 0.234198, -0.283348,
		-0.031358, 0.818523, 0.573617,
		7.729168, 20.094667, 8.911242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.001725, 19.249361, 9.074391>,  <7.751119, 19.521700, 8.509710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.001725, 19.249361, 9.074391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.924235, 19.620018, 9.203264>,  <7.877741, 19.842413, 9.280588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.924235, 19.620018, 9.203264>,  <8.001725, 19.249361, 9.074391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.924235, 19.620018, 9.203264> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324006, -0.249545, 0.912550,
		0.926008, 0.281174, -0.251895,
		-0.193726, 0.926644, 0.322183,
		7.866117, 19.898010, 9.299919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.412272, 19.419891, 9.665012>,  <8.001725, 19.249361, 9.074391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.412272, 19.419891, 9.665012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.107635, 19.678017, 9.688844>,  <7.924853, 19.832891, 9.703142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.107635, 19.678017, 9.688844>,  <8.412272, 19.419891, 9.665012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.107635, 19.678017, 9.688844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093662, -0.200575, 0.975191,
		0.641252, 0.737118, 0.213198,
		-0.761593, 0.645311, 0.059579,
		7.879158, 19.871611, 9.706717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.475636, 19.762966, 10.283040>,  <8.412272, 19.419891, 9.665012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.475636, 19.762966, 10.283040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.080070, 19.787121, 10.228789>,  <7.842729, 19.801613, 10.196239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.080070, 19.787121, 10.228789>,  <8.475636, 19.762966, 10.283040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.080070, 19.787121, 10.228789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148321, -0.362118, 0.920256,
		0.006457, 0.930174, 0.367062,
		-0.988918, 0.060385, -0.135626,
		7.783394, 19.805237, 10.188102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.214404, 20.024494, 10.845440>,  <8.475636, 19.762966, 10.283040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.214404, 20.024494, 10.845440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.900617, 19.837893, 10.681985>,  <7.712345, 19.725931, 10.583912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.900617, 19.837893, 10.681985>,  <8.214404, 20.024494, 10.845440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.900617, 19.837893, 10.681985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248622, -0.367081, 0.896347,
		-0.568153, 0.804751, 0.171980,
		-0.784467, -0.466505, -0.408637,
		7.665277, 19.697941, 10.559394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.716227, 20.009932, 11.380985>,  <8.214404, 20.024494, 10.845440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.716227, 20.009932, 11.380985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.533441, 19.765484, 11.122461>,  <7.423769, 19.618814, 10.967347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.533441, 19.765484, 11.122461>,  <7.716227, 20.009932, 11.380985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.533441, 19.765484, 11.122461> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569408, -0.357233, 0.740377,
		-0.683342, 0.706341, -0.184733,
		-0.456966, -0.611119, -0.646309,
		7.396351, 19.582148, 10.928569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.053766, 20.194670, 11.482379>,  <7.716227, 20.009932, 11.380985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.053766, 20.194670, 11.482379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.112739, 19.827625, 11.334727>,  <7.148123, 19.607399, 11.246137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.112739, 19.827625, 11.334727>,  <7.053766, 20.194670, 11.482379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.112739, 19.827625, 11.334727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394835, -0.396783, 0.828655,
		-0.906846, 0.023574, -0.420803,
		0.147432, -0.917610, -0.369129,
		7.156969, 19.552341, 11.223989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.430577, 19.731585, 11.517281>,  <7.053766, 20.194670, 11.482379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.430577, 19.731585, 11.517281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.748366, 19.488665, 11.516874>,  <6.939040, 19.342913, 11.516630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.748366, 19.488665, 11.516874>,  <6.430577, 19.731585, 11.517281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.748366, 19.488665, 11.516874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271381, -0.356517, 0.894006,
		-0.543293, -0.709987, -0.448053,
		0.794472, -0.607301, -0.001016,
		6.986708, 19.306475, 11.516569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.165934, 19.048386, 11.686394>,  <6.430577, 19.731585, 11.517281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.165934, 19.048386, 11.686394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.558256, 19.031385, 11.762513>,  <6.793650, 19.021185, 11.808185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.558256, 19.031385, 11.762513>,  <6.165934, 19.048386, 11.686394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.558256, 19.031385, 11.762513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193418, -0.335592, 0.921937,
		0.024681, -0.941048, -0.337371,
		0.980806, -0.042499, 0.190299,
		6.852498, 19.018635, 11.819603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.285078, 18.459269, 11.951581>,  <6.165934, 19.048386, 11.686394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.285078, 18.459269, 11.951581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.617636, 18.654184, 12.058414>,  <6.817171, 18.771133, 12.122513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.617636, 18.654184, 12.058414>,  <6.285078, 18.459269, 11.951581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.617636, 18.654184, 12.058414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001444, -0.478743, 0.877954,
		0.555680, -0.730312, -0.397321,
		0.831395, 0.487287, 0.267082,
		6.867055, 18.800371, 12.138538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.792066, 17.977270, 12.106863>,  <6.285078, 18.459269, 11.951581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.792066, 17.977270, 12.106863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.886476, 18.321144, 12.288073>,  <6.943121, 18.527470, 12.396798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.886476, 18.321144, 12.288073>,  <6.792066, 17.977270, 12.106863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.886476, 18.321144, 12.288073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056129, -0.453356, 0.889560,
		0.970125, -0.235386, -0.058749,
		0.236024, 0.859687, 0.453024,
		6.957283, 18.579050, 12.423980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.228578, 17.785021, 12.550904>,  <6.792066, 17.977270, 12.106863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.228578, 17.785021, 12.550904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.114308, 18.137577, 12.701393>,  <7.045747, 18.349110, 12.791686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.114308, 18.137577, 12.701393>,  <7.228578, 17.785021, 12.550904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.114308, 18.137577, 12.701393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016168, -0.396958, 0.917694,
		0.958191, 0.256078, 0.127651,
		-0.285674, 0.881390, 0.376222,
		7.028606, 18.401995, 12.814260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.679279, 17.930635, 13.231472>,  <7.228578, 17.785021, 12.550904>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.679279, 17.930635, 13.231472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.337967, 18.138861, 13.243654>,  <7.133180, 18.263796, 13.250963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.337967, 18.138861, 13.243654>,  <7.679279, 17.930635, 13.231472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.337967, 18.138861, 13.243654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003128, -0.053295, 0.998574,
		0.521444, 0.852158, 0.043847,
		-0.853280, 0.520563, 0.030455,
		7.081984, 18.295029, 13.252790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.712112, 18.499523, 13.828566>,  <7.679279, 17.930635, 13.231472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.712112, 18.499523, 13.828566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.320853, 18.496866, 13.745443>,  <7.086097, 18.495272, 13.695570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.320853, 18.496866, 13.745443>,  <7.712112, 18.499523, 13.828566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.320853, 18.496866, 13.745443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205322, -0.126361, 0.970503,
		-0.032706, 0.991962, 0.122235,
		-0.978148, -0.006644, -0.207805,
		7.027409, 18.494873, 13.683102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.397683, 18.930826, 14.367930>,  <7.712112, 18.499523, 13.828566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.397683, 18.930826, 14.367930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.130408, 18.679430, 14.208669>,  <6.970044, 18.528593, 14.113111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.130408, 18.679430, 14.208669>,  <7.397683, 18.930826, 14.367930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.130408, 18.679430, 14.208669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208124, -0.355894, 0.911056,
		-0.714291, 0.691621, 0.107000,
		-0.668186, -0.628490, -0.398155,
		6.929952, 18.490883, 14.089222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.857985, 18.971146, 14.931757>,  <7.397683, 18.930826, 14.367930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.857985, 18.971146, 14.931757> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.785556, 18.642708, 14.715233>,  <6.742098, 18.445644, 14.585319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.785556, 18.642708, 14.715233>,  <6.857985, 18.971146, 14.931757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.785556, 18.642708, 14.715233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287225, -0.482259, 0.827603,
		-0.940592, 0.305335, -0.148514,
		-0.181074, -0.821095, -0.541309,
		6.731234, 18.396379, 14.552840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.345750, 18.538477, 15.413515>,  <6.857985, 18.971146, 14.931757>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.345750, 18.538477, 15.413515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.469594, 18.244579, 15.172088>,  <6.543900, 18.068241, 15.027231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.469594, 18.244579, 15.172088>,  <6.345750, 18.538477, 15.413515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.469594, 18.244579, 15.172088> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398454, -0.676591, 0.619241,
		-0.863352, 0.048772, -0.502240,
		0.309609, -0.734743, -0.603569,
		6.562477, 18.024157, 14.991017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.824743, 17.986444, 15.542760>,  <6.345750, 18.538477, 15.413515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.824743, 17.986444, 15.542760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.111742, 17.789118, 15.346052>,  <6.283942, 17.670723, 15.228027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.111742, 17.789118, 15.346052>,  <5.824743, 17.986444, 15.542760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.111742, 17.789118, 15.346052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254253, -0.842763, 0.474453,
		-0.648499, -0.215385, -0.730108,
		0.717498, -0.493314, -0.491769,
		6.326992, 17.641123, 15.198522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.573985, 17.367693, 15.287668>,  <5.824743, 17.986444, 15.542760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.573985, 17.367693, 15.287668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.967539, 17.297359, 15.300644>,  <6.203671, 17.255159, 15.308429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.967539, 17.297359, 15.300644>,  <5.573985, 17.367693, 15.287668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.967539, 17.297359, 15.300644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164532, -0.819323, 0.549216,
		-0.069993, -0.545703, -0.835050,
		0.983885, -0.175834, 0.032439,
		6.262704, 17.244610, 15.310375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.685059, 16.724113, 14.953419>,  <5.573985, 17.367693, 15.287668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.685059, 16.724113, 14.953419> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.990318, 16.782686, 15.205184>,  <6.173474, 16.817831, 15.356243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.990318, 16.782686, 15.205184>,  <5.685059, 16.724113, 14.953419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.990318, 16.782686, 15.205184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207788, -0.866660, 0.453569,
		0.611904, -0.476925, -0.630964,
		0.763150, 0.146433, 0.629412,
		6.219263, 16.826616, 15.394008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.029512, 16.114059, 14.974200>,  <5.685059, 16.724113, 14.953419>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.029512, 16.114059, 14.974200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.151334, 16.290714, 15.311769>,  <6.224428, 16.396708, 15.514310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.151334, 16.290714, 15.311769>,  <6.029512, 16.114059, 14.974200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.151334, 16.290714, 15.311769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045670, -0.891762, 0.450193,
		0.951399, -0.098567, -0.291760,
		0.304555, 0.441638, 0.843920,
		6.242701, 16.423206, 15.564944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.552800, 15.705474, 15.128876>,  <6.029512, 16.114059, 14.974200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.552800, 15.705474, 15.128876> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.454589, 15.859273, 15.484826>,  <6.395662, 15.951552, 15.698397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.454589, 15.859273, 15.484826>,  <6.552800, 15.705474, 15.128876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.454589, 15.859273, 15.484826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049906, -0.921771, 0.384509,
		0.968104, 0.049997, 0.245508,
		-0.245527, 0.384497, 0.889876,
		6.380931, 15.974622, 15.751789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.950966, 15.372185, 15.636337>,  <6.552800, 15.705474, 15.128876>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.950966, 15.372185, 15.636337> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.632830, 15.534480, 15.816474>,  <6.441948, 15.631858, 15.924556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.632830, 15.534480, 15.816474>,  <6.950966, 15.372185, 15.636337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.632830, 15.534480, 15.816474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120059, -0.833665, 0.539063,
		0.594153, 0.374671, 0.711761,
		-0.795341, 0.405739, 0.450342,
		6.394227, 15.656201, 15.951576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.688046, 15.242777, 15.660297>,  <6.950966, 15.372185, 15.636337>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.688046, 15.242777, 15.660297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.052453, 15.086092, 15.608749>,  <8.271097, 14.992081, 15.577821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.052453, 15.086092, 15.608749>,  <7.688046, 15.242777, 15.660297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.052453, 15.086092, 15.608749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265196, 0.795854, -0.544323,
		0.315780, 0.461712, 0.828918,
		0.911018, -0.391712, -0.128871,
		8.325759, 14.968578, 15.570088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.087657, 15.865904, 15.543550>,  <7.688046, 15.242777, 15.660297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.087657, 15.865904, 15.543550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.341139, 15.577396, 15.431699>,  <8.493228, 15.404292, 15.364588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.341139, 15.577396, 15.431699>,  <8.087657, 15.865904, 15.543550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.341139, 15.577396, 15.431699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447192, 0.636519, -0.628381,
		0.631220, 0.273160, 0.725910,
		0.633704, -0.721267, -0.279629,
		8.531250, 15.361016, 15.347810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.739746, 16.237301, 15.608449>,  <8.087657, 15.865904, 15.543550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.739746, 16.237301, 15.608449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.752998, 15.921743, 15.362993>,  <8.760949, 15.732409, 15.215720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.752998, 15.921743, 15.362993>,  <8.739746, 16.237301, 15.608449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.752998, 15.921743, 15.362993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477168, 0.551967, -0.683844,
		0.878187, -0.270153, 0.394721,
		0.033131, -0.788891, -0.613639,
		8.762938, 15.685076, 15.178902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.330600, 16.286173, 15.353141>,  <8.739746, 16.237301, 15.608449>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.330600, 16.286173, 15.353141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.150442, 16.046864, 15.088048>,  <9.042348, 15.903278, 14.928992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.150442, 16.046864, 15.088048>,  <9.330600, 16.286173, 15.353141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.150442, 16.046864, 15.088048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441066, 0.496290, -0.747768,
		0.776277, -0.629099, 0.040352,
		-0.450394, -0.598273, -0.662732,
		9.015324, 15.867382, 14.889228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.929320, 16.168501, 14.817142>,  <9.330600, 16.286173, 15.353141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.929320, 16.168501, 14.817142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.572542, 16.090248, 14.654090>,  <9.358475, 16.043297, 14.556259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.572542, 16.090248, 14.654090>,  <9.929320, 16.168501, 14.817142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.572542, 16.090248, 14.654090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227711, 0.584505, -0.778782,
		0.390614, -0.787453, -0.476800,
		-0.891946, -0.195630, -0.407628,
		9.304958, 16.031559, 14.531801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.098659, 15.896021, 14.152573>,  <9.929320, 16.168501, 14.817142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.098659, 15.896021, 14.152573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.717340, 16.016020, 14.138579>,  <9.488548, 16.088018, 14.130183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.717340, 16.016020, 14.138579>,  <10.098659, 15.896021, 14.152573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.717340, 16.016020, 14.138579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228745, 0.641498, -0.732227,
		-0.197224, -0.706033, -0.680161,
		-0.953299, 0.299996, -0.034983,
		9.431350, 16.106018, 14.128084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.795351, 15.770613, 13.505595>,  <10.098659, 15.896021, 14.152573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.795351, 15.770613, 13.505595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.558618, 16.063339, 13.640756>,  <9.416577, 16.238976, 13.721851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.558618, 16.063339, 13.640756>,  <9.795351, 15.770613, 13.505595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.558618, 16.063339, 13.640756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066310, 0.461982, -0.884407,
		-0.803327, -0.501016, -0.321944,
		-0.591835, 0.731816, 0.337900,
		9.381067, 16.282885, 13.742126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.363704, 15.976110, 12.859178>,  <9.795351, 15.770613, 13.505595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.363704, 15.976110, 12.859178> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.337811, 16.265469, 13.134134>,  <9.322275, 16.439083, 13.299109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.337811, 16.265469, 13.134134>,  <9.363704, 15.976110, 12.859178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.337811, 16.265469, 13.134134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168511, 0.671020, -0.722036,
		-0.983572, -0.162572, 0.078464,
		-0.064732, 0.723397, 0.687391,
		9.318391, 16.482487, 13.340352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.750937, 16.258749, 12.798090>,  <9.363704, 15.976110, 12.859178>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.750937, 16.258749, 12.798090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.982564, 16.543037, 12.957866>,  <9.121541, 16.713612, 13.053731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.982564, 16.543037, 12.957866>,  <8.750937, 16.258749, 12.798090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.982564, 16.543037, 12.957866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073051, 0.533203, -0.842828,
		-0.811999, 0.458876, 0.360680,
		0.579069, 0.710723, 0.399439,
		9.156284, 16.756254, 13.077698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.483222, 16.882093, 12.598352>,  <8.750937, 16.258749, 12.798090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.483222, 16.882093, 12.598352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.852457, 16.989311, 12.708668>,  <9.073998, 17.053642, 12.774857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.852457, 16.989311, 12.708668>,  <8.483222, 16.882093, 12.598352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.852457, 16.989311, 12.708668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087488, 0.551944, -0.829279,
		-0.374505, 0.789626, 0.486042,
		0.923088, 0.268046, 0.275789,
		9.129383, 17.069725, 12.791405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.481883, 17.575811, 12.576752>,  <8.483222, 16.882093, 12.598352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.481883, 17.575811, 12.576752> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.866311, 17.466139, 12.563067>,  <9.096968, 17.400335, 12.554856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.866311, 17.466139, 12.563067>,  <8.481883, 17.575811, 12.576752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.866311, 17.466139, 12.563067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127473, 0.549831, -0.825492,
		0.245144, 0.788994, 0.563377,
		0.961070, -0.274179, -0.034212,
		9.154632, 17.383884, 12.552804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.868942, 18.131392, 12.559779>,  <8.481883, 17.575811, 12.576752>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.868942, 18.131392, 12.559779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.112153, 17.853878, 12.405394>,  <9.258080, 17.687370, 12.312762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.112153, 17.853878, 12.405394>,  <8.868942, 18.131392, 12.559779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.112153, 17.853878, 12.405394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184536, 0.596340, -0.781233,
		0.772172, 0.403786, 0.490619,
		0.608027, -0.693783, -0.385965,
		9.294561, 17.645742, 12.289604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.357018, 18.509218, 12.116028>,  <8.868942, 18.131392, 12.559779>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.357018, 18.509218, 12.116028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.379677, 18.129759, 11.991542>,  <9.393272, 17.902082, 11.916850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.379677, 18.129759, 11.991542>,  <9.357018, 18.509218, 12.116028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.379677, 18.129759, 11.991542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249073, 0.315287, -0.915727,
		0.966827, -0.025642, 0.254143,
		0.056647, -0.948650, -0.311214,
		9.396671, 17.845163, 11.898177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.879543, 18.563932, 11.602600>,  <9.357018, 18.509218, 12.116028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.879543, 18.563932, 11.602600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.686014, 18.223963, 11.519128>,  <9.569897, 18.019981, 11.469045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.686014, 18.223963, 11.519128>,  <9.879543, 18.563932, 11.602600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.686014, 18.223963, 11.519128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262757, 0.086373, -0.960988,
		0.834789, -0.519781, 0.181533,
		-0.483824, -0.849922, -0.208679,
		9.540867, 17.968987, 11.456524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.265070, 18.236557, 11.053185>,  <9.879543, 18.563932, 11.602600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.265070, 18.236557, 11.053185> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.909905, 18.052614, 11.048345>,  <9.696807, 17.942249, 11.045440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.909905, 18.052614, 11.048345>,  <10.265070, 18.236557, 11.053185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.909905, 18.052614, 11.048345> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054793, -0.079600, -0.995320,
		0.456742, -0.884418, 0.095875,
		-0.887910, -0.459857, -0.012103,
		9.643532, 17.914658, 11.044714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.291695, 17.760437, 10.551915>,  <10.265070, 18.236557, 11.053185>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.291695, 17.760437, 10.551915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.893465, 17.757456, 10.589389>,  <9.654528, 17.755667, 10.611873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.893465, 17.757456, 10.589389>,  <10.291695, 17.760437, 10.551915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.893465, 17.757456, 10.589389> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092177, -0.116865, -0.988861,
		0.018320, -0.993120, 0.115660,
		-0.995574, -0.007454, 0.093684,
		9.594792, 17.755220, 10.617494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.013543, 17.271927, 10.140064>,  <10.291695, 17.760437, 10.551915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.013543, 17.271927, 10.140064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.688215, 17.500988, 10.181210>,  <9.493018, 17.638424, 10.205896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.688215, 17.500988, 10.181210>,  <10.013543, 17.271927, 10.140064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.688215, 17.500988, 10.181210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245560, -0.177584, -0.952976,
		-0.527457, -0.800334, 0.285053,
		-0.813320, 0.572652, 0.102862,
		9.444220, 17.672783, 10.212069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.403171, 16.948544, 9.848121>,  <10.013543, 17.271927, 10.140064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.403171, 16.948544, 9.848121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.304030, 17.335375, 9.871195>,  <9.244546, 17.567474, 9.885039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.304030, 17.335375, 9.871195>,  <9.403171, 16.948544, 9.848121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.304030, 17.335375, 9.871195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205017, 0.005837, -0.978741,
		-0.946857, -0.254408, 0.196821,
		-0.247851, 0.967079, 0.057684,
		9.229675, 17.625498, 9.888500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.894759, 16.982952, 9.283911>,  <9.403171, 16.948544, 9.848121>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.894759, 16.982952, 9.283911> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.990591, 17.368778, 9.328113>,  <9.048090, 17.600275, 9.354633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.990591, 17.368778, 9.328113>,  <8.894759, 16.982952, 9.283911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.990591, 17.368778, 9.328113> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065800, 0.129689, -0.989369,
		-0.968644, 0.229762, 0.094540,
		0.239580, 0.964567, 0.110504,
		9.062465, 17.658148, 9.361264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.393343, 17.377880, 8.943522>,  <8.894759, 16.982952, 9.283911>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.393343, 17.377880, 8.943522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.719619, 17.607872, 8.968976>,  <8.915384, 17.745867, 8.984248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.719619, 17.607872, 8.968976>,  <8.393343, 17.377880, 8.943522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.719619, 17.607872, 8.968976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085330, 0.228384, -0.969824,
		-0.572161, 0.785646, 0.235354,
		0.815690, 0.574979, 0.063633,
		8.964326, 17.780365, 8.988066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.255614, 17.914539, 8.598146>,  <8.393343, 17.377880, 8.943522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.255614, 17.914539, 8.598146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.651121, 17.858040, 8.578592>,  <8.888425, 17.824141, 8.566859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.651121, 17.858040, 8.578592>,  <8.255614, 17.914539, 8.598146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.651121, 17.858040, 8.578592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017259, 0.216985, -0.976022,
		0.148468, 0.965902, 0.212110,
		0.988767, -0.141247, -0.048886,
		8.947751, 17.815666, 8.563927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<21.767668, 21.445335, 22.803881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.451761, 21.453487, 23.049109>,  <21.262217, 21.458380, 23.196245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.451761, 21.453487, 23.049109>,  <21.767668, 21.445335, 22.803881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.451761, 21.453487, 23.049109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487555, 0.627352, 0.607222,
		-0.372234, 0.778469, -0.505399,
		-0.789767, 0.020381, 0.613068,
		21.214830, 21.459602, 23.233028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.674644, 22.122826, 22.956781>,  <21.767668, 21.445335, 22.803881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.674644, 22.122826, 22.956781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.495808, 21.930841, 23.258707>,  <21.388506, 21.815651, 23.439863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.495808, 21.930841, 23.258707>,  <21.674644, 22.122826, 22.956781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.495808, 21.930841, 23.258707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262312, 0.736399, 0.623626,
		-0.855160, 0.476816, -0.203340,
		-0.447094, -0.479961, 0.754814,
		21.361679, 21.786854, 23.485151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.367996, 22.664232, 23.280037>,  <21.674644, 22.122826, 22.956781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.367996, 22.664232, 23.280037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.366558, 22.391865, 23.572977>,  <21.365696, 22.228443, 23.748741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.366558, 22.391865, 23.572977>,  <21.367996, 22.664232, 23.280037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.366558, 22.391865, 23.572977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396045, 0.671500, 0.626288,
		-0.918224, 0.292293, 0.267262,
		-0.003593, -0.680921, 0.732349,
		21.365480, 22.187588, 23.792681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.040377, 22.927580, 23.813480>,  <21.367996, 22.664232, 23.280037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.040377, 22.927580, 23.813480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.278957, 22.639456, 23.955130>,  <21.422106, 22.466581, 24.040119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.278957, 22.639456, 23.955130>,  <21.040377, 22.927580, 23.813480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.278957, 22.639456, 23.955130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315817, 0.616212, 0.721487,
		-0.737907, -0.318494, 0.595025,
		0.596451, -0.720309, 0.354121,
		21.457893, 22.423363, 24.061365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.882095, 22.807957, 24.431162>,  <21.040377, 22.927580, 23.813480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.882095, 22.807957, 24.431162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.265112, 22.694775, 24.409063>,  <21.494923, 22.626865, 24.395805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.265112, 22.694775, 24.409063>,  <20.882095, 22.807957, 24.431162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.265112, 22.694775, 24.409063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227174, 0.622561, 0.748872,
		-0.177505, -0.729625, 0.660408,
		0.957540, -0.282956, -0.055244,
		21.552374, 22.609888, 24.392490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.028564, 22.922752, 25.038246>,  <20.882095, 22.807957, 24.431162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.028564, 22.922752, 25.038246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.402302, 22.864807, 24.908003>,  <21.626543, 22.830040, 24.829857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.402302, 22.864807, 24.908003>,  <21.028564, 22.922752, 25.038246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.402302, 22.864807, 24.908003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324034, 0.725647, 0.606990,
		0.148345, -0.672644, 0.724944,
		0.934342, -0.144863, -0.325606,
		21.682604, 22.821348, 24.810322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.437340, 22.763033, 25.619476>,  <21.028564, 22.922752, 25.038246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.437340, 22.763033, 25.619476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.680714, 22.918976, 25.342979>,  <21.826738, 23.012543, 25.177080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.680714, 22.918976, 25.342979>,  <21.437340, 22.763033, 25.619476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.680714, 22.918976, 25.342979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238458, 0.740959, 0.627788,
		0.756939, -0.546796, 0.357852,
		0.608426, 0.389864, -0.691248,
		21.863243, 23.035934, 25.135607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.955957, 22.951271, 25.972408>,  <21.437340, 22.763033, 25.619476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.955957, 22.951271, 25.972408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.039389, 23.169899, 25.647999>,  <22.089447, 23.301075, 25.453354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.039389, 23.169899, 25.647999>,  <21.955957, 22.951271, 25.972408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.039389, 23.169899, 25.647999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470420, 0.670964, 0.573160,
		0.857439, -0.501069, -0.117169,
		0.208577, 0.546569, -0.811023,
		22.101961, 23.333870, 25.404692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.609882, 23.339142, 26.133366>,  <21.955957, 22.951271, 25.972408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.609882, 23.339142, 26.133366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.505350, 23.558016, 25.815298>,  <22.442631, 23.689341, 25.624458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.505350, 23.558016, 25.815298>,  <22.609882, 23.339142, 26.133366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.505350, 23.558016, 25.815298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550549, 0.761154, 0.342842,
		0.792845, -0.348185, -0.500165,
		-0.261329, 0.547186, -0.795170,
		22.426950, 23.722172, 25.576748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.140165, 23.712992, 26.010651>,  <22.609882, 23.339142, 26.133366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.140165, 23.712992, 26.010651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.853617, 23.906433, 25.809477>,  <22.681688, 24.022497, 25.688772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.853617, 23.906433, 25.809477>,  <23.140165, 23.712992, 26.010651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.853617, 23.906433, 25.809477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325946, 0.869292, 0.371605,
		0.616904, 0.102278, -0.780364,
		-0.716371, 0.483602, -0.502933,
		22.638706, 24.051514, 25.658596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.411816, 24.441378, 25.682007>,  <23.140165, 23.712992, 26.010651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.411816, 24.441378, 25.682007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.018744, 24.448168, 25.755823>,  <22.782900, 24.452242, 25.800114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.018744, 24.448168, 25.755823>,  <23.411816, 24.441378, 25.682007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.018744, 24.448168, 25.755823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085523, 0.924958, 0.370323,
		-0.164407, 0.379691, -0.910388,
		-0.982678, 0.016976, 0.184542,
		22.723940, 24.453260, 25.811186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.153337, 25.071901, 25.378666>,  <23.411816, 24.441378, 25.682007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.153337, 25.071901, 25.378666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.898817, 24.971577, 25.670479>,  <22.746105, 24.911381, 25.845566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.898817, 24.971577, 25.670479>,  <23.153337, 25.071901, 25.378666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.898817, 24.971577, 25.670479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096243, 0.964093, 0.247512,
		-0.765415, 0.087280, -0.637591,
		-0.636300, -0.250813, 0.729531,
		22.707928, 24.896332, 25.889338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.815685, 25.623842, 25.520975>,  <23.153337, 25.071901, 25.378666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.815685, 25.623842, 25.520975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.753485, 25.400425, 25.846882>,  <22.716166, 25.266375, 26.042427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.753485, 25.400425, 25.846882>,  <22.815685, 25.623842, 25.520975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.753485, 25.400425, 25.846882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142291, 0.828864, 0.541052,
		-0.977534, -0.031800, -0.208365,
		-0.155500, -0.558545, 0.814768,
		22.706835, 25.232861, 26.091312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.095409, 25.916117, 25.509544>,  <22.815685, 25.623842, 25.520975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.095409, 25.916117, 25.509544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.717916, 25.823914, 25.414686>,  <21.491421, 25.768591, 25.357771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.717916, 25.823914, 25.414686>,  <22.095409, 25.916117, 25.509544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.717916, 25.823914, 25.414686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273467, -0.140661, -0.951541,
		0.185983, -0.962850, 0.195783,
		-0.943730, -0.230511, -0.237148,
		21.434797, 25.754761, 25.343542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.993162, 26.643110, 25.512552>,  <22.095409, 25.916117, 25.509544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.993162, 26.643110, 25.512552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.887369, 26.966145, 25.301704>,  <21.823893, 27.159966, 25.175196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.887369, 26.966145, 25.301704>,  <21.993162, 26.643110, 25.512552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.887369, 26.966145, 25.301704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629671, -0.558604, -0.539885,
		-0.730454, 0.189122, 0.656254,
		-0.264482, 0.807586, -0.527119,
		21.808025, 27.208420, 25.143568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.265118, 26.479610, 25.378769>,  <21.993162, 26.643110, 25.512552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.265118, 26.479610, 25.378769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.365036, 26.757566, 25.109034>,  <21.424986, 26.924339, 24.947191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.365036, 26.757566, 25.109034>,  <21.265118, 26.479610, 25.378769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.365036, 26.757566, 25.109034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591054, -0.442202, -0.674620,
		-0.766980, 0.567087, 0.300257,
		0.249794, 0.694888, -0.674339,
		21.439974, 26.966032, 24.906733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.570137, 26.764935, 25.118723>,  <21.265118, 26.479610, 25.378769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.570137, 26.764935, 25.118723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.875032, 26.819403, 24.865599>,  <21.057970, 26.852083, 24.713724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.875032, 26.819403, 24.865599>,  <20.570137, 26.764935, 25.118723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.875032, 26.819403, 24.865599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539423, -0.406748, -0.737278,
		-0.357791, 0.903335, -0.236585,
		0.762239, 0.136172, -0.632810,
		21.103704, 26.860254, 24.675756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.214844, 26.816618, 24.507738>,  <20.570137, 26.764935, 25.118723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.214844, 26.816618, 24.507738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.588371, 26.801420, 24.365448>,  <20.812489, 26.792301, 24.280075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.588371, 26.801420, 24.365448>,  <20.214844, 26.816618, 24.507738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.588371, 26.801420, 24.365448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348582, -0.320284, -0.880857,
		-0.080464, 0.946559, -0.312332,
		0.933818, -0.037996, -0.355724,
		20.868517, 26.790022, 24.258730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.175043, 26.979704, 23.869104>,  <20.214844, 26.816618, 24.507738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.175043, 26.979704, 23.869104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.501503, 26.750235, 23.896814>,  <20.697380, 26.612553, 23.913441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.501503, 26.750235, 23.896814>,  <20.175043, 26.979704, 23.869104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.501503, 26.750235, 23.896814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269003, -0.483304, -0.833099,
		0.511405, 0.661300, -0.548769,
		0.816151, -0.573671, 0.069273,
		20.746347, 26.578133, 23.917597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.553606, 27.083494, 23.215685>,  <20.175043, 26.979704, 23.869104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.553606, 27.083494, 23.215685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.613596, 26.731066, 23.395115>,  <20.649590, 26.519608, 23.502773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.613596, 26.731066, 23.395115>,  <20.553606, 27.083494, 23.215685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.613596, 26.731066, 23.395115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175458, -0.470223, -0.864931,
		0.972996, 0.051012, -0.225113,
		0.149975, -0.881072, 0.448575,
		20.658588, 26.466743, 23.529688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.841702, 26.803711, 22.634533>,  <20.553606, 27.083494, 23.215685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.841702, 26.803711, 22.634533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.772259, 26.511755, 22.898993>,  <20.730593, 26.336582, 23.057669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.772259, 26.511755, 22.898993>,  <20.841702, 26.803711, 22.634533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.772259, 26.511755, 22.898993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139302, -0.646395, -0.750179,
		0.974913, -0.222337, 0.010544,
		-0.173609, -0.729890, 0.661151,
		20.720177, 26.292788, 23.097338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.202393, 26.181297, 22.441931>,  <20.841702, 26.803711, 22.634533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.202393, 26.181297, 22.441931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.923630, 26.031933, 22.686844>,  <20.756372, 25.942314, 22.833792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.923630, 26.031933, 22.686844>,  <21.202393, 26.181297, 22.441931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.923630, 26.031933, 22.686844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088689, -0.802327, -0.590259,
		0.711658, -0.465657, 0.526029,
		-0.696905, -0.373410, 0.612281,
		20.714558, 25.919910, 22.870529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.233667, 25.495995, 22.361948>,  <21.202393, 26.181297, 22.441931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.233667, 25.495995, 22.361948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.870579, 25.508493, 22.529312>,  <20.652725, 25.515993, 22.629730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.870579, 25.508493, 22.529312>,  <21.233667, 25.495995, 22.361948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.870579, 25.508493, 22.529312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319984, -0.696578, -0.642175,
		0.271389, -0.716800, 0.642297,
		-0.907721, 0.031246, 0.418409,
		20.598263, 25.517868, 22.654835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.100245, 24.842859, 22.467863>,  <21.233667, 25.495995, 22.361948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.100245, 24.842859, 22.467863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.738129, 25.007553, 22.509670>,  <20.520859, 25.106369, 22.534754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.738129, 25.007553, 22.509670>,  <21.100245, 24.842859, 22.467863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.738129, 25.007553, 22.509670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394008, -0.721908, -0.568865,
		-0.158769, -0.556168, 0.815763,
		-0.905290, 0.411735, 0.104518,
		20.466541, 25.131073, 22.541025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.695978, 24.322721, 22.721630>,  <21.100245, 24.842859, 22.467863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.695978, 24.322721, 22.721630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.428242, 24.560930, 22.543940>,  <20.267599, 24.703856, 22.437326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.428242, 24.560930, 22.543940>,  <20.695978, 24.322721, 22.721630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.428242, 24.560930, 22.543940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376091, -0.787238, -0.488684,
		-0.640733, -0.160028, 0.750901,
		-0.669341, 0.595523, -0.444224,
		20.227440, 24.739588, 22.410671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.156179, 23.924339, 22.618246>,  <20.695978, 24.322721, 22.721630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.156179, 23.924339, 22.618246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.049252, 24.235056, 22.390163>,  <19.985096, 24.421486, 22.253313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.049252, 24.235056, 22.390163>,  <20.156179, 23.924339, 22.618246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.049252, 24.235056, 22.390163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448676, -0.624020, -0.639757,
		-0.852779, 0.084820, 0.515339,
		-0.267317, 0.776791, -0.570208,
		19.969057, 24.468094, 22.219101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.381336, 23.942148, 22.531878>,  <20.156179, 23.924339, 22.618246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.381336, 23.942148, 22.531878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.546019, 24.138195, 22.224558>,  <19.644829, 24.255823, 22.040167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.546019, 24.138195, 22.224558>,  <19.381336, 23.942148, 22.531878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.546019, 24.138195, 22.224558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444686, -0.627838, -0.638807,
		-0.795456, 0.604653, -0.040538,
		0.411708, 0.490116, -0.768298,
		19.669531, 24.285231, 21.994068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.826729, 24.125879, 22.109350>,  <19.381336, 23.942148, 22.531878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.826729, 24.125879, 22.109350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.167582, 24.089674, 21.903173>,  <19.372093, 24.067951, 21.779467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.167582, 24.089674, 21.903173>,  <18.826729, 24.125879, 22.109350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.167582, 24.089674, 21.903173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456607, -0.609836, -0.647773,
		-0.255702, 0.787342, -0.560989,
		0.852130, -0.090515, -0.515442,
		19.423222, 24.062519, 21.748541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.104073, 24.373571, 22.017258>,  <18.826729, 24.125879, 22.109350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.104073, 24.373571, 22.017258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.886688, 24.201990, 22.305882>,  <17.756258, 24.099041, 22.479055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.886688, 24.201990, 22.305882>,  <18.104073, 24.373571, 22.017258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.886688, 24.201990, 22.305882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332117, 0.679566, 0.654132,
		-0.770939, 0.595138, -0.226856,
		-0.543462, -0.428953, 0.721560,
		17.723650, 24.073305, 22.522348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.635023, 24.895676, 22.355722>,  <18.104073, 24.373571, 22.017258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.635023, 24.895676, 22.355722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.649300, 24.591223, 22.614767>,  <17.657866, 24.408550, 22.770193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.649300, 24.591223, 22.614767>,  <17.635023, 24.895676, 22.355722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.649300, 24.591223, 22.614767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068496, 0.648363, 0.758243,
		-0.997013, 0.017297, 0.075275,
		0.035690, -0.761135, 0.647611,
		17.660007, 24.362883, 22.809050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.228600, 25.118683, 22.959913>,  <17.635023, 24.895676, 22.355722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.228600, 25.118683, 22.959913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.464710, 24.828814, 23.102135>,  <17.606377, 24.654892, 23.187468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.464710, 24.828814, 23.102135>,  <17.228600, 25.118683, 22.959913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.464710, 24.828814, 23.102135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200217, 0.558157, 0.805217,
		-0.781974, -0.404114, 0.474560,
		0.590279, -0.724674, 0.355554,
		17.641794, 24.611412, 23.208801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.026886, 25.087093, 23.658033>,  <17.228600, 25.118683, 22.959913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.026886, 25.087093, 23.658033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.372709, 24.886086, 23.659515>,  <17.580204, 24.765480, 23.660404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.372709, 24.886086, 23.659515>,  <17.026886, 25.087093, 23.658033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.372709, 24.886086, 23.659515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228950, 0.400434, 0.887262,
		-0.447351, -0.766241, 0.461251,
		0.864557, -0.502521, 0.003704,
		17.632076, 24.735329, 23.660627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.108089, 24.708210, 24.325268>,  <17.026886, 25.087093, 23.658033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.108089, 24.708210, 24.325268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.478418, 24.756699, 24.182070>,  <17.700615, 24.785791, 24.096151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.478418, 24.756699, 24.182070>,  <17.108089, 24.708210, 24.325268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.478418, 24.756699, 24.182070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254299, 0.500942, 0.827279,
		0.279617, -0.856950, 0.432957,
		0.925822, 0.121221, -0.357993,
		17.756165, 24.793064, 24.074673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.449554, 24.492517, 24.911573>,  <17.108089, 24.708210, 24.325268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.449554, 24.492517, 24.911573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.701878, 24.701641, 24.682224>,  <17.853271, 24.827114, 24.544615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.701878, 24.701641, 24.682224>,  <17.449554, 24.492517, 24.911573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.701878, 24.701641, 24.682224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388051, 0.427339, 0.816577,
		0.671936, -0.737600, 0.066692,
		0.630807, 0.522808, -0.573371,
		17.891119, 24.858484, 24.510214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.088430, 24.375364, 25.276239>,  <17.449554, 24.492517, 24.911573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.088430, 24.375364, 25.276239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.121639, 24.701279, 25.046724>,  <18.141565, 24.896828, 24.909016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.121639, 24.701279, 25.046724>,  <18.088430, 24.375364, 25.276239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.121639, 24.701279, 25.046724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224020, 0.545780, 0.807428,
		0.971042, -0.195576, -0.137215,
		0.083025, 0.814785, -0.573788,
		18.146547, 24.945715, 24.874588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.488245, 23.990023, 25.792965>,  <18.088430, 24.375364, 25.276239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.488245, 23.990023, 25.792965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.351831, 23.828043, 26.132309>,  <18.269983, 23.730854, 26.335915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.351831, 23.828043, 26.132309>,  <18.488245, 23.990023, 25.792965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.351831, 23.828043, 26.132309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095985, -0.882742, -0.459949,
		0.935138, -0.238287, 0.262174,
		-0.341032, -0.404951, 0.848358,
		18.249521, 23.706558, 26.386816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.982134, 23.379265, 25.897600>,  <18.488245, 23.990023, 25.792965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.982134, 23.379265, 25.897600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.638737, 23.298973, 26.086363>,  <18.432697, 23.250797, 26.199619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.638737, 23.298973, 26.086363>,  <18.982134, 23.379265, 25.897600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.638737, 23.298973, 26.086363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094019, -0.843008, -0.529621,
		0.504131, -0.499045, 0.704845,
		-0.858494, -0.200729, 0.471906,
		18.381187, 23.238754, 26.227934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.939619, 22.660208, 26.238474>,  <18.982134, 23.379265, 25.897600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.939619, 22.660208, 26.238474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.564384, 22.768988, 26.152649>,  <18.339243, 22.834255, 26.101154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.564384, 22.768988, 26.152649>,  <18.939619, 22.660208, 26.238474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.564384, 22.768988, 26.152649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122108, -0.839255, -0.529850,
		-0.324165, -0.470845, 0.820501,
		-0.938087, 0.271949, -0.214563,
		18.282959, 22.850573, 26.088280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.527863, 22.054108, 26.230972>,  <18.939619, 22.660208, 26.238474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.527863, 22.054108, 26.230972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.254715, 22.282907, 26.049202>,  <18.090826, 22.420187, 25.940140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.254715, 22.282907, 26.049202>,  <18.527863, 22.054108, 26.230972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.254715, 22.282907, 26.049202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255288, -0.769669, -0.585181,
		-0.684480, -0.283595, 0.671611,
		-0.682873, 0.571999, -0.454425,
		18.049854, 22.454508, 25.912874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.047617, 21.651947, 26.324560>,  <18.527863, 22.054108, 26.230972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.047617, 21.651947, 26.324560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.959080, 21.919872, 26.041052>,  <17.905958, 22.080627, 25.870947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.959080, 21.919872, 26.041052>,  <18.047617, 21.651947, 26.324560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.959080, 21.919872, 26.041052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322950, -0.736135, -0.594819,
		-0.920169, 0.097239, 0.379253,
		-0.221342, 0.669814, -0.708772,
		17.892677, 22.120817, 25.828421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.388083, 21.551203, 26.071098>,  <18.047617, 21.651947, 26.324560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.388083, 21.551203, 26.071098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.552746, 21.763479, 25.774746>,  <17.651545, 21.890844, 25.596935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.552746, 21.763479, 25.774746>,  <17.388083, 21.551203, 26.071098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.552746, 21.763479, 25.774746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484451, -0.561152, -0.671130,
		-0.771909, 0.635198, 0.026090,
		0.411660, 0.530690, -0.740881,
		17.676243, 21.922686, 25.552483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.804359, 21.656254, 25.541510>,  <17.388083, 21.551203, 26.071098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.804359, 21.656254, 25.541510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.138578, 21.741819, 25.339085>,  <17.339109, 21.793159, 25.217628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.138578, 21.741819, 25.339085>,  <16.804359, 21.656254, 25.541510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.138578, 21.741819, 25.339085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350245, -0.502283, -0.790595,
		-0.423308, 0.837825, -0.344758,
		0.835547, 0.213916, -0.506065,
		17.389242, 21.805994, 25.187265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<24.115366, 18.150379, 24.617737> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.241608, 18.209892, 24.242876>,  <24.317352, 18.245600, 24.017960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.241608, 18.209892, 24.242876>,  <24.115366, 18.150379, 24.617737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.241608, 18.209892, 24.242876> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854357, 0.385179, 0.348872,
		0.412878, -0.910770, -0.005548,
		0.315605, 0.148781, -0.937154,
		24.336288, 18.254526, 23.961729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.770653, 17.911381, 24.532143>,  <24.115366, 18.150379, 24.617737>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.770653, 17.911381, 24.532143> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.695858, 18.197893, 24.263226>,  <24.650980, 18.369801, 24.101875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.695858, 18.197893, 24.263226>,  <24.770653, 17.911381, 24.532143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.695858, 18.197893, 24.263226> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855332, 0.455304, 0.247195,
		0.483159, -0.528812, -0.697794,
		-0.186989, 0.716280, -0.672294,
		24.639761, 18.412777, 24.061537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.403210, 18.297989, 24.641947>,  <24.770653, 17.911381, 24.532143>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.403210, 18.297989, 24.641947> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.347532, 18.649136, 24.825237>,  <25.314125, 18.859823, 24.935211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.347532, 18.649136, 24.825237>,  <25.403210, 18.297989, 24.641947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.347532, 18.649136, 24.825237> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846984, -0.345291, 0.404218,
		0.513072, -0.331846, 0.791603,
		-0.139195, 0.877868, 0.458228,
		25.305773, 18.912497, 24.962706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.315615, 18.135170, 25.405098>,  <25.403210, 18.297989, 24.641947>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.315615, 18.135170, 25.405098> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.130068, 18.460428, 25.264458>,  <25.018740, 18.655582, 25.180075>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.130068, 18.460428, 25.264458>,  <25.315615, 18.135170, 25.405098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.130068, 18.460428, 25.264458> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877248, -0.366268, 0.310295,
		0.123535, 0.452377, 0.883229,
		-0.463869, 0.813144, -0.351600,
		24.990908, 18.704370, 25.158978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.960350, 18.359205, 25.943823>,  <25.315615, 18.135170, 25.405098>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.960350, 18.359205, 25.943823> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.788462, 18.448116, 25.593752>,  <24.685329, 18.501463, 25.383709>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.788462, 18.448116, 25.593752>,  <24.960350, 18.359205, 25.943823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.788462, 18.448116, 25.593752> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834691, -0.467492, 0.291107,
		-0.344431, 0.855596, 0.386423,
		-0.429719, 0.222278, -0.875176,
		24.659546, 18.514799, 25.331200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.263412, 18.596376, 26.033749>,  <24.960350, 18.359205, 25.943823>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.263412, 18.596376, 26.033749> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.230190, 18.384945, 25.695826>,  <24.210257, 18.258085, 25.493071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.230190, 18.384945, 25.695826>,  <24.263412, 18.596376, 26.033749>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.230190, 18.384945, 25.695826> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422688, -0.749019, 0.510202,
		-0.902462, 0.399466, -0.161214,
		-0.083057, -0.528581, -0.844810,
		24.205273, 18.226370, 25.442383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.662493, 18.751505, 26.353466>,  <24.263412, 18.596376, 26.033749>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.662493, 18.751505, 26.353466> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<23.719564, 18.366661, 26.446405>,  <23.753807, 18.135754, 26.502169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<23.719564, 18.366661, 26.446405>,  <23.662493, 18.751505, 26.353466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<23.719564, 18.366661, 26.446405> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799746, 0.026240, 0.599765,
		-0.583137, -0.271393, -0.765700,
		0.142680, -0.962111, 0.232347,
		23.762369, 18.078028, 26.516109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.215368, 19.447126, 26.297396>,  <23.662493, 18.751505, 26.353466>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.215368, 19.447126, 26.297396> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<23.020536, 19.747032, 26.476555>,  <22.903637, 19.926975, 26.584049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<23.020536, 19.747032, 26.476555>,  <23.215368, 19.447126, 26.297396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<23.020536, 19.747032, 26.476555> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859235, -0.319527, -0.399522,
		-0.156432, -0.579445, 0.799857,
		-0.487077, 0.749764, 0.447895,
		22.874413, 19.971962, 26.610924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.647932, 19.193762, 26.805735>,  <23.215368, 19.447126, 26.297396>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.647932, 19.193762, 26.805735> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.545614, 19.561577, 26.686388>,  <22.484224, 19.782265, 26.614780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.545614, 19.561577, 26.686388>,  <22.647932, 19.193762, 26.805735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.545614, 19.561577, 26.686388> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818686, -0.370183, -0.438997,
		-0.514124, 0.131975, 0.847502,
		-0.255794, 0.919536, -0.298365,
		22.468876, 19.837439, 26.596878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.933395, 19.314545, 27.078728>,  <22.647932, 19.193762, 26.805735>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.933395, 19.314545, 27.078728> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.008362, 19.566824, 26.777506>,  <22.053341, 19.718191, 26.596773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.008362, 19.566824, 26.777506>,  <21.933395, 19.314545, 27.078728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.008362, 19.566824, 26.777506> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803293, -0.342814, -0.487031,
		-0.565329, 0.696201, 0.442388,
		0.187415, 0.630700, -0.753056,
		22.064587, 19.756033, 26.551588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.339804, 19.572723, 26.899178>,  <21.933395, 19.314545, 27.078728>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.339804, 19.572723, 26.899178> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.573761, 19.628143, 26.579502>,  <21.714136, 19.661394, 26.387697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.573761, 19.628143, 26.579502>,  <21.339804, 19.572723, 26.899178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.573761, 19.628143, 26.579502> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755293, -0.266156, -0.598910,
		-0.295687, 0.953921, -0.051029,
		0.584895, 0.138548, -0.799189,
		21.749229, 19.669708, 26.339745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.927473, 19.832813, 26.360546>,  <21.339804, 19.572723, 26.899178>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.927473, 19.832813, 26.360546> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.242794, 19.701096, 26.152643>,  <21.431986, 19.622065, 26.027901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.242794, 19.701096, 26.152643>,  <20.927473, 19.832813, 26.360546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.242794, 19.701096, 26.152643> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614115, -0.473280, -0.631560,
		-0.038022, 0.817050, -0.575311,
		0.788300, -0.329294, -0.519758,
		21.479284, 19.602306, 25.996716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.348526, 20.145386, 26.730961>,  <20.927473, 19.832813, 26.360546>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.348526, 20.145386, 26.730961> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.966927, 20.143076, 26.850864>,  <19.737967, 20.141689, 26.922808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.966927, 20.143076, 26.850864>,  <20.348526, 20.145386, 26.730961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.966927, 20.143076, 26.850864> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152842, 0.850776, 0.502812,
		-0.257932, 0.525497, -0.810755,
		-0.953997, -0.005774, 0.299761,
		19.680727, 20.141344, 26.940792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.205015, 20.764996, 26.693775>,  <20.348526, 20.145386, 26.730961>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.205015, 20.764996, 26.693775> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.922543, 20.621567, 26.937983>,  <19.753059, 20.535509, 27.084507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.922543, 20.621567, 26.937983>,  <20.205015, 20.764996, 26.693775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.922543, 20.621567, 26.937983> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212148, 0.715499, 0.665623,
		-0.675499, 0.599572, -0.429203,
		-0.706183, -0.358573, 0.610516,
		19.710688, 20.513994, 27.121138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.743481, 21.424870, 26.851692>,  <20.205015, 20.764996, 26.693775>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.743481, 21.424870, 26.851692> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.711128, 21.151535, 27.141935>,  <19.691717, 20.987534, 27.316082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.711128, 21.151535, 27.141935>,  <19.743481, 21.424870, 26.851692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.711128, 21.151535, 27.141935> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002174, 0.728114, 0.685453,
		-0.996722, 0.053862, -0.060376,
		-0.080880, -0.683337, 0.725610,
		19.686865, 20.946533, 27.359619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.381306, 21.770319, 27.387230>,  <19.743481, 21.424870, 26.851692>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.381306, 21.770319, 27.387230> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.489794, 21.446680, 27.595768>,  <19.554886, 21.252497, 27.720890>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.489794, 21.446680, 27.595768>,  <19.381306, 21.770319, 27.387230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.489794, 21.446680, 27.595768> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139093, 0.568909, 0.810553,
		-0.952414, -0.147323, 0.266839,
		0.271220, -0.809097, 0.521346,
		19.571159, 21.203951, 27.752172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.044178, 21.690329, 28.040413>,  <19.381306, 21.770319, 27.387230>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.044178, 21.690329, 28.040413> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.376526, 21.476463, 28.102108>,  <19.575935, 21.348145, 28.139124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.376526, 21.476463, 28.102108>,  <19.044178, 21.690329, 28.040413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.376526, 21.476463, 28.102108> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186500, 0.528700, 0.828066,
		-0.524280, -0.659252, 0.538996,
		0.830871, -0.534662, 0.154237,
		19.625788, 21.316065, 28.148378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.048687, 21.637478, 28.707376>,  <19.044178, 21.690329, 28.040413>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.048687, 21.637478, 28.707376> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.427917, 21.579298, 28.594244>,  <19.655457, 21.544390, 28.526365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.427917, 21.579298, 28.594244>,  <19.048687, 21.637478, 28.707376>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.427917, 21.579298, 28.594244> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314236, 0.565544, 0.762506,
		0.049045, -0.811790, 0.581885,
		0.948077, -0.145452, -0.282831,
		19.712341, 21.535662, 28.509396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.474621, 21.618530, 29.409777>,  <19.048687, 21.637478, 28.707376>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.474621, 21.618530, 29.409777> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.746212, 21.685501, 29.123852>,  <19.909166, 21.725683, 28.952297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.746212, 21.685501, 29.123852>,  <19.474621, 21.618530, 29.409777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.746212, 21.685501, 29.123852> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517109, 0.582079, 0.627521,
		0.521140, -0.795709, 0.308642,
		0.678978, 0.167425, -0.714814,
		19.949905, 21.735729, 28.909407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.083282, 21.477816, 29.684170>,  <19.474621, 21.618530, 29.409777>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.083282, 21.477816, 29.684170> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.173107, 21.718647, 29.377686>,  <20.227001, 21.863146, 29.193796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.173107, 21.718647, 29.377686>,  <20.083282, 21.477816, 29.684170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.173107, 21.718647, 29.377686> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406828, 0.656562, 0.635152,
		0.885473, -0.454346, -0.097504,
		0.224561, 0.602077, -0.766209,
		20.240475, 21.899271, 29.147823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.793034, 21.681614, 29.759319>,  <20.083282, 21.477816, 29.684170>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.793034, 21.681614, 29.759319> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.644522, 21.968187, 29.523058>,  <20.555414, 22.140131, 29.381300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.644522, 21.968187, 29.523058>,  <20.793034, 21.681614, 29.759319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.644522, 21.968187, 29.523058> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540066, 0.684077, 0.490272,
		0.755301, -0.136964, -0.640906,
		-0.371280, 0.716435, -0.590654,
		20.533138, 22.183117, 29.345861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.327887, 22.138716, 29.646746>,  <20.793034, 21.681614, 29.759319>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.327887, 22.138716, 29.646746> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.018227, 22.373198, 29.551201>,  <20.832432, 22.513887, 29.493874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.018227, 22.373198, 29.551201>,  <21.327887, 22.138716, 29.646746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.018227, 22.373198, 29.551201> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529084, 0.806381, 0.264233,
		0.347510, 0.078177, -0.934412,
		-0.774149, 0.586206, -0.238864,
		20.785982, 22.549059, 29.479542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.639212, 22.702791, 29.272310>,  <21.327887, 22.138716, 29.646746>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.639212, 22.702791, 29.272310> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.281855, 22.845364, 29.381712>,  <21.067440, 22.930906, 29.447353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.281855, 22.845364, 29.381712>,  <21.639212, 22.702791, 29.272310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.281855, 22.845364, 29.381712> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388044, 0.918985, 0.069918,
		-0.226427, 0.168596, -0.959326,
		-0.893394, 0.356429, 0.273506,
		21.013836, 22.952291, 29.463764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.451077, 23.292938, 28.893797>,  <21.639212, 22.702791, 29.272310>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.451077, 23.292938, 28.893797> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.208115, 23.330219, 29.209360>,  <21.062338, 23.352587, 29.398697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.208115, 23.330219, 29.209360>,  <21.451077, 23.292938, 28.893797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.208115, 23.330219, 29.209360> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263079, 0.960655, 0.089063,
		-0.749566, 0.261642, -0.608025,
		-0.607405, 0.093200, 0.788906,
		21.025892, 23.358179, 29.446032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.027338, 23.819830, 28.726629>,  <21.451077, 23.292938, 28.893797>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.027338, 23.819830, 28.726629> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.034136, 23.786135, 29.125149>,  <21.038214, 23.765917, 29.364262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.034136, 23.786135, 29.125149>,  <21.027338, 23.819830, 28.726629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.034136, 23.786135, 29.125149> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294313, 0.952720, 0.075534,
		-0.955558, 0.291941, 0.040984,
		0.016995, -0.084240, 0.996301,
		21.039234, 23.760862, 29.424040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.483189, 24.338545, 29.055681>,  <21.027338, 23.819830, 28.726629>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.483189, 24.338545, 29.055681> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.788904, 24.254871, 29.299683>,  <20.972334, 24.204668, 29.446083>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.788904, 24.254871, 29.299683>,  <20.483189, 24.338545, 29.055681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.788904, 24.254871, 29.299683> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271637, 0.962344, -0.010332,
		-0.584874, 0.173597, 0.792330,
		0.764288, -0.209183, 0.610006,
		21.018190, 24.192116, 29.482685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.978361, 24.803627, 28.639572>,  <20.483189, 24.338545, 29.055681>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.978361, 24.803627, 28.639572> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.757509, 25.090410, 28.469337>,  <19.624998, 25.262480, 28.367197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.757509, 25.090410, 28.469337>,  <19.978361, 24.803627, 28.639572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.757509, 25.090410, 28.469337> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553115, -0.696916, -0.456477,
		-0.623874, -0.016636, 0.781348,
		-0.552128, 0.716960, -0.425586,
		19.591871, 25.305498, 28.341661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.259764, 24.702145, 28.854120>,  <19.978361, 24.803627, 28.639572>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.259764, 24.702145, 28.854120> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.220909, 24.932049, 28.529106>,  <19.197598, 25.069992, 28.334097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.220909, 24.932049, 28.529106>,  <19.259764, 24.702145, 28.854120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.220909, 24.932049, 28.529106> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577889, -0.697250, -0.424130,
		-0.810314, 0.428358, 0.399876,
		-0.097134, 0.574762, -0.812535,
		19.191769, 25.104477, 28.285345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.568592, 24.690239, 28.641581>,  <19.259764, 24.702145, 28.854120>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.568592, 24.690239, 28.641581> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.741964, 24.832762, 28.310478>,  <18.845987, 24.918276, 28.111816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.741964, 24.832762, 28.310478>,  <18.568592, 24.690239, 28.641581>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.741964, 24.832762, 28.310478> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527588, -0.644335, -0.553609,
		-0.730609, 0.676666, -0.091291,
		0.433431, 0.356307, -0.827758,
		18.871994, 24.939653, 28.062151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.015682, 24.733971, 28.099556>,  <18.568592, 24.690239, 28.641581>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.015682, 24.733971, 28.099556> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.360806, 24.720774, 27.897776>,  <18.567881, 24.712856, 27.776707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.360806, 24.720774, 27.897776>,  <18.015682, 24.733971, 28.099556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.360806, 24.720774, 27.897776> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479792, -0.367777, -0.796580,
		-0.159246, 0.929329, -0.333150,
		0.862810, -0.032991, -0.504451,
		18.619648, 24.710876, 27.746441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.769012, 24.952166, 27.479900>,  <18.015682, 24.733971, 28.099556>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.769012, 24.952166, 27.479900> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.125034, 24.772661, 27.447872>,  <18.338648, 24.664959, 27.428656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.125034, 24.772661, 27.447872>,  <17.769012, 24.952166, 27.479900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.125034, 24.772661, 27.447872> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323985, -0.499184, -0.803647,
		0.320675, 0.741234, -0.589694,
		0.890057, -0.448762, -0.080073,
		18.392052, 24.638033, 27.423851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.814001, 24.770824, 26.838089>,  <17.769012, 24.952166, 27.479900>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.814001, 24.770824, 26.838089> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.090746, 24.519518, 26.980417>,  <18.256794, 24.368734, 27.065815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.090746, 24.519518, 26.980417>,  <17.814001, 24.770824, 26.838089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.090746, 24.519518, 26.980417> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224968, -0.655849, -0.720591,
		0.686087, 0.418502, -0.595097,
		0.691863, -0.628266, 0.355820,
		18.298306, 24.331038, 27.087164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.204720, 24.615360, 26.201921>,  <17.814001, 24.770824, 26.838089>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.204720, 24.615360, 26.201921> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.239500, 24.322422, 26.472065>,  <18.260368, 24.146658, 26.634151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.239500, 24.322422, 26.472065>,  <18.204720, 24.615360, 26.201921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.239500, 24.322422, 26.472065> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315959, -0.663198, -0.678482,
		0.944780, -0.154390, -0.289058,
		0.086952, -0.732347, 0.675357,
		18.265585, 24.102718, 26.674673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.708090, 24.750238, 25.586899>,  <18.204720, 24.615360, 26.201921>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.708090, 24.750238, 25.586899> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.527344, 25.020491, 25.353888>,  <18.418896, 25.182642, 25.214081>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.527344, 25.020491, 25.353888>,  <18.708090, 24.750238, 25.586899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.527344, 25.020491, 25.353888> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158541, 0.703421, 0.692866,
		0.877886, 0.220727, -0.424966,
		-0.451865, 0.675632, -0.582529,
		18.391785, 25.223181, 25.179129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.298473, 25.352692, 25.437828>,  <18.708090, 24.750238, 25.586899>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.298473, 25.352692, 25.437828> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.910141, 25.448017, 25.427322>,  <18.677141, 25.505213, 25.421019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.910141, 25.448017, 25.427322>,  <19.298473, 25.352692, 25.437828>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.910141, 25.448017, 25.427322> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189635, 0.830277, 0.524097,
		0.146706, 0.503831, -0.851253,
		-0.970833, 0.238315, -0.026263,
		18.618891, 25.519512, 25.419443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.263195, 25.973211, 25.204565>,  <19.298473, 25.352692, 25.437828>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.263195, 25.973211, 25.204565> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.891867, 25.963274, 25.352945>,  <18.669069, 25.957312, 25.441973>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.891867, 25.963274, 25.352945>,  <19.263195, 25.973211, 25.204565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.891867, 25.963274, 25.352945> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153542, 0.883083, 0.443385,
		-0.338592, 0.468559, -0.815970,
		-0.928321, -0.024841, 0.370949,
		18.613371, 25.955822, 25.464230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.980429, 26.514935, 24.998535>,  <19.263195, 25.973211, 25.204565>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.980429, 26.514935, 24.998535> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.777822, 26.436159, 25.334311>,  <18.656260, 26.388893, 25.535776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.777822, 26.436159, 25.334311>,  <18.980429, 26.514935, 24.998535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.777822, 26.436159, 25.334311> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285579, 0.880297, 0.378842,
		-0.813565, 0.431615, -0.389641,
		-0.506514, -0.196939, 0.839439,
		18.625868, 26.377077, 25.586142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.767309, 27.120975, 25.080460>,  <18.980429, 26.514935, 24.998535>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.767309, 27.120975, 25.080460> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.689646, 26.945854, 25.431602>,  <18.643047, 26.840780, 25.642288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.689646, 26.945854, 25.431602>,  <18.767309, 27.120975, 25.080460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.689646, 26.945854, 25.431602> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311261, 0.821147, 0.478366,
		-0.930279, 0.366121, -0.023161,
		-0.194158, -0.437804, 0.877855,
		18.631399, 26.814512, 25.694960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.342934, 27.509157, 25.378765>,  <18.767309, 27.120975, 25.080460>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.342934, 27.509157, 25.378765> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.532394, 27.318108, 25.674747>,  <18.646070, 27.203478, 25.852337>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.532394, 27.318108, 25.674747>,  <18.342934, 27.509157, 25.378765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.532394, 27.318108, 25.674747> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224990, 0.877918, 0.422657,
		-0.851490, -0.033709, 0.523287,
		0.473650, -0.477623, 0.739954,
		18.674490, 27.174820, 25.896734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.341797, 27.949945, 25.886505>,  <18.342934, 27.509157, 25.378765>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.341797, 27.949945, 25.886505> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.607452, 27.706387, 26.060017>,  <18.766846, 27.560251, 26.164124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.607452, 27.706387, 26.060017>,  <18.341797, 27.949945, 25.886505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.607452, 27.706387, 26.060017> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299308, 0.748249, 0.592063,
		-0.685078, -0.263380, 0.679190,
		0.664141, -0.608896, 0.433777,
		18.806694, 27.523718, 26.190149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.419731, 28.171131, 26.618322>,  <18.341797, 27.949945, 25.886505>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.419731, 28.171131, 26.618322> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.756598, 27.964464, 26.556597>,  <18.958717, 27.840464, 26.519562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.756598, 27.964464, 26.556597>,  <18.419731, 28.171131, 26.618322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.756598, 27.964464, 26.556597> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475572, 0.576815, 0.664166,
		-0.254141, -0.632725, 0.731485,
		0.842166, -0.516666, -0.154314,
		19.009247, 27.809465, 26.510303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.647736, 28.048706, 27.356695>,  <18.419731, 28.171131, 26.618322>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.647736, 28.048706, 27.356695> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.943909, 28.013002, 27.090225>,  <19.121613, 27.991581, 26.930344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.943909, 28.013002, 27.090225>,  <18.647736, 28.048706, 27.356695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.943909, 28.013002, 27.090225> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557368, 0.635458, 0.534355,
		0.375632, -0.766959, 0.520264,
		0.740434, -0.089258, -0.666177,
		19.166039, 27.986225, 26.890371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<14.443410, 15.728704, 16.087603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.828323, 15.836957, 16.076515>,  <15.059272, 15.901908, 16.069862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.828323, 15.836957, 16.076515>,  <14.443410, 15.728704, 16.087603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.828323, 15.836957, 16.076515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124106, 0.527374, 0.840521,
		0.242088, -0.805380, 0.541070,
		0.962284, 0.270630, -0.027718,
		15.117008, 15.918146, 16.068199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.656829, 15.788554, 16.779427>,  <14.443410, 15.728704, 16.087603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.656829, 15.788554, 16.779427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.951612, 15.998199, 16.608688>,  <15.128481, 16.123987, 16.506245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.951612, 15.998199, 16.608688>,  <14.656829, 15.788554, 16.779427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.951612, 15.998199, 16.608688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072616, 0.689220, 0.720904,
		0.672028, -0.500279, 0.545985,
		0.736957, 0.524114, -0.426847,
		15.172699, 16.155434, 16.480635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.191781, 15.934768, 17.369921>,  <14.656829, 15.788554, 16.779427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.191781, 15.934768, 17.369921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.217774, 16.194616, 17.066931>,  <15.233371, 16.350525, 16.885138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.217774, 16.194616, 17.066931>,  <15.191781, 15.934768, 17.369921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.217774, 16.194616, 17.066931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039142, 0.760154, 0.648562,
		0.997118, -0.012497, 0.074826,
		0.064984, 0.649622, -0.757475,
		15.237269, 16.389503, 16.839687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.788653, 16.363276, 17.586615>,  <15.191781, 15.934768, 17.369921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.788653, 16.363276, 17.586615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.588831, 16.574039, 17.311569>,  <15.468938, 16.700497, 17.146542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.588831, 16.574039, 17.311569>,  <15.788653, 16.363276, 17.586615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.588831, 16.574039, 17.311569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129233, 0.830199, 0.542280,
		0.856588, 0.182037, -0.482825,
		-0.499556, 0.526908, -0.687613,
		15.438964, 16.732111, 17.105286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.329140, 16.783352, 17.168802>,  <15.788653, 16.363276, 17.586615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.329140, 16.783352, 17.168802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.972622, 16.963753, 17.187540>,  <15.758712, 17.071993, 17.198784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.972622, 16.963753, 17.187540>,  <16.329140, 16.783352, 17.168802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.972622, 16.963753, 17.187540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381295, 0.689579, 0.615707,
		0.245381, 0.566637, -0.786582,
		-0.891292, 0.451003, 0.046846,
		15.705235, 17.099054, 17.201593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.452059, 17.461260, 16.958355>,  <16.329140, 16.783352, 17.168802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.452059, 17.461260, 16.958355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.119333, 17.466740, 17.180309>,  <15.919698, 17.470028, 17.313482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.119333, 17.466740, 17.180309>,  <16.452059, 17.461260, 16.958355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.119333, 17.466740, 17.180309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321424, 0.826907, 0.461423,
		-0.452519, 0.562172, -0.692235,
		-0.831813, 0.013698, 0.554886,
		15.869789, 17.470850, 17.346775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.409752, 18.143005, 17.118713>,  <16.452059, 17.461260, 16.958355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.409752, 18.143005, 17.118713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.130894, 18.005028, 17.370110>,  <15.963579, 17.922241, 17.520948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.130894, 18.005028, 17.370110>,  <16.409752, 18.143005, 17.118713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.130894, 18.005028, 17.370110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182455, 0.762414, 0.620834,
		-0.693325, 0.547483, -0.468576,
		-0.697145, -0.344945, 0.628491,
		15.921750, 17.901545, 17.558657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.963159, 18.683960, 17.235846>,  <16.409752, 18.143005, 17.118713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.963159, 18.683960, 17.235846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.919114, 18.431276, 17.542784>,  <15.892687, 18.279667, 17.726946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.919114, 18.431276, 17.542784>,  <15.963159, 18.683960, 17.235846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.919114, 18.431276, 17.542784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020676, 0.770417, 0.637205,
		-0.993704, 0.086029, -0.071771,
		-0.110112, -0.631709, 0.767345,
		15.886081, 18.241764, 17.772987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.439333, 18.914852, 17.600986>,  <15.963159, 18.683960, 17.235846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.439333, 18.914852, 17.600986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.665734, 18.698202, 17.849594>,  <15.801575, 18.568213, 17.998758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.665734, 18.698202, 17.849594>,  <15.439333, 18.914852, 17.600986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.665734, 18.698202, 17.849594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146188, 0.676014, 0.722243,
		-0.811339, -0.499650, 0.303447,
		0.566003, -0.541623, 0.621519,
		15.835535, 18.535715, 18.036049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.218542, 19.210058, 18.270487>,  <15.439333, 18.914852, 17.600986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.218542, 19.210058, 18.270487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.536265, 18.981262, 18.352367>,  <15.726899, 18.843985, 18.401495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.536265, 18.981262, 18.352367>,  <15.218542, 19.210058, 18.270487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.536265, 18.981262, 18.352367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089020, 0.442894, 0.892144,
		-0.600958, -0.690415, 0.402712,
		0.794308, -0.571990, 0.204700,
		15.774558, 18.809666, 18.413778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.123716, 18.944162, 19.039772>,  <15.218542, 19.210058, 18.270487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.123716, 18.944162, 19.039772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.503801, 18.943665, 18.915131>,  <15.731853, 18.943365, 18.840345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.503801, 18.943665, 18.915131>,  <15.123716, 18.944162, 19.039772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.503801, 18.943665, 18.915131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259614, 0.556213, 0.789448,
		0.172334, -0.831039, 0.528843,
		0.950212, -0.001246, -0.311604,
		15.788865, 18.943291, 18.821650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.543582, 18.766079, 19.659321>,  <15.123716, 18.944162, 19.039772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.543582, 18.766079, 19.659321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.780128, 18.964508, 19.405014>,  <15.922055, 19.083567, 19.252430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.780128, 18.964508, 19.405014>,  <15.543582, 18.766079, 19.659321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.780128, 18.964508, 19.405014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315865, 0.582905, 0.748632,
		0.741969, -0.643530, 0.188017,
		0.591364, 0.496074, -0.635767,
		15.957537, 19.113331, 19.214285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.749688, 18.378117, 20.335287>,  <15.543582, 18.766079, 19.659321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.749688, 18.378117, 20.335287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.589202, 18.303543, 20.694012>,  <15.492910, 18.258799, 20.909246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.589202, 18.303543, 20.694012>,  <15.749688, 18.378117, 20.335287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.589202, 18.303543, 20.694012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591896, -0.694436, -0.409167,
		0.699060, -0.694982, 0.168270,
		-0.401216, -0.186434, 0.896810,
		15.468837, 18.247612, 20.963055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.722693, 17.649017, 20.416233>,  <15.749688, 18.378117, 20.335287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.722693, 17.649017, 20.416233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.431466, 17.794783, 20.648481>,  <15.256729, 17.882242, 20.787830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.431466, 17.794783, 20.648481>,  <15.722693, 17.649017, 20.416233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.431466, 17.794783, 20.648481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621041, -0.709226, -0.333626,
		0.290213, -0.603491, 0.742681,
		-0.728069, 0.364413, 0.580619,
		15.213045, 17.904106, 20.822668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.511486, 17.064533, 20.759724>,  <15.722693, 17.649017, 20.416233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.511486, 17.064533, 20.759724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.211996, 17.328886, 20.780304>,  <15.032302, 17.487497, 20.792652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.211996, 17.328886, 20.780304>,  <15.511486, 17.064533, 20.759724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.211996, 17.328886, 20.780304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653544, -0.722969, -0.224046,
		-0.110870, -0.201374, 0.973220,
		-0.748724, 0.660882, 0.051451,
		14.987379, 17.527151, 20.795740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.887177, 16.795931, 21.143688>,  <15.511486, 17.064533, 20.759724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.887177, 16.795931, 21.143688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.746364, 17.113558, 20.945484>,  <14.661876, 17.304134, 20.826561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.746364, 17.113558, 20.945484>,  <14.887177, 16.795931, 21.143688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.746364, 17.113558, 20.945484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788772, -0.536689, -0.299673,
		-0.503895, 0.285349, 0.815271,
		-0.352036, 0.794066, -0.495510,
		14.640753, 17.351778, 20.796831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.111768, 16.762703, 21.245615>,  <14.887177, 16.795931, 21.143688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.111768, 16.762703, 21.245615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.184681, 17.021740, 20.949671>,  <14.228429, 17.177162, 20.772104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.184681, 17.021740, 20.949671>,  <14.111768, 16.762703, 21.245615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.184681, 17.021740, 20.949671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693547, -0.448699, -0.563615,
		-0.696969, 0.615867, 0.367346,
		0.182284, 0.647593, -0.739861,
		14.239367, 17.216019, 20.727713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.494477, 16.945961, 21.138947>,  <14.111768, 16.762703, 21.245615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.494477, 16.945961, 21.138947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.706514, 17.032070, 20.810883>,  <13.833736, 17.083736, 20.614044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.706514, 17.032070, 20.810883>,  <13.494477, 16.945961, 21.138947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.706514, 17.032070, 20.810883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654937, -0.510396, -0.557273,
		-0.538571, 0.832559, -0.129567,
		0.530093, 0.215273, -0.820158,
		13.865542, 17.096653, 20.564835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.087886, 17.352575, 20.673180>,  <13.494477, 16.945961, 21.138947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.087886, 17.352575, 20.673180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.371901, 17.169449, 20.459167>,  <13.542309, 17.059574, 20.330761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.371901, 17.169449, 20.459167>,  <13.087886, 17.352575, 20.673180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.371901, 17.169449, 20.459167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703811, -0.437310, -0.559830,
		0.022324, 0.774058, -0.632720,
		0.710036, -0.457814, -0.535028,
		13.584911, 17.032104, 20.298658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.792581, 17.378342, 20.099384>,  <13.087886, 17.352575, 20.673180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.792581, 17.378342, 20.099384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.073512, 17.096941, 20.055901>,  <13.242071, 16.928101, 20.029810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.073512, 17.096941, 20.055901>,  <12.792581, 17.378342, 20.099384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.073512, 17.096941, 20.055901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565277, -0.458355, -0.685837,
		0.432661, 0.543134, -0.719590,
		0.702329, -0.703503, -0.108709,
		13.284211, 16.885891, 20.023289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.765391, 17.306122, 19.393742>,  <12.792581, 17.378342, 20.099384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.765391, 17.306122, 19.393742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.939149, 16.988047, 19.562963>,  <13.043404, 16.797201, 19.664495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.939149, 16.988047, 19.562963>,  <12.765391, 17.306122, 19.393742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.939149, 16.988047, 19.562963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504811, -0.603917, -0.616806,
		0.745967, 0.054375, -0.663759,
		0.434395, -0.795190, 0.423054,
		13.069468, 16.749489, 19.689880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.757951, 16.870205, 18.902254>,  <12.765391, 17.306122, 19.393742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.757951, 16.870205, 18.902254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.825185, 16.636644, 19.219948>,  <12.865525, 16.496508, 19.410564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.825185, 16.636644, 19.219948>,  <12.757951, 16.870205, 18.902254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.825185, 16.636644, 19.219948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472128, -0.754962, -0.455112,
		0.865357, -0.298482, -0.402574,
		0.168085, -0.583901, 0.794234,
		12.875610, 16.461473, 19.458218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.975718, 16.255632, 18.624716>,  <12.757951, 16.870205, 18.902254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.975718, 16.255632, 18.624716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.860991, 16.163761, 18.996733>,  <12.792154, 16.108639, 19.219944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.860991, 16.163761, 18.996733>,  <12.975718, 16.255632, 18.624716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.860991, 16.163761, 18.996733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477936, -0.807077, -0.346703,
		0.830248, -0.543943, 0.121714,
		-0.286819, -0.229678, 0.930044,
		12.774945, 16.094858, 19.275745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.062322, 15.540079, 18.715038>,  <12.975718, 16.255632, 18.624716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.062322, 15.540079, 18.715038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.791826, 15.654909, 18.986418>,  <12.629529, 15.723807, 19.149244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.791826, 15.654909, 18.986418>,  <13.062322, 15.540079, 18.715038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.791826, 15.654909, 18.986418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583107, -0.771403, -0.254802,
		0.450208, -0.567914, 0.689047,
		-0.676239, 0.287074, 0.678447,
		12.588955, 15.741032, 19.189951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.020274, 14.929654, 19.132284>,  <13.062322, 15.540079, 18.715038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.020274, 14.929654, 19.132284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.689554, 15.151649, 19.168930>,  <12.491122, 15.284845, 19.190918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.689554, 15.151649, 19.168930>,  <13.020274, 14.929654, 19.132284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.689554, 15.151649, 19.168930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562497, -0.815872, -0.133975,
		0.000393, -0.162305, 0.986740,
		-0.826799, 0.554986, 0.091616,
		12.441514, 15.318145, 19.196415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.547399, 14.592450, 19.641586>,  <13.020274, 14.929654, 19.132284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.547399, 14.592450, 19.641586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.318816, 14.828622, 19.413610>,  <12.181667, 14.970325, 19.276825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.318816, 14.828622, 19.413610>,  <12.547399, 14.592450, 19.641586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.318816, 14.828622, 19.413610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597534, -0.775415, -0.204168,
		-0.562487, 0.223887, 0.795916,
		-0.571455, 0.590429, -0.569941,
		12.147380, 15.005751, 19.242628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.786489, 14.650887, 20.332563>,  <12.547399, 14.592450, 19.641586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.786489, 14.650887, 20.332563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.611340, 14.898874, 20.072132>,  <12.506249, 15.047667, 19.915873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.611340, 14.898874, 20.072132>,  <12.786489, 14.650887, 20.332563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.611340, 14.898874, 20.072132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894739, 0.229794, -0.382931,
		-0.087791, -0.750222, -0.655332,
		-0.437875, 0.619969, -0.651079,
		12.479978, 15.084865, 19.876808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.430778, 14.391020, 20.430239>,  <12.786489, 14.650887, 20.332563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.430778, 14.391020, 20.430239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.433089, 14.053143, 20.644327>,  <13.434477, 13.850416, 20.772779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.433089, 14.053143, 20.644327>,  <13.430778, 14.391020, 20.430239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.433089, 14.053143, 20.644327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454044, 0.479093, 0.751209,
		-0.890961, 0.238671, 0.386297,
		0.005780, -0.844693, 0.535220,
		13.434823, 13.799735, 20.804893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.264547, 14.682540, 20.966160>,  <13.430778, 14.391020, 20.430239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.264547, 14.682540, 20.966160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.432886, 14.337015, 21.076950>,  <13.533890, 14.129701, 21.143425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.432886, 14.337015, 21.076950>,  <13.264547, 14.682540, 20.966160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.432886, 14.337015, 21.076950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486814, 0.472705, 0.734549,
		-0.765441, -0.174296, 0.619453,
		0.420847, -0.863812, 0.276978,
		13.559140, 14.077871, 21.160044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.084723, 14.545267, 21.656649>,  <13.264547, 14.682540, 20.966160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.084723, 14.545267, 21.656649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.424200, 14.351030, 21.572819>,  <13.627886, 14.234488, 21.522520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.424200, 14.351030, 21.572819>,  <13.084723, 14.545267, 21.656649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.424200, 14.351030, 21.572819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451933, 0.460002, 0.764300,
		-0.274734, -0.743369, 0.609855,
		0.848692, -0.485593, -0.209575,
		13.678808, 14.205353, 21.509947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.406076, 14.442819, 22.355932>,  <13.084723, 14.545267, 21.656649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.406076, 14.442819, 22.355932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.718087, 14.349576, 22.123650>,  <13.905293, 14.293631, 21.984280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.718087, 14.349576, 22.123650>,  <13.406076, 14.442819, 22.355932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.718087, 14.349576, 22.123650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604686, 0.519541, 0.603682,
		0.160979, -0.822033, 0.546212,
		0.780026, -0.233107, -0.580707,
		13.952095, 14.279644, 21.949438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.950594, 14.074013, 22.738821>,  <13.406076, 14.442819, 22.355932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.950594, 14.074013, 22.738821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.115623, 14.241727, 22.415344>,  <14.214640, 14.342355, 22.221258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.115623, 14.241727, 22.415344>,  <13.950594, 14.074013, 22.738821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.115623, 14.241727, 22.415344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637305, 0.501465, 0.585128,
		0.650867, -0.756791, -0.060323,
		0.412571, 0.419285, -0.808694,
		14.239394, 14.367513, 22.172735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.687875, 13.874808, 22.725838>,  <13.950594, 14.074013, 22.738821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.687875, 13.874808, 22.725838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.664538, 14.203325, 22.498831>,  <14.650537, 14.400435, 22.362627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.664538, 14.203325, 22.498831>,  <14.687875, 13.874808, 22.725838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.664538, 14.203325, 22.498831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695725, 0.441141, 0.566887,
		0.715935, -0.361763, -0.597130,
		-0.058340, 0.821293, -0.567516,
		14.647037, 14.449713, 22.328575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.355039, 14.125906, 22.609390>,  <14.687875, 13.874808, 22.725838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.355039, 14.125906, 22.609390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.144998, 14.441702, 22.482285>,  <15.018973, 14.631180, 22.406021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.144998, 14.441702, 22.482285>,  <15.355039, 14.125906, 22.609390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.144998, 14.441702, 22.482285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520222, 0.593271, 0.614328,
		0.673526, 0.157278, -0.722237,
		-0.525102, 0.789490, -0.317764,
		14.987467, 14.678549, 22.386955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.832754, 14.612198, 22.389141>,  <15.355039, 14.125906, 22.609390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.832754, 14.612198, 22.389141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.509624, 14.834286, 22.468283>,  <15.315745, 14.967539, 22.515768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.509624, 14.834286, 22.468283>,  <15.832754, 14.612198, 22.389141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.509624, 14.834286, 22.468283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555162, 0.603952, 0.571872,
		0.198020, 0.571815, -0.796125,
		-0.807826, 0.555220, 0.197855,
		15.267276, 15.000852, 22.527639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.052332, 15.261747, 22.428913>,  <15.832754, 14.612198, 22.389141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.052332, 15.261747, 22.428913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.692831, 15.287248, 22.602432>,  <15.477131, 15.302548, 22.706543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.692831, 15.287248, 22.602432>,  <16.052332, 15.261747, 22.428913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.692831, 15.287248, 22.602432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326004, 0.758764, 0.563913,
		-0.293200, 0.648238, -0.702724,
		-0.898752, 0.063752, 0.433798,
		15.423205, 15.306374, 22.732573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.863797, 16.015718, 22.354616>,  <16.052332, 15.261747, 22.428913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.863797, 16.015718, 22.354616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.639692, 15.835125, 22.632399>,  <15.505229, 15.726768, 22.799068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.639692, 15.835125, 22.632399>,  <15.863797, 16.015718, 22.354616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.639692, 15.835125, 22.632399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298867, 0.671734, 0.677829,
		-0.772518, 0.587312, -0.241414,
		-0.560263, -0.451484, 0.694455,
		15.471613, 15.699679, 22.840734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.418322, 16.630075, 22.748732>,  <15.863797, 16.015718, 22.354616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.418322, 16.630075, 22.748732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.468836, 16.300680, 22.969973>,  <15.499145, 16.103043, 23.102716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.468836, 16.300680, 22.969973>,  <15.418322, 16.630075, 22.748732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.468836, 16.300680, 22.969973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269505, 0.565074, 0.779781,
		-0.954683, 0.050589, 0.293295,
		0.126285, -0.823488, 0.553101,
		15.506721, 16.053635, 23.135902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.176595, 16.851400, 23.372488>,  <15.418322, 16.630075, 22.748732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.176595, 16.851400, 23.372488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.377275, 16.516230, 23.458447>,  <15.497683, 16.315128, 23.510021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.377275, 16.516230, 23.458447>,  <15.176595, 16.851400, 23.372488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.377275, 16.516230, 23.458447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445898, 0.463375, 0.765806,
		-0.741265, -0.288383, 0.606104,
		0.501699, -0.837925, 0.214895,
		15.527784, 16.264853, 23.522915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.146176, 16.783323, 24.142118>,  <15.176595, 16.851400, 23.372488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.146176, 16.783323, 24.142118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.459433, 16.561493, 24.029594>,  <15.647387, 16.428394, 23.962080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.459433, 16.561493, 24.029594>,  <15.146176, 16.783323, 24.142118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.459433, 16.561493, 24.029594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494871, 0.281880, 0.821977,
		-0.376554, -0.782936, 0.495195,
		0.783141, -0.554576, -0.281309,
		15.694375, 16.395121, 23.945202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.451220, 16.338308, 24.706615>,  <15.146176, 16.783323, 24.142118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.451220, 16.338308, 24.706615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.744655, 16.390528, 24.439840>,  <15.920715, 16.421860, 24.279776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.744655, 16.390528, 24.439840>,  <15.451220, 16.338308, 24.706615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.744655, 16.390528, 24.439840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618617, 0.278024, 0.734857,
		0.281380, -0.951658, 0.123176,
		0.733579, 0.130575, -0.666942,
		15.964731, 16.429691, 24.239759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.977456, 16.207054, 25.169363>,  <15.451220, 16.338308, 24.706615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.977456, 16.207054, 25.169363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.158319, 16.354712, 24.844578>,  <16.266838, 16.443306, 24.649706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.158319, 16.354712, 24.844578>,  <15.977456, 16.207054, 25.169363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.158319, 16.354712, 24.844578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666829, 0.464678, 0.582593,
		0.592361, -0.804866, -0.036046,
		0.452159, 0.369142, -0.811965,
		16.293966, 16.465454, 24.600988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.676378, 16.093113, 25.162399>,  <15.977456, 16.207054, 25.169363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.676378, 16.093113, 25.162399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.649754, 16.408939, 24.918383>,  <16.633780, 16.598436, 24.771973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.649754, 16.408939, 24.918383>,  <16.676378, 16.093113, 25.162399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.649754, 16.408939, 24.918383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603038, 0.518934, 0.605849,
		0.794931, -0.327554, -0.510679,
		-0.066560, 0.789567, -0.610044,
		16.629786, 16.645809, 24.735369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.360212, 16.297974, 25.098763>,  <16.676378, 16.093113, 25.162399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.360212, 16.297974, 25.098763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.151150, 16.612932, 24.968018>,  <17.025713, 16.801907, 24.889570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.151150, 16.612932, 24.968018>,  <17.360212, 16.297974, 25.098763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.151150, 16.612932, 24.968018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608084, 0.613023, 0.504416,
		0.597548, 0.064878, -0.799204,
		-0.522656, 0.787396, -0.326860,
		16.994352, 16.849152, 24.869959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.842485, 16.852673, 24.904432>,  <17.360212, 16.297974, 25.098763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.842485, 16.852673, 24.904432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.491976, 17.036247, 24.963114>,  <17.281670, 17.146391, 24.998322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.491976, 17.036247, 24.963114>,  <17.842485, 16.852673, 24.904432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.491976, 17.036247, 24.963114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458144, 0.699408, 0.548574,
		0.149155, 0.547912, -0.823131,
		-0.876274, 0.458935, 0.146702,
		17.229094, 17.173927, 25.007124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.893160, 17.531229, 24.656506>,  <17.842485, 16.852673, 24.904432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.893160, 17.531229, 24.656506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.605139, 17.542450, 24.933846>,  <17.432325, 17.549183, 25.100250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.605139, 17.542450, 24.933846>,  <17.893160, 17.531229, 24.656506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.605139, 17.542450, 24.933846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461554, 0.765467, 0.448360,
		-0.518159, 0.642863, -0.564126,
		-0.720054, 0.028053, 0.693350,
		17.389122, 17.550865, 25.141851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.837683, 18.269188, 24.785759>,  <17.893160, 17.531229, 24.656506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.837683, 18.269188, 24.785759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.665846, 18.094971, 25.102179>,  <17.562744, 17.990440, 25.292030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.665846, 18.094971, 25.102179>,  <17.837683, 18.269188, 24.785759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.665846, 18.094971, 25.102179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462727, 0.646079, 0.607014,
		-0.775459, 0.626806, -0.076012,
		-0.429590, -0.435541, 0.791048,
		17.536968, 17.964308, 25.339493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.702400, 18.797737, 25.180065>,  <17.837683, 18.269188, 24.785759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.702400, 18.797737, 25.180065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.678974, 18.511055, 25.458029>,  <17.664919, 18.339045, 25.624807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.678974, 18.511055, 25.458029>,  <17.702400, 18.797737, 25.180065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.678974, 18.511055, 25.458029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265966, 0.659743, 0.702852,
		-0.962202, 0.225985, 0.151982,
		-0.058565, -0.716707, 0.694911,
		17.661404, 18.296043, 25.666502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.393608, 19.118414, 25.736740>,  <17.702400, 18.797737, 25.180065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.393608, 19.118414, 25.736740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.608217, 18.803482, 25.858232>,  <17.736982, 18.614523, 25.931128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.608217, 18.803482, 25.858232>,  <17.393608, 19.118414, 25.736740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.608217, 18.803482, 25.858232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423431, 0.562499, 0.710142,
		-0.729965, -0.252398, 0.635174,
		0.536523, -0.787331, 0.303731,
		17.769175, 18.567284, 25.949352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.281010, 19.125319, 26.473269>,  <17.393608, 19.118414, 25.736740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.281010, 19.125319, 26.473269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.616123, 18.926998, 26.381788>,  <17.817190, 18.808006, 26.326900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.616123, 18.926998, 26.381788>,  <17.281010, 19.125319, 26.473269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.616123, 18.926998, 26.381788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507662, 0.553131, 0.660549,
		-0.201000, -0.669498, 0.715102,
		0.837782, -0.495800, -0.228699,
		17.867458, 18.778257, 26.313179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.617039, 19.156908, 27.160540>,  <17.281010, 19.125319, 26.473269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.617039, 19.156908, 27.160540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.918127, 19.002127, 26.947495>,  <18.098780, 18.909258, 26.819668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.918127, 19.002127, 26.947495>,  <17.617039, 19.156908, 27.160540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.918127, 19.002127, 26.947495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658226, 0.427411, 0.619724,
		-0.012161, -0.817059, 0.576425,
		0.752722, -0.386955, -0.532612,
		18.143944, 18.886040, 26.787710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.106842, 18.870890, 27.605446>,  <17.617039, 19.156908, 27.160540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.106842, 18.870890, 27.605446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.313049, 18.975395, 27.279015>,  <18.436773, 19.038099, 27.083157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.313049, 18.975395, 27.279015>,  <18.106842, 18.870890, 27.605446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.313049, 18.975395, 27.279015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720464, 0.383411, 0.577865,
		0.463869, -0.885854, 0.009423,
		0.515517, 0.261265, -0.816078,
		18.467705, 19.053774, 27.034191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.856239, 18.700651, 27.641350>,  <18.106842, 18.870890, 27.605446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.856239, 18.700651, 27.641350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.849678, 19.000351, 27.376516>,  <18.845741, 19.180170, 27.217615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.849678, 19.000351, 27.376516>,  <18.856239, 18.700651, 27.641350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.849678, 19.000351, 27.376516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772621, 0.429810, 0.467249,
		0.634656, -0.503875, -0.585936,
		-0.016406, 0.749249, -0.662086,
		18.844757, 19.225126, 27.177891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.448931, 18.775761, 27.375435>,  <18.856239, 18.700651, 27.641350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.448931, 18.775761, 27.375435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.277109, 19.136951, 27.371162>,  <19.174017, 19.353666, 27.368599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.277109, 19.136951, 27.371162>,  <19.448931, 18.775761, 27.375435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.277109, 19.136951, 27.371162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760673, 0.368181, 0.534621,
		0.486684, 0.221523, -0.845025,
		-0.429552, 0.902979, -0.010681,
		19.148243, 19.407845, 27.367958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
