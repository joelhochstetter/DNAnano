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
	<2.615518, -0.065353, 3.156306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.995831, 0.039318, 3.222682>,  <3.224020, 0.102121, 3.262507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.995831, 0.039318, 3.222682>,  <2.615518, -0.065353, 3.156306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.995831, 0.039318, 3.222682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271281, 0.961762, 0.037703,
		-0.149728, -0.080863, 0.985415,
		0.950783, 0.261679, 0.165939,
		3.281066, 0.117822, 3.272464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.592655, 0.341012, 3.786736>,  <2.615518, -0.065353, 3.156306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.592655, 0.341012, 3.786736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.911312, 0.431194, 3.562405>,  <3.102507, 0.485304, 3.427806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.911312, 0.431194, 3.562405>,  <2.592655, 0.341012, 3.786736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.911312, 0.431194, 3.562405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275921, 0.961164, -0.005546,
		0.537798, 0.159163, 0.827913,
		0.796643, 0.225455, -0.560829,
		3.150305, 0.498831, 3.394156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.816882, 1.069706, 4.110479>,  <2.592655, 0.341012, 3.786736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.816882, 1.069706, 4.110479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.945925, 1.020988, 3.735013>,  <3.023350, 0.991758, 3.509733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.945925, 1.020988, 3.735013>,  <2.816882, 1.069706, 4.110479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.945925, 1.020988, 3.735013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143194, 0.973994, -0.175591,
		0.935639, 0.191058, 0.296778,
		0.322607, -0.121793, -0.938664,
		3.042707, 0.984451, 3.453414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.403695, 1.566256, 3.870620>,  <2.816882, 1.069706, 4.110479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.403695, 1.566256, 3.870620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.151776, 1.461201, 3.578215>,  <3.000625, 1.398168, 3.402772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.151776, 1.461201, 3.578215>,  <3.403695, 1.566256, 3.870620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.151776, 1.461201, 3.578215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111957, 0.961969, -0.249160,
		0.768650, -0.075078, -0.635248,
		-0.629796, -0.262638, -0.731012,
		2.962838, 1.382409, 3.358911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.515034, 2.099998, 3.426158>,  <3.403695, 1.566256, 3.870620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.515034, 2.099998, 3.426158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.166761, 1.926344, 3.333690>,  <2.957798, 1.822152, 3.278208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.166761, 1.926344, 3.333690>,  <3.515034, 2.099998, 3.426158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.166761, 1.926344, 3.333690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328958, 0.863417, -0.382487,
		0.365649, -0.256979, -0.894574,
		-0.870682, -0.434134, -0.231172,
		2.905557, 1.796104, 3.264338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.348521, 2.456470, 2.845546>,  <3.515034, 2.099998, 3.426158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.348521, 2.456470, 2.845546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.005254, 2.268007, 2.927088>,  <2.799293, 2.154929, 2.976012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.005254, 2.268007, 2.927088>,  <3.348521, 2.456470, 2.845546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.005254, 2.268007, 2.927088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511099, 0.746846, -0.425440,
		0.048202, -0.469289, -0.881728,
		-0.858169, -0.471157, 0.203854,
		2.747803, 2.126660, 2.988244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.910393, 2.329905, 2.252045>,  <3.348521, 2.456470, 2.845546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.910393, 2.329905, 2.252045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.649260, 2.359989, 2.553548>,  <2.492579, 2.378040, 2.734450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.649260, 2.359989, 2.553548>,  <2.910393, 2.329905, 2.252045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.649260, 2.359989, 2.553548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435629, 0.776774, -0.454808,
		-0.619705, -0.625273, -0.474341,
		-0.652835, 0.075210, 0.753758,
		2.453409, 2.382552, 2.779675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.239200, 2.446686, 1.907823>,  <2.910393, 2.329905, 2.252045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.239200, 2.446686, 1.907823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.162290, 2.517080, 2.293996>,  <2.116143, 2.559317, 2.525700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.162290, 2.517080, 2.293996>,  <2.239200, 2.446686, 1.907823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.162290, 2.517080, 2.293996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464902, 0.850052, -0.247544,
		-0.864232, -0.496428, -0.081628,
		-0.192275, 0.175986, 0.965432,
		2.104607, 2.569876, 2.583626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.844985, 4.263540, 2.426859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.644741, 3.924072, 2.358566>,  <1.524595, 3.720391, 2.317591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.644741, 3.924072, 2.358566>,  <1.844985, 4.263540, 2.426859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.644741, 3.924072, 2.358566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672825, -0.505543, 0.540123,
		-0.544698, 0.155519, 0.824086,
		-0.500610, -0.848670, -0.170731,
		1.494558, 3.669471, 2.307347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.089981, 3.878620, 3.019809>,  <1.844985, 4.263540, 2.426859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.089981, 3.878620, 3.019809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.882397, 3.611306, 2.806615>,  <1.757846, 3.450917, 2.678698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.882397, 3.611306, 2.806615>,  <2.089981, 3.878620, 3.019809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.882397, 3.611306, 2.806615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428358, -0.742899, 0.514403,
		-0.739723, 0.038646, 0.671801,
		-0.518960, -0.668287, -0.532985,
		1.726709, 3.410820, 2.646719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.154359, 3.391958, 3.463598>,  <2.089981, 3.878620, 3.019809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.154359, 3.391958, 3.463598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.974281, 3.207399, 3.157804>,  <1.866234, 3.096664, 2.974328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.974281, 3.207399, 3.157804>,  <2.154359, 3.391958, 3.463598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.974281, 3.207399, 3.157804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268172, -0.886493, 0.377112,
		-0.851709, -0.035239, 0.522829,
		-0.450195, -0.461398, -0.764484,
		1.839223, 3.068980, 2.928459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.818771, 2.930990, 3.794205>,  <2.154359, 3.391958, 3.463598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.818771, 2.930990, 3.794205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.918301, 2.823872, 3.421888>,  <1.978019, 2.759602, 3.198498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.918301, 2.823872, 3.421888>,  <1.818771, 2.930990, 3.794205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.918301, 2.823872, 3.421888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414169, -0.839301, 0.352190,
		-0.875529, -0.473138, -0.097926,
		0.248824, -0.267794, -0.930792,
		1.992948, 2.743534, 3.142651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.661016, 2.283276, 3.715615>,  <1.818771, 2.930990, 3.794205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.661016, 2.283276, 3.715615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.905418, 2.294548, 3.399166>,  <2.052060, 2.301312, 3.209296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.905418, 2.294548, 3.399166>,  <1.661016, 2.283276, 3.715615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.905418, 2.294548, 3.399166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441861, -0.841342, 0.311292,
		-0.656832, -0.539768, -0.526519,
		0.611008, 0.028181, -0.791123,
		2.088721, 2.303003, 3.161829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.591103, 1.651974, 3.365806>,  <1.661016, 2.283276, 3.715615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.591103, 1.651974, 3.365806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.944798, 1.784345, 3.233981>,  <2.157014, 1.863768, 3.154885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.944798, 1.784345, 3.233981>,  <1.591103, 1.651974, 3.365806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.944798, 1.784345, 3.233981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395347, -0.906045, 0.150942,
		-0.248649, -0.263760, -0.931989,
		0.884237, 0.330927, -0.329564,
		2.210068, 1.883624, 3.135111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.757854, 1.185947, 2.976064>,  <1.591103, 1.651974, 3.365806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.757854, 1.185947, 2.976064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.099316, 1.384315, 3.039736>,  <2.304193, 1.503336, 3.077939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.099316, 1.384315, 3.039736>,  <1.757854, 1.185947, 2.976064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.099316, 1.384315, 3.039736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492864, -0.867967, 0.060978,
		0.168402, 0.026399, -0.985365,
		0.853654, 0.495920, 0.159178,
		2.355412, 1.533091, 3.087489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.348024, 1.106995, 2.461541>,  <1.757854, 1.185947, 2.976064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.348024, 1.106995, 2.461541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.423031, 1.138195, 2.853205>,  <2.468035, 1.156915, 3.088203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.423031, 1.138195, 2.853205>,  <2.348024, 1.106995, 2.461541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.423031, 1.138195, 2.853205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264169, -0.964120, 0.026212,
		0.946072, 0.253748, -0.201394,
		0.187517, 0.078001, 0.979159,
		2.479286, 1.161595, 3.146953>
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
