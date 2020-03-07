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
	<2.283683, 3.336323, 0.074530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.143585, 3.349884, 0.448948>,  <2.059527, 3.358021, 0.673599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.143585, 3.349884, 0.448948>,  <2.283683, 3.336323, 0.074530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.143585, 3.349884, 0.448948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727913, 0.619066, -0.294789,
		-0.589468, -0.784607, -0.192144,
		-0.350244, 0.033904, 0.936045,
		2.038512, 3.360055, 0.729761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.573405, 3.298514, -0.064555>,  <2.283683, 3.336323, 0.074530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.573405, 3.298514, -0.064555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.700348, 3.471031, 0.273266>,  <1.776514, 3.574542, 0.475959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.700348, 3.471031, 0.273266>,  <1.573405, 3.298514, -0.064555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.700348, 3.471031, 0.273266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678103, 0.725783, -0.115829,
		-0.662918, -0.535934, 0.522794,
		0.317359, 0.431293, 0.844553,
		1.795555, 3.600419, 0.526632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.039626, 3.187942, 0.480392>,  <1.573405, 3.298514, -0.064555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.039626, 3.187942, 0.480392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.277306, 3.507942, 0.447105>,  <1.419913, 3.699943, 0.427133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.277306, 3.507942, 0.447105>,  <1.039626, 3.187942, 0.480392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.277306, 3.507942, 0.447105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804262, 0.589751, -0.073188,
		-0.009473, 0.110416, 0.993840,
		0.594199, 0.800001, -0.083217,
		1.455565, 3.747943, 0.422140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.722597, 3.723996, 0.822542>,  <1.039626, 3.187942, 0.480392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.722597, 3.723996, 0.822542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.971016, 3.884216, 0.553066>,  <1.120067, 3.980349, 0.391381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.971016, 3.884216, 0.553066>,  <0.722597, 3.723996, 0.822542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.971016, 3.884216, 0.553066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779728, 0.402961, -0.479214,
		0.079521, 0.822910, 0.562579,
		0.621048, 0.400551, -0.673690,
		1.157330, 4.004382, 0.350959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.694744, 4.500770, 0.795584>,  <0.722597, 3.723996, 0.822542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.694744, 4.500770, 0.795584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.736866, 4.300240, 0.452053>,  <0.762139, 4.179922, 0.245935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.736866, 4.300240, 0.452053>,  <0.694744, 4.500770, 0.795584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.736866, 4.300240, 0.452053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949433, 0.206193, -0.236775,
		0.295785, 0.840332, -0.454262,
		0.105304, -0.501325, -0.858827,
		0.768457, 4.149842, 0.194405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.461935, 4.885070, 0.167284>,  <0.694744, 4.500770, 0.795584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.461935, 4.885070, 0.167284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.433464, 4.502296, 0.054707>,  <0.416381, 4.272632, -0.012840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.433464, 4.502296, 0.054707>,  <0.461935, 4.885070, 0.167284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.433464, 4.502296, 0.054707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858795, 0.202310, -0.470683,
		0.507352, 0.208200, -0.836210,
		-0.071177, -0.956934, -0.281444,
		0.412111, 4.215216, -0.029727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.310954, 4.976942, -0.496215>,  <0.461935, 4.885070, 0.167284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.310954, 4.976942, -0.496215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.217045, 4.611671, -0.362953>,  <0.160699, 4.392509, -0.282996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.217045, 4.611671, -0.362953>,  <0.310954, 4.976942, -0.496215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.217045, 4.611671, -0.362953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907988, 0.083653, -0.410561,
		0.347045, -0.398889, -0.848792,
		-0.234772, -0.913176, 0.333155,
		0.146613, 4.337719, -0.263007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.013161, 4.717545, -1.071700>,  <0.310954, 4.976942, -0.496215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.013161, 4.717545, -1.071700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.132534, 4.444283, -0.805096>,  <-0.204158, 4.280325, -0.645133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.132534, 4.444283, -0.805096>,  <-0.013161, 4.717545, -1.071700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.132534, 4.444283, -0.805096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894257, -0.043892, -0.445396,
		0.333529, -0.728952, -0.597819,
		-0.298433, -0.683156, 0.666510,
		-0.222064, 4.239336, -0.605143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.486786, 4.881820, 4.104393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.358301, 4.802185, 4.474731>,  <3.281210, 4.754405, 4.696934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.358301, 4.802185, 4.474731>,  <3.486786, 4.881820, 4.104393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.358301, 4.802185, 4.474731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868851, -0.450869, 0.204487,
		0.376724, 0.870104, 0.317801,
		-0.321211, -0.199086, 0.925844,
		3.261938, 4.742459, 4.752485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.905256, 5.133414, 4.661496>,  <3.486786, 4.881820, 4.104393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.905256, 5.133414, 4.661496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.730584, 4.788818, 4.765148>,  <3.625781, 4.582061, 4.827339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.730584, 4.788818, 4.765148>,  <3.905256, 5.133414, 4.661496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.730584, 4.788818, 4.765148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899377, -0.424709, 0.103648,
		0.020764, 0.278316, 0.960265,
		-0.436680, -0.861488, 0.259130,
		3.599580, 4.530372, 4.842887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.258846, 4.853228, 5.295389>,  <3.905256, 5.133414, 4.661496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.258846, 4.853228, 5.295389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.097524, 4.556000, 5.081776>,  <4.000731, 4.377663, 4.953608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.097524, 4.556000, 5.081776>,  <4.258846, 4.853228, 5.295389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.097524, 4.556000, 5.081776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845375, -0.525947, 0.093387,
		-0.350267, -0.413795, 0.840290,
		-0.403305, -0.743070, -0.534033,
		3.976532, 4.333079, 4.921566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.297334, 4.178151, 5.605963>,  <4.258846, 4.853228, 5.295389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.297334, 4.178151, 5.605963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.277892, 4.107895, 5.212662>,  <4.266227, 4.065742, 4.976681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.277892, 4.107895, 5.212662>,  <4.297334, 4.178151, 5.605963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.277892, 4.107895, 5.212662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848553, -0.526538, 0.052109,
		-0.526873, -0.831810, 0.174632,
		-0.048605, -0.175640, -0.983254,
		4.263310, 4.055203, 4.917686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.306389, 3.500211, 5.403755>,  <4.297334, 4.178151, 5.605963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.306389, 3.500211, 5.403755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.467696, 3.716599, 5.108532>,  <4.564480, 3.846431, 4.931398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.467696, 3.716599, 5.108532>,  <4.306389, 3.500211, 5.403755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.467696, 3.716599, 5.108532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890170, -0.418826, 0.179397,
		-0.212070, -0.729341, -0.650453,
		0.403268, 0.540968, -0.738057,
		4.588676, 3.878889, 4.887115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.773715, 3.079847, 5.015274>,  <4.306389, 3.500211, 5.403755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.773715, 3.079847, 5.015274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.895548, 3.457275, 4.963272>,  <4.968648, 3.683733, 4.932071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.895548, 3.457275, 4.963272>,  <4.773715, 3.079847, 5.015274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.895548, 3.457275, 4.963272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952485, -0.301573, 0.042724,
		0.001107, -0.136840, -0.990593,
		0.304583, 0.943572, -0.130004,
		4.986923, 3.740347, 4.924271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.415729, 3.057635, 4.512727>,  <4.773715, 3.079847, 5.015274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.415729, 3.057635, 4.512727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.430537, 3.418152, 4.685379>,  <5.439422, 3.634462, 4.788970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.430537, 3.418152, 4.685379>,  <5.415729, 3.057635, 4.512727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.430537, 3.418152, 4.685379> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999095, -0.042434, 0.002914,
		0.020942, 0.431131, -0.902047,
		0.037021, 0.901291, 0.431629,
		5.441643, 3.688539, 4.814868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.938560, 3.247402, 4.202570>,  <5.415729, 3.057635, 4.512727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.938560, 3.247402, 4.202570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.888459, 3.500015, 4.508636>,  <5.858399, 3.651583, 4.692276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.888459, 3.500015, 4.508636>,  <5.938560, 3.247402, 4.202570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.888459, 3.500015, 4.508636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990430, 0.124652, 0.059244,
		-0.057964, 0.765264, -0.641101,
		-0.125252, 0.631532, 0.765166,
		5.850883, 3.689475, 4.738186>
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
