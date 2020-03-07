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
	<-0.431093, 5.383348, 2.880927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.104462, 5.170059, 2.792497>,  <0.091517, 5.042086, 2.739439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.104462, 5.170059, 2.792497>,  <-0.431093, 5.383348, 2.880927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.104462, 5.170059, 2.792497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457699, -0.364743, -0.810847,
		0.351726, 0.763306, -0.541897,
		0.816578, -0.533222, -0.221075,
		0.140512, 5.010093, 2.726174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.372431, 4.938212, 3.403953>,  <-0.431093, 5.383348, 2.880927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.372431, 4.938212, 3.403953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.163496, 5.231340, 3.229535>,  <-0.038135, 5.407218, 3.124883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.163496, 5.231340, 3.229535>,  <-0.372431, 4.938212, 3.403953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.163496, 5.231340, 3.229535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752409, -0.155427, 0.640097,
		0.401303, -0.662432, -0.632566,
		0.522338, 0.732821, -0.436047,
		-0.006794, 5.451187, 3.098721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.262986, 4.687379, 3.323170>,  <-0.372431, 4.938212, 3.403953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.262986, 4.687379, 3.323170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.313780, 5.083467, 3.300058>,  <0.344256, 5.321120, 3.286190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.313780, 5.083467, 3.300058>,  <0.262986, 4.687379, 3.323170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.313780, 5.083467, 3.300058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764924, -0.060674, 0.641256,
		0.631480, -0.125627, -0.765148,
		0.126984, 0.990220, -0.057781,
		0.351875, 5.380534, 3.282723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.972826, 4.899678, 3.135281>,  <0.262986, 4.687379, 3.323170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.972826, 4.899678, 3.135281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.770367, 5.113234, 3.406213>,  <0.648891, 5.241367, 3.568773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.770367, 5.113234, 3.406213>,  <0.972826, 4.899678, 3.135281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.770367, 5.113234, 3.406213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757527, -0.100214, 0.645066,
		0.412272, 0.839595, -0.353713,
		-0.506147, 0.533890, 0.677331,
		0.618523, 5.273400, 3.609412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.929344, 4.092836, 2.905116>,  <0.972826, 4.899678, 3.135281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.929344, 4.092836, 2.905116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.617939, 4.287449, 2.746521>,  <0.431096, 4.404217, 2.651363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.617939, 4.287449, 2.746521>,  <0.929344, 4.092836, 2.905116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.617939, 4.287449, 2.746521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584560, 0.332105, -0.740267,
		-0.228489, -0.808079, -0.542956,
		-0.778513, 0.486533, -0.396488,
		0.384385, 4.433409, 2.627574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.878296, 3.999621, 2.166592>,  <0.929344, 4.092836, 2.905116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.878296, 3.999621, 2.166592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.731730, 4.356359, 2.272687>,  <0.643789, 4.570402, 2.336344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.731730, 4.356359, 2.272687>,  <0.878296, 3.999621, 2.166592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.731730, 4.356359, 2.272687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623404, 0.446933, -0.641575,
		-0.690728, -0.069734, -0.719744,
		-0.366417, 0.891845, 0.265237,
		0.621804, 4.623913, 2.352258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.627907, 4.350846, 1.526051>,  <0.878296, 3.999621, 2.166592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.627907, 4.350846, 1.526051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.751043, 4.591000, 1.821286>,  <0.824925, 4.735092, 1.998427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.751043, 4.591000, 1.821286>,  <0.627907, 4.350846, 1.526051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.751043, 4.591000, 1.821286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697832, 0.384840, -0.604093,
		-0.646734, 0.701025, -0.300498,
		0.307840, 0.600385, 0.738087,
		0.843395, 4.771115, 2.042712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.577543, 5.110738, 1.455204>,  <0.627907, 4.350846, 1.526051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.577543, 5.110738, 1.455204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.890133, 5.002176, 1.679931>,  <1.077687, 4.937039, 1.814767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.890133, 5.002176, 1.679931>,  <0.577543, 5.110738, 1.455204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.890133, 5.002176, 1.679931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621930, 0.411013, -0.666537,
		-0.050013, 0.870292, 0.489990,
		0.781474, -0.271404, 0.561817,
		1.124575, 4.920755, 1.848476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.454897, 0.999435, 2.285552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.205351, 1.276213, 2.140221>,  <3.055624, 1.442279, 2.053022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.205351, 1.276213, 2.140221>,  <3.454897, 0.999435, 2.285552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.205351, 1.276213, 2.140221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275827, 0.629916, 0.726034,
		0.731241, 0.352731, -0.583838,
		-0.623864, 0.691944, -0.363328,
		3.018192, 1.483796, 2.031223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.860755, 1.414981, 2.033893>,  <3.454897, 0.999435, 2.285552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.860755, 1.414981, 2.033893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.519309, 1.592491, 2.143003>,  <3.314441, 1.698997, 2.208468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.519309, 1.592491, 2.143003>,  <3.860755, 1.414981, 2.033893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.519309, 1.592491, 2.143003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482501, 0.476266, 0.735094,
		0.196303, 0.759101, -0.620669,
		-0.853615, 0.443774, 0.272774,
		3.263225, 1.725623, 2.224835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.872163, 2.242118, 2.040130>,  <3.860755, 1.414981, 2.033893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.872163, 2.242118, 2.040130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.600805, 2.085171, 2.288590>,  <3.437990, 1.991002, 2.437666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.600805, 2.085171, 2.288590>,  <3.872163, 2.242118, 2.040130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.600805, 2.085171, 2.288590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412889, 0.495703, 0.764069,
		-0.607702, 0.774807, -0.174278,
		-0.678396, -0.392368, 0.621149,
		3.397286, 1.967460, 2.474935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.498060, 2.825835, 2.434302>,  <3.872163, 2.242118, 2.040130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.498060, 2.825835, 2.434302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.554215, 2.488783, 2.642250>,  <3.587908, 2.286551, 2.767019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.554215, 2.488783, 2.642250>,  <3.498060, 2.825835, 2.434302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.554215, 2.488783, 2.642250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328406, 0.534974, 0.778429,
		-0.934045, 0.061447, 0.351828,
		0.140387, -0.842631, 0.519870,
		3.596331, 2.235994, 2.798211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.343664, 2.910871, 3.162486>,  <3.498060, 2.825835, 2.434302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.343664, 2.910871, 3.162486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.579323, 2.588087, 3.179085>,  <3.720719, 2.394417, 3.189044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.579323, 2.588087, 3.179085>,  <3.343664, 2.910871, 3.162486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.579323, 2.588087, 3.179085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387975, 0.327556, 0.861500,
		-0.708788, -0.491451, 0.506058,
		0.589147, -0.806959, 0.041497,
		3.756068, 2.345999, 3.191535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.214417, 2.407579, 3.813990>,  <3.343664, 2.910871, 3.162486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.214417, 2.407579, 3.813990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.577072, 2.459120, 3.653289>,  <3.794665, 2.490044, 3.556868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.577072, 2.459120, 3.653289>,  <3.214417, 2.407579, 3.813990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.577072, 2.459120, 3.653289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334283, 0.361592, 0.870348,
		0.257416, -0.923390, 0.284760,
		0.906637, 0.128851, -0.401753,
		3.849063, 2.497775, 3.532763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.748280, 1.958353, 4.126205>,  <3.214417, 2.407579, 3.813990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.748280, 1.958353, 4.126205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.883729, 2.306551, 3.983336>,  <3.964999, 2.515470, 3.897615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.883729, 2.306551, 3.983336>,  <3.748280, 1.958353, 4.126205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.883729, 2.306551, 3.983336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212870, 0.298881, 0.930245,
		0.916526, -0.391035, -0.084094,
		0.338624, 0.870495, -0.357172,
		3.985317, 2.567699, 3.876185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.474990, 2.175868, 4.265390>,  <3.748280, 1.958353, 4.126205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.474990, 2.175868, 4.265390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.154511, 2.415154, 4.271343>,  <3.962224, 2.558725, 4.274915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.154511, 2.415154, 4.271343>,  <4.474990, 2.175868, 4.265390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.154511, 2.415154, 4.271343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016094, -0.003320, 0.999865,
		0.598183, 0.801329, -0.006968,
		-0.801198, 0.598214, 0.014883,
		3.914152, 2.594618, 4.275807>
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
