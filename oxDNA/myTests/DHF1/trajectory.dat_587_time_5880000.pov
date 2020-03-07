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
	<3.108337, 0.936528, 6.444954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.252270, 0.816254, 6.091659>,  <3.338629, 0.744090, 5.879682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.252270, 0.816254, 6.091659>,  <3.108337, 0.936528, 6.444954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.252270, 0.816254, 6.091659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582155, 0.667416, -0.464382,
		0.729120, 0.681282, 0.065113,
		0.359833, -0.300684, -0.883238,
		3.360219, 0.726049, 5.826687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.356159, 1.464629, 5.907827>,  <3.108337, 0.936528, 6.444954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.356159, 1.464629, 5.907827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.220409, 1.150862, 5.700169>,  <3.138959, 0.962601, 5.575573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.220409, 1.150862, 5.700169>,  <3.356159, 1.464629, 5.907827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.220409, 1.150862, 5.700169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666734, 0.589913, -0.455488,
		0.663545, 0.191552, -0.723199,
		-0.339375, -0.784418, -0.519148,
		3.118597, 0.915536, 5.544425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.952585, 1.825273, 5.416052>,  <3.356159, 1.464629, 5.907827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.952585, 1.825273, 5.416052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.861252, 1.456300, 5.291485>,  <2.806452, 1.234916, 5.216744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.861252, 1.456300, 5.291485>,  <2.952585, 1.825273, 5.416052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.861252, 1.456300, 5.291485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734944, 0.373096, -0.566265,
		0.638531, 0.099579, -0.763126,
		-0.228331, -0.922433, -0.311419,
		2.792752, 1.179570, 5.198059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.836851, 1.860078, 4.685607>,  <2.952585, 1.825273, 5.416052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.836851, 1.860078, 4.685607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.657349, 1.546414, 4.857055>,  <2.549647, 1.358217, 4.959923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.657349, 1.546414, 4.857055>,  <2.836851, 1.860078, 4.685607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.657349, 1.546414, 4.857055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816485, 0.164798, -0.553348,
		0.363277, -0.598279, -0.714208,
		-0.448757, -0.784158, 0.428618,
		2.522722, 1.311167, 4.985640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.595676, 1.668322, 4.125844>,  <2.836851, 1.860078, 4.685607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.595676, 1.668322, 4.125844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.395176, 1.511767, 4.434535>,  <2.274876, 1.417833, 4.619750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.395176, 1.511767, 4.434535>,  <2.595676, 1.668322, 4.125844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.395176, 1.511767, 4.434535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845978, 0.034232, -0.532117,
		0.181849, -0.919587, -0.348269,
		-0.501250, -0.391392, 0.771726,
		2.244801, 1.394350, 4.666053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.310548, 1.012589, 3.855719>,  <2.595676, 1.668322, 4.125844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.310548, 1.012589, 3.855719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.091164, 1.160414, 4.155749>,  <1.959533, 1.249108, 4.335768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.091164, 1.160414, 4.155749>,  <2.310548, 1.012589, 3.855719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.091164, 1.160414, 4.155749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793406, 0.053213, -0.606362,
		-0.264002, -0.927682, 0.264026,
		-0.548461, 0.369561, 0.750076,
		1.926625, 1.271282, 4.380772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.734919, 0.560169, 3.876870>,  <2.310548, 1.012589, 3.855719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.734919, 0.560169, 3.876870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.611435, 0.889731, 4.066977>,  <1.537345, 1.087468, 4.181040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.611435, 0.889731, 4.066977>,  <1.734919, 0.560169, 3.876870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.611435, 0.889731, 4.066977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873294, -0.047520, -0.484870,
		-0.376902, -0.564731, 0.734182,
		-0.308710, 0.823906, 0.475266,
		1.518822, 1.136902, 4.209556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.941654, 0.477268, 4.044291>,  <1.734919, 0.560169, 3.876870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.941654, 0.477268, 4.044291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.005398, 0.869790, 4.087457>,  <1.043644, 1.105303, 4.113356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.005398, 0.869790, 4.087457>,  <0.941654, 0.477268, 4.044291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.005398, 0.869790, 4.087457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865967, 0.191437, -0.462010,
		-0.474031, -0.019824, 0.880285,
		0.159360, 0.981304, 0.107914,
		1.053206, 1.164181, 4.119831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.069304, 1.505322, 3.317660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.045074, 1.840681, 3.534332>,  <0.030537, 2.041897, 3.664336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.045074, 1.840681, 3.534332>,  <0.069304, 1.505322, 3.317660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.045074, 1.840681, 3.534332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884071, -0.206883, 0.419069,
		0.463411, 0.504269, -0.728672,
		-0.060574, 0.838398, 0.541682,
		0.026902, 2.092201, 3.696837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.638479, 1.976683, 3.177388>,  <0.069304, 1.505322, 3.317660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.638479, 1.976683, 3.177388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.497108, 1.975534, 3.551571>,  <0.412286, 1.974845, 3.776081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.497108, 1.975534, 3.551571>,  <0.638479, 1.976683, 3.177388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.497108, 1.975534, 3.551571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889754, -0.309795, 0.335209,
		0.288837, 0.950799, 0.112045,
		-0.353427, -0.002871, 0.935458,
		0.391080, 1.974673, 3.832208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.162277, 2.382083, 3.593019>,  <0.638479, 1.976683, 3.177388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.162277, 2.382083, 3.593019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.956772, 2.100082, 3.788578>,  <0.833469, 1.930882, 3.905913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.956772, 2.100082, 3.788578>,  <1.162277, 2.382083, 3.593019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.956772, 2.100082, 3.788578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796745, -0.180723, 0.576660,
		-0.318192, 0.685792, 0.654556,
		-0.513762, -0.705002, 0.488897,
		0.802643, 1.888582, 3.935247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.177702, 2.414807, 4.383836>,  <1.162277, 2.382083, 3.593019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.177702, 2.414807, 4.383836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.125099, 2.026630, 4.302893>,  <1.093537, 1.793724, 4.254327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.125099, 2.026630, 4.302893>,  <1.177702, 2.414807, 4.383836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.125099, 2.026630, 4.302893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807736, -0.223237, 0.545644,
		-0.574690, -0.091695, 0.813218,
		-0.131507, -0.970442, -0.202357,
		1.085647, 1.735498, 4.242186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.107745, 2.083354, 5.034966>,  <1.177702, 2.414807, 4.383836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.107745, 2.083354, 5.034966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.224892, 1.796608, 4.781878>,  <1.295179, 1.624560, 4.630025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.224892, 1.796608, 4.781878>,  <1.107745, 2.083354, 5.034966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.224892, 1.796608, 4.781878> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766131, -0.219988, 0.603861,
		-0.572078, -0.661597, 0.484786,
		0.292865, -0.716865, -0.632720,
		1.312751, 1.581548, 4.592062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.187776, 1.548872, 5.434577>,  <1.107745, 2.083354, 5.034966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.187776, 1.548872, 5.434577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.404839, 1.466213, 5.108921>,  <1.535076, 1.416618, 4.913528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.404839, 1.466213, 5.108921>,  <1.187776, 1.548872, 5.434577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.404839, 1.466213, 5.108921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771440, -0.260809, 0.580396,
		-0.332273, -0.943014, 0.017888,
		0.542656, -0.206649, -0.814138,
		1.567635, 1.404219, 4.864680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.489764, 0.925458, 5.613025>,  <1.187776, 1.548872, 5.434577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.489764, 0.925458, 5.613025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.724640, 1.064611, 5.320673>,  <1.865565, 1.148104, 5.145262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.724640, 1.064611, 5.320673>,  <1.489764, 0.925458, 5.613025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.724640, 1.064611, 5.320673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803595, -0.358943, 0.474759,
		-0.097182, -0.866104, -0.490326,
		0.587189, 0.347885, -0.730879,
		1.900797, 1.168977, 5.101409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.867562, 0.328372, 5.460991>,  <1.489764, 0.925458, 5.613025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.867562, 0.328372, 5.460991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.063148, 0.646109, 5.316807>,  <2.180500, 0.836751, 5.230296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.063148, 0.646109, 5.316807>,  <1.867562, 0.328372, 5.460991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.063148, 0.646109, 5.316807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833253, -0.303078, 0.462421,
		0.258073, -0.526464, -0.810083,
		0.488966, 0.794342, -0.360462,
		2.209838, 0.884411, 5.208668>
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
