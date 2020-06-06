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
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 56
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<24.784351, 34.633755, 34.927452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.548771, 34.930271, 35.056210>,  <24.407423, 35.108181, 35.133465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.548771, 34.930271, 35.056210>,  <24.784351, 34.633755, 34.927452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.548771, 34.930271, 35.056210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792290, 0.451041, 0.410899,
		0.159409, 0.497034, -0.852963,
		-0.588952, 0.741295, 0.321895,
		24.372086, 35.152660, 35.152779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.010960, 35.359528, 34.720783>,  <24.784351, 34.633755, 34.927452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.010960, 35.359528, 34.720783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.827526, 35.355579, 35.076221>,  <24.717466, 35.353210, 35.289486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.827526, 35.355579, 35.076221>,  <25.010960, 35.359528, 34.720783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.827526, 35.355579, 35.076221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808771, 0.409702, 0.421940,
		-0.368223, 0.912166, -0.179902,
		-0.458586, -0.009869, 0.888595,
		24.689951, 35.352619, 35.342800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.113270, 36.077469, 35.062851>,  <25.010960, 35.359528, 34.720783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.113270, 36.077469, 35.062851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.049356, 35.808029, 35.351498>,  <25.011009, 35.646366, 35.524685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.049356, 35.808029, 35.351498>,  <25.113270, 36.077469, 35.062851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.049356, 35.808029, 35.351498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821163, 0.315015, 0.475874,
		-0.547869, 0.668605, 0.502800,
		-0.159782, -0.673597, 0.721621,
		25.001421, 35.605949, 35.567986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.437788, 36.437759, 35.622150>,  <25.113270, 36.077469, 35.062851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.437788, 36.437759, 35.622150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.360727, 36.070511, 35.760677>,  <25.314491, 35.850163, 35.843792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.360727, 36.070511, 35.760677>,  <25.437788, 36.437759, 35.622150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.360727, 36.070511, 35.760677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769982, 0.077336, 0.633361,
		-0.608286, 0.388674, 0.692040,
		-0.192651, -0.918124, 0.346315,
		25.302933, 35.795074, 35.864571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.247807, 36.419994, 36.464462>,  <25.437788, 36.437759, 35.622150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.247807, 36.419994, 36.464462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.415798, 36.084984, 36.324654>,  <25.516592, 35.883976, 36.240768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.415798, 36.084984, 36.324654>,  <25.247807, 36.419994, 36.464462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.415798, 36.084984, 36.324654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786913, 0.144208, 0.599976,
		-0.452092, -0.527023, 0.719625,
		0.419977, -0.837527, -0.349526,
		25.541792, 35.833725, 36.219795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.239531, 35.775852, 36.856651>,  <25.247807, 36.419994, 36.464462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.239531, 35.775852, 36.856651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.552616, 35.856560, 36.621143>,  <25.740467, 35.904984, 36.479839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.552616, 35.856560, 36.621143>,  <25.239531, 35.775852, 36.856651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.552616, 35.856560, 36.621143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546214, 0.230785, 0.805225,
		0.298348, -0.951855, 0.070430,
		0.782712, 0.201768, -0.588771,
		25.787430, 35.917088, 36.444511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.812668, 35.354294, 37.120209>,  <25.239531, 35.775852, 36.856651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.812668, 35.354294, 37.120209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.920374, 35.686535, 36.925232>,  <25.984997, 35.885880, 36.808247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.920374, 35.686535, 36.925232>,  <25.812668, 35.354294, 37.120209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.920374, 35.686535, 36.925232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551233, 0.282107, 0.785211,
		0.789708, -0.480123, -0.381894,
		0.269263, 0.830601, -0.487442,
		26.001154, 35.935715, 36.778999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.225937, 34.967403, 37.455425>,  <25.812668, 35.354294, 37.120209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.225937, 34.967403, 37.455425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.562613, 35.156303, 37.350708>,  <26.764618, 35.269646, 37.287880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.562613, 35.156303, 37.350708>,  <26.225937, 34.967403, 37.455425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.562613, 35.156303, 37.350708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189456, 0.195717, 0.962186,
		0.505634, -0.859459, 0.075262,
		0.841690, 0.472255, -0.261791,
		26.815119, 35.297981, 37.272171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.776310, 34.722172, 37.950680>,  <26.225937, 34.967403, 37.455425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.776310, 34.722172, 37.950680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.911970, 35.059235, 37.783390>,  <26.993366, 35.261471, 37.683014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.911970, 35.059235, 37.783390>,  <26.776310, 34.722172, 37.950680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.911970, 35.059235, 37.783390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296142, 0.326341, 0.897664,
		0.892905, -0.428295, -0.138867,
		0.339148, 0.842653, -0.418228,
		27.013714, 35.312031, 37.657921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.464081, 34.828648, 38.149834>,  <26.776310, 34.722172, 37.950680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.464081, 34.828648, 38.149834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.368013, 35.193134, 38.015968>,  <27.310373, 35.411827, 37.935650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.368013, 35.193134, 38.015968>,  <27.464081, 34.828648, 38.149834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.368013, 35.193134, 38.015968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557903, 0.411696, 0.720591,
		0.794395, -0.013643, -0.607249,
		-0.240171, 0.911219, -0.334660,
		27.295961, 35.466499, 37.915569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.091677, 35.118568, 38.043755>,  <27.464081, 34.828648, 38.149834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.091677, 35.118568, 38.043755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.802950, 35.388729, 38.104176>,  <27.629713, 35.550823, 38.140427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.802950, 35.388729, 38.104176>,  <28.091677, 35.118568, 38.043755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.802950, 35.388729, 38.104176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572214, 0.459639, 0.679192,
		0.389295, 0.576688, -0.718248,
		-0.721817, 0.675398, 0.151054,
		27.586405, 35.591347, 38.149490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.394527, 35.809052, 37.914467>,  <28.091677, 35.118568, 38.043755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.394527, 35.809052, 37.914467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.066650, 35.871304, 38.134968>,  <27.869925, 35.908657, 38.267269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.066650, 35.871304, 38.134968>,  <28.394527, 35.809052, 37.914467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.066650, 35.871304, 38.134968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538952, 0.535484, 0.650221,
		-0.193991, 0.830081, -0.522812,
		-0.819694, 0.155633, 0.551253,
		27.820742, 35.917995, 38.300343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.484455, 36.535275, 38.120316>,  <28.394527, 35.809052, 37.914467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.484455, 36.535275, 38.120316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.241991, 36.358498, 38.384819>,  <28.096512, 36.252430, 38.543522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.241991, 36.358498, 38.384819>,  <28.484455, 36.535275, 38.120316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.241991, 36.358498, 38.384819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295475, 0.646774, 0.703121,
		-0.738420, 0.621588, -0.261466,
		-0.606160, -0.441942, 0.661254,
		28.060143, 36.225914, 38.583195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.255331, 37.081631, 38.576302>,  <28.484455, 36.535275, 38.120316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.255331, 37.081631, 38.576302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.179165, 36.737350, 38.765163>,  <28.133465, 36.530781, 38.878479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.179165, 36.737350, 38.765163>,  <28.255331, 37.081631, 38.576302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.179165, 36.737350, 38.765163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304446, 0.405470, 0.861920,
		-0.933303, 0.307870, 0.184830,
		-0.190416, -0.860703, 0.472156,
		28.122040, 36.479141, 38.906811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.877443, 37.170860, 39.093143>,  <28.255331, 37.081631, 38.576302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.877443, 37.170860, 39.093143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.015415, 36.823116, 39.234695>,  <28.098198, 36.614471, 39.319626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.015415, 36.823116, 39.234695>,  <27.877443, 37.170860, 39.093143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.015415, 36.823116, 39.234695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200044, 0.436449, 0.877209,
		-0.917064, -0.231783, 0.324455,
		0.344930, -0.869361, 0.353884,
		28.118895, 36.562309, 39.340862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.640879, 37.119904, 39.812366>,  <27.877443, 37.170860, 39.093143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.640879, 37.119904, 39.812366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.926022, 36.839382, 39.812935>,  <28.097107, 36.671070, 39.813274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.926022, 36.839382, 39.812935>,  <27.640879, 37.119904, 39.812366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.926022, 36.839382, 39.812935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299548, 0.306308, 0.903574,
		-0.634119, -0.643694, 0.428430,
		0.712857, -0.701308, 0.001418,
		28.139879, 36.628990, 39.813362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.727283, 37.041309, 40.453049>,  <27.640879, 37.119904, 39.812366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.727283, 37.041309, 40.453049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.067728, 36.880512, 40.317989>,  <28.271996, 36.784035, 40.236954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.067728, 36.880512, 40.317989>,  <27.727283, 37.041309, 40.453049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.067728, 36.880512, 40.317989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464634, 0.277408, 0.840928,
		-0.244382, -0.872608, 0.422886,
		0.851113, -0.401995, -0.337650,
		28.323061, 36.759914, 40.216694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.007801, 36.557613, 40.960682>,  <27.727283, 37.041309, 40.453049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.007801, 36.557613, 40.960682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.304371, 36.684925, 40.724380>,  <28.482313, 36.761311, 40.582600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.304371, 36.684925, 40.724380>,  <28.007801, 36.557613, 40.960682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.304371, 36.684925, 40.724380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581040, 0.135885, 0.802451,
		0.335678, -0.938207, -0.084185,
		0.741426, 0.318280, -0.590749,
		28.526798, 36.780411, 40.547157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.555517, 36.215847, 41.191223>,  <28.007801, 36.557613, 40.960682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.555517, 36.215847, 41.191223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.698654, 36.518215, 40.971935>,  <28.784536, 36.699635, 40.840363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.698654, 36.518215, 40.971935>,  <28.555517, 36.215847, 41.191223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.698654, 36.518215, 40.971935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564487, 0.292555, 0.771859,
		0.743843, -0.585665, -0.322016,
		0.357843, 0.755916, -0.548215,
		28.806007, 36.744991, 40.807472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.306061, 36.320576, 41.370865>,  <28.555517, 36.215847, 41.191223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.306061, 36.320576, 41.370865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.235523, 36.676094, 41.201660>,  <29.193201, 36.889404, 41.100140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.235523, 36.676094, 41.201660>,  <29.306061, 36.320576, 41.370865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.235523, 36.676094, 41.201660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593266, 0.438887, 0.674843,
		0.785454, -0.131953, -0.604690,
		-0.176343, 0.888800, -0.423009,
		29.182621, 36.942734, 41.074757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.996845, 36.611153, 41.142483>,  <29.306061, 36.320576, 41.370865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.996845, 36.611153, 41.142483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.748682, 36.922852, 41.177959>,  <29.599783, 37.109871, 41.199245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.748682, 36.922852, 41.177959>,  <29.996845, 36.611153, 41.142483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.748682, 36.922852, 41.177959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686460, 0.484855, 0.541930,
		0.379296, 0.397101, -0.835730,
		-0.620409, 0.779247, 0.088690,
		29.562559, 37.156628, 41.204567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.486919, 37.177135, 41.094845>,  <29.996845, 36.611153, 41.142483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.486919, 37.177135, 41.094845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.162691, 37.329342, 41.272915>,  <29.968153, 37.420666, 41.379757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.162691, 37.329342, 41.272915>,  <30.486919, 37.177135, 41.094845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.162691, 37.329342, 41.272915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584490, 0.478060, 0.655614,
		0.036649, 0.791624, -0.609909,
		-0.810573, 0.380513, 0.445176,
		29.919519, 37.443497, 41.406467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.590855, 37.894279, 41.209389>,  <30.486919, 37.177135, 41.094845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.590855, 37.894279, 41.209389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320539, 37.783928, 41.482800>,  <30.158350, 37.717716, 41.646847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320539, 37.783928, 41.482800>,  <30.590855, 37.894279, 41.209389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.320539, 37.783928, 41.482800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473833, 0.547735, 0.689543,
		-0.564619, 0.789859, -0.239433,
		-0.675787, -0.275877, 0.683523,
		30.117804, 37.701164, 41.687855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.232210, 38.442337, 41.447327>,  <30.590855, 37.894279, 41.209389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.232210, 38.442337, 41.447327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.277641, 38.159252, 41.726250>,  <30.304899, 37.989403, 41.893604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.277641, 38.159252, 41.726250>,  <30.232210, 38.442337, 41.447327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.277641, 38.159252, 41.726250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520396, 0.640249, 0.565039,
		-0.846338, 0.298704, 0.441007,
		0.113575, -0.707712, 0.697312,
		30.311714, 37.946938, 41.935444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.068867, 38.731014, 42.111042>,  <30.232210, 38.442337, 41.447327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.068867, 38.731014, 42.111042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.315031, 38.421818, 42.172684>,  <30.462730, 38.236298, 42.209671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.315031, 38.421818, 42.172684>,  <30.068867, 38.731014, 42.111042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.315031, 38.421818, 42.172684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567892, 0.570423, 0.593394,
		-0.546595, -0.277666, 0.790022,
		0.615412, -0.772994, 0.154106,
		30.499655, 38.189919, 42.218914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.598639, 38.831921, 42.584263>,  <30.068867, 38.731014, 42.111042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.598639, 38.831921, 42.584263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.995132, 38.801220, 42.541252>,  <31.233028, 38.782799, 42.515446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.995132, 38.801220, 42.541252>,  <30.598639, 38.831921, 42.584263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.995132, 38.801220, 42.541252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119995, -0.182583, -0.975840,
		0.055265, 0.980190, -0.190193,
		0.991235, -0.076752, -0.107528,
		31.292503, 38.778194, 42.508995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.831253, 39.133965, 41.932674>,  <30.598639, 38.831921, 42.584263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.831253, 39.133965, 41.932674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.078283, 38.845852, 42.059032>,  <31.226501, 38.672985, 42.134846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.078283, 38.845852, 42.059032>,  <30.831253, 39.133965, 41.932674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.078283, 38.845852, 42.059032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019766, -0.415727, -0.909275,
		0.786261, 0.555304, -0.270981,
		0.617578, -0.720284, 0.315893,
		31.263557, 38.629768, 42.153801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.664206, 39.899811, 41.961552>,  <30.831253, 39.133965, 41.932674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.664206, 39.899811, 41.961552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.020565, 39.815327, 41.800709>,  <31.234381, 39.764637, 41.704205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.020565, 39.815327, 41.800709>,  <30.664206, 39.899811, 41.961552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.020565, 39.815327, 41.800709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154131, 0.692190, -0.705065,
		0.427253, 0.690118, 0.584117,
		0.890898, -0.211210, -0.402109,
		31.287834, 39.751965, 41.680077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.010124, 40.572498, 41.896946>,  <30.664206, 39.899811, 41.961552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.010124, 40.572498, 41.896946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.176437, 40.303429, 41.652115>,  <31.276226, 40.141987, 41.505219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.176437, 40.303429, 41.652115>,  <31.010124, 40.572498, 41.896946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.176437, 40.303429, 41.652115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007577, 0.675544, -0.737281,
		0.909432, 0.301912, 0.285977,
		0.415784, -0.672673, -0.612074,
		31.301172, 40.101627, 41.468494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.569380, 40.881294, 41.596722>,  <31.010124, 40.572498, 41.896946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.569380, 40.881294, 41.596722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.376753, 40.617489, 41.365849>,  <31.261177, 40.459206, 41.227325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.376753, 40.617489, 41.365849>,  <31.569380, 40.881294, 41.596722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.376753, 40.617489, 41.365849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056454, 0.680552, -0.730521,
		0.874588, -0.319211, -0.364964,
		-0.481568, -0.659509, -0.577183,
		31.232283, 40.419636, 41.192696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.792156, 40.968235, 40.905628>,  <31.569380, 40.881294, 41.596722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.792156, 40.968235, 40.905628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444431, 40.779343, 40.847263>,  <31.235796, 40.666008, 40.812244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444431, 40.779343, 40.847263>,  <31.792156, 40.968235, 40.905628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.444431, 40.779343, 40.847263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305125, 0.744981, -0.593213,
		0.388832, -0.471169, -0.791713,
		-0.869315, -0.472232, -0.145907,
		31.183638, 40.637672, 40.803490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.413647, 41.469501, 40.926449>,  <31.792156, 40.968235, 40.905628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.413647, 41.469501, 40.926449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.029072, 41.449718, 40.818230>,  <31.798328, 41.437847, 40.753300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.029072, 41.449718, 40.818230>,  <32.413647, 41.469501, 40.926449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.029072, 41.449718, 40.818230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257497, 0.507503, 0.822275,
		0.096635, 0.860229, -0.500667,
		-0.961435, -0.049460, -0.270549,
		31.740641, 41.434879, 40.737064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588223, 42.061813, 40.688747>,  <32.413647, 41.469501, 40.926449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588223, 42.061813, 40.688747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602779, 42.347736, 40.409401>,  <32.611515, 42.519291, 40.241791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602779, 42.347736, 40.409401>,  <32.588223, 42.061813, 40.688747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.602779, 42.347736, 40.409401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153686, -0.686517, -0.710687,
		-0.987449, 0.133194, 0.084872,
		0.036393, 0.714811, -0.698371,
		32.613697, 42.562180, 40.199890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.933138, 42.292717, 40.292110>,  <32.588223, 42.061813, 40.688747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.933138, 42.292717, 40.292110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281116, 42.295410, 40.094868>,  <32.489902, 42.297024, 39.976524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281116, 42.295410, 40.094868>,  <31.933138, 42.292717, 40.292110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281116, 42.295410, 40.094868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363219, -0.667596, -0.649913,
		-0.333567, 0.744493, -0.578328,
		0.869945, 0.006730, -0.493102,
		32.542099, 42.297428, 39.946938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.855324, 42.546200, 39.601105>,  <31.933138, 42.292717, 40.292110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.855324, 42.546200, 39.601105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.196266, 42.337021, 39.602680>,  <32.400829, 42.211514, 39.603626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.196266, 42.337021, 39.602680>,  <31.855324, 42.546200, 39.601105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.196266, 42.337021, 39.602680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306790, -0.506100, -0.806066,
		0.423524, 0.685847, -0.591812,
		0.852354, -0.522951, 0.003935,
		32.451973, 42.180134, 39.603859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.132137, 42.620193, 38.931599>,  <31.855324, 42.546200, 39.601105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.132137, 42.620193, 38.931599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290260, 42.290413, 39.093590>,  <32.385132, 42.092545, 39.190784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290260, 42.290413, 39.093590>,  <32.132137, 42.620193, 38.931599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.290260, 42.290413, 39.093590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242113, -0.518822, -0.819881,
		0.886068, 0.226050, -0.404703,
		0.395303, -0.824455, 0.404982,
		32.408852, 42.043076, 39.215084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.648563, 42.201317, 38.428879>,  <32.132137, 42.620193, 38.931599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.648563, 42.201317, 38.428879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508774, 41.955894, 38.712124>,  <32.424900, 41.808643, 38.882069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508774, 41.955894, 38.712124>,  <32.648563, 42.201317, 38.428879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.508774, 41.955894, 38.712124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285619, -0.650027, -0.704192,
		0.892349, -0.448348, 0.051927,
		-0.349477, -0.613554, 0.708108,
		32.403931, 41.771828, 38.924557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688232, 41.524265, 38.122078>,  <32.648563, 42.201317, 38.428879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688232, 41.524265, 38.122078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.467171, 41.425816, 38.440575>,  <32.334534, 41.366745, 38.631672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.467171, 41.425816, 38.440575>,  <32.688232, 41.524265, 38.122078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.467171, 41.425816, 38.440575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487611, -0.679318, -0.548418,
		0.675878, -0.691340, 0.255416,
		-0.552652, -0.246120, 0.796242,
		32.301376, 41.351978, 38.679447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.715164, 40.797581, 38.239155>,  <32.688232, 41.524265, 38.122078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.715164, 40.797581, 38.239155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.365055, 40.886341, 38.411045>,  <32.154991, 40.939598, 38.514179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.365055, 40.886341, 38.411045>,  <32.715164, 40.797581, 38.239155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.365055, 40.886341, 38.411045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422728, -0.782672, -0.456866,
		0.234952, -0.581537, 0.778854,
		-0.875270, 0.221902, 0.429722,
		32.102474, 40.952911, 38.539963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.388115, 40.146721, 38.472389>,  <32.715164, 40.797581, 38.239155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.388115, 40.146721, 38.472389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.090733, 40.413731, 38.455929>,  <31.912304, 40.573936, 38.446053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.090733, 40.413731, 38.455929>,  <32.388115, 40.146721, 38.472389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.090733, 40.413731, 38.455929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592248, -0.685700, -0.423152,
		-0.310679, -0.290223, 0.905124,
		-0.743452, 0.667522, -0.041149,
		31.867697, 40.613987, 38.443584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.906801, 39.784237, 38.759708>,  <32.388115, 40.146721, 38.472389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.906801, 39.784237, 38.759708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.737255, 40.083740, 38.555870>,  <31.635527, 40.263443, 38.433567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.737255, 40.083740, 38.555870>,  <31.906801, 39.784237, 38.759708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.737255, 40.083740, 38.555870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593831, -0.654580, -0.467857,
		-0.683888, 0.104308, 0.722092,
		-0.423865, 0.748763, -0.509601,
		31.610094, 40.308369, 38.402988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.139845, 39.683163, 38.850414>,  <31.906801, 39.784237, 38.759708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.139845, 39.683163, 38.850414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.249607, 39.864212, 38.511044>,  <31.315464, 39.972839, 38.307419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.249607, 39.864212, 38.511044>,  <31.139845, 39.683163, 38.850414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.249607, 39.864212, 38.511044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390812, -0.753656, -0.528459,
		-0.878617, 0.476589, -0.029918,
		0.274406, 0.452621, -0.848431,
		31.331928, 40.000000, 38.256516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.627155, 39.639114, 38.359638>,  <31.139845, 39.683163, 38.850414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.627155, 39.639114, 38.359638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.909756, 39.741982, 38.095905>,  <31.079315, 39.803703, 37.937664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.909756, 39.741982, 38.095905>,  <30.627155, 39.639114, 38.359638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.909756, 39.741982, 38.095905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323513, -0.711248, -0.624072,
		-0.629441, 0.654211, -0.419301,
		0.706501, 0.257167, -0.659334,
		31.121706, 39.819130, 37.898106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.312984, 39.754627, 37.740959>,  <30.627155, 39.639114, 38.359638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.312984, 39.754627, 37.740959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.697067, 39.677727, 37.659924>,  <30.927517, 39.631584, 37.611301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.697067, 39.677727, 37.659924>,  <30.312984, 39.754627, 37.740959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.697067, 39.677727, 37.659924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278587, -0.607819, -0.743603,
		0.019823, 0.770451, -0.637191,
		0.960206, -0.192254, -0.202589,
		30.985128, 39.620052, 37.599148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.347988, 39.833683, 37.030170>,  <30.312984, 39.754627, 37.740959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.347988, 39.833683, 37.030170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.667641, 39.606323, 37.108467>,  <30.859432, 39.469910, 37.155445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.667641, 39.606323, 37.108467>,  <30.347988, 39.833683, 37.030170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.667641, 39.606323, 37.108467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260449, -0.620812, -0.739432,
		0.541808, 0.539923, -0.644148,
		0.799131, -0.568398, 0.195739,
		30.907379, 39.435802, 37.167191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.712893, 39.749287, 36.420795>,  <30.347988, 39.833683, 37.030170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.712893, 39.749287, 36.420795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.810869, 39.446751, 36.663433>,  <30.869656, 39.265228, 36.809017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.810869, 39.446751, 36.663433>,  <30.712893, 39.749287, 36.420795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.810869, 39.446751, 36.663433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203460, -0.651822, -0.730569,
		0.947949, 0.055530, -0.313543,
		0.244943, -0.756336, 0.606596,
		30.884352, 39.219849, 36.845413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.991795, 39.269360, 35.987583>,  <30.712893, 39.749287, 36.420795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.991795, 39.269360, 35.987583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.935081, 39.052410, 36.318817>,  <30.901054, 38.922241, 36.517559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.935081, 39.052410, 36.318817>,  <30.991795, 39.269360, 35.987583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.935081, 39.052410, 36.318817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191726, -0.805649, -0.560510,
		0.971153, -0.238236, 0.010239,
		-0.141783, -0.542378, 0.828084,
		30.892548, 38.889698, 36.567242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.108854, 38.656975, 35.803944>,  <30.991795, 39.269360, 35.987583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.108854, 38.656975, 35.803944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.924717, 38.562122, 36.146137>,  <30.814234, 38.505211, 36.351452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.924717, 38.562122, 36.146137>,  <31.108854, 38.656975, 35.803944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.924717, 38.562122, 36.146137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313367, -0.858223, -0.406514,
		0.830593, -0.455217, 0.320770,
		-0.460344, -0.237129, 0.855484,
		30.786613, 38.490982, 36.402782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.362553, 37.991650, 35.942955>,  <31.108854, 38.656975, 35.803944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.362553, 37.991650, 35.942955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.032696, 38.036613, 36.164703>,  <30.834782, 38.063591, 36.297752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.032696, 38.036613, 36.164703>,  <31.362553, 37.991650, 35.942955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.032696, 38.036613, 36.164703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331562, -0.890098, -0.312716,
		0.458291, -0.441688, 0.771285,
		-0.824643, 0.112414, 0.554371,
		30.785303, 38.070339, 36.331017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.290382, 37.357994, 36.298637>,  <31.362553, 37.991650, 35.942955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.290382, 37.357994, 36.298637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.931307, 37.534245, 36.298176>,  <30.715862, 37.639996, 36.297897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.931307, 37.534245, 36.298176>,  <31.290382, 37.357994, 36.298637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.931307, 37.534245, 36.298176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429048, -0.874688, -0.225475,
		-0.100362, -0.201911, 0.974248,
		-0.897689, 0.440628, -0.001156,
		30.662001, 37.666431, 36.297829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.913998, 36.792988, 36.560806>,  <31.290382, 37.357994, 36.298637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.913998, 36.792988, 36.560806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.667347, 37.054939, 36.386036>,  <30.519356, 37.212112, 36.281174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.667347, 37.054939, 36.386036>,  <30.913998, 36.792988, 36.560806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.667347, 37.054939, 36.386036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660614, -0.732303, -0.165293,
		-0.428207, 0.186713, 0.884181,
		-0.616626, 0.654882, -0.436922,
		30.482359, 37.251404, 36.254959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.275087, 36.733448, 36.863548>,  <30.913998, 36.792988, 36.560806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.275087, 36.733448, 36.863548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.155300, 36.927490, 36.534916>,  <30.083427, 37.043915, 36.337738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.155300, 36.927490, 36.534916>,  <30.275087, 36.733448, 36.863548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.155300, 36.927490, 36.534916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712971, -0.686001, -0.145171,
		-0.634027, 0.542288, 0.551301,
		-0.299469, 0.485104, -0.821579,
		30.065460, 37.073021, 36.288441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.577782, 36.823803, 36.977818>,  <30.275087, 36.733448, 36.863548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.577782, 36.823803, 36.977818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.663761, 36.843163, 36.587646>,  <29.715349, 36.854778, 36.353546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.663761, 36.843163, 36.587646>,  <29.577782, 36.823803, 36.977818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.663761, 36.843163, 36.587646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689072, -0.700259, -0.186593,
		-0.692082, 0.712246, -0.117167,
		0.214947, 0.048401, -0.975426,
		29.728245, 36.857681, 36.295017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.979177, 36.843761, 36.509338>,  <29.577782, 36.823803, 36.977818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.979177, 36.843761, 36.509338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.256294, 36.678028, 36.273247>,  <29.422564, 36.578587, 36.131592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.256294, 36.678028, 36.273247>,  <28.979177, 36.843761, 36.509338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.256294, 36.678028, 36.273247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671362, -0.669381, -0.318124,
		-0.263277, 0.616650, -0.741909,
		0.692790, -0.414334, -0.590228,
		29.464130, 36.553726, 36.096180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.598303, 36.612328, 35.892429>,  <28.979177, 36.843761, 36.509338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.598303, 36.612328, 35.892429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.946444, 36.424866, 35.831966>,  <29.155329, 36.312389, 35.795689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.946444, 36.424866, 35.831966>,  <28.598303, 36.612328, 35.892429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.946444, 36.424866, 35.831966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483722, -0.756208, -0.440638,
		0.092202, 0.456628, -0.884867,
		0.870352, -0.468657, -0.151158,
		29.207548, 36.284267, 35.786617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.502005, 36.310627, 35.202194>,  <28.598303, 36.612328, 35.892429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.502005, 36.310627, 35.202194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.806959, 36.109421, 35.365040>,  <28.989931, 35.988697, 35.462749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.806959, 36.109421, 35.365040>,  <28.502005, 36.310627, 35.202194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.806959, 36.109421, 35.365040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495239, -0.858472, -0.133282,
		0.416542, -0.100008, -0.903599,
		0.762385, -0.503015, 0.407118,
		29.035675, 35.958515, 35.487175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.492744, 35.730526, 34.809998>,  <28.502005, 36.310627, 35.202194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.492744, 35.730526, 34.809998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.738619, 35.617092, 35.104408>,  <28.886143, 35.549030, 35.281055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.738619, 35.617092, 35.104408>,  <28.492744, 35.730526, 34.809998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.738619, 35.617092, 35.104408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277766, -0.951185, -0.134510,
		0.738246, -0.121763, -0.663450,
		0.614685, -0.283586, 0.736030,
		28.923025, 35.532017, 35.325218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.908762, 35.122395, 34.619801>,  <28.492744, 35.730526, 34.809998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.908762, 35.122395, 34.619801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.855639, 35.127785, 35.016220>,  <28.823765, 35.131020, 35.254070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.855639, 35.127785, 35.016220>,  <28.908762, 35.122395, 34.619801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.855639, 35.127785, 35.016220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325517, -0.945035, -0.030775,
		0.936163, -0.326690, 0.129895,
		-0.132809, 0.013473, 0.991050,
		28.815796, 35.131828, 35.313534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.279253, 34.827404, 35.185505>,  <28.908762, 35.122395, 34.619801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.279253, 34.827404, 35.185505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.383724, 35.190811, 35.055038>,  <29.446407, 35.408855, 34.976757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.383724, 35.190811, 35.055038>,  <29.279253, 34.827404, 35.185505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.383724, 35.190811, 35.055038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000560, 0.338036, 0.941133,
		0.965290, -0.245622, 0.088797,
		0.261180, 0.908516, -0.326165,
		29.462078, 35.463367, 34.957188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.824116, 34.813560, 34.887001>,  <29.279253, 34.827404, 35.185505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.824116, 34.813560, 34.887001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.177078, 34.993385, 34.831493>,  <30.388855, 35.101280, 34.798187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.177078, 34.993385, 34.831493>,  <29.824116, 34.813560, 34.887001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.177078, 34.993385, 34.831493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266232, -0.233920, 0.935094,
		0.387922, -0.862076, -0.326100,
		0.882404, 0.449562, -0.138770,
		30.441799, 35.128254, 34.789864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.500980, 34.363712, 34.980785>,  <29.824116, 34.813560, 34.887001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.500980, 34.363712, 34.980785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.535671, 34.748959, 35.082676>,  <30.556486, 34.980106, 35.143810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.535671, 34.748959, 35.082676>,  <30.500980, 34.363712, 34.980785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.535671, 34.748959, 35.082676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473836, -0.264794, 0.839859,
		0.876332, 0.047860, -0.479324,
		0.086727, 0.963116, 0.254726,
		30.561689, 35.037895, 35.159092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.182568, 34.798748, 34.903370>,  <30.500980, 34.363712, 34.980785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.182568, 34.798748, 34.903370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.991724, 34.942661, 35.224098>,  <30.877218, 35.029011, 35.416534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.991724, 34.942661, 35.224098>,  <31.182568, 34.798748, 34.903370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.991724, 34.942661, 35.224098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747575, -0.313536, 0.585514,
		0.462058, 0.878779, -0.119373,
		-0.477110, 0.359782, 0.801825,
		30.848591, 35.050594, 35.464645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.735836, 35.197735, 35.457867>,  <31.182568, 34.798748, 34.903370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.735836, 35.197735, 35.457867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.417389, 35.054783, 35.653202>,  <31.226320, 34.969009, 35.770401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.417389, 35.054783, 35.653202>,  <31.735836, 35.197735, 35.457867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.417389, 35.054783, 35.653202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600213, -0.363562, 0.712438,
		-0.077074, 0.860290, 0.503945,
		-0.796118, -0.357384, 0.488336,
		31.178553, 34.947567, 35.799702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.816948, 35.479599, 36.237411>,  <31.735836, 35.197735, 35.457867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.816948, 35.479599, 36.237411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.573324, 35.162956, 36.217812>,  <31.427151, 34.972969, 36.206051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.573324, 35.162956, 36.217812>,  <31.816948, 35.479599, 36.237411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.573324, 35.162956, 36.217812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487820, -0.422607, 0.763830,
		-0.625365, 0.441312, 0.643555,
		-0.609057, -0.791611, -0.049003,
		31.390608, 34.925472, 36.203110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.517538, 35.246319, 36.955135>,  <31.816948, 35.479599, 36.237411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.517538, 35.246319, 36.955135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.554821, 34.924694, 36.720261>,  <31.577190, 34.731720, 36.579334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.554821, 34.924694, 36.720261>,  <31.517538, 35.246319, 36.955135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.554821, 34.924694, 36.720261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383265, -0.515334, 0.766511,
		-0.918924, -0.296494, 0.260137,
		0.093208, -0.804066, -0.587188,
		31.582783, 34.683475, 36.544106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.087036, 34.693199, 37.250092>,  <31.517538, 35.246319, 36.955135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.087036, 34.693199, 37.250092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.349100, 34.516758, 37.004753>,  <31.506338, 34.410892, 36.857552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.349100, 34.516758, 37.004753>,  <31.087036, 34.693199, 37.250092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.349100, 34.516758, 37.004753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209998, -0.673530, 0.708701,
		-0.725718, -0.593114, -0.348639,
		0.655159, -0.441104, -0.613346,
		31.545649, 34.384426, 36.820751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.928198, 33.979141, 37.110844>,  <31.087036, 34.693199, 37.250092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.928198, 33.979141, 37.110844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.321341, 34.043297, 37.074474>,  <31.557226, 34.081791, 37.052650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.321341, 34.043297, 37.074474>,  <30.928198, 33.979141, 37.110844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.321341, 34.043297, 37.074474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169721, -0.594432, 0.786032,
		0.072020, -0.787989, -0.611463,
		0.982857, 0.160388, -0.090927,
		31.616198, 34.091412, 37.047195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.298565, 33.273663, 37.049370>,  <30.928198, 33.979141, 37.110844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.298565, 33.273663, 37.049370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.595299, 33.516624, 37.163033>,  <31.773338, 33.662399, 37.231228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.595299, 33.516624, 37.163033>,  <31.298565, 33.273663, 37.049370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.595299, 33.516624, 37.163033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245822, -0.640566, 0.727493,
		0.623900, -0.469829, -0.624507,
		0.741835, 0.607401, 0.284155,
		31.817850, 33.698845, 37.248280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.635256, 32.876549, 37.649773>,  <31.298565, 33.273663, 37.049370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.635256, 32.876549, 37.649773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904636, 33.171108, 37.623894>,  <32.066265, 33.347843, 37.608368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904636, 33.171108, 37.623894>,  <31.635256, 32.876549, 37.649773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.904636, 33.171108, 37.623894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254292, -0.148594, 0.955644,
		0.694117, -0.660032, -0.287330,
		0.673451, 0.736395, -0.064699,
		32.106670, 33.392025, 37.604485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.389771, 32.669209, 37.767017>,  <31.635256, 32.876549, 37.649773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.389771, 32.669209, 37.767017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.247795, 33.024841, 37.882637>,  <32.162609, 33.238220, 37.952007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.247795, 33.024841, 37.882637>,  <32.389771, 32.669209, 37.767017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.247795, 33.024841, 37.882637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119159, -0.263634, 0.957235,
		0.927266, 0.374198, -0.012370,
		-0.354934, 0.889086, 0.289048,
		32.141315, 33.291569, 37.969353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.908215, 32.990120, 38.262230>,  <32.389771, 32.669209, 37.767017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.908215, 32.990120, 38.262230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544815, 33.146801, 38.320457>,  <32.326775, 33.240810, 38.355396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544815, 33.146801, 38.320457>,  <32.908215, 32.990120, 38.262230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544815, 33.146801, 38.320457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056826, -0.229314, 0.971692,
		0.413997, 0.891057, 0.186074,
		-0.908503, 0.391704, 0.145571,
		32.272263, 33.264313, 38.364128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014961, 33.577583, 38.831074>,  <32.908215, 32.990120, 38.262230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014961, 33.577583, 38.831074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.642452, 33.434002, 38.806141>,  <32.418945, 33.347855, 38.791180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.642452, 33.434002, 38.806141>,  <33.014961, 33.577583, 38.831074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.642452, 33.434002, 38.806141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025319, -0.234440, 0.971801,
		-0.363446, 0.903432, 0.227415,
		-0.931271, -0.358955, -0.062332,
		32.363071, 33.326317, 38.787441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.659458, 33.957993, 39.357826>,  <33.014961, 33.577583, 38.831074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.659458, 33.957993, 39.357826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.411766, 33.646412, 39.318249>,  <32.263149, 33.459465, 39.294502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.411766, 33.646412, 39.318249>,  <32.659458, 33.957993, 39.357826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.411766, 33.646412, 39.318249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178273, 0.016752, 0.983838,
		-0.764700, 0.626866, -0.149239,
		-0.619235, -0.778947, -0.098943,
		32.225994, 33.412727, 39.288567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.219143, 34.047832, 39.896870>,  <32.659458, 33.957993, 39.357826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.219143, 34.047832, 39.896870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120815, 33.689655, 39.748405>,  <32.061821, 33.474751, 39.659328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120815, 33.689655, 39.748405>,  <32.219143, 34.047832, 39.896870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.120815, 33.689655, 39.748405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230799, -0.317829, 0.919629,
		-0.941438, 0.311724, -0.128539,
		-0.245817, -0.895440, -0.371162,
		32.047070, 33.421024, 39.637058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469460, 33.780334, 40.152283>,  <32.219143, 34.047832, 39.896870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.469460, 33.780334, 40.152283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.679256, 33.466515, 40.019985>,  <31.805136, 33.278221, 39.940609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.679256, 33.466515, 40.019985>,  <31.469460, 33.780334, 40.152283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.679256, 33.466515, 40.019985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113591, -0.449466, 0.886046,
		-0.843803, -0.427157, -0.324860,
		0.524495, -0.784549, -0.330740,
		31.836605, 33.231152, 39.920765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.101526, 33.188473, 40.380745>,  <31.469460, 33.780334, 40.152283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.101526, 33.188473, 40.380745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.474501, 33.056858, 40.321011>,  <31.698286, 32.977890, 40.285172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.474501, 33.056858, 40.321011>,  <31.101526, 33.188473, 40.380745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.474501, 33.056858, 40.321011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088103, -0.607837, 0.789159,
		-0.350430, -0.722684, -0.595758,
		0.932436, -0.329033, -0.149333,
		31.754230, 32.958149, 40.276211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.103746, 32.380459, 40.329205>,  <31.101526, 33.188473, 40.380745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.103746, 32.380459, 40.329205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.483778, 32.467667, 40.418484>,  <31.711798, 32.519989, 40.472054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.483778, 32.467667, 40.418484>,  <31.103746, 32.380459, 40.329205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.483778, 32.467667, 40.418484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010902, -0.691734, 0.722071,
		0.311821, -0.688457, -0.654824,
		0.950078, 0.218017, 0.223202,
		31.768801, 32.533073, 40.485443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.373669, 31.816259, 40.541214>,  <31.103746, 32.380459, 40.329205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.373669, 31.816259, 40.541214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.633356, 32.057354, 40.726784>,  <31.789169, 32.202011, 40.838123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.633356, 32.057354, 40.726784>,  <31.373669, 31.816259, 40.541214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.633356, 32.057354, 40.726784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080643, -0.661049, 0.745997,
		0.756313, -0.446904, -0.477773,
		0.649220, 0.602736, 0.463920,
		31.828123, 32.238174, 40.865959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.093525, 31.441561, 40.695438>,  <31.373669, 31.816259, 40.541214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.093525, 31.441561, 40.695438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.081940, 31.728064, 40.974335>,  <32.074989, 31.899965, 41.141670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.081940, 31.728064, 40.974335>,  <32.093525, 31.441561, 40.695438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.081940, 31.728064, 40.974335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095745, -0.692335, 0.715196,
		0.994984, 0.087472, -0.048526,
		-0.028963, 0.716255, 0.697237,
		32.073250, 31.942940, 41.183506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.352676, 31.079525, 41.221966>,  <32.093525, 31.441561, 40.695438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.352676, 31.079525, 41.221966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.220840, 31.410002, 41.404732>,  <32.141739, 31.608288, 41.514393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.220840, 31.410002, 41.404732>,  <32.352676, 31.079525, 41.221966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.220840, 31.410002, 41.404732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238038, -0.541044, 0.806604,
		0.913623, 0.157087, 0.374989,
		-0.329593, 0.826193, 0.456917,
		32.121964, 31.657860, 41.541805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718189, 31.095400, 41.911667>,  <32.352676, 31.079525, 41.221966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718189, 31.095400, 41.911667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374268, 31.299582, 41.916901>,  <32.167915, 31.422091, 41.920040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374268, 31.299582, 41.916901>,  <32.718189, 31.095400, 41.911667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.374268, 31.299582, 41.916901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240911, -0.428124, 0.871018,
		0.450217, 0.745753, 0.491078,
		-0.859806, 0.510453, 0.013089,
		32.116325, 31.452717, 41.920826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774418, 31.358927, 42.534443>,  <32.718189, 31.095400, 41.911667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774418, 31.358927, 42.534443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.386814, 31.346888, 42.436367>,  <32.154251, 31.339664, 42.377522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.386814, 31.346888, 42.436367>,  <32.774418, 31.358927, 42.534443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.386814, 31.346888, 42.436367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187379, -0.557214, 0.808951,
		-0.160968, 0.829824, 0.534305,
		-0.969009, -0.030098, -0.245185,
		32.096111, 31.337858, 42.362812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.343967, 31.496675, 43.164906>,  <32.774418, 31.358927, 42.534443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.343967, 31.496675, 43.164906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080860, 31.328499, 42.914925>,  <31.922995, 31.227592, 42.764935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080860, 31.328499, 42.914925>,  <32.343967, 31.496675, 43.164906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080860, 31.328499, 42.914925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481664, -0.403100, 0.778146,
		-0.579085, 0.812858, 0.062634,
		-0.657770, -0.420444, -0.624953,
		31.883530, 31.202366, 42.727440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.589949, 31.659025, 43.411106>,  <32.343967, 31.496675, 43.164906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.589949, 31.659025, 43.411106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.565155, 31.332430, 43.181496>,  <31.550280, 31.136473, 43.043728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.565155, 31.332430, 43.181496>,  <31.589949, 31.659025, 43.411106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.565155, 31.332430, 43.181496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395228, -0.508038, 0.765306,
		-0.916489, 0.274308, -0.291208,
		-0.061984, -0.816488, -0.574026,
		31.546560, 31.087484, 43.009289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.927399, 31.455423, 43.508240>,  <31.589949, 31.659025, 43.411106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.927399, 31.455423, 43.508240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.104984, 31.121101, 43.379044>,  <31.211536, 30.920507, 43.301525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.104984, 31.121101, 43.379044>,  <30.927399, 31.455423, 43.508240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.104984, 31.121101, 43.379044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560586, -0.540289, 0.627560,
		-0.699027, -0.097550, -0.708411,
		0.443965, -0.835806, -0.322992,
		31.238174, 30.870359, 43.282146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.436884, 31.077738, 43.195457>,  <30.927399, 31.455423, 43.508240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.436884, 31.077738, 43.195457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.706711, 30.817015, 43.334084>,  <30.868607, 30.660580, 43.417259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.706711, 30.817015, 43.334084>,  <30.436884, 31.077738, 43.195457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.706711, 30.817015, 43.334084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662075, -0.326525, 0.674565,
		-0.326525, -0.684490, -0.651809,
		-0.674565, 0.651809, -0.346565,
		30.909081, 30.621471, 43.438053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.896721, 30.636131, 43.376335>,  <30.436884, 31.077738, 43.195457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.896721, 30.636131, 43.376335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.255713, 30.510719, 43.500423>,  <30.471107, 30.435472, 43.574875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.255713, 30.510719, 43.500423>,  <29.896721, 30.636131, 43.376335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.255713, 30.510719, 43.500423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425025, -0.426847, 0.798220,
		-0.117848, -0.848235, -0.516342,
		0.897477, -0.313527, 0.310218,
		30.524956, 30.416660, 43.593487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.818836, 29.860846, 43.458733>,  <29.896721, 30.636131, 43.376335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.818836, 29.860846, 43.458733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.134172, 29.968592, 43.679989>,  <30.323374, 30.033239, 43.812740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.134172, 29.968592, 43.679989>,  <29.818836, 29.860846, 43.458733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.134172, 29.968592, 43.679989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367181, -0.515400, 0.774300,
		0.493658, -0.813513, -0.307404,
		0.788339, 0.269367, 0.553138,
		30.370674, 30.049402, 43.845932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.896854, 29.306622, 43.984791>,  <29.818836, 29.860846, 43.458733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.896854, 29.306622, 43.984791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.092508, 29.602745, 44.169266>,  <30.209900, 29.780418, 44.279949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.092508, 29.602745, 44.169266>,  <29.896854, 29.306622, 43.984791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.092508, 29.602745, 44.169266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240434, -0.393828, 0.887182,
		0.838415, -0.544835, -0.014639,
		0.489133, 0.740307, 0.461188,
		30.239248, 29.824837, 44.307621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.382120, 29.045700, 44.451283>,  <29.896854, 29.306622, 43.984791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.382120, 29.045700, 44.451283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.338972, 29.420813, 44.583298>,  <30.313084, 29.645880, 44.662506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.338972, 29.420813, 44.583298>,  <30.382120, 29.045700, 44.451283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.338972, 29.420813, 44.583298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092301, -0.339990, 0.935888,
		0.989871, 0.070494, 0.123234,
		-0.107872, 0.937783, 0.330039,
		30.306610, 29.702148, 44.682308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.727747, 29.071728, 45.019371>,  <30.382120, 29.045700, 44.451283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.727747, 29.071728, 45.019371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.484081, 29.382010, 45.085339>,  <30.337881, 29.568178, 45.124920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.484081, 29.382010, 45.085339>,  <30.727747, 29.071728, 45.019371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.484081, 29.382010, 45.085339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204332, -0.354460, 0.912473,
		0.766268, 0.522148, 0.374426,
		-0.609165, 0.775706, 0.164920,
		30.301332, 29.614721, 45.134815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.836678, 29.333780, 45.565628>,  <30.727747, 29.071728, 45.019371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.836678, 29.333780, 45.565628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.469717, 29.484756, 45.515167>,  <30.249540, 29.575342, 45.484890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.469717, 29.484756, 45.515167>,  <30.836678, 29.333780, 45.565628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.469717, 29.484756, 45.515167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262137, -0.334605, 0.905165,
		0.299436, 0.863468, 0.405908,
		-0.917400, 0.377442, -0.126154,
		30.194496, 29.597990, 45.477322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.716465, 29.732311, 46.167706>,  <30.836678, 29.333780, 45.565628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.716465, 29.732311, 46.167706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.372082, 29.614515, 46.001801>,  <30.165451, 29.543837, 45.902256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.372082, 29.614515, 46.001801>,  <30.716465, 29.732311, 46.167706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.372082, 29.614515, 46.001801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269733, -0.426995, 0.863087,
		-0.431272, 0.854956, 0.288191,
		-0.860958, -0.294491, -0.414761,
		30.113794, 29.526169, 45.877373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.263832, 29.981373, 46.658100>,  <30.716465, 29.732311, 46.167706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.263832, 29.981373, 46.658100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.040340, 29.709690, 46.467731>,  <29.906246, 29.546680, 46.353512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.040340, 29.709690, 46.467731>,  <30.263832, 29.981373, 46.658100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.040340, 29.709690, 46.467731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419447, -0.263626, 0.868657,
		-0.715462, 0.684968, -0.137595,
		-0.558729, -0.679206, -0.475922,
		29.872723, 29.505928, 46.324955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.670010, 30.000195, 47.041660>,  <30.263832, 29.981373, 46.658100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.670010, 30.000195, 47.041660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.678408, 29.646997, 46.854095>,  <29.683447, 29.435080, 46.741558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.678408, 29.646997, 46.854095>,  <29.670010, 30.000195, 47.041660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.678408, 29.646997, 46.854095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307129, -0.452034, 0.837459,
		-0.951436, 0.126435, -0.280683,
		0.020995, -0.882995, -0.468914,
		29.684706, 29.382099, 46.713421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.138525, 29.648582, 47.251804>,  <29.670010, 30.000195, 47.041660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.138525, 29.648582, 47.251804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.360464, 29.343399, 47.119118>,  <29.493628, 29.160290, 47.039505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.360464, 29.343399, 47.119118>,  <29.138525, 29.648582, 47.251804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.360464, 29.343399, 47.119118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293338, -0.552526, 0.780172,
		-0.778521, -0.335572, -0.530373,
		0.554849, -0.762959, -0.331717,
		29.526918, 29.114511, 47.019604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.791042, 28.988302, 47.374947>,  <29.138525, 29.648582, 47.251804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.791042, 28.988302, 47.374947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.174356, 28.875992, 47.353588>,  <29.404345, 28.808605, 47.340775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.174356, 28.875992, 47.353588>,  <28.791042, 28.988302, 47.374947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.174356, 28.875992, 47.353588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120215, -0.565469, 0.815962,
		-0.259298, -0.775506, -0.575635,
		0.958287, -0.280777, -0.053397,
		29.461842, 28.791758, 47.337570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.831093, 28.177876, 47.503571>,  <28.791042, 28.988302, 47.374947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.831093, 28.177876, 47.503571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.221855, 28.263296, 47.506447>,  <29.456312, 28.314548, 47.508171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.221855, 28.263296, 47.506447>,  <28.831093, 28.177876, 47.503571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.221855, 28.263296, 47.506447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169119, -0.793337, 0.584820,
		0.130592, -0.570098, -0.811131,
		0.976905, 0.213550, 0.007189,
		29.514927, 28.327362, 47.508602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.159128, 27.558590, 47.363361>,  <28.831093, 28.177876, 47.503571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.159128, 27.558590, 47.363361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.450645, 27.769411, 47.538212>,  <29.625555, 27.895903, 47.643120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.450645, 27.769411, 47.538212>,  <29.159128, 27.558590, 47.363361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.450645, 27.769411, 47.538212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208055, -0.778650, 0.591961,
		0.652360, -0.340472, -0.677130,
		0.728794, 0.527052, 0.437123,
		29.669283, 27.927526, 47.669350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.717386, 27.156250, 47.463078>,  <29.159128, 27.558590, 47.363361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.717386, 27.156250, 47.463078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.779842, 27.431623, 47.746395>,  <29.817316, 27.596848, 47.916386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.779842, 27.431623, 47.746395>,  <29.717386, 27.156250, 47.463078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.779842, 27.431623, 47.746395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289862, -0.717453, 0.633435,
		0.944246, 0.106402, -0.311574,
		0.156141, 0.688432, 0.708294,
		29.826685, 27.638153, 47.958885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.285379, 26.985849, 47.768238>,  <29.717386, 27.156250, 47.463078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.285379, 26.985849, 47.768238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.105841, 27.226940, 48.032135>,  <29.998117, 27.371593, 48.190472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.105841, 27.226940, 48.032135>,  <30.285379, 26.985849, 47.768238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.105841, 27.226940, 48.032135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270032, -0.612291, 0.743090,
		0.851832, 0.511686, 0.112071,
		-0.448849, 0.602725, 0.659741,
		29.971186, 27.407757, 48.230057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.746225, 26.985399, 48.293869>,  <30.285379, 26.985849, 47.768238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.746225, 26.985399, 48.293869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.397539, 27.087622, 48.461109>,  <30.188328, 27.148954, 48.561451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.397539, 27.087622, 48.461109>,  <30.746225, 26.985399, 48.293869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.397539, 27.087622, 48.461109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163431, -0.652753, 0.739732,
		0.461957, 0.713165, 0.527249,
		-0.871714, 0.255555, 0.418097,
		30.136024, 27.164288, 48.586540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.901207, 26.792278, 49.000164>,  <30.746225, 26.985399, 48.293869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.901207, 26.792278, 49.000164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.503550, 26.826571, 48.973843>,  <30.264956, 26.847145, 48.958050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.503550, 26.826571, 48.973843>,  <30.901207, 26.792278, 49.000164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.503550, 26.826571, 48.973843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103563, -0.581540, 0.806899,
		0.030907, 0.808988, 0.587013,
		-0.994143, 0.085731, -0.065808,
		30.205307, 26.852289, 48.954102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.686380, 26.927969, 49.693871>,  <30.901207, 26.792278, 49.000164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.686380, 26.927969, 49.693871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.376783, 26.777754, 49.489944>,  <30.191025, 26.687624, 49.367588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.376783, 26.777754, 49.489944>,  <30.686380, 26.927969, 49.693871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.376783, 26.777754, 49.489944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173809, -0.648211, 0.741359,
		-0.608874, 0.662415, 0.436438,
		-0.773991, -0.375538, -0.509813,
		30.144587, 26.665092, 49.337002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.060680, 26.895052, 50.091549>,  <30.686380, 26.927969, 49.693871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.060680, 26.895052, 50.091549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.065792, 26.598528, 49.823132>,  <30.068859, 26.420614, 49.662083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.065792, 26.598528, 49.823132>,  <30.060680, 26.895052, 50.091549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.065792, 26.598528, 49.823132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189592, -0.660718, 0.726296,
		-0.981780, 0.117942, -0.148990,
		0.012779, -0.741310, -0.671041,
		30.069626, 26.376135, 49.621819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.157600, 26.179922, 50.510811>,  <30.060680, 26.895052, 50.091549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.157600, 26.179922, 50.510811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.478521, 25.963455, 50.611565>,  <30.671074, 25.833576, 50.672016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.478521, 25.963455, 50.611565>,  <30.157600, 26.179922, 50.510811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.478521, 25.963455, 50.611565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482191, -0.836312, -0.260910,
		0.351850, 0.087872, -0.931923,
		0.802305, -0.541166, 0.251885,
		30.719213, 25.801105, 50.687130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.456772, 25.915670, 49.981113>,  <30.157600, 26.179922, 50.510811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.456772, 25.915670, 49.981113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.522038, 25.664871, 50.285809>,  <30.561197, 25.514391, 50.468628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.522038, 25.664871, 50.285809>,  <30.456772, 25.915670, 49.981113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.522038, 25.664871, 50.285809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621908, -0.664740, -0.413945,
		0.765904, -0.406193, -0.498396,
		0.163162, -0.626999, 0.761742,
		30.570986, 25.476772, 50.514332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.746021, 25.263977, 49.742657>,  <30.456772, 25.915670, 49.981113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.746021, 25.263977, 49.742657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.498652, 25.277714, 50.056694>,  <30.350229, 25.285955, 50.245117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.498652, 25.277714, 50.056694>,  <30.746021, 25.263977, 49.742657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.498652, 25.277714, 50.056694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678647, -0.527052, -0.511522,
		0.396217, -0.849139, 0.349249,
		-0.618426, 0.034343, 0.785092,
		30.313124, 25.288017, 50.292221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.747755, 24.594177, 50.064198>,  <30.746021, 25.263977, 49.742657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.747755, 24.594177, 50.064198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.412167, 24.805290, 50.117222>,  <30.210814, 24.931957, 50.149036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.412167, 24.805290, 50.117222>,  <30.747755, 24.594177, 50.064198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.412167, 24.805290, 50.117222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541119, -0.783350, -0.305864,
		-0.057585, -0.328344, 0.942801,
		-0.838972, 0.527781, 0.132564,
		30.160475, 24.963625, 50.156990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.156969, 24.172905, 50.271202>,  <30.747755, 24.594177, 50.064198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.156969, 24.172905, 50.271202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.995619, 24.490404, 50.089104>,  <29.898808, 24.680904, 49.979847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.995619, 24.490404, 50.089104>,  <30.156969, 24.172905, 50.271202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.995619, 24.490404, 50.089104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488259, -0.607480, -0.626555,
		-0.773880, -0.030461, 0.632600,
		-0.403378, 0.793750, -0.455244,
		29.874605, 24.728529, 49.952530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.422760, 24.130852, 50.184753>,  <30.156969, 24.172905, 50.271202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.422760, 24.130852, 50.184753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.564091, 24.372173, 49.898766>,  <29.648890, 24.516966, 49.727173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.564091, 24.372173, 49.898766>,  <29.422760, 24.130852, 50.184753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.564091, 24.372173, 49.898766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283687, -0.659183, -0.696419,
		-0.891449, 0.448892, -0.061758,
		0.353327, 0.603303, -0.714973,
		29.670088, 24.553164, 49.684273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.911701, 24.206491, 49.586288>,  <29.422760, 24.130852, 50.184753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.911701, 24.206491, 49.586288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.288425, 24.269773, 49.467651>,  <29.514460, 24.307743, 49.396469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.288425, 24.269773, 49.467651>,  <28.911701, 24.206491, 49.586288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.288425, 24.269773, 49.467651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172437, -0.530017, -0.830269,
		-0.288552, 0.833099, -0.471895,
		0.941809, 0.158204, -0.296595,
		29.570969, 24.317234, 49.378674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.853559, 24.434212, 48.841816>,  <28.911701, 24.206491, 49.586288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.853559, 24.434212, 48.841816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.221546, 24.287996, 48.898441>,  <29.442339, 24.200266, 48.932415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.221546, 24.287996, 48.898441>,  <28.853559, 24.434212, 48.841816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.221546, 24.287996, 48.898441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088313, -0.545123, -0.833691,
		0.381918, 0.754467, -0.533777,
		0.919967, -0.365541, 0.141563,
		29.497536, 24.178333, 48.940910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.318853, 23.928789, 48.599937>,  <28.853559, 24.434212, 48.841816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.318853, 23.928789, 48.599937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.004879, 24.119658, 48.441856>,  <27.816494, 24.234179, 48.347008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.004879, 24.119658, 48.441856>,  <28.318853, 23.928789, 48.599937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.004879, 24.119658, 48.441856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583098, 0.353290, -0.731562,
		-0.209459, -0.804670, -0.555547,
		-0.784935, 0.477171, -0.395202,
		27.769398, 24.262808, 48.323296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.375690, 23.845278, 47.902885>,  <28.318853, 23.928789, 48.599937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.375690, 23.845278, 47.902885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.188234, 24.190121, 47.979977>,  <28.075760, 24.397026, 48.026234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.188234, 24.190121, 47.979977>,  <28.375690, 23.845278, 47.902885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.188234, 24.190121, 47.979977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506867, 0.441103, -0.740617,
		-0.723507, -0.249393, -0.643693,
		-0.468640, 0.862108, 0.192732,
		28.047642, 24.448753, 48.037796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.934565, 24.078962, 47.304615>,  <28.375690, 23.845278, 47.902885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.934565, 24.078962, 47.304615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.061573, 24.371639, 47.545879>,  <28.137777, 24.547245, 47.690639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.061573, 24.371639, 47.545879>,  <27.934565, 24.078962, 47.304615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.061573, 24.371639, 47.545879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518324, 0.398722, -0.756545,
		-0.794054, 0.552852, -0.252652,
		0.317519, 0.731693, 0.603164,
		28.156828, 24.591146, 47.726830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.147175, 24.549709, 46.871395>,  <27.934565, 24.078962, 47.304615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.147175, 24.549709, 46.871395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.316832, 24.701767, 47.200172>,  <28.418625, 24.793001, 47.397438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.316832, 24.701767, 47.200172>,  <28.147175, 24.549709, 46.871395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.316832, 24.701767, 47.200172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668040, 0.481449, -0.567388,
		-0.611414, 0.789746, -0.049748,
		0.424141, 0.380143, 0.821946,
		28.444075, 24.815809, 47.446754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.002728, 25.162556, 46.821861>,  <28.147175, 24.549709, 46.871395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.002728, 25.162556, 46.821861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.321381, 25.124302, 47.060600>,  <28.512573, 25.101351, 47.203846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.321381, 25.124302, 47.060600>,  <28.002728, 25.162556, 46.821861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.321381, 25.124302, 47.060600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561862, 0.481274, -0.672820,
		-0.222905, 0.871338, 0.437131,
		0.796633, -0.095633, 0.596850,
		28.560371, 25.095612, 47.239655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.335100, 25.829153, 46.826687>,  <28.002728, 25.162556, 46.821861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.335100, 25.829153, 46.826687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.624321, 25.577366, 46.940506>,  <28.797853, 25.426292, 47.008797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.624321, 25.577366, 46.940506>,  <28.335100, 25.829153, 46.826687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.624321, 25.577366, 46.940506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644203, 0.465715, -0.606723,
		0.249397, 0.621995, 0.742242,
		0.723051, -0.629470, 0.284543,
		28.841236, 25.388525, 47.025867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.878313, 26.264994, 46.924412>,  <28.335100, 25.829153, 46.826687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.878313, 26.264994, 46.924412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.026552, 25.899603, 46.857216>,  <29.115496, 25.680368, 46.816898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.026552, 25.899603, 46.857216>,  <28.878313, 26.264994, 46.924412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.026552, 25.899603, 46.857216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708065, 0.394918, -0.585392,
		0.601083, 0.097996, 0.793155,
		0.370597, -0.913475, -0.167991,
		29.137732, 25.625561, 46.806820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.577324, 26.431129, 46.980984>,  <28.878313, 26.264994, 46.924412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.577324, 26.431129, 46.980984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.571716, 26.073324, 46.802254>,  <29.568352, 25.858641, 46.695015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.571716, 26.073324, 46.802254>,  <29.577324, 26.431129, 46.980984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.571716, 26.073324, 46.802254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700716, 0.309993, -0.642574,
		0.713302, -0.322102, 0.622455,
		-0.014018, -0.894514, -0.446821,
		29.567511, 25.804970, 46.668209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.269945, 26.251354, 46.894867>,  <29.577324, 26.431129, 46.980984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.269945, 26.251354, 46.894867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.096041, 26.027168, 46.612915>,  <29.991697, 25.892656, 46.443741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.096041, 26.027168, 46.612915>,  <30.269945, 26.251354, 46.894867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.096041, 26.027168, 46.612915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606590, 0.396270, -0.689216,
		0.665605, -0.727221, 0.167688,
		-0.434763, -0.560463, -0.704885,
		29.965612, 25.859030, 46.401451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.845917, 25.801908, 46.525982>,  <30.269945, 26.251354, 46.894867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.845917, 25.801908, 46.525982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.545542, 25.839468, 46.264519>,  <30.365316, 25.862003, 46.107639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.545542, 25.839468, 46.264519>,  <30.845917, 25.801908, 46.525982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.545542, 25.839468, 46.264519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659545, 0.156147, -0.735267,
		0.033024, -0.983260, -0.179189,
		-0.750939, 0.093902, -0.653661,
		30.320261, 25.867638, 46.068420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.082272, 25.468872, 46.026947>,  <30.845917, 25.801908, 46.525982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.082272, 25.468872, 46.026947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.793467, 25.691547, 45.862606>,  <30.620184, 25.825151, 45.764000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.793467, 25.691547, 45.862606>,  <31.082272, 25.468872, 46.026947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.793467, 25.691547, 45.862606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595035, 0.196615, -0.779279,
		-0.353035, -0.807119, -0.473207,
		-0.722011, 0.556688, -0.410852,
		30.576864, 25.858553, 45.739349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.830486, 25.208504, 45.311932>,  <31.082272, 25.468872, 46.026947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.830486, 25.208504, 45.311932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.745712, 25.599335, 45.320004>,  <30.694847, 25.833834, 45.324844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.745712, 25.599335, 45.320004>,  <30.830486, 25.208504, 45.311932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.745712, 25.599335, 45.320004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500046, 0.126157, -0.856760,
		-0.839665, -0.171489, -0.515320,
		-0.211936, 0.977075, 0.020177,
		30.682131, 25.892458, 45.326057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.934706, 25.439983, 44.515091>,  <30.830486, 25.208504, 45.311932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.934706, 25.439983, 44.515091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.882324, 25.782612, 44.714745>,  <30.850895, 25.988190, 44.834538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.882324, 25.782612, 44.714745>,  <30.934706, 25.439983, 44.515091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.882324, 25.782612, 44.714745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353504, 0.510720, -0.783709,
		-0.926221, 0.073816, -0.369682,
		-0.130954, 0.856572, 0.499134,
		30.843039, 26.039583, 44.864487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.687521, 25.875065, 44.018749>,  <30.934706, 25.439983, 44.515091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.687521, 25.875065, 44.018749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.790651, 26.140907, 44.299271>,  <30.852530, 26.300413, 44.467583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.790651, 26.140907, 44.299271>,  <30.687521, 25.875065, 44.018749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.790651, 26.140907, 44.299271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248171, 0.655938, -0.712851,
		-0.933776, 0.357835, 0.004182,
		0.257826, 0.664605, 0.701303,
		30.868000, 26.340288, 44.509663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.276653, 26.494368, 43.900070>,  <30.687521, 25.875065, 44.018749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.276653, 26.494368, 43.900070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.605295, 26.575546, 44.113152>,  <30.802481, 26.624254, 44.241001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.605295, 26.575546, 44.113152>,  <30.276653, 26.494368, 43.900070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.605295, 26.575546, 44.113152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231406, 0.735287, -0.637028,
		-0.520977, 0.646657, 0.557152,
		0.821605, 0.202948, 0.532708,
		30.851776, 26.636431, 44.272964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.247791, 27.181807, 43.908325>,  <30.276653, 26.494368, 43.900070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.247791, 27.181807, 43.908325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.628910, 27.096340, 43.994602>,  <30.857582, 27.045059, 44.046368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.628910, 27.096340, 43.994602>,  <30.247791, 27.181807, 43.908325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628910, 27.096340, 43.994602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302346, 0.603175, -0.738083,
		0.027607, 0.768456, 0.639306,
		0.952798, -0.213668, 0.215688,
		30.914749, 27.032240, 44.059307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.450619, 27.824249, 43.863758>,  <30.247791, 27.181807, 43.908325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.450619, 27.824249, 43.863758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.781292, 27.599188, 43.862083>,  <30.979696, 27.464151, 43.861076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.781292, 27.599188, 43.862083>,  <30.450619, 27.824249, 43.863758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.781292, 27.599188, 43.862083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452634, 0.669425, -0.589061,
		0.334242, 0.485070, 0.808078,
		0.826683, -0.562652, -0.004191,
		31.029297, 27.430391, 43.860825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.988489, 28.293240, 44.063545>,  <30.450619, 27.824249, 43.863758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.988489, 28.293240, 44.063545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.131298, 27.978403, 43.862339>,  <31.216984, 27.789501, 43.741615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.131298, 27.978403, 43.862339>,  <30.988489, 28.293240, 44.063545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.131298, 27.978403, 43.862339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226977, 0.595462, -0.770653,
		0.906099, 0.160969, 0.391246,
		0.357023, -0.787092, -0.503011,
		31.238405, 27.742275, 43.711437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.735592, 28.467422, 43.807652>,  <30.988489, 28.293240, 44.063545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.735592, 28.467422, 43.807652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578434, 28.171061, 43.589775>,  <31.484140, 27.993242, 43.459049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578434, 28.171061, 43.589775>,  <31.735592, 28.467422, 43.807652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.578434, 28.171061, 43.589775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373474, 0.412714, -0.830773,
		0.840329, -0.529835, 0.114557,
		-0.392893, -0.740907, -0.544695,
		31.460566, 27.948788, 43.426365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.295502, 28.166647, 43.380390>,  <31.735592, 28.467422, 43.807652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.295502, 28.166647, 43.380390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.963165, 28.031590, 43.203434>,  <31.763763, 27.950556, 43.097260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.963165, 28.031590, 43.203434>,  <32.295502, 28.166647, 43.380390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.963165, 28.031590, 43.203434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249213, 0.485030, -0.838235,
		0.497611, -0.806680, -0.318828,
		-0.830829, -0.337659, -0.442391,
		31.713915, 27.930296, 43.070717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422050, 27.797709, 42.797688>,  <32.295502, 28.166647, 43.380390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422050, 27.797709, 42.797688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.044373, 27.915358, 42.738377>,  <31.817766, 27.985947, 42.702789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.044373, 27.915358, 42.738377>,  <32.422050, 27.797709, 42.797688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.044373, 27.915358, 42.738377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283472, 0.496335, -0.820546,
		-0.167746, -0.816788, -0.552013,
		-0.944196, 0.294124, -0.148278,
		31.761114, 28.003595, 42.693893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.220558, 27.572676, 42.119801>,  <32.422050, 27.797709, 42.797688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.220558, 27.572676, 42.119801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.937687, 27.846992, 42.188602>,  <31.767963, 28.011583, 42.229885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.937687, 27.846992, 42.188602>,  <32.220558, 27.572676, 42.119801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.937687, 27.846992, 42.188602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094926, 0.333165, -0.938078,
		-0.700632, -0.647063, -0.300707,
		-0.707180, 0.685792, 0.172003,
		31.725533, 28.052731, 42.240204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718019, 27.543255, 41.474018>,  <32.220558, 27.572676, 42.119801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718019, 27.543255, 41.474018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.658129, 27.892271, 41.660030>,  <31.622194, 28.101681, 41.771637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.658129, 27.892271, 41.660030>,  <31.718019, 27.543255, 41.474018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.658129, 27.892271, 41.660030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202790, 0.433231, -0.878173,
		-0.967707, -0.225791, 0.112075,
		-0.149729, 0.872542, 0.465029,
		31.613211, 28.154034, 41.799538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.138908, 27.909821, 41.218033>,  <31.718019, 27.543255, 41.474018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.138908, 27.909821, 41.218033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.366920, 28.196438, 41.378849>,  <31.503727, 28.368408, 41.475338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.366920, 28.196438, 41.378849>,  <31.138908, 27.909821, 41.218033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.366920, 28.196438, 41.378849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103698, 0.548151, -0.829926,
		-0.815054, 0.431392, 0.386766,
		0.570029, 0.716542, 0.402038,
		31.537930, 28.411400, 41.499462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.771292, 28.466049, 40.989922>,  <31.138908, 27.909821, 41.218033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.771292, 28.466049, 40.989922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.125460, 28.620249, 41.093784>,  <31.337961, 28.712769, 41.156101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.125460, 28.620249, 41.093784>,  <30.771292, 28.466049, 40.989922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.125460, 28.620249, 41.093784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119522, 0.728707, -0.674314,
		-0.449161, 0.566017, 0.691288,
		0.885420, 0.385500, 0.259655,
		31.391087, 28.735899, 41.171680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.779709, 29.285358, 41.003498>,  <30.771292, 28.466049, 40.989922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.779709, 29.285358, 41.003498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.161337, 29.174168, 40.958820>,  <31.390314, 29.107454, 40.932014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.161337, 29.174168, 40.958820>,  <30.779709, 29.285358, 41.003498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.161337, 29.174168, 40.958820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134317, 0.730182, -0.669920,
		0.267777, 0.624150, 0.733983,
		0.954072, -0.277976, -0.111692,
		31.447559, 29.090775, 40.925312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.147118, 29.915020, 40.796284>,  <30.779709, 29.285358, 41.003498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.147118, 29.915020, 40.796284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.409168, 29.629528, 40.697166>,  <31.566399, 29.458233, 40.637695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.409168, 29.629528, 40.697166>,  <31.147118, 29.915020, 40.796284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.409168, 29.629528, 40.697166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229310, 0.500346, -0.834908,
		0.719880, 0.490147, 0.491454,
		0.655125, -0.713729, -0.247794,
		31.605705, 29.415409, 40.622829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.555170, 30.309448, 40.460453>,  <31.147118, 29.915020, 40.796284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.555170, 30.309448, 40.460453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653698, 29.938599, 40.347477>,  <31.712814, 29.716089, 40.279694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653698, 29.938599, 40.347477>,  <31.555170, 30.309448, 40.460453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.653698, 29.938599, 40.347477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229991, 0.339007, -0.912238,
		0.941505, 0.159744, 0.296734,
		0.246320, -0.927122, -0.282437,
		31.727594, 29.660461, 40.262745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.240540, 30.339855, 40.138351>,  <31.555170, 30.309448, 40.460453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.240540, 30.339855, 40.138351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088413, 29.993956, 40.007156>,  <31.997139, 29.786417, 39.928440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088413, 29.993956, 40.007156>,  <32.240540, 30.339855, 40.138351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088413, 29.993956, 40.007156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381306, 0.176485, -0.907446,
		0.842596, -0.470177, 0.262613,
		-0.380313, -0.864747, -0.327987,
		31.974319, 29.734531, 39.908760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.719845, 30.088974, 39.647465>,  <32.240540, 30.339855, 40.138351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.719845, 30.088974, 39.647465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377014, 29.904026, 39.556572>,  <32.171314, 29.793056, 39.502037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377014, 29.904026, 39.556572>,  <32.719845, 30.088974, 39.647465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377014, 29.904026, 39.556572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235055, 0.041530, -0.971094,
		0.458442, -0.885714, 0.073088,
		-0.857077, -0.462370, -0.227231,
		32.119892, 29.765316, 39.488403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.896683, 29.787159, 39.100395>,  <32.719845, 30.088974, 39.647465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.896683, 29.787159, 39.100395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.496941, 29.801199, 39.097416>,  <32.257095, 29.809624, 39.095627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.496941, 29.801199, 39.097416>,  <32.896683, 29.787159, 39.100395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.496941, 29.801199, 39.097416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015238, 0.227249, -0.973717,
		-0.032488, -0.973204, -0.227638,
		-0.999356, 0.035103, -0.007447,
		32.197132, 29.811729, 39.095181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.680191, 29.353712, 38.536472>,  <32.896683, 29.787159, 39.100395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.680191, 29.353712, 38.536472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.369900, 29.597605, 38.601566>,  <32.183727, 29.743940, 38.640621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.369900, 29.597605, 38.601566>,  <32.680191, 29.353712, 38.536472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.369900, 29.597605, 38.601566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033084, 0.296804, -0.954365,
		-0.630205, -0.734940, -0.250411,
		-0.775724, 0.609730, 0.162733,
		32.137184, 29.780523, 38.650387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.082359, 29.233545, 38.068382>,  <32.680191, 29.353712, 38.536472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.082359, 29.233545, 38.068382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083694, 29.613577, 38.193180>,  <32.084496, 29.841597, 38.268059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083694, 29.613577, 38.193180>,  <32.082359, 29.233545, 38.068382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083694, 29.613577, 38.193180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075079, 0.311350, -0.947325,
		-0.997172, -0.020264, 0.072370,
		0.003335, 0.950079, 0.311991,
		32.084694, 29.898602, 38.286777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.669407, 29.619688, 37.562847>,  <32.082359, 29.233545, 38.068382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.669407, 29.619688, 37.562847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.864588, 29.906677, 37.761700>,  <31.981695, 30.078871, 37.881012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.864588, 29.906677, 37.761700>,  <31.669407, 29.619688, 37.562847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.864588, 29.906677, 37.761700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164885, 0.483516, -0.859666,
		-0.857156, 0.501444, 0.117632,
		0.487951, 0.717472, 0.497129,
		32.010975, 30.121920, 37.910839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.496838, 30.163450, 37.273197>,  <31.669407, 29.619688, 37.562847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.496838, 30.163450, 37.273197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810671, 30.311674, 37.472042>,  <31.998970, 30.400608, 37.591347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810671, 30.311674, 37.472042>,  <31.496838, 30.163450, 37.273197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810671, 30.311674, 37.472042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229669, 0.571031, -0.788147,
		-0.575918, 0.732537, 0.362916,
		0.784583, 0.370558, 0.497108,
		32.046047, 30.422842, 37.621174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.393290, 30.895386, 37.421059>,  <31.496838, 30.163450, 37.273197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.393290, 30.895386, 37.421059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.782663, 30.803869, 37.417454>,  <32.016289, 30.748959, 37.415291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.782663, 30.803869, 37.417454>,  <31.393290, 30.895386, 37.421059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.782663, 30.803869, 37.417454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157641, 0.698220, -0.698311,
		0.166061, 0.678338, 0.715738,
		0.973434, -0.228791, -0.009013,
		32.074692, 30.735231, 37.414749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.737169, 31.463121, 37.023567>,  <31.393290, 30.895386, 37.421059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.737169, 31.463121, 37.023567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.044132, 31.208363, 37.053093>,  <32.228310, 31.055508, 37.070808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.044132, 31.208363, 37.053093>,  <31.737169, 31.463121, 37.023567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.044132, 31.208363, 37.053093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497293, 0.518583, -0.695537,
		0.404704, 0.570469, 0.714688,
		0.767407, -0.636896, 0.073818,
		32.274353, 31.017294, 37.075237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.276009, 31.883627, 37.030479>,  <31.737169, 31.463121, 37.023567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.276009, 31.883627, 37.030479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.399654, 31.525623, 36.901852>,  <32.473843, 31.310822, 36.824677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.399654, 31.525623, 36.901852>,  <32.276009, 31.883627, 37.030479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.399654, 31.525623, 36.901852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469439, 0.437660, -0.766864,
		0.827087, 0.086096, 0.555442,
		0.309119, -0.895009, -0.321566,
		32.492390, 31.257120, 36.805382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010750, 31.903654, 36.987293>,  <32.276009, 31.883627, 37.030479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010750, 31.903654, 36.987293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.925758, 31.615461, 36.723244>,  <32.874763, 31.442547, 36.564816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.925758, 31.615461, 36.723244>,  <33.010750, 31.903654, 36.987293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.925758, 31.615461, 36.723244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461039, 0.521712, -0.717816,
		0.861565, -0.456864, 0.221316,
		-0.212481, -0.720480, -0.660121,
		32.862015, 31.399317, 36.525208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602497, 31.833693, 36.494839>,  <33.010750, 31.903654, 36.987293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602497, 31.833693, 36.494839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.303772, 31.675337, 36.281094>,  <33.124538, 31.580324, 36.152847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.303772, 31.675337, 36.281094>,  <33.602497, 31.833693, 36.494839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303772, 31.675337, 36.281094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403873, 0.368389, -0.837363,
		0.528358, -0.841166, -0.115227,
		-0.746810, -0.395891, -0.534366,
		33.079727, 31.556570, 36.120785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887356, 31.578690, 35.846741>,  <33.602497, 31.833693, 36.494839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887356, 31.578690, 35.846741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493355, 31.613798, 35.787323>,  <33.256954, 31.634863, 35.751671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493355, 31.613798, 35.787323>,  <33.887356, 31.578690, 35.846741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493355, 31.613798, 35.787323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172453, 0.527954, -0.831580,
		0.005434, -0.844725, -0.535173,
		-0.985003, 0.087773, -0.148544,
		33.197853, 31.640129, 35.742760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883743, 31.487719, 35.130871>,  <33.887356, 31.578690, 35.846741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883743, 31.487719, 35.130871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.542114, 31.667131, 35.236229>,  <33.337135, 31.774778, 35.299442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.542114, 31.667131, 35.236229>,  <33.883743, 31.487719, 35.130871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.542114, 31.667131, 35.236229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073324, 0.605141, -0.792734,
		-0.514957, -0.657741, -0.549724,
		-0.854074, 0.448532, 0.263393,
		33.285892, 31.801691, 35.315247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977276, 30.797262, 35.262970>,  <33.883743, 31.487719, 35.130871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977276, 30.797262, 35.262970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.360661, 30.830414, 35.153801>,  <34.590691, 30.850306, 35.088299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.360661, 30.830414, 35.153801>,  <33.977276, 30.797262, 35.262970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360661, 30.830414, 35.153801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279284, -0.467096, 0.838941,
		-0.057953, -0.880314, -0.470839,
		0.958458, 0.082879, -0.272927,
		34.648197, 30.855278, 35.071922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.414909, 30.247614, 35.476265>,  <33.977276, 30.797262, 35.262970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.414909, 30.247614, 35.476265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686104, 30.540901, 35.455360>,  <34.848820, 30.716873, 35.442818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686104, 30.540901, 35.455360>,  <34.414909, 30.247614, 35.476265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686104, 30.540901, 35.455360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418761, -0.326822, 0.847247,
		0.604134, -0.596306, -0.528623,
		0.677983, 0.733217, -0.052265,
		34.889500, 30.760866, 35.439682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086361, 29.919298, 35.540302>,  <34.414909, 30.247614, 35.476265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086361, 29.919298, 35.540302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090252, 30.306376, 35.641079>,  <35.092587, 30.538622, 35.701546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090252, 30.306376, 35.641079>,  <35.086361, 29.919298, 35.540302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090252, 30.306376, 35.641079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408369, -0.233828, 0.882360,
		0.912765, 0.094305, -0.397450,
		0.009724, 0.967693, 0.251942,
		35.093170, 30.596684, 35.716660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639885, 29.921700, 35.999493>,  <35.086361, 29.919298, 35.540302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639885, 29.921700, 35.999493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.503281, 30.290401, 36.072964>,  <35.421318, 30.511623, 36.117046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.503281, 30.290401, 36.072964>,  <35.639885, 29.921700, 35.999493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503281, 30.290401, 36.072964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054429, -0.175699, 0.982938,
		0.938300, 0.345681, 0.009833,
		-0.341511, 0.921756, 0.183674,
		35.400829, 30.566929, 36.128067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118385, 30.327745, 36.381317>,  <35.639885, 29.921700, 35.999493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118385, 30.327745, 36.381317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.757427, 30.483078, 36.456020>,  <35.540852, 30.576279, 36.500843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.757427, 30.483078, 36.456020>,  <36.118385, 30.327745, 36.381317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757427, 30.483078, 36.456020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107188, -0.217488, 0.970160,
		0.417363, 0.895486, 0.154636,
		-0.902396, 0.388334, 0.186756,
		35.486710, 30.599579, 36.512047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258667, 30.829344, 36.944584>,  <36.118385, 30.327745, 36.381317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258667, 30.829344, 36.944584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.881649, 30.695738, 36.946983>,  <35.655437, 30.615574, 36.948425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.881649, 30.695738, 36.946983>,  <36.258667, 30.829344, 36.944584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881649, 30.695738, 36.946983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164391, -0.448101, 0.878739,
		-0.290820, 0.829242, 0.477266,
		-0.942550, -0.334013, 0.006003,
		35.598885, 30.595533, 36.948784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315598, 30.670866, 37.663387>,  <36.258667, 30.829344, 36.944584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315598, 30.670866, 37.663387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.973484, 30.512693, 37.529449>,  <35.768215, 30.417789, 37.449089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.973484, 30.512693, 37.529449>,  <36.315598, 30.670866, 37.663387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.973484, 30.512693, 37.529449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096015, -0.514076, 0.852354,
		-0.509182, 0.761156, 0.401715,
		-0.855286, -0.395433, -0.334841,
		35.716900, 30.394064, 37.428997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780830, 30.720730, 38.226589>,  <36.315598, 30.670866, 37.663387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780830, 30.720730, 38.226589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.640442, 30.439119, 37.979637>,  <35.556210, 30.270153, 37.831467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.640442, 30.439119, 37.979637>,  <35.780830, 30.720730, 38.226589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640442, 30.439119, 37.979637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159447, -0.604765, 0.780280,
		-0.922710, 0.372297, 0.100002,
		-0.350973, -0.704027, -0.617384,
		35.535149, 30.227911, 37.794422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181046, 30.511799, 38.469116>,  <35.780830, 30.720730, 38.226589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181046, 30.511799, 38.469116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.301064, 30.211733, 38.233414>,  <35.373074, 30.031693, 38.091991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.301064, 30.211733, 38.233414>,  <35.181046, 30.511799, 38.469116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301064, 30.211733, 38.233414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180899, -0.651254, 0.736982,
		-0.936615, -0.114534, -0.331112,
		0.300047, -0.750167, -0.589256,
		35.391079, 29.986683, 38.056637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557201, 30.023155, 38.491917>,  <35.181046, 30.511799, 38.469116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557201, 30.023155, 38.491917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891716, 29.821386, 38.405952>,  <35.092422, 29.700325, 38.354374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891716, 29.821386, 38.405952>,  <34.557201, 30.023155, 38.491917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891716, 29.821386, 38.405952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200417, -0.646057, 0.736508,
		-0.510354, -0.572860, -0.641382,
		0.836285, -0.504423, -0.214907,
		35.142601, 29.670059, 38.341480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.388012, 29.250597, 38.453377>,  <34.557201, 30.023155, 38.491917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.388012, 29.250597, 38.453377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784550, 29.281704, 38.495705>,  <35.022472, 29.300367, 38.521099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784550, 29.281704, 38.495705>,  <34.388012, 29.250597, 38.453377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784550, 29.281704, 38.495705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022595, -0.692765, 0.720810,
		0.129360, -0.716959, -0.685008,
		0.991340, 0.077766, 0.105816,
		35.081951, 29.305033, 38.527451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602451, 28.603786, 38.461288>,  <34.388012, 29.250597, 38.453377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602451, 28.603786, 38.461288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.917408, 28.776308, 38.637466>,  <35.106380, 28.879820, 38.743172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.917408, 28.776308, 38.637466>,  <34.602451, 28.603786, 38.461288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.917408, 28.776308, 38.637466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088295, -0.628211, 0.773017,
		0.610097, -0.647556, -0.456566,
		0.787391, 0.431303, 0.440445,
		35.153625, 28.905699, 38.769600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082008, 28.047260, 38.678947>,  <34.602451, 28.603786, 38.461288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082008, 28.047260, 38.678947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.170383, 28.368296, 38.900593>,  <35.223408, 28.560917, 39.033581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.170383, 28.368296, 38.900593>,  <35.082008, 28.047260, 38.678947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170383, 28.368296, 38.900593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038439, -0.560544, 0.827232,
		0.974530, -0.204065, -0.092994,
		0.220936, 0.802588, 0.554111,
		35.236664, 28.609072, 39.066826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662460, 27.800951, 39.120026>,  <35.082008, 28.047260, 38.678947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662460, 27.800951, 39.120026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.496223, 28.120325, 39.294281>,  <35.396481, 28.311949, 39.398834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.496223, 28.120325, 39.294281>,  <35.662460, 27.800951, 39.120026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496223, 28.120325, 39.294281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000755, -0.479267, 0.877669,
		0.909550, 0.364425, 0.199783,
		-0.415594, 0.798435, 0.435642,
		35.371544, 28.359856, 39.424973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018898, 27.848452, 39.758911>,  <35.662460, 27.800951, 39.120026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018898, 27.848452, 39.758911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.694920, 28.073645, 39.824688>,  <35.500534, 28.208759, 39.864155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.694920, 28.073645, 39.824688>,  <36.018898, 27.848452, 39.758911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694920, 28.073645, 39.824688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157990, -0.479445, 0.863233,
		0.564827, 0.673189, 0.477269,
		-0.809944, 0.562981, 0.164447,
		35.451935, 28.242538, 39.874023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074364, 28.095005, 40.510693>,  <36.018898, 27.848452, 39.758911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074364, 28.095005, 40.510693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.687523, 28.133215, 40.416389>,  <35.455418, 28.156141, 40.359806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.687523, 28.133215, 40.416389>,  <36.074364, 28.095005, 40.510693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687523, 28.133215, 40.416389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254321, -0.343640, 0.904009,
		0.005340, 0.934230, 0.356631,
		-0.967105, 0.095526, -0.235759,
		35.397392, 28.161873, 40.345661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745510, 28.413534, 41.076645>,  <36.074364, 28.095005, 40.510693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.745510, 28.413534, 41.076645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452972, 28.204475, 40.901382>,  <35.277451, 28.079041, 40.796227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452972, 28.204475, 40.901382>,  <35.745510, 28.413534, 41.076645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452972, 28.204475, 40.901382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275193, -0.361680, 0.890762,
		-0.624023, 0.772030, 0.120685,
		-0.731344, -0.522645, -0.438154,
		35.233570, 28.047682, 40.769936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100224, 28.586185, 41.433899>,  <35.745510, 28.413534, 41.076645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100224, 28.586185, 41.433899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004734, 28.254000, 41.232567>,  <34.947441, 28.054688, 41.111767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004734, 28.254000, 41.232567>,  <35.100224, 28.586185, 41.433899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004734, 28.254000, 41.232567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339911, -0.414066, 0.844399,
		-0.909655, 0.372665, -0.183437,
		-0.238723, -0.830464, -0.503330,
		34.933117, 28.004860, 41.081570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322586, 28.485750, 41.546486>,  <35.100224, 28.586185, 41.433899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322586, 28.485750, 41.546486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.459778, 28.129665, 41.426559>,  <34.542091, 27.916016, 41.354603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.459778, 28.129665, 41.426559>,  <34.322586, 28.485750, 41.546486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459778, 28.129665, 41.426559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402221, -0.427617, 0.809544,
		-0.848873, -0.157060, -0.504724,
		0.342976, -0.890211, -0.299819,
		34.562672, 27.862602, 41.336613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815205, 28.049219, 41.658474>,  <34.322586, 28.485750, 41.546486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815205, 28.049219, 41.658474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104771, 27.774368, 41.633827>,  <34.278511, 27.609457, 41.619038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104771, 27.774368, 41.633827>,  <33.815205, 28.049219, 41.658474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104771, 27.774368, 41.633827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405602, -0.496155, 0.767670,
		-0.558061, -0.530737, -0.637876,
		0.723916, -0.687130, -0.061617,
		34.321945, 27.568230, 41.615341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475666, 27.384615, 41.585613>,  <33.815205, 28.049219, 41.658474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475666, 27.384615, 41.585613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847641, 27.353868, 41.729450>,  <34.070827, 27.335421, 41.815750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847641, 27.353868, 41.729450>,  <33.475666, 27.384615, 41.585613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847641, 27.353868, 41.729450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358737, -0.404398, 0.841291,
		0.080753, -0.911348, -0.403639,
		0.929939, -0.076863, 0.359591,
		34.126621, 27.330809, 41.837326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.547123, 26.658056, 41.731560>,  <33.475666, 27.384615, 41.585613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.547123, 26.658056, 41.731560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783783, 26.907312, 41.936165>,  <33.925777, 27.056866, 42.058929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783783, 26.907312, 41.936165>,  <33.547123, 26.658056, 41.731560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783783, 26.907312, 41.936165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356546, -0.366812, 0.859258,
		0.723069, -0.690756, 0.005156,
		0.591646, 0.623141, 0.511517,
		33.961277, 27.094255, 42.089619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774078, 26.147356, 42.195835>,  <33.547123, 26.658056, 41.731560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774078, 26.147356, 42.195835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835434, 26.509686, 42.353798>,  <33.872246, 26.727083, 42.448578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835434, 26.509686, 42.353798>,  <33.774078, 26.147356, 42.195835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835434, 26.509686, 42.353798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286088, -0.341817, 0.895162,
		0.945847, -0.250285, 0.206715,
		0.153387, 0.905824, 0.394911,
		33.881451, 26.781433, 42.472271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035278, 26.126335, 42.850746>,  <33.774078, 26.147356, 42.195835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035278, 26.126335, 42.850746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.941193, 26.511576, 42.903069>,  <33.884739, 26.742720, 42.934464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.941193, 26.511576, 42.903069>,  <34.035278, 26.126335, 42.850746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.941193, 26.511576, 42.903069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137461, -0.166193, 0.976465,
		0.962173, 0.211701, 0.171481,
		-0.235218, 0.963101, 0.130806,
		33.870628, 26.800507, 42.942310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449688, 26.333315, 43.396019>,  <34.035278, 26.126335, 42.850746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449688, 26.333315, 43.396019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148708, 26.596367, 43.381332>,  <33.968121, 26.754198, 43.372520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148708, 26.596367, 43.381332>,  <34.449688, 26.333315, 43.396019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148708, 26.596367, 43.381332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084962, -0.041632, 0.995514,
		0.653152, 0.752189, 0.087199,
		-0.752445, 0.657631, -0.036715,
		33.922974, 26.793655, 43.370319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555958, 26.840567, 43.882221>,  <34.449688, 26.333315, 43.396019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.555958, 26.840567, 43.882221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.164921, 26.875669, 43.805687>,  <33.930298, 26.896730, 43.759766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.164921, 26.875669, 43.805687>,  <34.555958, 26.840567, 43.882221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.164921, 26.875669, 43.805687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192886, -0.009423, 0.981176,
		0.084302, 0.996097, 0.026139,
		-0.977593, 0.087757, -0.191338,
		33.871643, 26.901997, 43.748287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363525, 27.268286, 44.310055>,  <34.555958, 26.840567, 43.882221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363525, 27.268286, 44.310055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016853, 27.104748, 44.195717>,  <33.808849, 27.006624, 44.127113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016853, 27.104748, 44.195717>,  <34.363525, 27.268286, 44.310055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016853, 27.104748, 44.195717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307384, -0.013642, 0.951488,
		-0.392910, 0.912502, -0.113849,
		-0.866681, -0.408844, -0.285849,
		33.756847, 26.982094, 44.109962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868423, 27.621462, 44.593208>,  <34.363525, 27.268286, 44.310055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868423, 27.621462, 44.593208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693317, 27.269367, 44.519939>,  <33.588253, 27.058111, 44.475979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693317, 27.269367, 44.519939>,  <33.868423, 27.621462, 44.593208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693317, 27.269367, 44.519939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345179, -0.023573, 0.938241,
		-0.830190, 0.473953, -0.293519,
		-0.437763, -0.880234, -0.183169,
		33.561989, 27.005297, 44.464989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142300, 27.643026, 45.021297>,  <33.868423, 27.621462, 44.593208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142300, 27.643026, 45.021297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.216946, 27.266071, 44.910244>,  <33.261734, 27.039898, 44.843613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.216946, 27.266071, 44.910244>,  <33.142300, 27.643026, 45.021297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.216946, 27.266071, 44.910244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192188, -0.312156, 0.930388,
		-0.963451, -0.120269, -0.239369,
		0.186617, -0.942387, -0.277633,
		33.272930, 26.983355, 44.826954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609318, 27.193165, 45.205730>,  <33.142300, 27.643026, 45.021297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609318, 27.193165, 45.205730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.925213, 26.949474, 45.177021>,  <33.114750, 26.803261, 45.159794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.925213, 26.949474, 45.177021>,  <32.609318, 27.193165, 45.205730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.925213, 26.949474, 45.177021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136522, -0.288618, 0.947661,
		-0.598055, -0.738609, -0.311106,
		0.789741, -0.609226, -0.071773,
		33.162136, 26.766706, 45.155491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.287682, 26.478621, 45.442726>,  <32.609318, 27.193165, 45.205730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.287682, 26.478621, 45.442726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.686287, 26.504013, 45.464359>,  <32.925449, 26.519249, 45.477337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.686287, 26.504013, 45.464359>,  <32.287682, 26.478621, 45.442726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.686287, 26.504013, 45.464359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042520, -0.171094, 0.984337,
		0.071740, -0.983207, -0.167799,
		0.996517, 0.063481, 0.054081,
		32.985241, 26.523058, 45.480583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.417015, 26.020342, 46.085712>,  <32.287682, 26.478621, 45.442726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.417015, 26.020342, 46.085712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766319, 26.202742, 46.017029>,  <32.975903, 26.312181, 45.975819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766319, 26.202742, 46.017029>,  <32.417015, 26.020342, 46.085712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766319, 26.202742, 46.017029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283230, -0.188288, 0.940387,
		0.396487, -0.869834, -0.293577,
		0.873257, 0.456002, -0.171709,
		33.028297, 26.339542, 45.965515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986683, 25.494890, 46.179066>,  <32.417015, 26.020342, 46.085712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986683, 25.494890, 46.179066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142151, 25.861921, 46.212498>,  <33.235432, 26.082140, 46.232555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142151, 25.861921, 46.212498>,  <32.986683, 25.494890, 46.179066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142151, 25.861921, 46.212498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251628, -0.192970, 0.948391,
		0.886353, -0.347578, -0.305890,
		0.388667, 0.917580, 0.083579,
		33.258751, 26.137196, 46.237572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.588093, 25.418978, 46.570267>,  <32.986683, 25.494890, 46.179066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.588093, 25.418978, 46.570267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.467060, 25.796246, 46.625221>,  <33.394440, 26.022606, 46.658195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.467060, 25.796246, 46.625221>,  <33.588093, 25.418978, 46.570267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.467060, 25.796246, 46.625221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024399, -0.136431, 0.990349,
		0.952812, 0.303012, 0.018269,
		-0.302580, 0.943170, 0.137386,
		33.376286, 26.079197, 46.666435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882938, 25.504456, 47.212963>,  <33.588093, 25.418978, 46.570267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882938, 25.504456, 47.212963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634880, 25.812006, 47.150681>,  <33.486046, 25.996536, 47.113312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634880, 25.812006, 47.150681>,  <33.882938, 25.504456, 47.212963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634880, 25.812006, 47.150681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115239, 0.107038, 0.987554,
		0.775974, 0.630373, 0.022225,
		-0.620149, 0.768878, -0.155703,
		33.448837, 26.042669, 47.103970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074509, 25.999641, 47.626694>,  <33.882938, 25.504456, 47.212963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074509, 25.999641, 47.626694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690445, 26.086391, 47.556194>,  <33.460007, 26.138441, 47.513897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690445, 26.086391, 47.556194>,  <34.074509, 25.999641, 47.626694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690445, 26.086391, 47.556194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193490, -0.060864, 0.979213,
		0.201640, 0.974300, 0.100402,
		-0.960158, 0.216875, -0.176245,
		33.402397, 26.151453, 47.503323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.895027, 26.511814, 48.245972>,  <34.074509, 25.999641, 47.626694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.895027, 26.511814, 48.245972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545963, 26.380606, 48.101269>,  <33.336525, 26.301882, 48.014446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545963, 26.380606, 48.101269>,  <33.895027, 26.511814, 48.245972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545963, 26.380606, 48.101269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304740, -0.213044, 0.928303,
		-0.381570, 0.920335, 0.085954,
		-0.872661, -0.328019, -0.361754,
		33.284164, 26.282200, 47.992744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311741, 26.761568, 48.665916>,  <33.895027, 26.511814, 48.245972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311741, 26.761568, 48.665916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.161861, 26.439871, 48.481396>,  <33.071934, 26.246853, 48.370686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.161861, 26.439871, 48.481396>,  <33.311741, 26.761568, 48.665916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.161861, 26.439871, 48.481396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509375, -0.237160, 0.827220,
		-0.774687, 0.544930, -0.320798,
		-0.374696, -0.804243, -0.461298,
		33.049454, 26.198599, 48.343006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.970444, 26.849926, 48.998955>,  <33.311741, 26.761568, 48.665916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.970444, 26.849926, 48.998955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.248669, 26.992012, 49.248760>,  <34.415604, 27.077265, 49.398643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.248669, 26.992012, 49.248760>,  <33.970444, 26.849926, 48.998955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248669, 26.992012, 49.248760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379184, 0.556822, -0.739032,
		-0.610261, 0.750846, 0.252609,
		0.695558, 0.355217, 0.624516,
		34.457336, 27.098577, 49.436115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.813175, 27.529816, 49.165726>,  <33.970444, 26.849926, 48.998955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.813175, 27.529816, 49.165726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206329, 27.465107, 49.200981>,  <34.442223, 27.426283, 49.222134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206329, 27.465107, 49.200981>,  <33.813175, 27.529816, 49.165726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206329, 27.465107, 49.200981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165512, 0.565336, -0.808085,
		0.080895, 0.808842, 0.582435,
		0.982885, -0.161770, 0.088140,
		34.501194, 27.416576, 49.227425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094769, 28.196867, 49.230362>,  <33.813175, 27.529816, 49.165726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094769, 28.196867, 49.230362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.396332, 27.965073, 49.106548>,  <34.577271, 27.825996, 49.032261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.396332, 27.965073, 49.106548>,  <34.094769, 28.196867, 49.230362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396332, 27.965073, 49.106548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131914, 0.595081, -0.792765,
		0.643595, 0.556844, 0.525081,
		0.753913, -0.579485, -0.309536,
		34.622505, 27.791227, 49.013687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689022, 28.552485, 49.031818>,  <34.094769, 28.196867, 49.230362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689022, 28.552485, 49.031818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791855, 28.215031, 48.843273>,  <34.853554, 28.012558, 48.730145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791855, 28.215031, 48.843273>,  <34.689022, 28.552485, 49.031818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791855, 28.215031, 48.843273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349643, 0.535917, -0.768468,
		0.900921, 0.032751, 0.432747,
		0.257084, -0.843635, -0.471367,
		34.868980, 27.961941, 48.701862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309372, 28.663549, 48.587704>,  <34.689022, 28.552485, 49.031818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309372, 28.663549, 48.587704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156261, 28.329790, 48.429077>,  <35.064396, 28.129534, 48.333900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156261, 28.329790, 48.429077>,  <35.309372, 28.663549, 48.587704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156261, 28.329790, 48.429077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078113, 0.456948, -0.886057,
		0.920532, -0.308186, -0.240086,
		-0.382777, -0.834398, -0.396562,
		35.041428, 28.079472, 48.310108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701401, 28.595570, 48.111069>,  <35.309372, 28.663549, 48.587704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.701401, 28.595570, 48.111069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393990, 28.364437, 48.001179>,  <35.209541, 28.225758, 47.935246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393990, 28.364437, 48.001179>,  <35.701401, 28.595570, 48.111069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393990, 28.364437, 48.001179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007796, 0.420890, -0.907078,
		0.639768, -0.699257, -0.318961,
		-0.768529, -0.577833, -0.274723,
		35.163429, 28.191088, 47.918762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931850, 28.316685, 47.531025>,  <35.701401, 28.595570, 48.111069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931850, 28.316685, 47.531025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533821, 28.280008, 47.515892>,  <35.295006, 28.258003, 47.506813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533821, 28.280008, 47.515892>,  <35.931850, 28.316685, 47.531025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533821, 28.280008, 47.515892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019427, 0.193843, -0.980840,
		0.097264, -0.976739, -0.191106,
		-0.995069, -0.091688, -0.037829,
		35.235302, 28.252501, 47.504543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693729, 27.827209, 47.026005>,  <35.931850, 28.316685, 47.531025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693729, 27.827209, 47.026005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.391708, 28.083099, 47.083477>,  <35.210495, 28.236633, 47.117958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.391708, 28.083099, 47.083477>,  <35.693729, 27.827209, 47.026005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391708, 28.083099, 47.083477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006866, 0.211409, -0.977374,
		-0.655623, -0.738959, -0.155233,
		-0.755057, 0.639723, 0.143678,
		35.165192, 28.275017, 47.126579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369495, 27.777096, 46.484550>,  <35.693729, 27.827209, 47.026005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369495, 27.777096, 46.484550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207069, 28.112158, 46.630672>,  <35.109615, 28.313196, 46.718346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207069, 28.112158, 46.630672>,  <35.369495, 27.777096, 46.484550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207069, 28.112158, 46.630672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069577, 0.370243, -0.926325,
		-0.911193, -0.401562, -0.092060,
		-0.406062, 0.837656, 0.365303,
		35.085251, 28.363455, 46.740265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862080, 27.922182, 46.001259>,  <35.369495, 27.777096, 46.484550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862080, 27.922182, 46.001259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906624, 28.257719, 46.214405>,  <34.933350, 28.459042, 46.342293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906624, 28.257719, 46.214405>,  <34.862080, 27.922182, 46.001259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906624, 28.257719, 46.214405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065606, 0.541233, -0.838309,
		-0.991612, 0.058398, 0.115306,
		0.111364, 0.838842, 0.532862,
		34.940033, 28.509371, 46.374264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366734, 28.355785, 45.743587>,  <34.862080, 27.922182, 46.001259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366734, 28.355785, 45.743587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649601, 28.585775, 45.908184>,  <34.819321, 28.723768, 46.006943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649601, 28.585775, 45.908184>,  <34.366734, 28.355785, 45.743587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649601, 28.585775, 45.908184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068502, 0.634958, -0.769504,
		-0.703721, 0.515980, 0.488408,
		0.707167, 0.574973, 0.411487,
		34.861752, 28.758266, 46.031631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110985, 28.973129, 45.693748>,  <34.366734, 28.355785, 45.743587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110985, 28.973129, 45.693748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509026, 29.008486, 45.711479>,  <34.747849, 29.029699, 45.722118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509026, 29.008486, 45.711479>,  <34.110985, 28.973129, 45.693748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509026, 29.008486, 45.711479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018563, 0.607285, -0.794268,
		-0.097127, 0.789552, 0.605949,
		0.995099, 0.088393, 0.044327,
		34.807556, 29.035004, 45.724777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319901, 29.672499, 45.458382>,  <34.110985, 28.973129, 45.693748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319901, 29.672499, 45.458382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619240, 29.409597, 45.422615>,  <34.798843, 29.251858, 45.401154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619240, 29.409597, 45.422615>,  <34.319901, 29.672499, 45.458382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619240, 29.409597, 45.422615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311902, 0.467650, -0.827056,
		0.585399, 0.591037, 0.554963,
		0.748348, -0.657251, -0.089416,
		34.843746, 29.212421, 45.395790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979843, 30.043039, 45.283932>,  <34.319901, 29.672499, 45.458382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979843, 30.043039, 45.283932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044647, 29.669600, 45.156090>,  <35.083530, 29.445536, 45.079384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044647, 29.669600, 45.156090>,  <34.979843, 30.043039, 45.283932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044647, 29.669600, 45.156090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320131, 0.356095, -0.877902,
		0.933418, 0.039911, 0.356564,
		0.162008, -0.933597, -0.319609,
		35.093250, 29.389521, 45.060207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662048, 29.989477, 45.073128>,  <34.979843, 30.043039, 45.283932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662048, 29.989477, 45.073128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.466045, 29.700827, 44.877518>,  <35.348442, 29.527636, 44.760151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.466045, 29.700827, 44.877518>,  <35.662048, 29.989477, 45.073128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466045, 29.700827, 44.877518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300188, 0.386986, -0.871854,
		0.818398, -0.574017, 0.026996,
		-0.490012, -0.721628, -0.489022,
		35.319042, 29.484339, 44.730812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199379, 29.695910, 44.583817>,  <35.662048, 29.989477, 45.073128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199379, 29.695910, 44.583817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850105, 29.559601, 44.444435>,  <35.640541, 29.477816, 44.360806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850105, 29.559601, 44.444435>,  <36.199379, 29.695910, 44.583817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850105, 29.559601, 44.444435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273503, 0.249168, -0.929038,
		0.403416, -0.906525, -0.124367,
		-0.873185, -0.340774, -0.348456,
		35.588150, 29.457369, 44.339897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397800, 29.269569, 44.075489>,  <36.199379, 29.695910, 44.583817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397800, 29.269569, 44.075489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023998, 29.367399, 43.972042>,  <35.799717, 29.426096, 43.909973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023998, 29.367399, 43.972042>,  <36.397800, 29.269569, 44.075489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023998, 29.367399, 43.972042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292691, 0.114510, -0.949326,
		-0.202565, -0.962845, -0.178594,
		-0.934505, 0.244573, -0.258621,
		35.743649, 29.440771, 43.894455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300640, 28.921692, 43.375160>,  <36.397800, 29.269569, 44.075489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300640, 28.921692, 43.375160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998455, 29.183666, 43.382446>,  <35.817142, 29.340851, 43.386818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998455, 29.183666, 43.382446>,  <36.300640, 28.921692, 43.375160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998455, 29.183666, 43.382446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069997, 0.108320, -0.991649,
		-0.651438, -0.747882, -0.127676,
		-0.755466, 0.654934, 0.018214,
		35.771816, 29.380146, 43.387909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047813, 28.840967, 42.726448>,  <36.300640, 28.921692, 43.375160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047813, 28.840967, 42.726448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912766, 29.192326, 42.861755>,  <35.831738, 29.403141, 42.942940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912766, 29.192326, 42.861755>,  <36.047813, 28.840967, 42.726448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912766, 29.192326, 42.861755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056146, 0.339942, -0.938769,
		-0.939606, -0.335942, -0.065453,
		-0.337622, 0.878398, 0.338273,
		35.811478, 29.455845, 42.963238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459549, 28.973087, 42.370846>,  <36.047813, 28.840967, 42.726448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459549, 28.973087, 42.370846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605686, 29.326641, 42.487656>,  <35.693367, 29.538773, 42.557739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605686, 29.326641, 42.487656>,  <35.459549, 28.973087, 42.370846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605686, 29.326641, 42.487656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037749, 0.299382, -0.953386,
		-0.930108, 0.359335, 0.076011,
		0.365341, 0.883883, 0.292023,
		35.715290, 29.591806, 42.575264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186928, 29.448112, 41.918743>,  <35.459549, 28.973087, 42.370846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186928, 29.448112, 41.918743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482624, 29.655674, 42.090446>,  <35.660042, 29.780210, 42.193466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482624, 29.655674, 42.090446>,  <35.186928, 29.448112, 41.918743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482624, 29.655674, 42.090446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214252, 0.423073, -0.880401,
		-0.638449, 0.742798, 0.201577,
		0.739242, 0.518903, 0.429256,
		35.704395, 29.811344, 42.219223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100227, 30.025316, 41.579174>,  <35.186928, 29.448112, 41.918743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100227, 30.025316, 41.579174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.465813, 30.022610, 41.741470>,  <35.685165, 30.020987, 41.838848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.465813, 30.022610, 41.741470>,  <35.100227, 30.025316, 41.579174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465813, 30.022610, 41.741470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372017, 0.413358, -0.831106,
		-0.162093, 0.910543, 0.380311,
		0.913963, -0.006765, 0.405741,
		35.740002, 30.020580, 41.863194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372749, 30.602009, 41.386227>,  <35.100227, 30.025316, 41.579174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372749, 30.602009, 41.386227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.688717, 30.382246, 41.495171>,  <35.878296, 30.250389, 41.560535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.688717, 30.382246, 41.495171>,  <35.372749, 30.602009, 41.386227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.688717, 30.382246, 41.495171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500641, 0.321337, -0.803804,
		0.354097, 0.771294, 0.528886,
		0.789920, -0.549407, 0.272357,
		35.925694, 30.217424, 41.576878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900864, 31.060167, 41.188625>,  <35.372749, 30.602009, 41.386227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900864, 31.060167, 41.188625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.073040, 30.702072, 41.234707>,  <36.176346, 30.487215, 41.262356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.073040, 30.702072, 41.234707>,  <35.900864, 31.060167, 41.188625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073040, 30.702072, 41.234707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610049, 0.194472, -0.768128,
		0.665252, 0.400914, 0.629847,
		0.430441, -0.895237, 0.115205,
		36.202171, 30.433500, 41.269268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463619, 31.260143, 41.214695>,  <35.900864, 31.060167, 41.188625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463619, 31.260143, 41.214695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457634, 30.881754, 41.085136>,  <36.454044, 30.654720, 41.007401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457634, 30.881754, 41.085136>,  <36.463619, 31.260143, 41.214695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457634, 30.881754, 41.085136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612083, 0.247483, -0.751071,
		0.790652, -0.209490, 0.575311,
		-0.014962, -0.945974, -0.323898,
		36.453144, 30.597961, 40.987968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046581, 31.228441, 40.999470>,  <36.463619, 31.260143, 41.214695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046581, 31.228441, 40.999470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.875519, 30.916405, 40.816792>,  <36.772881, 30.729183, 40.707184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.875519, 30.916405, 40.816792>,  <37.046581, 31.228441, 40.999470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875519, 30.916405, 40.816792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285475, 0.362818, -0.887055,
		0.857681, -0.509727, 0.067536,
		-0.427652, -0.780091, -0.456697,
		36.747223, 30.682377, 40.679783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508327, 31.032019, 40.519886>,  <37.046581, 31.228441, 40.999470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508327, 31.032019, 40.519886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.168888, 30.857141, 40.400730>,  <36.965225, 30.752214, 40.329235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.168888, 30.857141, 40.400730>,  <37.508327, 31.032019, 40.519886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.168888, 30.857141, 40.400730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122879, 0.384795, -0.914786,
		0.514565, -0.812893, -0.272816,
		-0.848601, -0.437193, -0.297890,
		36.914307, 30.725985, 40.311363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686954, 30.522038, 40.113525>,  <37.508327, 31.032019, 40.519886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.686954, 30.522038, 40.113525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.315617, 30.650661, 40.038929>,  <37.092815, 30.727837, 39.994171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.315617, 30.650661, 40.038929>,  <37.686954, 30.522038, 40.113525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.315617, 30.650661, 40.038929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273494, 0.251049, -0.928534,
		-0.251762, -0.913002, -0.321005,
		-0.928341, 0.321562, -0.186496,
		37.037113, 30.747129, 39.982979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539597, 30.291586, 39.373329>,  <37.686954, 30.522038, 40.113525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539597, 30.291586, 39.373329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269180, 30.578615, 39.440327>,  <37.106930, 30.750832, 39.480526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269180, 30.578615, 39.440327>,  <37.539597, 30.291586, 39.373329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269180, 30.578615, 39.440327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223710, 0.416457, -0.881202,
		-0.702082, -0.558260, -0.442071,
		-0.676044, 0.717572, 0.167498,
		37.066368, 30.793886, 39.490578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182362, 30.286163, 38.801540>,  <37.539597, 30.291586, 39.373329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182362, 30.286163, 38.801540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.134853, 30.636955, 38.987785>,  <37.106350, 30.847431, 39.099533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.134853, 30.636955, 38.987785>,  <37.182362, 30.286163, 38.801540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134853, 30.636955, 38.987785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323449, 0.477527, -0.816914,
		-0.938762, 0.053576, -0.340376,
		-0.118771, 0.876982, 0.465614,
		37.099220, 30.900049, 39.127468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862949, 30.609055, 38.339706>,  <37.182362, 30.286163, 38.801540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862949, 30.609055, 38.339706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.018745, 30.889771, 38.578297>,  <37.112225, 31.058201, 38.721451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.018745, 30.889771, 38.578297>,  <36.862949, 30.609055, 38.339706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.018745, 30.889771, 38.578297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273071, 0.530513, -0.802489,
		-0.879619, 0.475442, 0.014991,
		0.389490, 0.701791, 0.596479,
		37.135593, 31.100307, 38.757240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784512, 31.298265, 37.965641>,  <36.862949, 30.609055, 38.339706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784512, 31.298265, 37.965641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.053680, 31.401764, 38.242836>,  <37.215179, 31.463863, 38.409153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.053680, 31.401764, 38.242836>,  <36.784512, 31.298265, 37.965641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053680, 31.401764, 38.242836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436436, 0.617517, -0.654367,
		-0.597247, 0.742780, 0.302612,
		0.672919, 0.258748, 0.692986,
		37.255558, 31.479389, 38.450733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853180, 32.076397, 37.981621>,  <36.784512, 31.298265, 37.965641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853180, 32.076397, 37.981621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.187626, 31.946220, 38.158257>,  <37.388294, 31.868114, 38.264236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.187626, 31.946220, 38.158257>,  <36.853180, 32.076397, 37.981621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187626, 31.946220, 38.158257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532414, 0.675298, -0.510400,
		-0.132097, 0.661860, 0.737897,
		0.836114, -0.325444, 0.441589,
		37.438461, 31.848587, 38.290733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213039, 32.679787, 38.113140>,  <36.853180, 32.076397, 37.981621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213039, 32.679787, 38.113140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.500671, 32.404682, 38.152939>,  <37.673252, 32.239620, 38.176819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.500671, 32.404682, 38.152939>,  <37.213039, 32.679787, 38.113140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500671, 32.404682, 38.152939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675691, 0.658530, -0.331332,
		0.162356, 0.305484, 0.938254,
		0.719084, -0.687763, 0.099496,
		37.716396, 32.198353, 38.182789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860611, 33.075474, 38.415764>,  <37.213039, 32.679787, 38.113140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.860611, 33.075474, 38.415764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966156, 32.733040, 38.237999>,  <38.029484, 32.527580, 38.131340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966156, 32.733040, 38.237999>,  <37.860611, 33.075474, 38.415764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966156, 32.733040, 38.237999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814501, 0.444558, -0.372769,
		0.516686, -0.263613, 0.814581,
		0.263862, -0.856082, -0.444410,
		38.045315, 32.476215, 38.104675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552273, 33.075581, 38.423119>,  <37.860611, 33.075474, 38.415764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552273, 33.075581, 38.423119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.466484, 32.817623, 38.129692>,  <38.415012, 32.662849, 37.953636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.466484, 32.817623, 38.129692>,  <38.552273, 33.075581, 38.423119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466484, 32.817623, 38.129692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707573, 0.415145, -0.571834,
		0.673307, -0.641692, 0.367271,
		-0.214471, -0.644891, -0.733565,
		38.402142, 32.624157, 37.909622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240246, 32.900131, 38.187012>,  <38.552273, 33.075581, 38.423119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240246, 32.900131, 38.187012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976402, 32.801777, 37.902912>,  <38.818096, 32.742764, 37.732452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976402, 32.801777, 37.902912>,  <39.240246, 32.900131, 38.187012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.976402, 32.801777, 37.902912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633540, 0.326547, -0.701423,
		0.404401, -0.912637, -0.059613,
		-0.659611, -0.245889, -0.710248,
		38.778519, 32.728012, 37.689838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624268, 32.509117, 37.749805>,  <39.240246, 32.900131, 38.187012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624268, 32.509117, 37.749805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321953, 32.641262, 37.523655>,  <39.140564, 32.720551, 37.387962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321953, 32.641262, 37.523655>,  <39.624268, 32.509117, 37.749805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321953, 32.641262, 37.523655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651341, 0.468188, -0.597122,
		0.067438, -0.819550, -0.569026,
		-0.755782, 0.330362, -0.565380,
		39.095219, 32.740372, 37.354042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815281, 32.419937, 37.059631>,  <39.624268, 32.509117, 37.749805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815281, 32.419937, 37.059631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.508556, 32.675800, 37.038345>,  <39.324520, 32.829319, 37.025574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.508556, 32.675800, 37.038345>,  <39.815281, 32.419937, 37.059631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.508556, 32.675800, 37.038345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526239, 0.579039, -0.622725,
		-0.367516, -0.505520, -0.780629,
		-0.766815, 0.639658, -0.053218,
		39.278511, 32.867699, 37.022381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803230, 32.618732, 36.309780>,  <39.815281, 32.419937, 37.059631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.803230, 32.618732, 36.309780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.586231, 32.893452, 36.503277>,  <39.456032, 33.058285, 36.619373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.586231, 32.893452, 36.503277>,  <39.803230, 32.618732, 36.309780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.586231, 32.893452, 36.503277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418979, 0.720316, -0.552813,
		-0.728118, -0.097221, -0.678522,
		-0.542495, 0.686799, 0.483741,
		39.423481, 33.099491, 36.648399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419720, 33.190987, 35.794075>,  <39.803230, 32.618732, 36.309780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.419720, 33.190987, 35.794075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.488098, 33.324223, 36.164982>,  <39.529125, 33.404163, 36.387527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.488098, 33.324223, 36.164982>,  <39.419720, 33.190987, 35.794075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488098, 33.324223, 36.164982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448722, 0.811539, -0.374237,
		-0.877170, 0.480060, -0.010737,
		0.170943, 0.333087, 0.927271,
		39.539383, 33.424149, 36.443165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114052, 33.805622, 35.851368>,  <39.419720, 33.190987, 35.794075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114052, 33.805622, 35.851368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.430515, 33.779758, 36.094643>,  <39.620392, 33.764240, 36.240608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.430515, 33.779758, 36.094643>,  <39.114052, 33.805622, 35.851368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430515, 33.779758, 36.094643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428350, 0.768365, -0.475533,
		-0.436564, 0.636738, 0.635592,
		0.791156, -0.064655, 0.608187,
		39.667862, 33.760361, 36.277100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930103, 34.019562, 35.775902>,  <39.114052, 33.805622, 35.851368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.930103, 34.019562, 35.775902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964684, 33.838707, 35.420803>,  <39.985432, 33.730194, 35.207745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964684, 33.838707, 35.420803>,  <39.930103, 34.019562, 35.775902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964684, 33.838707, 35.420803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641297, 0.707177, -0.297724,
		0.762408, -0.543573, 0.351089,
		0.086447, -0.452139, -0.887748,
		39.990616, 33.703064, 35.154480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606117, 34.160702, 36.105579>,  <39.930103, 34.019562, 35.775902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.606117, 34.160702, 36.105579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.875820, 33.917946, 35.937263>,  <41.037640, 33.772293, 35.836273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.875820, 33.917946, 35.937263>,  <40.606117, 34.160702, 36.105579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.875820, 33.917946, 35.937263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303879, 0.747320, -0.590907,
		0.673083, 0.270550, 0.688304,
		0.674253, -0.606890, -0.420793,
		41.078094, 33.735878, 35.811024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.256329, 34.450607, 36.052505>,  <40.606117, 34.160702, 36.105579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.256329, 34.450607, 36.052505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.242348, 34.189453, 35.749844>,  <41.233959, 34.032761, 35.568249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.242348, 34.189453, 35.749844>,  <41.256329, 34.450607, 36.052505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.242348, 34.189453, 35.749844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404115, 0.683222, -0.608193,
		0.914040, -0.327034, 0.239958,
		-0.034955, -0.652883, -0.756651,
		41.231861, 33.993587, 35.522850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.929081, 34.421341, 35.733074>,  <41.256329, 34.450607, 36.052505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.929081, 34.421341, 35.733074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.643761, 34.356647, 35.460297>,  <41.472569, 34.317833, 35.296631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.643761, 34.356647, 35.460297>,  <41.929081, 34.421341, 35.733074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.643761, 34.356647, 35.460297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415017, 0.686604, -0.596938,
		0.564767, -0.708815, -0.422635,
		-0.713301, -0.161730, -0.681942,
		41.429771, 34.308128, 35.255714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.661621, 34.428299, 35.712795>,  <41.929081, 34.421341, 35.733074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.661621, 34.428299, 35.712795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.976799, 34.668613, 35.766769>,  <43.165905, 34.812801, 35.799152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.976799, 34.668613, 35.766769>,  <42.661621, 34.428299, 35.712795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.976799, 34.668613, 35.766769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557627, 0.789161, -0.257445,
		-0.261151, 0.127611, 0.956826,
		0.787942, 0.600784, 0.134931,
		43.213181, 34.848850, 35.807247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.435658, 35.037682, 35.880795>,  <42.661621, 34.428299, 35.712795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.435658, 35.037682, 35.880795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.805252, 35.146816, 35.773605>,  <43.027008, 35.212296, 35.709293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.805252, 35.146816, 35.773605>,  <42.435658, 35.037682, 35.880795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.805252, 35.146816, 35.773605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371887, 0.804375, -0.463336,
		0.089134, 0.527771, 0.844697,
		0.923989, 0.272833, -0.267968,
		43.082447, 35.228664, 35.693214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.575768, 35.650047, 36.167763>,  <42.435658, 35.037682, 35.880795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.575768, 35.650047, 36.167763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.816971, 35.634586, 35.849045>,  <42.961693, 35.625309, 35.657814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.816971, 35.634586, 35.849045>,  <42.575768, 35.650047, 36.167763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.816971, 35.634586, 35.849045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372652, 0.869498, -0.324197,
		0.705347, 0.492422, 0.509909,
		0.603006, -0.038653, -0.796799,
		42.997871, 35.622990, 35.610004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.926601, 36.277752, 36.181786>,  <42.575768, 35.650047, 36.167763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.926601, 36.277752, 36.181786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.964417, 36.155239, 35.802891>,  <42.987106, 36.081730, 35.575554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.964417, 36.155239, 35.802891>,  <42.926601, 36.277752, 36.181786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.964417, 36.155239, 35.802891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340248, 0.884257, -0.319877,
		0.935571, 0.352536, -0.020614,
		0.094540, -0.306282, -0.947235,
		42.992779, 36.063354, 35.518719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.193527, 36.850765, 35.828678>,  <42.926601, 36.277752, 36.181786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.193527, 36.850765, 35.828678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.052155, 36.615250, 35.537910>,  <42.967331, 36.473938, 35.363449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.052155, 36.615250, 35.537910>,  <43.193527, 36.850765, 35.828678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.052155, 36.615250, 35.537910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265159, 0.808254, -0.525753,
		0.897094, 0.006934, -0.441784,
		-0.353428, -0.588793, -0.726918,
		42.946125, 36.438610, 35.319836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.339111, 37.182247, 35.198460>,  <43.193527, 36.850765, 35.828678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.339111, 37.182247, 35.198460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.063683, 36.920074, 35.074348>,  <42.898426, 36.762772, 34.999882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.063683, 36.920074, 35.074348>,  <43.339111, 37.182247, 35.198460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.063683, 36.920074, 35.074348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353348, 0.676898, -0.645721,
		0.633253, -0.334991, -0.697690,
		-0.688575, -0.655432, -0.310279,
		42.857109, 36.723446, 34.981262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.290371, 37.296017, 34.443054>,  <43.339111, 37.182247, 35.198460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.290371, 37.296017, 34.443054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.952122, 37.120522, 34.564667>,  <42.749172, 37.015224, 34.637634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.952122, 37.120522, 34.564667>,  <43.290371, 37.296017, 34.443054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.952122, 37.120522, 34.564667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533132, 0.666117, -0.521592,
		0.026319, -0.603160, -0.797186,
		-0.845622, -0.438733, 0.304032,
		42.698437, 36.988903, 34.655876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.904591, 37.177814, 33.903885>,  <43.290371, 37.296017, 34.443054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.904591, 37.177814, 33.903885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.613224, 37.147327, 34.176239>,  <42.438404, 37.129036, 34.339653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.613224, 37.147327, 34.176239>,  <42.904591, 37.177814, 33.903885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.613224, 37.147327, 34.176239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523230, 0.703462, -0.481011,
		-0.442316, -0.706635, -0.552289,
		-0.728413, -0.076216, 0.680885,
		42.394699, 37.124462, 34.380505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.264034, 37.125919, 33.543144>,  <42.904591, 37.177814, 33.903885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.264034, 37.125919, 33.543144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.172340, 37.264278, 33.907082>,  <42.117325, 37.347294, 34.125443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.172340, 37.264278, 33.907082>,  <42.264034, 37.125919, 33.543144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.172340, 37.264278, 33.907082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474199, 0.776620, -0.414725,
		-0.850051, -0.526515, -0.014006,
		-0.229236, 0.345896, 0.909839,
		42.103569, 37.368046, 34.180035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.554611, 37.319851, 33.510967>,  <42.264034, 37.125919, 33.543144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.554611, 37.319851, 33.510967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.709896, 37.544022, 33.803600>,  <41.803066, 37.678524, 33.979179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.709896, 37.544022, 33.803600>,  <41.554611, 37.319851, 33.510967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.709896, 37.544022, 33.803600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539495, 0.781804, -0.312614,
		-0.747152, -0.273325, 0.605853,
		0.388213, 0.560424, 0.731584,
		41.826359, 37.712151, 34.023075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.977318, 37.721333, 33.743397>,  <41.554611, 37.319851, 33.510967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.977318, 37.721333, 33.743397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.282639, 37.914749, 33.914776>,  <41.465832, 38.030800, 34.017605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.282639, 37.914749, 33.914776>,  <40.977318, 37.721333, 33.743397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.282639, 37.914749, 33.914776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418176, 0.875302, -0.242849,
		-0.492447, 0.006200, 0.870320,
		0.763298, 0.483537, 0.428447,
		41.511627, 38.059811, 34.043308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.632252, 38.284641, 34.092892>,  <40.977318, 37.721333, 33.743397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.632252, 38.284641, 34.092892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.005188, 38.414005, 34.028206>,  <41.228951, 38.491623, 33.989395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.005188, 38.414005, 34.028206>,  <40.632252, 38.284641, 34.092892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.005188, 38.414005, 34.028206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350203, 0.918983, -0.181184,
		0.090017, 0.225558, 0.970062,
		0.932338, 0.323408, -0.161715,
		41.284889, 38.511028, 33.979691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735092, 38.922134, 34.549873>,  <40.632252, 38.284641, 34.092892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.735092, 38.922134, 34.549873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.010963, 38.941738, 34.260891>,  <41.176487, 38.953503, 34.087502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.010963, 38.941738, 34.260891>,  <40.735092, 38.922134, 34.549873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.010963, 38.941738, 34.260891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018573, 0.998576, 0.050014,
		0.723875, -0.021075, 0.689609,
		0.689681, 0.049012, -0.722453,
		41.217869, 38.956440, 34.044155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.161762, 39.480785, 34.772289>,  <40.735092, 38.922134, 34.549873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.161762, 39.480785, 34.772289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.244762, 39.427174, 34.384686>,  <41.294563, 39.395008, 34.152122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.244762, 39.427174, 34.384686>,  <41.161762, 39.480785, 34.772289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.244762, 39.427174, 34.384686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080301, 0.989560, -0.119678,
		0.974934, -0.052980, 0.216093,
		0.207496, -0.134031, -0.969010,
		41.307011, 39.386963, 34.093983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.748234, 39.842144, 34.788418>,  <41.161762, 39.480785, 34.772289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.748234, 39.842144, 34.788418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.639477, 39.826263, 34.403816>,  <41.574223, 39.816734, 34.173054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.639477, 39.826263, 34.403816>,  <41.748234, 39.842144, 34.788418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.639477, 39.826263, 34.403816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385873, 0.910810, -0.146722,
		0.881575, -0.410913, -0.232327,
		-0.271896, -0.039697, -0.961508,
		41.557907, 39.814354, 34.115364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.262909, 40.249142, 34.413372>,  <41.748234, 39.842144, 34.788418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.262909, 40.249142, 34.413372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.913620, 40.250729, 34.218449>,  <41.704048, 40.251678, 34.101494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.913620, 40.250729, 34.218449>,  <42.262909, 40.249142, 34.413372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.913620, 40.250729, 34.218449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128090, 0.966674, -0.221660,
		0.470194, -0.255978, -0.844626,
		-0.873218, 0.003965, -0.487313,
		41.651653, 40.251919, 34.072254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.377640, 40.793137, 33.961239>,  <42.262909, 40.249142, 34.413372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.377640, 40.793137, 33.961239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.982338, 40.757782, 33.911381>,  <41.745155, 40.736568, 33.881466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.982338, 40.757782, 33.911381>,  <42.377640, 40.793137, 33.961239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.982338, 40.757782, 33.911381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042347, 0.942211, -0.332332,
		0.146818, -0.323151, -0.934889,
		-0.988257, -0.088382, -0.124649,
		41.685860, 40.731266, 33.873985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.182430, 41.122166, 33.348995>,  <42.377640, 40.793137, 33.961239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.182430, 41.122166, 33.348995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.843395, 41.120663, 33.561253>,  <41.639973, 41.119762, 33.688606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.843395, 41.120663, 33.561253>,  <42.182430, 41.122166, 33.348995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.843395, 41.120663, 33.561253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166320, 0.951471, -0.258923,
		-0.503920, -0.307716, -0.807078,
		-0.847586, -0.003757, 0.530644,
		41.589119, 41.119537, 33.720448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.607388, 41.525978, 32.903275>,  <42.182430, 41.122166, 33.348995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.607388, 41.525978, 32.903275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.515766, 41.523251, 33.292629>,  <41.460793, 41.521614, 33.526241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.515766, 41.523251, 33.292629>,  <41.607388, 41.525978, 32.903275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.515766, 41.523251, 33.292629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057367, 0.998332, -0.006509,
		-0.971722, -0.057332, -0.229064,
		-0.229055, -0.006816, 0.973390,
		41.447048, 41.521206, 33.584644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015636, 41.956562, 33.037315>,  <41.607388, 41.525978, 32.903275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.015636, 41.956562, 33.037315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.160648, 41.950825, 33.410061>,  <41.247654, 41.947384, 33.633709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.160648, 41.950825, 33.410061>,  <41.015636, 41.956562, 33.037315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.160648, 41.950825, 33.410061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255663, 0.959993, 0.114233,
		-0.896221, -0.279656, 0.344356,
		0.362526, -0.014339, 0.931864,
		41.269405, 41.946522, 33.689621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514317, 42.372814, 33.339436>,  <41.015636, 41.956562, 33.037315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.514317, 42.372814, 33.339436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.822685, 42.336960, 33.591671>,  <41.007706, 42.315445, 33.743011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.822685, 42.336960, 33.591671>,  <40.514317, 42.372814, 33.339436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.822685, 42.336960, 33.591671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016632, 0.992543, 0.120760,
		-0.636709, -0.082609, 0.766667,
		0.770925, -0.089640, 0.630587,
		41.053963, 42.310066, 33.780846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.292862, 42.656979, 34.059345>,  <40.514317, 42.372814, 33.339436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.292862, 42.656979, 34.059345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.692833, 42.657162, 34.054440>,  <40.932816, 42.657272, 34.051495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.692833, 42.657162, 34.054440>,  <40.292862, 42.656979, 34.059345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.692833, 42.657162, 34.054440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003163, 0.955938, 0.293552,
		0.011859, -0.293568, 0.955865,
		0.999925, 0.000458, -0.012265,
		40.992809, 42.657299, 34.050758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482891, 42.978607, 34.666672>,  <40.292862, 42.656979, 34.059345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.482891, 42.978607, 34.666672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.780914, 43.026394, 34.404186>,  <40.959728, 43.055065, 34.246696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.780914, 43.026394, 34.404186>,  <40.482891, 42.978607, 34.666672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.780914, 43.026394, 34.404186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027118, 0.977589, 0.208770,
		0.666449, -0.173340, 0.725120,
		0.745057, 0.119471, -0.656214,
		41.004433, 43.062237, 34.207321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.123306, 43.369896, 35.013359>,  <40.482891, 42.978607, 34.666672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.123306, 43.369896, 35.013359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.994404, 43.441097, 34.641453>,  <40.917065, 43.483818, 34.418308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.994404, 43.441097, 34.641453>,  <41.123306, 43.369896, 35.013359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.994404, 43.441097, 34.641453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080801, 0.973407, 0.214360,
		0.943199, 0.144204, -0.299301,
		-0.322253, 0.178000, -0.929768,
		40.897728, 43.494499, 34.362522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.422939, 43.546886, 35.705078>,  <41.123306, 43.369896, 35.013359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.422939, 43.546886, 35.705078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.486397, 43.745346, 36.046528>,  <41.524471, 43.864422, 36.251396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.486397, 43.745346, 36.046528>,  <41.422939, 43.546886, 35.705078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.486397, 43.745346, 36.046528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848401, 0.373729, -0.374891,
		-0.505024, 0.783686, -0.361644,
		0.158640, 0.496148, 0.853622,
		41.533989, 43.894192, 36.302616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.553291, 44.354195, 35.571842>,  <41.422939, 43.546886, 35.705078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.553291, 44.354195, 35.571842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.697540, 44.220654, 35.920208>,  <41.784088, 44.140530, 36.129227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.697540, 44.220654, 35.920208>,  <41.553291, 44.354195, 35.571842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.697540, 44.220654, 35.920208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883466, 0.421662, -0.204179,
		-0.299066, 0.843056, 0.447007,
		0.360620, -0.333852, 0.870917,
		41.805725, 44.120499, 36.181484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.814991, 44.959129, 36.030338>,  <41.553291, 44.354195, 35.571842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.814991, 44.959129, 36.030338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.998730, 44.606937, 36.077267>,  <42.108971, 44.395622, 36.105423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.998730, 44.606937, 36.077267>,  <41.814991, 44.959129, 36.030338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.998730, 44.606937, 36.077267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878134, 0.430247, -0.209207,
		0.133725, 0.199123, 0.970808,
		0.459345, -0.880476, 0.117322,
		42.136532, 44.342796, 36.112465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.285175, 45.015739, 36.493122>,  <41.814991, 44.959129, 36.030338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.285175, 45.015739, 36.493122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.416626, 44.731884, 36.243828>,  <42.495495, 44.561569, 36.094254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.416626, 44.731884, 36.243828>,  <42.285175, 45.015739, 36.493122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.416626, 44.731884, 36.243828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748926, 0.597842, -0.285822,
		0.575425, -0.372827, 0.727933,
		0.328627, -0.709637, -0.623233,
		42.515213, 44.518993, 36.056858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.650761, 44.418633, 36.702053>,  <42.285175, 45.015739, 36.493122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.650761, 44.418633, 36.702053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.805054, 44.467331, 37.067871>,  <42.897629, 44.496552, 37.287361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.805054, 44.467331, 37.067871>,  <42.650761, 44.418633, 36.702053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.805054, 44.467331, 37.067871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682306, -0.704872, -0.193943,
		0.621023, 0.698808, -0.354963,
		0.385733, 0.121750, 0.914542,
		42.920773, 44.503857, 37.342236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.287056, 44.497200, 36.536751>,  <42.650761, 44.418633, 36.702053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.287056, 44.497200, 36.536751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.302380, 44.412682, 36.927418>,  <43.311573, 44.361969, 37.161819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.302380, 44.412682, 36.927418>,  <43.287056, 44.497200, 36.536751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.302380, 44.412682, 36.927418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696313, -0.695379, -0.177751,
		0.716715, 0.686878, 0.120490,
		0.038307, -0.211295, 0.976671,
		43.313873, 44.349293, 37.220421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.053532, 44.568714, 36.758327>,  <43.287056, 44.497200, 36.536751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.053532, 44.568714, 36.758327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.802616, 44.314697, 36.938652>,  <43.652069, 44.162285, 37.046848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.802616, 44.314697, 36.938652>,  <44.053532, 44.568714, 36.758327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.802616, 44.314697, 36.938652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646982, -0.747152, -0.152243,
		0.433508, 0.196169, 0.879539,
		-0.627284, -0.635044, 0.450814,
		43.614429, 44.124184, 37.073895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.457611, 43.942364, 36.783710>,  <44.053532, 44.568714, 36.758327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.457611, 43.942364, 36.783710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.090488, 43.842602, 36.907276>,  <43.870216, 43.782745, 36.981415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.090488, 43.842602, 36.907276>,  <44.457611, 43.942364, 36.783710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.090488, 43.842602, 36.907276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245593, -0.967986, -0.051834,
		0.311954, 0.028294, 0.949676,
		-0.917807, -0.249404, 0.308915,
		43.815147, 43.767780, 36.999950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.459900, 43.425240, 37.372749>,  <44.457611, 43.942364, 36.783710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.459900, 43.425240, 37.372749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.122719, 43.395676, 37.159595>,  <43.920410, 43.377937, 37.031704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.122719, 43.395676, 37.159595>,  <44.459900, 43.425240, 37.372749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.122719, 43.395676, 37.159595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115611, -0.992263, -0.045262,
		-0.525420, -0.099761, 0.844974,
		-0.842952, -0.073907, -0.532888,
		43.869835, 43.373505, 36.999729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.052628, 42.992233, 37.651485>,  <44.459900, 43.425240, 37.372749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.052628, 42.992233, 37.651485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.903580, 42.973572, 37.280762>,  <43.814152, 42.962376, 37.058327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.903580, 42.973572, 37.280762>,  <44.052628, 42.992233, 37.651485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.903580, 42.973572, 37.280762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049298, -0.998320, 0.030428,
		-0.926673, -0.034352, 0.374294,
		-0.372620, -0.046649, -0.926811,
		43.791794, 42.959576, 37.002720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.499905, 42.592770, 37.703793>,  <44.052628, 42.992233, 37.651485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.499905, 42.592770, 37.703793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.592422, 42.562847, 37.315792>,  <43.647934, 42.544891, 37.082993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.592422, 42.562847, 37.315792>,  <43.499905, 42.592770, 37.703793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.592422, 42.562847, 37.315792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018932, -0.997196, 0.072392,
		-0.972700, 0.001620, -0.232061,
		0.231293, -0.074810, -0.970004,
		43.661812, 42.540405, 37.024792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.285934, 41.948277, 37.563774>,  <43.499905, 42.592770, 37.703793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.285934, 41.948277, 37.563774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.484772, 42.038380, 37.228596>,  <43.604076, 42.092442, 37.027489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.484772, 42.038380, 37.228596>,  <43.285934, 41.948277, 37.563774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.484772, 42.038380, 37.228596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234184, -0.964707, -0.120407,
		-0.835496, -0.136380, -0.532304,
		0.497096, 0.225256, -0.837947,
		43.633900, 42.105957, 36.977211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.205303, 41.372929, 37.184757>,  <43.285934, 41.948277, 37.563774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.205303, 41.372929, 37.184757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.510609, 41.542515, 36.989750>,  <43.693794, 41.644268, 36.872746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.510609, 41.542515, 36.989750>,  <43.205303, 41.372929, 37.184757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.510609, 41.542515, 36.989750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438153, -0.894214, -0.091672,
		-0.474809, -0.143636, -0.868288,
		0.763268, 0.423970, -0.487516,
		43.739590, 41.669704, 36.843494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.338890, 40.900352, 36.617302>,  <43.205303, 41.372929, 37.184757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.338890, 40.900352, 36.617302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.663414, 41.133232, 36.638546>,  <43.858128, 41.272961, 36.651291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.663414, 41.133232, 36.638546>,  <43.338890, 40.900352, 36.617302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.663414, 41.133232, 36.638546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584503, -0.809593, -0.053990,
		0.011562, 0.074844, -0.997128,
		0.811309, 0.582201, 0.053107,
		43.906807, 41.307892, 36.654480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.720394, 40.817871, 35.987194>,  <43.338890, 40.900352, 36.617302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.720394, 40.817871, 35.987194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.977776, 40.930573, 36.271893>,  <44.132206, 40.998192, 36.442711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.977776, 40.930573, 36.271893>,  <43.720394, 40.817871, 35.987194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.977776, 40.930573, 36.271893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501613, -0.857546, -0.114015,
		0.578228, 0.430383, -0.693126,
		0.643457, 0.281754, 0.711743,
		44.170815, 41.015099, 36.485416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.442326, 40.573967, 35.675720>,  <43.720394, 40.817871, 35.987194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.442326, 40.573967, 35.675720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.502449, 40.651329, 36.063534>,  <44.538525, 40.697746, 36.296223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.502449, 40.651329, 36.063534>,  <44.442326, 40.573967, 35.675720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.502449, 40.651329, 36.063534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504933, -0.858144, 0.092903,
		0.849970, 0.475587, -0.226645,
		0.150311, 0.193406, 0.969536,
		44.547543, 40.709351, 36.354393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.180168, 40.525909, 35.796482>,  <44.442326, 40.573967, 35.675720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.180168, 40.525909, 35.796482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.008633, 40.436195, 36.146523>,  <44.905712, 40.382366, 36.356544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.008633, 40.436195, 36.146523>,  <45.180168, 40.525909, 35.796482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.008633, 40.436195, 36.146523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518967, -0.854060, 0.035423,
		0.739441, 0.469338, 0.482648,
		-0.428836, -0.224285, 0.875098,
		44.879982, 40.368912, 36.409050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.722115, 40.311275, 36.291550>,  <45.180168, 40.525909, 35.796482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.722115, 40.311275, 36.291550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.376759, 40.164303, 36.429855>,  <45.169544, 40.076118, 36.512840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.376759, 40.164303, 36.429855>,  <45.722115, 40.311275, 36.291550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.376759, 40.164303, 36.429855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405681, -0.913013, 0.042769,
		0.299972, 0.177196, 0.937346,
		-0.863388, -0.367435, 0.345764,
		45.117741, 40.054073, 36.533585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.886688, 39.868999, 36.810421>,  <45.722115, 40.311275, 36.291550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.886688, 39.868999, 36.810421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.514496, 39.736813, 36.747169>,  <45.291180, 39.657501, 36.709221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.514496, 39.736813, 36.747169>,  <45.886688, 39.868999, 36.810421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.514496, 39.736813, 36.747169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333990, -0.942566, 0.004512,
		-0.150534, -0.048613, 0.987409,
		-0.930479, -0.330464, -0.158124,
		45.235352, 39.637672, 36.699734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.690102, 39.297249, 37.230579>,  <45.886688, 39.868999, 36.810421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.690102, 39.297249, 37.230579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.363701, 39.241154, 37.006268>,  <45.167858, 39.207497, 36.871681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.363701, 39.241154, 37.006268>,  <45.690102, 39.297249, 37.230579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.363701, 39.241154, 37.006268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160968, -0.986880, 0.012571,
		-0.555180, -0.080009, 0.827873,
		-0.816005, -0.140240, -0.560775,
		45.118900, 39.199081, 36.838036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.328918, 38.720375, 37.582260>,  <45.690102, 39.297249, 37.230579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.328918, 38.720375, 37.582260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.203911, 38.744972, 37.203091>,  <45.128906, 38.759731, 36.975590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.203911, 38.744972, 37.203091>,  <45.328918, 38.720375, 37.582260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.203911, 38.744972, 37.203091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045815, -0.997717, -0.049620,
		-0.948807, 0.027922, 0.314620,
		-0.312516, 0.061494, -0.947920,
		45.110157, 38.763420, 36.918716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.701534, 38.223385, 37.437809>,  <45.328918, 38.720375, 37.582260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.701534, 38.223385, 37.437809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.872334, 38.271412, 37.079311>,  <44.974812, 38.300228, 36.864212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.872334, 38.271412, 37.079311>,  <44.701534, 38.223385, 37.437809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.872334, 38.271412, 37.079311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121146, -0.974615, -0.188279,
		-0.896101, 0.188972, -0.401612,
		0.426997, 0.120064, -0.896247,
		45.000431, 38.307430, 36.810436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.377705, 37.725643, 37.112274>,  <44.701534, 38.223385, 37.437809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.377705, 37.725643, 37.112274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.651512, 37.822281, 36.837154>,  <44.815796, 37.880264, 36.672081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.651512, 37.822281, 36.837154>,  <44.377705, 37.725643, 37.112274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.651512, 37.822281, 36.837154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042254, -0.928752, -0.368285,
		-0.727772, 0.281160, -0.625538,
		0.684517, 0.241595, -0.687800,
		44.856869, 37.894760, 36.630814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.122471, 37.587162, 36.348274>,  <44.377705, 37.725643, 37.112274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.122471, 37.587162, 36.348274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.522049, 37.597462, 36.363495>,  <44.761795, 37.603642, 36.372627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.522049, 37.597462, 36.363495>,  <44.122471, 37.587162, 36.348274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.522049, 37.597462, 36.363495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040479, -0.885134, -0.463572,
		0.021743, 0.464623, -0.885241,
		0.998944, 0.025754, 0.038053,
		44.821732, 37.605186, 36.374912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.264843, 37.223412, 35.720818>,  <44.122471, 37.587162, 36.348274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.264843, 37.223412, 35.720818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.625954, 37.217476, 35.892757>,  <44.842621, 37.213917, 35.995922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.625954, 37.217476, 35.892757>,  <44.264843, 37.223412, 35.720818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.625954, 37.217476, 35.892757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151293, -0.924578, -0.349665,
		0.402613, 0.380704, -0.832447,
		0.902781, -0.014837, 0.429845,
		44.896790, 37.213024, 36.021709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.730965, 36.990837, 35.248562>,  <44.264843, 37.223412, 35.720818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.730965, 36.990837, 35.248562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.897789, 36.920605, 35.605263>,  <44.997883, 36.878464, 35.819283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.897789, 36.920605, 35.605263>,  <44.730965, 36.990837, 35.248562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.897789, 36.920605, 35.605263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245982, -0.922738, -0.296729,
		0.874957, 0.343111, -0.341650,
		0.417064, -0.175585, 0.891755,
		45.022907, 36.867928, 35.872787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.337646, 36.722683, 35.067680>,  <44.730965, 36.990837, 35.248562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.337646, 36.722683, 35.067680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.255215, 36.597115, 35.438404>,  <45.205753, 36.521774, 35.660839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.255215, 36.597115, 35.438404>,  <45.337646, 36.722683, 35.067680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.255215, 36.597115, 35.438404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185739, -0.942474, -0.277928,
		0.960745, 0.114869, 0.252537,
		-0.206084, -0.313924, 0.926812,
		45.193390, 36.502937, 35.716446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.921940, 36.313343, 35.330475>,  <45.337646, 36.722683, 35.067680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.921940, 36.313343, 35.330475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.607513, 36.198902, 35.549656>,  <45.418858, 36.130238, 35.681164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.607513, 36.198902, 35.549656>,  <45.921940, 36.313343, 35.330475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.607513, 36.198902, 35.549656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201095, -0.956582, -0.210979,
		0.584519, -0.055654, 0.809469,
		-0.786065, -0.286101, 0.547948,
		45.371693, 36.113071, 35.714039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.058647, 35.871876, 35.932392>,  <45.921940, 36.313343, 35.330475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.058647, 35.871876, 35.932392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.691200, 35.775677, 35.806984>,  <45.470730, 35.717957, 35.731739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.691200, 35.775677, 35.806984>,  <46.058647, 35.871876, 35.932392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.691200, 35.775677, 35.806984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312319, -0.927980, -0.203249,
		-0.242058, -0.284626, 0.927575,
		-0.918621, -0.240501, -0.313519,
		45.415615, 35.703526, 35.712929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.891838, 35.882557, 35.828568>,  <46.058647, 35.871876, 35.932392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.891838, 35.882557, 35.828568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.921032, 35.491135, 35.905621>,  <46.938549, 35.256283, 35.951851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.921032, 35.491135, 35.905621>,  <46.891838, 35.882557, 35.828568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.921032, 35.491135, 35.905621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318126, -0.160215, -0.934413,
		0.945235, 0.129482, 0.299609,
		0.072987, -0.978553, 0.192632,
		46.942928, 35.197567, 35.963409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.563446, 35.511818, 35.872612>,  <46.891838, 35.882557, 35.828568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.563446, 35.511818, 35.872612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.293106, 35.257153, 35.724075>,  <47.130901, 35.104355, 35.634953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.293106, 35.257153, 35.724075>,  <47.563446, 35.511818, 35.872612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.293106, 35.257153, 35.724075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559905, -0.115855, -0.820417,
		0.479305, -0.762393, 0.434769,
		-0.675851, -0.636659, -0.371337,
		47.090351, 35.066154, 35.612675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.979385, 34.908352, 35.551575>,  <47.563446, 35.511818, 35.872612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.979385, 34.908352, 35.551575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.628700, 34.982719, 35.374119>,  <47.418289, 35.027340, 35.267647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.628700, 34.982719, 35.374119>,  <47.979385, 34.908352, 35.551575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.628700, 34.982719, 35.374119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471766, 0.152279, -0.868474,
		-0.093909, -0.970693, -0.221214,
		-0.876708, 0.185918, -0.443640,
		47.365688, 35.038494, 35.241028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.907116, 34.499798, 34.892239>,  <47.979385, 34.908352, 35.551575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.907116, 34.499798, 34.892239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.696659, 34.838470, 34.860458>,  <47.570385, 35.041672, 34.841389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.696659, 34.838470, 34.860458>,  <47.907116, 34.499798, 34.892239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.696659, 34.838470, 34.860458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378556, 0.149524, -0.913421,
		-0.761492, -0.510666, -0.399186,
		-0.526141, 0.846677, -0.079455,
		47.538818, 35.092472, 34.836620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.746330, 32.512917, 45.377048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.373428, 32.455360, 45.244263>,  <33.149689, 32.420826, 45.164593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.373428, 32.455360, 45.244263>,  <33.746330, 32.512917, 45.377048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373428, 32.455360, 45.244263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283973, 0.277530, -0.917789,
		0.224190, -0.949880, -0.217867,
		-0.932254, -0.143891, -0.331960,
		33.093754, 32.412193, 45.144676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.829643, 32.332470, 44.738380>,  <33.746330, 32.512917, 45.377048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.829643, 32.332470, 44.738380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.438549, 32.412434, 44.712856>,  <33.203892, 32.460411, 44.697540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.438549, 32.412434, 44.712856>,  <33.829643, 32.332470, 44.738380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.438549, 32.412434, 44.712856> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155967, 0.488847, -0.858314,
		-0.140392, -0.849155, -0.509142,
		-0.977734, 0.199910, -0.063810,
		33.145229, 32.472408, 44.693714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600697, 32.106735, 44.052650>,  <33.829643, 32.332470, 44.738380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600697, 32.106735, 44.052650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.368290, 32.409115, 44.173286>,  <33.228844, 32.590542, 44.245667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.368290, 32.409115, 44.173286>,  <33.600697, 32.106735, 44.052650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368290, 32.409115, 44.173286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319442, 0.552627, -0.769779,
		-0.748580, -0.350918, -0.562570,
		-0.581021, 0.755949, 0.301588,
		33.193985, 32.635899, 44.263763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.158424, 32.305168, 43.487404>,  <33.600697, 32.106735, 44.052650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.158424, 32.305168, 43.487404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.167568, 32.609951, 43.746292>,  <33.173054, 32.792820, 43.901627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.167568, 32.609951, 43.746292>,  <33.158424, 32.305168, 43.487404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167568, 32.609951, 43.746292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320100, 0.607734, -0.726771,
		-0.947108, 0.223790, -0.230010,
		0.022859, 0.761957, 0.647225,
		33.174427, 32.838539, 43.940460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.664986, 32.825821, 43.300102>,  <33.158424, 32.305168, 43.487404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.664986, 32.825821, 43.300102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.935356, 33.007828, 43.531990>,  <33.097580, 33.117031, 43.671124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.935356, 33.007828, 43.531990>,  <32.664986, 32.825821, 43.300102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935356, 33.007828, 43.531990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240064, 0.607781, -0.756948,
		-0.696769, 0.650815, 0.301584,
		0.675931, 0.455019, 0.579720,
		33.138134, 33.144333, 43.705906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.525154, 33.598820, 43.243816>,  <32.664986, 32.825821, 43.300102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.525154, 33.598820, 43.243816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.908295, 33.534885, 43.339287>,  <33.138180, 33.496525, 43.396568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.908295, 33.534885, 43.339287>,  <32.525154, 33.598820, 43.243816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908295, 33.534885, 43.339287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286983, 0.496484, -0.819234,
		0.012448, 0.853203, 0.521431,
		0.957855, -0.159840, 0.238675,
		33.195652, 33.486935, 43.410889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.734547, 34.182903, 42.993408>,  <32.525154, 33.598820, 43.243816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.734547, 34.182903, 42.993408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.067867, 33.968639, 43.048088>,  <33.267860, 33.840080, 43.080894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.067867, 33.968639, 43.048088>,  <32.734547, 34.182903, 42.993408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067867, 33.968639, 43.048088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384108, 0.383169, -0.840025,
		0.397588, 0.752497, 0.525044,
		0.833297, -0.535658, 0.136697,
		33.317856, 33.807941, 43.089096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273560, 34.623676, 42.904835>,  <32.734547, 34.182903, 42.993408>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273560, 34.623676, 42.904835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.443008, 34.268192, 42.834702>,  <33.544678, 34.054901, 42.792622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.443008, 34.268192, 42.834702>,  <33.273560, 34.623676, 42.904835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443008, 34.268192, 42.834702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382477, 0.350943, -0.854722,
		0.821131, 0.295017, 0.488578,
		0.423621, -0.888709, -0.175333,
		33.570095, 34.001579, 42.782101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.992157, 34.747414, 42.606167>,  <33.273560, 34.623676, 42.904835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.992157, 34.747414, 42.606167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.936356, 34.359890, 42.524235>,  <33.902874, 34.127377, 42.475075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.936356, 34.359890, 42.524235>,  <33.992157, 34.747414, 42.606167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936356, 34.359890, 42.524235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449032, 0.122470, -0.885082,
		0.882558, -0.215447, 0.417940,
		-0.139503, -0.968805, -0.204830,
		33.894505, 34.069248, 42.462788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538231, 34.525875, 42.294662>,  <33.992157, 34.747414, 42.606167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538231, 34.525875, 42.294662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.268925, 34.266369, 42.152782>,  <34.107342, 34.110664, 42.067654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.268925, 34.266369, 42.152782>,  <34.538231, 34.525875, 42.294662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268925, 34.266369, 42.152782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341980, 0.152096, -0.927317,
		0.655563, -0.745631, 0.119465,
		-0.673266, -0.648769, -0.354699,
		34.066944, 34.071739, 42.046371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931255, 34.055870, 41.915565>,  <34.538231, 34.525875, 42.294662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931255, 34.055870, 41.915565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.567822, 33.983513, 41.764969>,  <34.349762, 33.940098, 41.674610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.567822, 33.983513, 41.764969>,  <34.931255, 34.055870, 41.915565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567822, 33.983513, 41.764969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385305, -0.014950, -0.922668,
		0.161278, -0.983389, 0.083284,
		-0.908587, -0.180896, -0.376493,
		34.295246, 33.929245, 41.652020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158573, 33.585747, 41.412518>,  <34.931255, 34.055870, 41.915565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158573, 33.585747, 41.412518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.789066, 33.704052, 41.315216>,  <34.567360, 33.775036, 41.256836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.789066, 33.704052, 41.315216>,  <35.158573, 33.585747, 41.412518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789066, 33.704052, 41.315216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284609, 0.105265, -0.952847,
		-0.256216, -0.949442, -0.181419,
		-0.923770, 0.295768, -0.243249,
		34.511936, 33.792782, 41.242241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874805, 33.152489, 40.892105>,  <35.158573, 33.585747, 41.412518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.874805, 33.152489, 40.892105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.702927, 33.513538, 40.882118>,  <34.599800, 33.730167, 40.876125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.702927, 33.513538, 40.882118>,  <34.874805, 33.152489, 40.892105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702927, 33.513538, 40.882118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179461, 0.058273, -0.982038,
		-0.884958, -0.426463, -0.187027,
		-0.429701, 0.902626, -0.024964,
		34.574017, 33.784325, 40.874630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521275, 33.081123, 40.228191>,  <34.874805, 33.152489, 40.892105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521275, 33.081123, 40.228191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.500050, 33.474056, 40.299980>,  <34.487312, 33.709816, 40.343052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.500050, 33.474056, 40.299980>,  <34.521275, 33.081123, 40.228191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500050, 33.474056, 40.299980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011760, 0.180327, -0.983536,
		-0.998522, -0.050081, -0.021121,
		-0.053065, 0.982331, 0.179472,
		34.484131, 33.768757, 40.353821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010353, 33.333313, 39.749649>,  <34.521275, 33.081123, 40.228191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010353, 33.333313, 39.749649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.221321, 33.653126, 39.864597>,  <34.347900, 33.845013, 39.933567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.221321, 33.653126, 39.864597>,  <34.010353, 33.333313, 39.749649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221321, 33.653126, 39.864597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022670, 0.324879, -0.945484,
		-0.849303, 0.505180, 0.153222,
		0.527418, 0.799529, 0.287373,
		34.379547, 33.892986, 39.950809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727531, 33.897346, 39.344849>,  <34.010353, 33.333313, 39.749649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727531, 33.897346, 39.344849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.077690, 34.031189, 39.484398>,  <34.287785, 34.111492, 39.568127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.077690, 34.031189, 39.484398>,  <33.727531, 33.897346, 39.344849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077690, 34.031189, 39.484398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183845, 0.437033, -0.880456,
		-0.447075, 0.834891, 0.321063,
		0.875400, 0.334604, 0.348877,
		34.340309, 34.131569, 39.589062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853889, 34.473164, 38.976940>,  <33.727531, 33.897346, 39.344849>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853889, 34.473164, 38.976940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.220409, 34.383602, 39.109768>,  <34.440319, 34.329865, 39.189465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.220409, 34.383602, 39.109768>,  <33.853889, 34.473164, 38.976940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220409, 34.383602, 39.109768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391061, 0.321202, -0.862496,
		0.086453, 0.920162, 0.381875,
		0.916295, -0.223902, 0.332071,
		34.495296, 34.316433, 39.209389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207279, 34.975143, 38.706757>,  <33.853889, 34.473164, 38.976940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207279, 34.975143, 38.706757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.480698, 34.688702, 38.763275>,  <34.644749, 34.516838, 38.797188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.480698, 34.688702, 38.763275>,  <34.207279, 34.975143, 38.706757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480698, 34.688702, 38.763275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417577, 0.224880, -0.880374,
		0.598660, 0.660780, 0.452743,
		0.683546, -0.716100, 0.141300,
		34.685760, 34.473873, 38.805664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794071, 35.364437, 38.681671>,  <34.207279, 34.975143, 38.706757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794071, 35.364437, 38.681671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.917137, 34.986462, 38.637085>,  <34.990978, 34.759674, 38.610332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.917137, 34.986462, 38.637085>,  <34.794071, 35.364437, 38.681671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.917137, 34.986462, 38.637085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512267, 0.263223, -0.817494,
		0.801825, 0.194416, 0.565048,
		0.307668, -0.944942, -0.111466,
		35.009438, 34.702980, 38.603645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454189, 35.472469, 38.608971>,  <34.794071, 35.364437, 38.681671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454189, 35.472469, 38.608971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.392071, 35.101021, 38.474186>,  <35.354797, 34.878151, 38.393314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.392071, 35.101021, 38.474186>,  <35.454189, 35.472469, 38.608971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392071, 35.101021, 38.474186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576908, 0.191637, -0.794010,
		0.801910, -0.317706, 0.505968,
		-0.155300, -0.928621, -0.336963,
		35.345482, 34.822433, 38.373096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173576, 35.062305, 38.568333>,  <35.454189, 35.472469, 38.608971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173576, 35.062305, 38.568333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.915932, 34.894535, 38.312454>,  <35.761345, 34.793873, 38.158928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.915932, 34.894535, 38.312454>,  <36.173576, 35.062305, 38.568333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915932, 34.894535, 38.312454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696196, 0.025026, -0.717415,
		0.316909, -0.907446, 0.275881,
		-0.644112, -0.419423, -0.639691,
		35.722698, 34.768707, 38.120548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524197, 34.553543, 38.141300>,  <36.173576, 35.062305, 38.568333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524197, 34.553543, 38.141300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.190292, 34.651592, 37.944084>,  <35.989948, 34.710423, 37.825756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.190292, 34.651592, 37.944084>,  <36.524197, 34.553543, 38.141300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190292, 34.651592, 37.944084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472121, -0.142121, -0.870002,
		-0.283331, -0.959018, 0.002908,
		-0.834761, 0.245126, -0.493040,
		35.939865, 34.725128, 37.796173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005562, 33.997623, 37.972202>,  <36.524197, 34.553543, 38.141300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005562, 33.997623, 37.972202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.219074, 34.333241, 38.014309>,  <37.347179, 34.534611, 38.039574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.219074, 34.333241, 38.014309>,  <37.005562, 33.997623, 37.972202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219074, 34.333241, 38.014309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077488, -0.172494, 0.981958,
		0.842067, -0.515990, -0.157090,
		0.533777, 0.839047, 0.105269,
		37.379208, 34.584953, 38.045891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463196, 33.788879, 38.523682>,  <37.005562, 33.997623, 37.972202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.463196, 33.788879, 38.523682> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.446224, 34.188435, 38.515480>,  <37.436043, 34.428169, 38.510559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.446224, 34.188435, 38.515480>,  <37.463196, 33.788879, 38.523682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446224, 34.188435, 38.515480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258477, 0.030793, 0.965526,
		0.965085, 0.035663, -0.259497,
		-0.042424, 0.998889, -0.020500,
		37.433498, 34.488102, 38.509331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057751, 33.880013, 38.901642>,  <37.463196, 33.788879, 38.523682>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057751, 33.880013, 38.901642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.794037, 34.179909, 38.924366>,  <37.635807, 34.359848, 38.938000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.794037, 34.179909, 38.924366>,  <38.057751, 33.880013, 38.901642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794037, 34.179909, 38.924366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200556, 0.102529, 0.974302,
		0.724653, 0.653736, -0.217961,
		-0.659284, 0.749745, 0.056813,
		37.596252, 34.404831, 38.941410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348633, 34.511345, 39.118755>,  <38.057751, 33.880013, 38.901642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348633, 34.511345, 39.118755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.964363, 34.533386, 39.227623>,  <37.733803, 34.546612, 39.292942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.964363, 34.533386, 39.227623>,  <38.348633, 34.511345, 39.118755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964363, 34.533386, 39.227623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277252, 0.135155, 0.951244,
		0.015634, 0.989291, -0.145118,
		-0.960670, 0.055106, 0.272170,
		37.676163, 34.549919, 39.309273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363087, 34.822121, 39.755966>,  <38.348633, 34.511345, 39.118755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363087, 34.822121, 39.755966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.979210, 34.710629, 39.741508>,  <37.748886, 34.643734, 39.732834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.979210, 34.710629, 39.741508>,  <38.363087, 34.822121, 39.755966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979210, 34.710629, 39.741508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033377, -0.014674, 0.999335,
		-0.279074, 0.960258, 0.004780,
		-0.959689, -0.278729, -0.036145,
		37.691303, 34.627010, 39.730663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107475, 35.143242, 40.258701>,  <38.363087, 34.822121, 39.755966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107475, 35.143242, 40.258701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.863430, 34.836040, 40.180798>,  <37.717003, 34.651718, 40.134056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.863430, 34.836040, 40.180798>,  <38.107475, 35.143242, 40.258701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863430, 34.836040, 40.180798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174012, -0.109930, 0.978588,
		-0.772971, 0.630939, -0.066573,
		-0.610111, -0.768005, -0.194764,
		37.680397, 34.605640, 40.122368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578289, 35.318661, 40.766907>,  <38.107475, 35.143242, 40.258701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578289, 35.318661, 40.766907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.487179, 34.948063, 40.647091>,  <37.432510, 34.725704, 40.575203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.487179, 34.948063, 40.647091>,  <37.578289, 35.318661, 40.766907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.487179, 34.948063, 40.647091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326937, -0.216997, 0.919796,
		-0.917186, 0.307439, -0.253478,
		-0.227777, -0.926495, -0.299540,
		37.418846, 34.670113, 40.557228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840633, 35.203945, 40.855453>,  <37.578289, 35.318661, 40.766907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840633, 35.203945, 40.855453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.032326, 34.853058, 40.866924>,  <37.147339, 34.642525, 40.873806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.032326, 34.853058, 40.866924>,  <36.840633, 35.203945, 40.855453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032326, 34.853058, 40.866924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449516, -0.217245, 0.866452,
		-0.753840, -0.428120, -0.498435,
		0.479229, -0.877222, 0.028679,
		37.176094, 34.589890, 40.875526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383171, 34.699234, 41.015083>,  <36.840633, 35.203945, 40.855453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.383171, 34.699234, 41.015083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.728851, 34.521584, 41.109669>,  <36.936260, 34.414993, 41.166420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.728851, 34.521584, 41.109669>,  <36.383171, 34.699234, 41.015083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728851, 34.521584, 41.109669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378983, -0.265447, 0.886515,
		-0.330959, -0.855738, -0.397716,
		0.864198, -0.444128, 0.236459,
		36.988110, 34.388348, 41.180607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235611, 34.372314, 41.559834>,  <36.383171, 34.699234, 41.015083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235611, 34.372314, 41.559834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.631058, 34.313057, 41.570305>,  <36.868328, 34.277500, 41.576588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.631058, 34.313057, 41.570305>,  <36.235611, 34.372314, 41.559834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631058, 34.313057, 41.570305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084255, -0.401065, 0.912166,
		-0.124636, -0.903991, -0.408982,
		0.988619, -0.148147, 0.026178,
		36.927643, 34.268612, 41.578159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228939, 33.681602, 41.835598>,  <36.235611, 34.372314, 41.559834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228939, 33.681602, 41.835598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.564648, 33.890724, 41.895317>,  <36.766075, 34.016197, 41.931149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.564648, 33.890724, 41.895317>,  <36.228939, 33.681602, 41.835598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564648, 33.890724, 41.895317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071511, -0.166067, 0.983518,
		0.538983, -0.836119, -0.101989,
		0.839276, 0.522806, 0.149299,
		36.816429, 34.047565, 41.940105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630444, 33.278194, 42.107510>,  <36.228939, 33.681602, 41.835598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630444, 33.278194, 42.107510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.743732, 33.645123, 42.219437>,  <36.811707, 33.865280, 42.286594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.743732, 33.645123, 42.219437>,  <36.630444, 33.278194, 42.107510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743732, 33.645123, 42.219437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110853, -0.258498, 0.959630,
		0.952625, -0.302810, 0.028475,
		0.283225, 0.917325, 0.279820,
		36.828701, 33.920319, 42.303383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247093, 33.268093, 42.551178>,  <36.630444, 33.278194, 42.107510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247093, 33.268093, 42.551178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.059113, 33.613209, 42.625732>,  <36.946323, 33.820278, 42.670464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.059113, 33.613209, 42.625732>,  <37.247093, 33.268093, 42.551178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.059113, 33.613209, 42.625732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012914, -0.217855, 0.975896,
		0.882597, 0.456218, 0.113524,
		-0.469953, 0.862789, 0.186386,
		36.918125, 33.872044, 42.681648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424805, 33.380821, 43.253269>,  <37.247093, 33.268093, 42.551178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424805, 33.380821, 43.253269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.124729, 33.635929, 43.183453>,  <36.944683, 33.788994, 43.141563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.124729, 33.635929, 43.183453>,  <37.424805, 33.380821, 43.253269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124729, 33.635929, 43.183453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366334, -0.181130, 0.912684,
		0.550471, 0.748623, 0.369519,
		-0.750187, 0.637773, -0.174539,
		36.899673, 33.827263, 43.131092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428558, 33.845451, 43.732941>,  <37.424805, 33.380821, 43.253269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428558, 33.845451, 43.732941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.036255, 33.883282, 43.664635>,  <36.800873, 33.905979, 43.623650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.036255, 33.883282, 43.664635>,  <37.428558, 33.845451, 43.732941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.036255, 33.883282, 43.664635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187732, -0.217214, 0.957901,
		0.053503, 0.971532, 0.230791,
		-0.980762, 0.094578, -0.170766,
		36.742027, 33.911655, 43.613403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165039, 34.156212, 44.348278>,  <37.428558, 33.845451, 43.732941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165039, 34.156212, 44.348278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.821407, 34.033470, 44.184414>,  <36.615227, 33.959824, 44.086098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.821407, 34.033470, 44.184414>,  <37.165039, 34.156212, 44.348278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.821407, 34.033470, 44.184414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356153, -0.216451, 0.909013,
		-0.367608, 0.926816, 0.076661,
		-0.859081, -0.306857, -0.409657,
		36.563683, 33.941414, 44.061516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692776, 34.380260, 44.774632>,  <37.165039, 34.156212, 44.348278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692776, 34.380260, 44.774632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.520679, 34.081261, 44.572189>,  <36.417423, 33.901863, 44.450726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.520679, 34.081261, 44.572189>,  <36.692776, 34.380260, 44.774632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520679, 34.081261, 44.572189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298244, -0.411462, 0.861249,
		-0.852024, 0.521485, -0.045910,
		-0.430238, -0.747498, -0.506105,
		36.391609, 33.857010, 44.420357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200752, 34.160770, 45.225838>,  <36.692776, 34.380260, 44.774632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.200752, 34.160770, 45.225838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.182938, 33.844021, 44.982216>,  <36.172249, 33.653969, 44.836044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.182938, 33.844021, 44.982216>,  <36.200752, 34.160770, 45.225838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.182938, 33.844021, 44.982216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578426, -0.476628, 0.662004,
		-0.814518, 0.381778, -0.436814,
		-0.044541, -0.791878, -0.609052,
		36.169575, 33.606457, 44.799500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.408310, 33.890457, 45.214069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.640423, 33.588570, 45.091644>,  <35.779690, 33.407436, 45.018188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.640423, 33.588570, 45.091644>,  <35.408310, 33.890457, 45.214069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640423, 33.588570, 45.091644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541858, -0.638337, 0.546732,
		-0.607999, -0.151416, -0.779365,
		0.580282, -0.754718, -0.306062,
		35.814507, 33.362156, 44.999825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997101, 33.412048, 44.941929>,  <35.408310, 33.890457, 45.214069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997101, 33.412048, 44.941929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.338383, 33.227383, 45.039009>,  <35.543152, 33.116581, 45.097260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.338383, 33.227383, 45.039009>,  <34.997101, 33.412048, 44.941929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338383, 33.227383, 45.039009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494078, -0.566302, 0.659688,
		-0.167112, -0.682764, -0.711271,
		0.853206, -0.461666, 0.242702,
		35.594345, 33.088882, 45.111820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763672, 32.753830, 44.873196>,  <34.997101, 33.412048, 44.941929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763672, 32.753830, 44.873196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.110611, 32.704529, 45.066074>,  <35.318775, 32.674950, 45.181801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.110611, 32.704529, 45.066074>,  <34.763672, 32.753830, 44.873196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110611, 32.704529, 45.066074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462319, -0.558281, 0.688900,
		0.184294, -0.820446, -0.541205,
		0.867350, -0.123249, 0.482196,
		35.370815, 32.667553, 45.210732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.905205, 32.033585, 44.945969>,  <34.763672, 32.753830, 44.873196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.905205, 32.033585, 44.945969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.084892, 32.222919, 45.249058>,  <35.192707, 32.336521, 45.430912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.084892, 32.222919, 45.249058>,  <34.905205, 32.033585, 44.945969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084892, 32.222919, 45.249058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476677, -0.590334, 0.651371,
		0.755630, -0.653802, -0.039563,
		0.449223, 0.473337, 0.757727,
		35.219658, 32.364922, 45.476376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138813, 31.466661, 45.315277>,  <34.905205, 32.033585, 44.945969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138813, 31.466661, 45.315277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.136154, 31.775970, 45.568893>,  <35.134560, 31.961555, 45.721062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.136154, 31.775970, 45.568893>,  <35.138813, 31.466661, 45.315277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136154, 31.775970, 45.568893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193734, -0.623033, 0.757824,
		0.981031, -0.117798, 0.153950,
		-0.006645, 0.773275, 0.634036,
		35.134159, 32.007954, 45.759106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579571, 31.176693, 45.928051>,  <35.138813, 31.466661, 45.315277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579571, 31.176693, 45.928051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.354206, 31.481926, 46.054714>,  <35.218987, 31.665066, 46.130711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.354206, 31.481926, 46.054714>,  <35.579571, 31.176693, 45.928051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354206, 31.481926, 46.054714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224900, -0.510463, 0.829968,
		0.794976, 0.396399, 0.459219,
		-0.563413, 0.763083, 0.316655,
		35.185181, 31.710852, 46.149712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744968, 31.109711, 46.683411>,  <35.579571, 31.176693, 45.928051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744968, 31.109711, 46.683411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.449493, 31.377125, 46.649010>,  <35.272209, 31.537573, 46.628368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.449493, 31.377125, 46.649010>,  <35.744968, 31.109711, 46.683411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449493, 31.377125, 46.649010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431357, -0.370823, 0.822448,
		0.517947, 0.644631, 0.562301,
		-0.738690, 0.668537, -0.085999,
		35.227886, 31.577686, 46.623211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786518, 31.519358, 47.231239>,  <35.744968, 31.109711, 46.683411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786518, 31.519358, 47.231239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.408501, 31.534346, 47.101330>,  <35.181690, 31.543339, 47.023384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.408501, 31.534346, 47.101330>,  <35.786518, 31.519358, 47.231239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408501, 31.534346, 47.101330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322888, -0.262740, 0.909236,
		-0.051263, 0.964139, 0.260401,
		-0.945048, 0.037471, -0.324777,
		35.124985, 31.545588, 47.003895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.427219, 32.122200, 47.480717>,  <35.786518, 31.519358, 47.231239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.427219, 32.122200, 47.480717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.149017, 31.844151, 47.407970>,  <34.982098, 31.677320, 47.364323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.149017, 31.844151, 47.407970>,  <35.427219, 32.122200, 47.480717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149017, 31.844151, 47.407970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200413, -0.055384, 0.978145,
		-0.690008, 0.716749, -0.100793,
		-0.695502, -0.695128, -0.181861,
		34.940365, 31.635612, 47.353413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943169, 32.310001, 48.003677>,  <35.427219, 32.122200, 47.480717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943169, 32.310001, 48.003677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.817131, 31.950991, 47.880287>,  <34.741508, 31.735584, 47.806252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.817131, 31.950991, 47.880287>,  <34.943169, 32.310001, 48.003677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817131, 31.950991, 47.880287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206162, -0.252540, 0.945368,
		-0.926397, 0.361477, -0.105462,
		-0.315095, -0.897529, -0.308475,
		34.722603, 31.681732, 47.787746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203503, 32.217743, 48.210152>,  <34.943169, 32.310001, 48.003677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203503, 32.217743, 48.210152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.330482, 31.844839, 48.140739>,  <34.406670, 31.621096, 48.099094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.330482, 31.844839, 48.140739>,  <34.203503, 32.217743, 48.210152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330482, 31.844839, 48.140739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308692, -0.274619, 0.910655,
		-0.896625, -0.235517, -0.374960,
		0.317446, -0.932264, -0.173528,
		34.425716, 31.565161, 48.088680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.728386, 31.808086, 48.439587>,  <34.203503, 32.217743, 48.210152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.728386, 31.808086, 48.439587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.062248, 31.588186, 48.453022>,  <34.262566, 31.456247, 48.461082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.062248, 31.588186, 48.453022>,  <33.728386, 31.808086, 48.439587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062248, 31.588186, 48.453022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256452, -0.333939, 0.907038,
		-0.487426, -0.765677, -0.419708,
		0.834654, -0.549749, 0.033589,
		34.312645, 31.423262, 48.463100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.524055, 31.126764, 48.562336>,  <33.728386, 31.808086, 48.439587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.524055, 31.126764, 48.562336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.912384, 31.125782, 48.658257>,  <34.145382, 31.125193, 48.715809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.912384, 31.125782, 48.658257>,  <33.524055, 31.126764, 48.562336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.912384, 31.125782, 48.658257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210436, -0.488249, 0.846953,
		0.115001, -0.872701, -0.474519,
		0.970820, -0.002456, 0.239797,
		34.203629, 31.125046, 48.730194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711021, 30.488283, 48.702976>,  <33.524055, 31.126764, 48.562336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711021, 30.488283, 48.702976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.988209, 30.693928, 48.905159>,  <34.154522, 30.817314, 49.026470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.988209, 30.693928, 48.905159>,  <33.711021, 30.488283, 48.702976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988209, 30.693928, 48.905159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091115, -0.633011, 0.768762,
		0.715188, -0.578782, -0.391813,
		0.692968, 0.514110, 0.505457,
		34.196098, 30.848160, 49.056797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100365, 29.971767, 48.926739>,  <33.711021, 30.488283, 48.702976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100365, 29.971767, 48.926739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.208221, 30.262609, 49.179279>,  <34.272934, 30.437115, 49.330803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.208221, 30.262609, 49.179279>,  <34.100365, 29.971767, 48.926739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208221, 30.262609, 49.179279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042898, -0.664059, 0.746449,
		0.962006, -0.174188, -0.210248,
		0.269639, 0.727107, 0.631356,
		34.289112, 30.480742, 49.368687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555843, 29.708815, 49.366367>,  <34.100365, 29.971767, 48.926739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.555843, 29.708815, 49.366367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.455181, 30.037552, 49.570816>,  <34.394783, 30.234795, 49.693485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.455181, 30.037552, 49.570816>,  <34.555843, 29.708815, 49.366367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455181, 30.037552, 49.570816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131470, -0.552252, 0.823245,
		0.958846, 0.139977, 0.247025,
		-0.251655, 0.821842, 0.511122,
		34.379684, 30.284105, 49.724152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007362, 29.742573, 49.951584>,  <34.555843, 29.708815, 49.366367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007362, 29.742573, 49.951584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.663589, 29.935234, 50.020153>,  <34.457325, 30.050831, 50.061295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.663589, 29.935234, 50.020153>,  <35.007362, 29.742573, 49.951584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663589, 29.935234, 50.020153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234407, -0.669219, 0.705124,
		0.454345, 0.565823, 0.688052,
		-0.859433, 0.481653, 0.171424,
		34.405758, 30.079729, 50.071579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097652, 30.010908, 50.646469>,  <35.007362, 29.742573, 49.951584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097652, 30.010908, 50.646469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.706669, 30.027142, 50.563602>,  <34.472076, 30.036882, 50.513882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.706669, 30.027142, 50.563602>,  <35.097652, 30.010908, 50.646469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706669, 30.027142, 50.563602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189315, -0.602771, 0.775130,
		-0.093418, 0.796881, 0.596870,
		-0.977462, 0.040586, -0.207171,
		34.413429, 30.039318, 50.501450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775051, 30.146204, 51.304573>,  <35.097652, 30.010908, 50.646469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.775051, 30.146204, 51.304573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.507324, 29.989759, 51.051895>,  <34.346687, 29.895893, 50.900288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.507324, 29.989759, 51.051895>,  <34.775051, 30.146204, 51.304573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.507324, 29.989759, 51.051895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321942, -0.613590, 0.721014,
		-0.669601, 0.685959, 0.284772,
		-0.669319, -0.391112, -0.631699,
		34.306530, 29.872425, 50.862385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063942, 30.158575, 51.629356>,  <34.775051, 30.146204, 51.304573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063942, 30.158575, 51.629356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.060791, 29.870794, 51.351559>,  <34.058899, 29.698126, 51.184879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.060791, 29.870794, 51.351559>,  <34.063942, 30.158575, 51.629356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060791, 29.870794, 51.351559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215855, -0.676921, 0.703694,
		-0.976394, 0.155453, -0.149966,
		-0.007876, -0.719453, -0.694496,
		34.058430, 29.654959, 51.143211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646004, 29.703856, 51.938648>,  <34.063942, 30.158575, 51.629356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646004, 29.703856, 51.938648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.787964, 29.472214, 51.645069>,  <33.873138, 29.333229, 51.468922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.787964, 29.472214, 51.645069>,  <33.646004, 29.703856, 51.938648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787964, 29.472214, 51.645069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263097, -0.815191, 0.515988,
		-0.897122, 0.009977, -0.441671,
		0.354898, -0.579106, -0.733951,
		33.894432, 29.298481, 51.424885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.107258, 29.116638, 52.011215>,  <33.646004, 29.703856, 51.938648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.107258, 29.116638, 52.011215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.435661, 29.018484, 51.805019>,  <33.632702, 28.959591, 51.681301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.435661, 29.018484, 51.805019>,  <33.107258, 29.116638, 52.011215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435661, 29.018484, 51.805019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175805, -0.967707, 0.180652,
		-0.543175, -0.057691, -0.837635,
		0.821008, -0.245386, -0.515492,
		33.681965, 28.944868, 51.650372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.833649, 28.612839, 51.550903>,  <33.107258, 29.116638, 52.011215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.833649, 28.612839, 51.550903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.215401, 28.505775, 51.603848>,  <33.444450, 28.441538, 51.635616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.215401, 28.505775, 51.603848>,  <32.833649, 28.612839, 51.550903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215401, 28.505775, 51.603848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294989, -0.913867, 0.278977,
		0.046291, -0.305296, -0.951132,
		0.954379, -0.267659, 0.132363,
		33.501713, 28.425478, 51.643555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.286621, 28.499241, 52.054398>,  <32.833649, 28.612839, 51.550903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.286621, 28.499241, 52.054398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.228550, 28.322670, 52.408588>,  <32.193707, 28.216726, 52.621101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.228550, 28.322670, 52.408588>,  <32.286621, 28.499241, 52.054398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.228550, 28.322670, 52.408588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290206, 0.836593, 0.464642,
		-0.945888, 0.324425, 0.006651,
		-0.145178, -0.441429, 0.885474,
		32.184998, 28.190241, 52.674229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.462868, 28.414537, 52.019981>,  <32.286621, 28.499241, 52.054398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.462868, 28.414537, 52.019981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.079599, 28.518450, 51.971951>,  <30.849638, 28.580797, 51.943130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.079599, 28.518450, 51.971951>,  <31.462868, 28.414537, 52.019981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079599, 28.518450, 51.971951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164414, 0.156237, -0.973939,
		-0.234252, -0.952944, -0.192414,
		-0.958172, 0.259783, -0.120079,
		30.792149, 28.596384, 51.935928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.235205, 28.008440, 51.494358>,  <31.462868, 28.414537, 52.019981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.235205, 28.008440, 51.494358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.990307, 28.324564, 51.503872>,  <30.843369, 28.514238, 51.509579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.990307, 28.324564, 51.503872>,  <31.235205, 28.008440, 51.494358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.990307, 28.324564, 51.503872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224578, 0.202657, -0.953150,
		-0.758105, -0.578219, -0.301562,
		-0.612243, 0.790312, 0.023780,
		30.806633, 28.561657, 51.511005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.877884, 27.978041, 50.856842>,  <31.235205, 28.008440, 51.494358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.877884, 27.978041, 50.856842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.800806, 28.357094, 50.958710>,  <30.754559, 28.584526, 51.019833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.800806, 28.357094, 50.958710>,  <30.877884, 27.978041, 50.856842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.800806, 28.357094, 50.958710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264079, 0.300044, -0.916644,
		-0.945056, -0.109380, -0.308068,
		-0.192696, 0.947634, 0.254674,
		30.742998, 28.641384, 51.035110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.478779, 28.262255, 50.301155>,  <30.877884, 27.978041, 50.856842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.478779, 28.262255, 50.301155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.636919, 28.574455, 50.494862>,  <30.731804, 28.761776, 50.611084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.636919, 28.574455, 50.494862>,  <30.478779, 28.262255, 50.301155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.636919, 28.574455, 50.494862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148235, 0.466093, -0.872229,
		-0.906489, 0.416623, 0.068573,
		0.395353, 0.780501, 0.484267,
		30.755526, 28.808605, 50.640141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.236059, 28.885099, 49.936012>,  <30.478779, 28.262255, 50.301155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.236059, 28.885099, 49.936012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.569185, 29.013136, 50.116661>,  <30.769060, 29.089958, 50.225048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.569185, 29.013136, 50.116661>,  <30.236059, 28.885099, 49.936012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.569185, 29.013136, 50.116661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293408, 0.436566, -0.850483,
		-0.469393, 0.840805, 0.269661,
		0.832815, 0.320090, 0.451620,
		30.819031, 29.109163, 50.252148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.341982, 29.569231, 49.741043>,  <30.236059, 28.885099, 49.936012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.341982, 29.569231, 49.741043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.708714, 29.465242, 49.862263>,  <30.928753, 29.402849, 49.934994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.708714, 29.465242, 49.862263>,  <30.341982, 29.569231, 49.741043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.708714, 29.465242, 49.862263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399012, 0.568699, -0.719285,
		0.014646, 0.780383, 0.625130,
		0.916829, -0.259970, 0.303053,
		30.983763, 29.387251, 49.953178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.721550, 30.269022, 49.840919>,  <30.341982, 29.569231, 49.741043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.721550, 30.269022, 49.840919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.982410, 29.967505, 49.808678>,  <31.138926, 29.786594, 49.789333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.982410, 29.967505, 49.808678>,  <30.721550, 30.269022, 49.840919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.982410, 29.967505, 49.808678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432990, 0.457650, -0.776580,
		0.622270, 0.471544, 0.624841,
		0.652150, -0.753792, -0.080608,
		31.178055, 29.741367, 49.784496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.343214, 30.552961, 49.725609>,  <30.721550, 30.269022, 49.840919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.343214, 30.552961, 49.725609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.359274, 30.182619, 49.575314>,  <31.368910, 29.960415, 49.485134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.359274, 30.182619, 49.575314>,  <31.343214, 30.552961, 49.725609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.359274, 30.182619, 49.575314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474537, 0.348598, -0.808266,
		0.879319, -0.145850, 0.453348,
		0.040150, -0.925855, -0.375740,
		31.371319, 29.904863, 49.462593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.962923, 30.569656, 49.415257>,  <31.343214, 30.552961, 49.725609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.962923, 30.569656, 49.415257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.794235, 30.264273, 49.219593>,  <31.693022, 30.081041, 49.102196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.794235, 30.264273, 49.219593>,  <31.962923, 30.569656, 49.415257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.794235, 30.264273, 49.219593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435015, 0.302980, -0.847918,
		0.795559, -0.570377, 0.204344,
		-0.421721, -0.763461, -0.489161,
		31.667719, 30.035234, 49.072845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.469334, 30.211273, 48.974373>,  <31.962923, 30.569656, 49.415257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.469334, 30.211273, 48.974373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.116333, 30.101023, 48.821941>,  <31.904531, 30.034872, 48.730484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.116333, 30.101023, 48.821941>,  <32.469334, 30.211273, 48.974373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.116333, 30.101023, 48.821941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255506, 0.399290, -0.880502,
		0.394824, -0.874421, -0.281961,
		-0.882514, -0.275601, -0.381069,
		31.851582, 30.018335, 48.707619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699158, 29.931278, 48.357536>,  <32.469334, 30.211273, 48.974373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699158, 29.931278, 48.357536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.305477, 29.952662, 48.290028>,  <32.069267, 29.965492, 48.249523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.305477, 29.952662, 48.290028>,  <32.699158, 29.931278, 48.357536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.305477, 29.952662, 48.290028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173489, 0.101367, -0.979605,
		-0.035260, -0.993412, -0.109040,
		-0.984204, 0.053458, -0.168771,
		32.010216, 29.968699, 48.239395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512539, 29.477171, 47.762554>,  <32.699158, 29.931278, 48.357536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512539, 29.477171, 47.762554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.236652, 29.764404, 47.799755>,  <32.071121, 29.936745, 47.822075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.236652, 29.764404, 47.799755>,  <32.512539, 29.477171, 47.762554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.236652, 29.764404, 47.799755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095249, 0.217309, -0.971445,
		-0.717790, -0.661160, -0.218278,
		-0.689714, 0.718084, 0.093007,
		32.029739, 29.979830, 47.827656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.333611, 29.517788, 47.088848>,  <32.512539, 29.477171, 47.762554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.333611, 29.517788, 47.088848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.159286, 29.845903, 47.237007>,  <32.054691, 30.042772, 47.325901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.159286, 29.845903, 47.237007>,  <32.333611, 29.517788, 47.088848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.159286, 29.845903, 47.237007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037631, 0.394565, -0.918097,
		-0.899250, -0.414057, -0.141088,
		-0.435813, 0.820290, 0.370394,
		32.028542, 30.091990, 47.348125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.868658, 29.778612, 46.538845>,  <32.333611, 29.517788, 47.088848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.868658, 29.778612, 46.538845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.903557, 30.101622, 46.772182>,  <31.924496, 30.295427, 46.912186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.903557, 30.101622, 46.772182>,  <31.868658, 29.778612, 46.538845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.903557, 30.101622, 46.772182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016822, 0.586691, -0.809636,
		-0.996045, 0.060824, 0.064770,
		0.087245, 0.807524, 0.583347,
		31.929729, 30.343880, 46.947186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.529688, 30.406643, 46.341026>,  <31.868658, 29.778612, 46.538845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.529688, 30.406643, 46.341026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.809072, 30.577534, 46.570679>,  <31.976704, 30.680069, 46.708469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.809072, 30.577534, 46.570679>,  <31.529688, 30.406643, 46.341026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.809072, 30.577534, 46.570679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173751, 0.677017, -0.715163,
		-0.694236, 0.599269, 0.398638,
		0.698460, 0.427228, 0.574134,
		32.018612, 30.705702, 46.742920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.405767, 31.084038, 46.290985>,  <31.529688, 30.406643, 46.341026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.405767, 31.084038, 46.290985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.785393, 31.097397, 46.416309>,  <32.013168, 31.105412, 46.491505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.785393, 31.097397, 46.416309>,  <31.405767, 31.084038, 46.290985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785393, 31.097397, 46.416309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203204, 0.695076, -0.689621,
		-0.240807, 0.718160, 0.652885,
		0.949063, 0.033397, 0.313312,
		32.070110, 31.107416, 46.510303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.584122, 31.795860, 46.452248>,  <31.405767, 31.084038, 46.290985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.584122, 31.795860, 46.452248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.911381, 31.581720, 46.368309>,  <32.107735, 31.453236, 46.317947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.911381, 31.581720, 46.368309>,  <31.584122, 31.795860, 46.452248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.911381, 31.581720, 46.368309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345824, 0.749678, -0.564259,
		0.459392, 0.389078, 0.798484,
		0.818147, -0.535352, -0.209843,
		32.156826, 31.421114, 46.305355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.961918, 32.397919, 46.365749>,  <31.584122, 31.795860, 46.452248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.961918, 32.397919, 46.365749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.175747, 32.091091, 46.223854>,  <32.304043, 31.906996, 46.138718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.175747, 32.091091, 46.223854>,  <31.961918, 32.397919, 46.365749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175747, 32.091091, 46.223854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391483, 0.596755, -0.700446,
		0.748982, 0.235564, 0.619302,
		0.534571, -0.767068, -0.354740,
		32.336117, 31.860971, 46.117432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672630, 32.581760, 46.314941>,  <31.961918, 32.397919, 46.365749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.672630, 32.581760, 46.314941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.629749, 32.284683, 46.050541>,  <32.604019, 32.106438, 45.891903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.629749, 32.284683, 46.050541>,  <32.672630, 32.581760, 46.314941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629749, 32.284683, 46.050541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444083, 0.559056, -0.700175,
		0.889549, -0.368599, 0.269884,
		-0.107203, -0.742692, -0.660997,
		32.597588, 32.061874, 45.852242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378300, 32.521008, 45.990704>,  <32.672630, 32.581760, 46.314941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378300, 32.521008, 45.990704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.097214, 32.376553, 45.745506>,  <32.928562, 32.289879, 45.598389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.097214, 32.376553, 45.745506>,  <33.378300, 32.521008, 45.990704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097214, 32.376553, 45.745506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418113, 0.487490, -0.766508,
		0.575648, -0.794941, -0.191569,
		-0.702717, -0.361141, -0.612997,
		32.886398, 32.268211, 45.561607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.251015, 42.741913, 33.926292> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.854877, 42.723156, 33.978470>,  <41.617195, 42.711903, 34.009777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.854877, 42.723156, 33.978470>,  <42.251015, 42.741913, 33.926292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.854877, 42.723156, 33.978470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051812, -0.998058, 0.034579,
		0.128573, 0.041004, 0.990852,
		-0.990346, -0.046892, 0.130448,
		41.557774, 42.709087, 34.017605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.089420, 42.386326, 34.519135>,  <42.251015, 42.741913, 33.926292>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.089420, 42.386326, 34.519135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.780869, 42.336304, 34.269547>,  <41.595737, 42.306290, 34.119793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.780869, 42.336304, 34.269547>,  <42.089420, 42.386326, 34.519135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.780869, 42.336304, 34.269547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014278, -0.976855, 0.213426,
		-0.636215, 0.173542, 0.751741,
		-0.771380, -0.125052, -0.623967,
		41.549454, 42.298790, 34.082355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.700874, 41.879208, 34.897194>,  <42.089420, 42.386326, 34.519135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.700874, 41.879208, 34.897194> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.575127, 41.886742, 34.517548>,  <41.499676, 41.891262, 34.289761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.575127, 41.886742, 34.517548>,  <41.700874, 41.879208, 34.897194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.575127, 41.886742, 34.517548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011057, -0.999663, -0.023496,
		-0.949235, -0.017881, 0.314058,
		-0.314373, 0.018831, -0.949113,
		41.480816, 41.892391, 34.232815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.197933, 41.426147, 34.843170>,  <41.700874, 41.879208, 34.897194>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.197933, 41.426147, 34.843170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.258774, 41.472324, 34.450531>,  <41.295280, 41.500031, 34.214947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.258774, 41.472324, 34.450531>,  <41.197933, 41.426147, 34.843170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.258774, 41.472324, 34.450531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073484, -0.991728, -0.105244,
		-0.985629, -0.056123, -0.159330,
		0.152105, 0.115440, -0.981600,
		41.304405, 41.506958, 34.156052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.593628, 40.997177, 34.455746>,  <41.197933, 41.426147, 34.843170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.593628, 40.997177, 34.455746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.893597, 41.067970, 34.200783>,  <41.073578, 41.110447, 34.047806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.893597, 41.067970, 34.200783>,  <40.593628, 40.997177, 34.455746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.893597, 41.067970, 34.200783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052030, -0.976341, -0.209884,
		-0.659473, 0.124233, -0.741392,
		0.749925, 0.176987, -0.637407,
		41.118576, 41.121067, 34.009560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395638, 40.676163, 33.759178>,  <40.593628, 40.997177, 34.455746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.395638, 40.676163, 33.759178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.793324, 40.683914, 33.801426>,  <41.031937, 40.688564, 33.826775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.793324, 40.683914, 33.801426>,  <40.395638, 40.676163, 33.759178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.793324, 40.683914, 33.801426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039417, -0.980772, -0.191133,
		0.099884, 0.194191, -0.975865,
		0.994218, 0.019374, 0.105618,
		41.091587, 40.689728, 33.833111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.669502, 40.196732, 33.245911>,  <40.395638, 40.676163, 33.759178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.669502, 40.196732, 33.245911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.985313, 40.228630, 33.489315>,  <41.174801, 40.247768, 33.635357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.985313, 40.228630, 33.489315>,  <40.669502, 40.196732, 33.245911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.985313, 40.228630, 33.489315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241864, -0.951706, -0.189098,
		0.564043, 0.296476, -0.770687,
		0.789530, 0.079742, 0.608509,
		41.222172, 40.252552, 33.671867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.264736, 40.025002, 32.812397>,  <40.669502, 40.196732, 33.245911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.264736, 40.025002, 32.812397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.315380, 39.937321, 33.199368>,  <41.345768, 39.884712, 33.431549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.315380, 39.937321, 33.199368>,  <41.264736, 40.025002, 32.812397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.315380, 39.937321, 33.199368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005293, -0.975115, -0.221637,
		0.991938, 0.033182, -0.122299,
		0.126610, -0.219203, 0.967429,
		41.353363, 39.871559, 33.489597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.497192, 39.261185, 32.793358>,  <41.264736, 40.025002, 32.812397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.497192, 39.261185, 32.793358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.482143, 39.332729, 33.186619>,  <41.473114, 39.375656, 33.422577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.482143, 39.332729, 33.186619>,  <41.497192, 39.261185, 32.793358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.482143, 39.332729, 33.186619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169488, -0.968455, 0.182673,
		0.984814, 0.173505, 0.006118,
		-0.037620, 0.178862, 0.983155,
		41.470856, 39.386387, 33.481564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.064484, 39.009945, 33.105095>,  <41.497192, 39.261185, 32.793358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.064484, 39.009945, 33.105095> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.797325, 38.993702, 33.402355>,  <41.637032, 38.983955, 33.580711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.797325, 38.993702, 33.402355>,  <42.064484, 39.009945, 33.105095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.797325, 38.993702, 33.402355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219182, -0.964959, 0.144266,
		0.711249, 0.259239, 0.653391,
		-0.667895, -0.040603, 0.743147,
		41.596958, 38.981522, 33.625298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.425373, 38.951874, 33.791470>,  <42.064484, 39.009945, 33.105095>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.425373, 38.951874, 33.791470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.060627, 38.788460, 33.807514>,  <41.841782, 38.690411, 33.817142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.060627, 38.788460, 33.807514>,  <42.425373, 38.951874, 33.791470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.060627, 38.788460, 33.807514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398465, -0.857421, 0.325662,
		-0.098651, 0.312942, 0.944635,
		-0.911863, -0.408531, 0.040111,
		41.787067, 38.665901, 33.819546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.588161, 38.607426, 34.434769>,  <42.425373, 38.951874, 33.791470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.588161, 38.607426, 34.434769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.235390, 38.455437, 34.323185>,  <42.023727, 38.364243, 34.256237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.235390, 38.455437, 34.323185>,  <42.588161, 38.607426, 34.434769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.235390, 38.455437, 34.323185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231480, -0.864627, 0.445911,
		-0.410629, 0.328690, 0.850498,
		-0.881930, -0.379977, -0.278956,
		41.970810, 38.341442, 34.239498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.326797, 38.367279, 34.998940>,  <42.588161, 38.607426, 34.434769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.326797, 38.367279, 34.998940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.159691, 38.167686, 34.695232>,  <42.059425, 38.047932, 34.513008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.159691, 38.167686, 34.695232>,  <42.326797, 38.367279, 34.998940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.159691, 38.167686, 34.695232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142608, -0.861343, 0.487597,
		-0.897291, 0.095426, 0.431002,
		-0.417770, -0.498981, -0.759267,
		42.034359, 38.017994, 34.467453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.021961, 37.881386, 35.340374>,  <42.326797, 38.367279, 34.998940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.021961, 37.881386, 35.340374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.037647, 37.705795, 34.981316>,  <42.047058, 37.600441, 34.765881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.037647, 37.705795, 34.981316>,  <42.021961, 37.881386, 35.340374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.037647, 37.705795, 34.981316> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212762, -0.874065, 0.436742,
		-0.976317, -0.208109, 0.059125,
		0.039211, -0.438978, -0.897642,
		42.049412, 37.574100, 34.712025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.620625, 37.122726, 35.373722>,  <42.021961, 37.881386, 35.340374>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.620625, 37.122726, 35.373722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.864368, 37.119579, 35.056580>,  <42.010616, 37.117691, 34.866295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.864368, 37.119579, 35.056580>,  <41.620625, 37.122726, 35.373722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.864368, 37.119579, 35.056580> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437436, -0.830667, 0.344445,
		-0.661307, -0.556714, -0.502734,
		0.609362, -0.007870, -0.792853,
		42.047176, 37.117218, 34.818722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.557594, 36.424599, 35.050682>,  <41.620625, 37.122726, 35.373722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.557594, 36.424599, 35.050682> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.907135, 36.587814, 34.944935>,  <42.116859, 36.685745, 34.881489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.907135, 36.587814, 34.944935>,  <41.557594, 36.424599, 35.050682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.907135, 36.587814, 34.944935> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477544, -0.822443, 0.309094,
		-0.091303, -0.396348, -0.913549,
		0.873851, 0.408039, -0.264365,
		42.169289, 36.710224, 34.865623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.919430, 35.890015, 34.691360>,  <41.557594, 36.424599, 35.050682>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.919430, 35.890015, 34.691360> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.202934, 36.152454, 34.795048>,  <42.373035, 36.309917, 34.857262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.202934, 36.152454, 34.795048>,  <41.919430, 35.890015, 34.691360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.202934, 36.152454, 34.795048> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598772, -0.753782, 0.270712,
		0.373009, -0.036656, -0.927103,
		0.708757, 0.656102, 0.259218,
		42.415562, 36.349285, 34.872814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.565350, 35.682365, 34.309597>,  <41.919430, 35.890015, 34.691360>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.565350, 35.682365, 34.309597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.641426, 35.915176, 34.625843>,  <42.687073, 36.054863, 34.815590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.641426, 35.915176, 34.625843>,  <42.565350, 35.682365, 34.309597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.641426, 35.915176, 34.625843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616066, -0.697773, 0.365481,
		0.764388, 0.417556, -0.491281,
		0.190194, 0.582031, 0.790611,
		42.698483, 36.089787, 34.863026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.300438, 35.628773, 34.325157>,  <42.565350, 35.682365, 34.309597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.300438, 35.628773, 34.325157> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.171055, 35.751560, 34.683182>,  <43.093426, 35.825233, 34.897999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.171055, 35.751560, 34.683182>,  <43.300438, 35.628773, 34.325157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.171055, 35.751560, 34.683182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535934, -0.720137, 0.440657,
		0.779838, 0.622231, 0.068420,
		-0.323462, 0.306973, 0.895064,
		43.074017, 35.843651, 34.951702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.921326, 35.625702, 34.690849>,  <43.300438, 35.628773, 34.325157>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.921326, 35.625702, 34.690849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.650063, 35.641506, 34.984390>,  <43.487305, 35.650990, 35.160515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.650063, 35.641506, 34.984390>,  <43.921326, 35.625702, 34.690849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.650063, 35.641506, 34.984390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498752, -0.708652, 0.499057,
		0.539766, 0.704450, 0.460871,
		-0.678159, 0.039514, 0.733853,
		43.446613, 35.653362, 35.204548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.247177, 35.536007, 35.302887>,  <43.921326, 35.625702, 34.690849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.247177, 35.536007, 35.302887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.876312, 35.447384, 35.423740>,  <43.653793, 35.394211, 35.496254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.876312, 35.447384, 35.423740>,  <44.247177, 35.536007, 35.302887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.876312, 35.447384, 35.423740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359081, -0.755618, 0.547816,
		0.106926, 0.616404, 0.780137,
		-0.927161, -0.221556, 0.302134,
		43.598164, 35.380917, 35.514381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.197479, 35.514126, 36.093197>,  <44.247177, 35.536007, 35.302887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.197479, 35.514126, 36.093197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.939281, 35.249298, 35.940880>,  <43.784363, 35.090401, 35.849491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.939281, 35.249298, 35.940880>,  <44.197479, 35.514126, 36.093197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.939281, 35.249298, 35.940880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272169, -0.665240, 0.695255,
		-0.713623, 0.345145, 0.609604,
		-0.645497, -0.662066, -0.380793,
		43.745632, 35.050678, 35.826641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.623352, 35.824188, 36.700603>,  <44.197479, 35.514126, 36.093197>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.623352, 35.824188, 36.700603> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.873310, 35.889297, 36.395180>,  <45.023285, 35.928364, 36.211926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.873310, 35.889297, 36.395180>,  <44.623352, 35.824188, 36.700603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.873310, 35.889297, 36.395180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023495, 0.981503, 0.190001,
		0.780359, -0.100791, 0.617157,
		0.624891, 0.162769, -0.763556,
		45.060776, 35.938129, 36.166115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.121471, 36.127201, 36.956699>,  <44.623352, 35.824188, 36.700603>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.121471, 36.127201, 36.956699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.148045, 36.237968, 36.573261>,  <45.163986, 36.304428, 36.343201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.148045, 36.237968, 36.573261>,  <45.121471, 36.127201, 36.956699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.148045, 36.237968, 36.573261> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145385, 0.947776, 0.283873,
		0.987143, -0.158222, 0.022700,
		0.066429, 0.276923, -0.958593,
		45.167973, 36.321045, 36.285683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.469448, 36.713078, 37.080761>,  <45.121471, 36.127201, 36.956699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.469448, 36.713078, 37.080761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.356831, 36.746326, 36.698383>,  <45.289261, 36.766273, 36.468956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.356831, 36.746326, 36.698383>,  <45.469448, 36.713078, 37.080761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.356831, 36.746326, 36.698383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290114, 0.956990, -0.002234,
		0.914639, -0.277960, -0.293553,
		-0.281548, 0.083121, -0.955940,
		45.272366, 36.771263, 36.411602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.974785, 37.117580, 36.709274>,  <45.469448, 36.713078, 37.080761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.974785, 37.117580, 36.709274> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.643578, 37.152912, 36.487793>,  <45.444855, 37.174110, 36.354904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.643578, 37.152912, 36.487793>,  <45.974785, 37.117580, 36.709274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.643578, 37.152912, 36.487793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104234, 0.994549, 0.002791,
		0.550932, -0.055404, -0.832709,
		-0.828015, 0.088334, -0.553704,
		45.395172, 37.179413, 36.321682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.142200, 37.570858, 36.264393>,  <45.974785, 37.117580, 36.709274>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.142200, 37.570858, 36.264393> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.745010, 37.591393, 36.307026>,  <45.506695, 37.603714, 36.332607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.745010, 37.591393, 36.307026>,  <46.142200, 37.570858, 36.264393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.745010, 37.591393, 36.307026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058358, 0.996253, 0.063825,
		-0.102908, 0.069596, -0.992253,
		-0.992977, 0.051338, 0.106584,
		45.447117, 37.606792, 36.339001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.905758, 38.259644, 35.937561>,  <46.142200, 37.570858, 36.264393>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.905758, 38.259644, 35.937561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.591736, 38.152084, 36.160770>,  <45.403324, 38.087547, 36.294697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.591736, 38.152084, 36.160770>,  <45.905758, 38.259644, 35.937561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.591736, 38.152084, 36.160770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232047, 0.962928, 0.137562,
		-0.574324, -0.021494, -0.818346,
		-0.785051, -0.268900, 0.558020,
		45.356220, 38.071415, 36.328178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.375565, 38.668869, 35.593979>,  <45.905758, 38.259644, 35.937561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.375565, 38.668869, 35.593979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.262646, 38.560196, 35.962002>,  <45.194893, 38.494991, 36.182816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.262646, 38.560196, 35.962002>,  <45.375565, 38.668869, 35.593979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.262646, 38.560196, 35.962002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359343, 0.919182, 0.161171,
		-0.889484, -0.285117, -0.357110,
		-0.282296, -0.271684, 0.920053,
		45.177956, 38.478691, 36.238018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.783463, 38.925358, 35.660530>,  <45.375565, 38.668869, 35.593979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.783463, 38.925358, 35.660530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.872017, 38.860458, 36.045166>,  <44.925148, 38.821518, 36.275948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.872017, 38.860458, 36.045166>,  <44.783463, 38.925358, 35.660530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.872017, 38.860458, 36.045166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427119, 0.870318, 0.245185,
		-0.876674, -0.464995, 0.123376,
		0.221387, -0.162251, 0.961594,
		44.938435, 38.811783, 36.333645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.120239, 39.011372, 36.037960>,  <44.783463, 38.925358, 35.660530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.120239, 39.011372, 36.037960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.442322, 39.067059, 36.268528>,  <44.635571, 39.100471, 36.406868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.442322, 39.067059, 36.268528>,  <44.120239, 39.011372, 36.037960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.442322, 39.067059, 36.268528> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325815, 0.916049, 0.233879,
		-0.495470, -0.376128, 0.782967,
		0.805204, 0.139222, 0.576423,
		44.683884, 39.108826, 36.441456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.909916, 39.326149, 36.597858>,  <44.120239, 39.011372, 36.037960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.909916, 39.326149, 36.597858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.300301, 39.410496, 36.619877>,  <44.534531, 39.461102, 36.633087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.300301, 39.410496, 36.619877>,  <43.909916, 39.326149, 36.597858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.300301, 39.410496, 36.619877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217931, 0.944513, 0.245765,
		-0.000168, -0.251853, 0.967765,
		0.975964, 0.210865, 0.055045,
		44.593090, 39.473755, 36.636391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.016399, 39.756100, 37.226685>,  <43.909916, 39.326149, 36.597858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.016399, 39.756100, 37.226685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.306789, 39.840931, 36.965004>,  <44.481026, 39.891830, 36.807995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.306789, 39.840931, 36.965004>,  <44.016399, 39.756100, 37.226685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.306789, 39.840931, 36.965004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093543, 0.972874, 0.211581,
		0.681324, -0.092408, 0.726125,
		0.725980, 0.212080, -0.654198,
		44.524582, 39.904556, 36.768745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.478481, 40.066517, 37.607780>,  <44.016399, 39.756100, 37.226685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.478481, 40.066517, 37.607780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.596405, 40.175648, 37.241467>,  <44.667160, 40.241127, 37.021679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.596405, 40.175648, 37.241467>,  <44.478481, 40.066517, 37.607780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.596405, 40.175648, 37.241467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237359, 0.949246, 0.206382,
		0.925607, 0.156525, 0.344604,
		0.294810, 0.272823, -0.915781,
		44.684849, 40.257496, 36.966732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.685577, 40.778786, 37.664516>,  <44.478481, 40.066517, 37.607780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.685577, 40.778786, 37.664516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.641716, 40.759914, 37.267376>,  <44.615398, 40.748592, 37.029091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.641716, 40.759914, 37.267376>,  <44.685577, 40.778786, 37.664516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.641716, 40.759914, 37.267376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308098, 0.951289, -0.011177,
		0.945015, 0.304670, -0.118844,
		-0.109650, -0.047179, -0.992850,
		44.608822, 40.745762, 36.969521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.984650, 41.360111, 37.407829>,  <44.685577, 40.778786, 37.664516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.984650, 41.360111, 37.407829> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.732635, 41.257446, 37.114658>,  <44.581429, 41.195847, 36.938755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.732635, 41.257446, 37.114658>,  <44.984650, 41.360111, 37.407829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.732635, 41.257446, 37.114658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351061, 0.935992, -0.026002,
		0.692688, 0.240920, -0.679810,
		-0.630032, -0.256666, -0.732928,
		44.543625, 41.180447, 36.894779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.064243, 41.901417, 36.873203>,  <44.984650, 41.360111, 37.407829>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.064243, 41.901417, 36.873203> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.708153, 41.729176, 36.813774>,  <44.494499, 41.625832, 36.778114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.708153, 41.729176, 36.813774>,  <45.064243, 41.901417, 36.873203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.708153, 41.729176, 36.813774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383009, 0.884151, -0.267546,
		0.246570, -0.181271, -0.952021,
		-0.890229, -0.430601, -0.148576,
		44.441086, 41.599995, 36.769199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.806820, 42.213463, 36.373062>,  <45.064243, 41.901417, 36.873203>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.806820, 42.213463, 36.373062> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.472458, 42.029507, 36.492908>,  <44.271843, 41.919132, 36.564816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.472458, 42.029507, 36.492908>,  <44.806820, 42.213463, 36.373062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.472458, 42.029507, 36.492908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491456, 0.870181, -0.035450,
		-0.244413, -0.176879, -0.953402,
		-0.835903, -0.459891, 0.299612,
		44.221687, 41.891541, 36.582790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.347176, 42.239967, 35.858547>,  <44.806820, 42.213463, 36.373062>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.347176, 42.239967, 35.858547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.137238, 42.239491, 36.199024>,  <44.011272, 42.239204, 36.403313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.137238, 42.239491, 36.199024>,  <44.347176, 42.239967, 35.858547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.137238, 42.239491, 36.199024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241725, 0.959037, -0.147704,
		-0.816151, -0.283278, -0.503638,
		-0.524849, -0.001194, 0.851195,
		43.979782, 42.239132, 36.454384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.813522, 42.564579, 35.716648>,  <44.347176, 42.239967, 35.858547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.813522, 42.564579, 35.716648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.768974, 42.555405, 36.114056>,  <43.742245, 42.549900, 36.352501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.768974, 42.555405, 36.114056>,  <43.813522, 42.564579, 35.716648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.768974, 42.555405, 36.114056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418529, 0.907832, -0.025960,
		-0.901349, -0.418706, -0.110701,
		-0.111368, -0.022933, 0.993515,
		43.735565, 42.548523, 36.412109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.159332, 42.728012, 35.864300>,  <43.813522, 42.564579, 35.716648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.159332, 42.728012, 35.864300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.359859, 42.818371, 36.198402>,  <43.480175, 42.872585, 36.398865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.359859, 42.818371, 36.198402>,  <43.159332, 42.728012, 35.864300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.359859, 42.818371, 36.198402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457420, 0.888592, 0.034221,
		-0.734470, -0.399218, 0.548797,
		0.501318, 0.225897, 0.835255,
		43.510254, 42.886139, 36.448978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.780025, 43.094059, 36.421600>,  <43.159332, 42.728012, 35.864300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.780025, 43.094059, 36.421600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.127750, 43.182861, 36.598240>,  <43.336388, 43.236141, 36.704224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.127750, 43.182861, 36.598240>,  <42.780025, 43.094059, 36.421600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.127750, 43.182861, 36.598240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339232, 0.917778, 0.206411,
		-0.359462, -0.329239, 0.873149,
		0.869315, 0.222003, 0.441595,
		43.388546, 43.249462, 36.730717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.433578, 35.014774, 42.729237> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251015, 34.683052, 42.600277>,  <37.141476, 34.484020, 42.522903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251015, 34.683052, 42.600277>,  <37.433578, 35.014774, 42.729237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251015, 34.683052, 42.600277> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328622, 0.179605, -0.927227,
		0.826858, -0.529145, 0.190554,
		-0.456413, -0.829305, -0.322397,
		37.114090, 34.434261, 42.503559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806820, 34.816219, 42.206932>,  <37.433578, 35.014774, 42.729237>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.806820, 34.816219, 42.206932> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508808, 34.560616, 42.130413>,  <37.330002, 34.407253, 42.084499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508808, 34.560616, 42.130413>,  <37.806820, 34.816219, 42.206932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508808, 34.560616, 42.130413> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310339, -0.078206, -0.947404,
		0.590439, -0.765213, 0.256575,
		-0.745031, -0.639010, -0.191299,
		37.285297, 34.368912, 42.073025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153534, 34.262726, 41.802704>,  <37.806820, 34.816219, 42.206932>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153534, 34.262726, 41.802704> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762283, 34.238632, 41.723068>,  <37.527531, 34.224174, 41.675289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762283, 34.238632, 41.723068>,  <38.153534, 34.262726, 41.802704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762283, 34.238632, 41.723068> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203117, -0.070427, -0.976618,
		0.044807, -0.995697, 0.081122,
		-0.978129, -0.060237, -0.199087,
		37.468845, 34.220562, 41.663342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052399, 33.667484, 41.357861>,  <38.153534, 34.262726, 41.802704>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052399, 33.667484, 41.357861> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729626, 33.896442, 41.299599>,  <37.535961, 34.033817, 41.264641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729626, 33.896442, 41.299599>,  <38.052399, 33.667484, 41.357861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729626, 33.896442, 41.299599> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174152, -0.005061, -0.984706,
		-0.564380, -0.819961, -0.095600,
		-0.806937, 0.572397, -0.145654,
		37.487545, 34.068161, 41.255901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586430, 33.356480, 40.880276>,  <38.052399, 33.667484, 41.357861>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586430, 33.356480, 40.880276> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485920, 33.743404, 40.866535>,  <37.425613, 33.975559, 40.858292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485920, 33.743404, 40.866535>,  <37.586430, 33.356480, 40.880276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485920, 33.743404, 40.866535> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047805, -0.023042, -0.998591,
		-0.966736, -0.252558, -0.040452,
		-0.251270, 0.967307, -0.034349,
		37.410538, 34.033596, 40.856232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206493, 33.432655, 40.291195>,  <37.586430, 33.356480, 40.880276>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206493, 33.432655, 40.291195> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265530, 33.821388, 40.364700>,  <37.300953, 34.054626, 40.408802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265530, 33.821388, 40.364700>,  <37.206493, 33.432655, 40.291195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265530, 33.821388, 40.364700> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100765, 0.170053, -0.980270,
		-0.983902, 0.163195, -0.072828,
		0.147590, 0.971828, 0.183759,
		37.309807, 34.112938, 40.419827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786724, 33.746872, 39.873417>,  <37.206493, 33.432655, 40.291195>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786724, 33.746872, 39.873417> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075287, 34.008457, 39.964550>,  <37.248425, 34.165409, 40.019230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075287, 34.008457, 39.964550>,  <36.786724, 33.746872, 39.873417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075287, 34.008457, 39.964550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009878, 0.338682, -0.940849,
		-0.692440, 0.676486, 0.250788,
		0.721408, 0.653959, 0.227834,
		37.291710, 34.204643, 40.032902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447048, 34.271351, 39.678394>,  <36.786724, 33.746872, 39.873417>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447048, 34.271351, 39.678394> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836678, 34.361664, 39.684196>,  <37.070454, 34.415852, 39.687679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836678, 34.361664, 39.684196>,  <36.447048, 34.271351, 39.678394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836678, 34.361664, 39.684196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092999, 0.458012, -0.884068,
		-0.206254, 0.859794, 0.467133,
		0.974069, 0.225786, 0.014506,
		37.128899, 34.429398, 39.688549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454727, 34.835339, 39.342457>,  <36.447048, 34.271351, 39.678394>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454727, 34.835339, 39.342457> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846912, 34.759472, 39.321617>,  <37.082226, 34.713951, 39.309113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846912, 34.759472, 39.321617>,  <36.454727, 34.835339, 39.342457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846912, 34.759472, 39.321617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048147, 0.488259, -0.871369,
		0.190705, 0.851839, 0.487853,
		0.980466, -0.189663, -0.052100,
		37.141052, 34.702572, 39.305988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830170, 35.415199, 39.026470>,  <36.454727, 34.835339, 39.342457>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830170, 35.415199, 39.026470> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084103, 35.107819, 38.994293>,  <37.236462, 34.923389, 38.974987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084103, 35.107819, 38.994293>,  <36.830170, 35.415199, 39.026470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084103, 35.107819, 38.994293> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135415, 0.213161, -0.967587,
		0.760688, 0.603365, 0.239381,
		0.634835, -0.768448, -0.080444,
		37.274551, 34.877285, 38.970161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491222, 35.761585, 38.617039>,  <36.830170, 35.415199, 39.026470>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491222, 35.761585, 38.617039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471249, 35.364216, 38.575829>,  <37.459263, 35.125793, 38.551102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471249, 35.364216, 38.575829>,  <37.491222, 35.761585, 38.617039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471249, 35.364216, 38.575829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034512, 0.104811, -0.993893,
		0.998156, -0.046072, -0.039518,
		-0.049933, -0.993424, -0.103028,
		37.456268, 35.066189, 38.544922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938126, 35.709919, 38.117233>,  <37.491222, 35.761585, 38.617039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938126, 35.709919, 38.117233> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748055, 35.358261, 38.102779>,  <37.634010, 35.147266, 38.094109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748055, 35.358261, 38.102779>,  <37.938126, 35.709919, 38.117233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748055, 35.358261, 38.102779> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052456, 0.012685, -0.998543,
		0.878324, -0.476382, 0.040089,
		-0.475179, -0.879147, -0.036131,
		37.605499, 35.094517, 38.091942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396557, 35.278412, 37.846725>,  <37.938126, 35.709919, 38.117233>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396557, 35.278412, 37.846725> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015202, 35.175797, 37.783169>,  <37.786388, 35.114227, 37.745037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015202, 35.175797, 37.783169>,  <38.396557, 35.278412, 37.846725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015202, 35.175797, 37.783169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164075, 0.001199, -0.986447,
		0.253253, -0.966533, 0.040949,
		-0.953385, -0.256540, -0.158887,
		37.729187, 35.098835, 37.735504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350674, 34.553490, 37.535172>,  <38.396557, 35.278412, 37.846725>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.350674, 34.553490, 37.535172> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050621, 34.805294, 37.454163>,  <37.870590, 34.956375, 37.405556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050621, 34.805294, 37.454163>,  <38.350674, 34.553490, 37.535172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050621, 34.805294, 37.454163> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364729, 0.138392, -0.920771,
		-0.551610, -0.764566, -0.333414,
		-0.750133, 0.629512, -0.202521,
		37.825581, 34.994148, 37.393406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841560, 33.991436, 37.403683>,  <38.350674, 34.553490, 37.535172>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841560, 33.991436, 37.403683> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984737, 33.737202, 37.130066>,  <39.070644, 33.584663, 36.965897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984737, 33.737202, 37.130066>,  <38.841560, 33.991436, 37.403683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984737, 33.737202, 37.130066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648374, -0.696352, 0.307741,
		-0.671928, 0.333361, -0.661349,
		0.357944, -0.635581, -0.684042,
		39.092121, 33.546528, 36.924854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304283, 33.685463, 36.954517>,  <38.841560, 33.991436, 37.403683>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304283, 33.685463, 36.954517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.607948, 33.426800, 36.984188>,  <38.790146, 33.271603, 37.001991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.607948, 33.426800, 36.984188>,  <38.304283, 33.685463, 36.954517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607948, 33.426800, 36.984188> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645221, -0.732620, 0.216696,
		-0.085787, -0.212367, -0.973417,
		0.759164, -0.646659, 0.074175,
		38.835697, 33.232803, 37.006439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981819, 33.071770, 36.603302>,  <38.304283, 33.685463, 36.954517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981819, 33.071770, 36.603302> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305752, 32.987492, 36.822308>,  <38.500111, 32.936924, 36.953712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305752, 32.987492, 36.822308>,  <37.981819, 33.071770, 36.603302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.305752, 32.987492, 36.822308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553131, -0.585215, 0.592933,
		0.195485, -0.783026, -0.590471,
		0.809834, -0.210699, 0.547517,
		38.548702, 32.924282, 36.986561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992634, 32.361801, 36.694447>,  <37.981819, 33.071770, 36.603302>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.992634, 32.361801, 36.694447> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237850, 32.441635, 37.000217>,  <38.384979, 32.489536, 37.183678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237850, 32.441635, 37.000217>,  <37.992634, 32.361801, 36.694447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237850, 32.441635, 37.000217> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535866, -0.605939, 0.587950,
		0.580540, -0.770068, -0.264517,
		0.613042, 0.199583, 0.764425,
		38.421764, 32.501511, 37.229546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076237, 31.768423, 37.046619>,  <37.992634, 32.361801, 36.694447>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076237, 31.768423, 37.046619> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185635, 32.029232, 37.329479>,  <38.251274, 32.185719, 37.499195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185635, 32.029232, 37.329479>,  <38.076237, 31.768423, 37.046619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185635, 32.029232, 37.329479> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423667, -0.578368, 0.697134,
		0.863543, -0.490261, 0.118060,
		0.273495, 0.652024, 0.707153,
		38.267685, 32.224838, 37.541626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335548, 31.341215, 37.525036>,  <38.076237, 31.768423, 37.046619>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335548, 31.341215, 37.525036> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269928, 31.694445, 37.700886>,  <38.230556, 31.906382, 37.806396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269928, 31.694445, 37.700886>,  <38.335548, 31.341215, 37.525036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269928, 31.694445, 37.700886> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415451, -0.466063, 0.781144,
		0.894699, -0.054491, 0.443333,
		-0.164056, 0.883072, 0.439625,
		38.220711, 31.959366, 37.832775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581116, 31.194281, 38.216606>,  <38.335548, 31.341215, 37.525036>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581116, 31.194281, 38.216606> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340553, 31.513529, 38.202080>,  <38.196217, 31.705078, 38.193363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340553, 31.513529, 38.202080>,  <38.581116, 31.194281, 38.216606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340553, 31.513529, 38.202080> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598399, -0.419864, 0.682373,
		0.529368, 0.432113, 0.730102,
		-0.601406, 0.798118, -0.036314,
		38.160133, 31.752964, 38.191185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569931, 31.560633, 38.881260>,  <38.581116, 31.194281, 38.216606>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569931, 31.560633, 38.881260> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214905, 31.652840, 38.721722>,  <38.001888, 31.708164, 38.625999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214905, 31.652840, 38.721722>,  <38.569931, 31.560633, 38.881260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214905, 31.652840, 38.721722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456913, -0.330110, 0.825989,
		0.058743, 0.915362, 0.398323,
		-0.887570, 0.230520, -0.398850,
		37.948635, 31.721996, 38.602066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.150845, 31.779482, 39.381805>,  <38.569931, 31.560633, 38.881260>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.150845, 31.779482, 39.381805> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867126, 31.706078, 39.109562>,  <37.696896, 31.662035, 38.946217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867126, 31.706078, 39.109562>,  <38.150845, 31.779482, 39.381805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.867126, 31.706078, 39.109562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608768, -0.327322, 0.722677,
		-0.355399, 0.926922, 0.120450,
		-0.709291, -0.183513, -0.680610,
		37.654339, 31.651024, 38.905380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536842, 32.037548, 39.615932>,  <38.150845, 31.779482, 39.381805>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.536842, 32.037548, 39.615932> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.423027, 31.752695, 39.359211>,  <37.354740, 31.581783, 39.205177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.423027, 31.752695, 39.359211>,  <37.536842, 32.037548, 39.615932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.423027, 31.752695, 39.359211> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483091, -0.471746, 0.737617,
		-0.828047, 0.519926, -0.209796,
		-0.284536, -0.712132, -0.641800,
		37.337666, 31.539055, 39.166672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763992, 32.029953, 39.672565>,  <37.536842, 32.037548, 39.615932>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763992, 32.029953, 39.672565> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863842, 31.676641, 39.513817>,  <36.923752, 31.464655, 39.418568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863842, 31.676641, 39.513817>,  <36.763992, 32.029953, 39.672565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863842, 31.676641, 39.513817> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353519, -0.464685, 0.811845,
		-0.901506, -0.062352, -0.428252,
		0.249623, -0.883278, -0.396874,
		36.938728, 31.411657, 39.394756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113510, 31.633469, 39.776436>,  <36.763992, 32.029953, 39.672565>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.113510, 31.633469, 39.776436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406998, 31.383339, 39.670135>,  <36.583092, 31.233261, 39.606358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406998, 31.383339, 39.670135>,  <36.113510, 31.633469, 39.776436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406998, 31.383339, 39.670135> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212737, -0.582885, 0.784212,
		-0.645287, -0.518858, -0.560705,
		0.733721, -0.625325, -0.265747,
		36.627113, 31.195742, 39.590412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824692, 30.932322, 39.651783>,  <36.113510, 31.633469, 39.776436>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824692, 30.932322, 39.651783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209198, 30.873219, 39.744854>,  <36.439903, 30.837757, 39.800697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209198, 30.873219, 39.744854>,  <35.824692, 30.932322, 39.651783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209198, 30.873219, 39.744854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268504, -0.692684, 0.669399,
		0.062262, -0.705944, -0.705526,
		0.961264, -0.147758, 0.232677,
		36.497578, 30.828892, 39.814655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813690, 30.259232, 39.888439>,  <35.824692, 30.932322, 39.651783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813690, 30.259232, 39.888439> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156094, 30.413168, 40.026508>,  <36.361538, 30.505529, 40.109348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156094, 30.413168, 40.026508>,  <35.813690, 30.259232, 39.888439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156094, 30.413168, 40.026508> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146316, -0.460030, 0.875765,
		0.495820, -0.800168, -0.337481,
		0.856010, 0.384843, 0.345169,
		36.412895, 30.528620, 40.130058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007416, 29.732513, 39.293415>,  <35.813690, 30.259232, 39.888439>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007416, 29.732513, 39.293415> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758179, 29.459793, 39.140106>,  <35.608635, 29.296162, 39.048119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758179, 29.459793, 39.140106>,  <36.007416, 29.732513, 39.293415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758179, 29.459793, 39.140106> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122226, 0.399129, -0.908711,
		0.772535, -0.613062, -0.165363,
		-0.623097, -0.681800, -0.383274,
		35.571251, 29.255253, 39.025124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.338886, 29.304003, 38.768784>,  <36.007416, 29.732513, 39.293415>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.338886, 29.304003, 38.768784> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943699, 29.320911, 38.709274>,  <35.706585, 29.331057, 38.673569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943699, 29.320911, 38.709274>,  <36.338886, 29.304003, 38.768784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.943699, 29.320911, 38.709274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154595, 0.297612, -0.942087,
		0.004449, -0.953750, -0.300566,
		-0.987968, 0.042274, -0.148769,
		35.647308, 29.333593, 38.664642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182323, 28.997849, 38.067013>,  <36.338886, 29.304003, 38.768784>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182323, 28.997849, 38.067013> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851238, 29.211161, 38.136868>,  <35.652588, 29.339148, 38.178780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851238, 29.211161, 38.136868>,  <36.182323, 28.997849, 38.067013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851238, 29.211161, 38.136868> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016110, 0.333666, -0.942554,
		-0.560915, -0.777354, -0.284772,
		-0.827716, 0.533280, 0.174636,
		35.602924, 29.371145, 38.189259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864723, 28.995682, 37.412552>,  <36.182323, 28.997849, 38.067013>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864723, 28.995682, 37.412552> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709160, 29.307711, 37.608604>,  <35.615822, 29.494928, 37.726238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709160, 29.307711, 37.608604>,  <35.864723, 28.995682, 37.412552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709160, 29.307711, 37.608604> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076810, 0.502710, -0.861036,
		-0.918067, -0.372515, -0.135592,
		-0.388912, 0.780074, 0.490134,
		35.592487, 29.541733, 37.755646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171246, 29.241062, 37.011887>,  <35.864723, 28.995682, 37.412552>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171246, 29.241062, 37.011887> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286942, 29.548800, 37.239727>,  <35.356361, 29.733442, 37.376431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286942, 29.548800, 37.239727>,  <35.171246, 29.241062, 37.011887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286942, 29.548800, 37.239727> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261275, 0.635892, -0.726207,
		-0.920909, 0.061227, 0.384938,
		0.289242, 0.769346, 0.569602,
		35.373714, 29.779604, 37.410606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668251, 29.714514, 36.888680>,  <35.171246, 29.241062, 37.011887>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668251, 29.714514, 36.888680> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944431, 29.953068, 37.052441>,  <35.110138, 30.096199, 37.150696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944431, 29.953068, 37.052441>,  <34.668251, 29.714514, 36.888680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.944431, 29.953068, 37.052441> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299612, 0.750892, -0.588552,
		-0.658418, 0.283703, 0.697136,
		0.690447, 0.596384, 0.409401,
		35.151566, 30.131983, 37.175262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353649, 30.333506, 37.039524>,  <34.668251, 29.714514, 36.888680>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353649, 30.333506, 37.039524> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746502, 30.404224, 37.013737>,  <34.982216, 30.446655, 36.998264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746502, 30.404224, 37.013737>,  <34.353649, 30.333506, 37.039524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746502, 30.404224, 37.013737> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171581, 0.700622, -0.692596,
		-0.077283, 0.691283, 0.718440,
		0.982134, 0.176796, -0.064465,
		35.041142, 30.457264, 36.994396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302731, 30.978729, 36.762260>,  <34.353649, 30.333506, 37.039524>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302731, 30.978729, 36.762260> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679066, 30.860369, 36.696217>,  <34.904869, 30.789352, 36.656590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679066, 30.860369, 36.696217>,  <34.302731, 30.978729, 36.762260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.679066, 30.860369, 36.696217> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019115, 0.532831, -0.846006,
		0.338307, 0.792801, 0.506966,
		0.940842, -0.295900, -0.165107,
		34.961319, 30.771599, 36.646683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647217, 31.602514, 36.408405>,  <34.302731, 30.978729, 36.762260>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.647217, 31.602514, 36.408405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877735, 31.287403, 36.321423>,  <35.016048, 31.098337, 36.269234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877735, 31.287403, 36.321423>,  <34.647217, 31.602514, 36.408405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877735, 31.287403, 36.321423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002599, 0.267848, -0.963458,
		0.817234, 0.554676, 0.156408,
		0.576300, -0.787777, -0.217453,
		35.050625, 31.051069, 36.256187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244347, 31.813185, 36.117207>,  <34.647217, 31.602514, 36.408405>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244347, 31.813185, 36.117207> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158195, 31.446609, 35.982296>,  <35.106506, 31.226665, 35.901348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158195, 31.446609, 35.982296>,  <35.244347, 31.813185, 36.117207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158195, 31.446609, 35.982296> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004674, 0.344411, -0.938807,
		0.976520, -0.203774, -0.069894,
		-0.215377, -0.916437, -0.337277,
		35.093582, 31.171679, 35.881111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704426, 31.607409, 35.512131>,  <35.244347, 31.813185, 36.117207>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704426, 31.607409, 35.512131> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371529, 31.386497, 35.492683>,  <35.171791, 31.253952, 35.481014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371529, 31.386497, 35.492683>,  <35.704426, 31.607409, 35.512131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371529, 31.386497, 35.492683> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120995, 0.266513, -0.956206,
		0.541048, -0.789912, -0.288627,
		-0.832242, -0.552276, -0.048621,
		35.121857, 31.220816, 35.478096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724804, 31.247921, 34.833050>,  <35.704426, 31.607409, 35.512131>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724804, 31.247921, 34.833050> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342693, 31.276419, 34.947845>,  <35.113426, 31.293518, 35.016724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342693, 31.276419, 34.947845>,  <35.724804, 31.247921, 34.833050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342693, 31.276419, 34.947845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281099, 0.082425, -0.956133,
		-0.091779, -0.994047, -0.058711,
		-0.955280, 0.071249, 0.286990,
		35.056110, 31.297792, 35.033943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.267769, 27.083635, 42.308445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.904293, 27.160080, 42.159977>,  <34.686207, 27.205948, 42.070896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.904293, 27.160080, 42.159977>,  <35.267769, 27.083635, 42.308445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904293, 27.160080, 42.159977> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406051, 0.197968, -0.892150,
		-0.097022, -0.961397, -0.257492,
		-0.908685, 0.191114, -0.371168,
		34.631687, 27.217413, 42.048626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336456, 26.761093, 41.632759>,  <35.267769, 27.083635, 42.308445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336456, 26.761093, 41.632759> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.029976, 27.017406, 41.613441>,  <34.846088, 27.171194, 41.601852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.029976, 27.017406, 41.613441>,  <35.336456, 26.761093, 41.632759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029976, 27.017406, 41.613441> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309369, 0.301960, -0.901726,
		-0.563228, -0.705845, -0.429601,
		-0.766201, 0.640783, -0.048294,
		34.800114, 27.209641, 41.598953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007820, 26.685177, 41.008965>,  <35.336456, 26.761093, 41.632759>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007820, 26.685177, 41.008965> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.896839, 27.051676, 41.124561>,  <34.830250, 27.271574, 41.193920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.896839, 27.051676, 41.124561>,  <35.007820, 26.685177, 41.008965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896839, 27.051676, 41.124561> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154010, 0.339328, -0.927975,
		-0.948315, -0.212960, -0.235258,
		-0.277451, 0.916245, 0.288992,
		34.813602, 27.326550, 41.211258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756542, 26.921021, 40.426357>,  <35.007820, 26.685177, 41.008965>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756542, 26.921021, 40.426357> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.780514, 27.265850, 40.627647>,  <34.794895, 27.472748, 40.748421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.780514, 27.265850, 40.627647>,  <34.756542, 26.921021, 40.426357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780514, 27.265850, 40.627647> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135690, 0.492416, -0.859718,
		-0.988937, 0.119803, -0.087466,
		0.059927, 0.862075, 0.503225,
		34.798492, 27.524473, 40.778614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356476, 27.476496, 40.099449>,  <34.756542, 26.921021, 40.426357>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356476, 27.476496, 40.099449> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.605785, 27.694757, 40.323517>,  <34.755371, 27.825714, 40.457958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.605785, 27.694757, 40.323517>,  <34.356476, 27.476496, 40.099449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605785, 27.694757, 40.323517> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218488, 0.566294, -0.794717,
		-0.750864, 0.617714, 0.233735,
		0.623270, 0.545656, 0.560173,
		34.792767, 27.858454, 40.491570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110195, 28.150318, 40.103180>,  <34.356476, 27.476496, 40.099449>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110195, 28.150318, 40.103180> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.505314, 28.154562, 40.165344>,  <34.742386, 28.157108, 40.202641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.505314, 28.154562, 40.165344>,  <34.110195, 28.150318, 40.103180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505314, 28.154562, 40.165344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118367, 0.597423, -0.793142,
		-0.101259, 0.801856, 0.588875,
		0.987793, 0.010610, 0.155408,
		34.801651, 28.157745, 40.211967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329819, 28.908625, 40.051483>,  <34.110195, 28.150318, 40.103180>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329819, 28.908625, 40.051483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.675449, 28.712767, 40.004787>,  <34.882828, 28.595253, 39.976768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.675449, 28.712767, 40.004787>,  <34.329819, 28.908625, 40.051483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675449, 28.712767, 40.004787> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256858, 0.628349, -0.734303,
		0.432900, 0.604505, 0.668708,
		0.864073, -0.489643, -0.116740,
		34.934669, 28.565874, 39.969765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932571, 29.300863, 40.211548>,  <34.329819, 28.908625, 40.051483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932571, 29.300863, 40.211548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.070587, 29.034988, 39.946476>,  <35.153397, 28.875463, 39.787434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.070587, 29.034988, 39.946476>,  <34.932571, 29.300863, 40.211548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070587, 29.034988, 39.946476> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148166, 0.735755, -0.660841,
		0.926821, 0.129828, 0.352347,
		0.345037, -0.664687, -0.662677,
		35.174099, 28.835583, 39.747673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482327, 29.590132, 39.844826>,  <34.932571, 29.300863, 40.211548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482327, 29.590132, 39.844826> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.384830, 29.284781, 39.605545>,  <35.326332, 29.101570, 39.461979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.384830, 29.284781, 39.605545>,  <35.482327, 29.590132, 39.844826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384830, 29.284781, 39.605545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049971, 0.606097, -0.793820,
		0.968553, -0.223377, -0.109582,
		-0.243738, -0.763381, -0.598199,
		35.311710, 29.055767, 39.426086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234528, 29.649294, 40.092541>,  <35.482327, 29.590132, 39.844826>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234528, 29.649294, 40.092541> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.390141, 29.974899, 40.265068>,  <36.483509, 30.170263, 40.368584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.390141, 29.974899, 40.265068>,  <36.234528, 29.649294, 40.092541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390141, 29.974899, 40.265068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030911, -0.456401, 0.889237,
		0.920705, -0.359276, -0.152393,
		0.389034, 0.814015, 0.431316,
		36.506851, 30.219103, 40.394463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486164, 29.385250, 40.588562>,  <36.234528, 29.649294, 40.092541>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486164, 29.385250, 40.588562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.444618, 29.769938, 40.690002>,  <36.419689, 30.000750, 40.750866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.444618, 29.769938, 40.690002>,  <36.486164, 29.385250, 40.588562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444618, 29.769938, 40.690002> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232827, -0.271404, 0.933880,
		0.966956, 0.037952, 0.252103,
		-0.103865, 0.961717, 0.253599,
		36.413460, 30.058453, 40.766083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625381, 29.275671, 41.169258>,  <36.486164, 29.385250, 40.588562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625381, 29.275671, 41.169258> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.479012, 29.647627, 41.184231>,  <36.391190, 29.870800, 41.193214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.479012, 29.647627, 41.184231>,  <36.625381, 29.275671, 41.169258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479012, 29.647627, 41.184231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306731, -0.158481, 0.938509,
		0.878643, 0.331944, 0.343219,
		-0.365927, 0.929891, 0.037431,
		36.369232, 29.926594, 41.195461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979946, 29.489378, 41.797470>,  <36.625381, 29.275671, 41.169258>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979946, 29.489378, 41.797470> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.661587, 29.722252, 41.731018>,  <36.470570, 29.861977, 41.691147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.661587, 29.722252, 41.731018>,  <36.979946, 29.489378, 41.797470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.661587, 29.722252, 41.731018> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198841, 0.007820, 0.980001,
		0.571842, 0.813018, 0.109539,
		-0.795902, 0.582186, -0.166133,
		36.422817, 29.896908, 41.681179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984913, 29.893635, 42.323845>,  <36.979946, 29.489378, 41.797470>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984913, 29.893635, 42.323845> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.608437, 29.927719, 42.193066>,  <36.382549, 29.948170, 42.114597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.608437, 29.927719, 42.193066>,  <36.984913, 29.893635, 42.323845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608437, 29.927719, 42.193066> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331936, -0.052593, 0.941835,
		0.063058, 0.994974, 0.077784,
		-0.941192, 0.085209, -0.326952,
		36.326080, 29.953281, 42.094978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666588, 30.430685, 42.753712>,  <36.984913, 29.893635, 42.323845>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666588, 30.430685, 42.753712> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.348598, 30.249939, 42.591805>,  <36.157806, 30.141491, 42.494659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.348598, 30.249939, 42.591805>,  <36.666588, 30.430685, 42.753712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348598, 30.249939, 42.591805> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442758, -0.023956, 0.896321,
		-0.414712, 0.891765, -0.181022,
		-0.794971, -0.451864, -0.404771,
		36.110107, 30.114380, 42.470375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107315, 30.784634, 42.980785>,  <36.666588, 30.430685, 42.753712>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107315, 30.784634, 42.980785> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.993805, 30.414368, 42.880692>,  <35.925697, 30.192207, 42.820637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.993805, 30.414368, 42.880692>,  <36.107315, 30.784634, 42.980785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.993805, 30.414368, 42.880692> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516751, -0.072199, 0.853086,
		-0.807738, 0.371393, -0.457850,
		-0.283774, -0.925664, -0.250236,
		35.908672, 30.136669, 42.805622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504375, 30.676474, 43.324635>,  <36.107315, 30.784634, 42.980785>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504375, 30.676474, 43.324635> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.601559, 30.302639, 43.220695>,  <35.659870, 30.078339, 43.158333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.601559, 30.302639, 43.220695>,  <35.504375, 30.676474, 43.324635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601559, 30.302639, 43.220695> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295175, -0.326398, 0.897962,
		-0.924035, -0.141471, -0.355168,
		0.242962, -0.934586, -0.259845,
		35.674446, 30.022263, 43.142742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901764, 30.376488, 43.463737>,  <35.504375, 30.676474, 43.324635>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901764, 30.376488, 43.463737> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.138367, 30.054407, 43.446873>,  <35.280327, 29.861158, 43.436752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.138367, 30.054407, 43.446873>,  <34.901764, 30.376488, 43.463737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138367, 30.054407, 43.446873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356275, -0.307914, 0.882189,
		-0.723320, -0.506797, -0.469004,
		0.591504, -0.805200, -0.042161,
		35.315819, 29.812847, 43.434223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554653, 29.642725, 43.444881>,  <34.901764, 30.376488, 43.463737>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554653, 29.642725, 43.444881> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.915295, 29.629923, 43.617432>,  <35.131680, 29.622242, 43.720963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.915295, 29.629923, 43.617432>,  <34.554653, 29.642725, 43.444881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915295, 29.629923, 43.617432> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389732, -0.492752, 0.778013,
		0.187659, -0.869581, -0.456742,
		0.901606, -0.032006, 0.431373,
		35.185776, 29.620321, 43.746845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614494, 28.931980, 43.753735>,  <34.554653, 29.642725, 43.444881>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614494, 28.931980, 43.753735> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.899574, 29.140823, 43.941120>,  <35.070621, 29.266129, 44.053551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.899574, 29.140823, 43.941120>,  <34.614494, 28.931980, 43.753735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899574, 29.140823, 43.941120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249878, -0.435065, 0.865032,
		0.655453, -0.733568, -0.179609,
		0.712701, 0.522107, 0.468467,
		35.113384, 29.297455, 44.081661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718056, 28.422714, 44.218388>,  <34.614494, 28.931980, 43.753735>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718056, 28.422714, 44.218388> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.925751, 28.738512, 44.349289>,  <35.050365, 28.927990, 44.427830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.925751, 28.738512, 44.349289>,  <34.718056, 28.422714, 44.218388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.925751, 28.738512, 44.349289> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058692, -0.414958, 0.907945,
		0.852614, -0.452229, -0.261798,
		0.519234, 0.789493, 0.327257,
		35.081520, 28.975359, 44.447468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190773, 28.175493, 44.695629>,  <34.718056, 28.422714, 44.218388>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190773, 28.175493, 44.695629> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.158043, 28.553644, 44.821846>,  <35.138405, 28.780535, 44.897575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.158043, 28.553644, 44.821846>,  <35.190773, 28.175493, 44.695629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158043, 28.553644, 44.821846> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254718, -0.325928, 0.910434,
		0.963547, -0.005878, 0.267474,
		-0.081826, 0.945376, 0.315544,
		35.133495, 28.837257, 44.916508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712585, 28.261572, 45.257729>,  <35.190773, 28.175493, 44.695629>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712585, 28.261572, 45.257729> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.453812, 28.563496, 45.301064>,  <35.298546, 28.744650, 45.327065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.453812, 28.563496, 45.301064>,  <35.712585, 28.261572, 45.257729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453812, 28.563496, 45.301064> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045504, -0.180032, 0.982608,
		0.761186, 0.630754, 0.150816,
		-0.646936, 0.754810, 0.108336,
		35.259731, 28.789938, 45.333565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.624474, 30.681545, 45.384605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.815969, 30.341368, 45.297379>,  <29.930866, 30.137260, 45.245041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.815969, 30.341368, 45.297379>,  <29.624474, 30.681545, 45.384605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.815969, 30.341368, 45.297379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526363, 0.476818, -0.703979,
		0.702675, 0.222237, 0.675913,
		0.478738, -0.850444, -0.218070,
		29.959591, 30.086235, 45.231956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.322006, 30.854374, 45.207348>,  <29.624474, 30.681545, 45.384605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.322006, 30.854374, 45.207348> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.291349, 30.489073, 45.047298>,  <30.272955, 30.269892, 44.951271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.291349, 30.489073, 45.047298>,  <30.322006, 30.854374, 45.207348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.291349, 30.489073, 45.047298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526129, 0.303839, -0.794273,
		0.846944, -0.271392, 0.457201,
		-0.076644, -0.913252, -0.400121,
		30.268356, 30.215097, 44.927261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.885662, 30.854446, 44.812351>,  <30.322006, 30.854374, 45.207348>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.885662, 30.854446, 44.812351> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.684837, 30.546013, 44.655704>,  <30.564342, 30.360952, 44.561714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.684837, 30.546013, 44.655704>,  <30.885662, 30.854446, 44.812351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.684837, 30.546013, 44.655704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293483, 0.274048, -0.915841,
		0.813512, -0.574742, 0.088711,
		-0.502062, -0.771083, -0.391618,
		30.534220, 30.314688, 44.538219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.407019, 30.428188, 44.649345>,  <30.885662, 30.854446, 44.812351>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.407019, 30.428188, 44.649345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.083506, 30.335409, 44.433170>,  <30.889397, 30.279741, 44.303467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.083506, 30.335409, 44.433170>,  <31.407019, 30.428188, 44.649345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.083506, 30.335409, 44.433170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489283, 0.244474, -0.837159,
		0.326298, -0.941506, -0.084239,
		-0.808784, -0.231947, -0.540434,
		30.840870, 30.265825, 44.271042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653227, 30.007444, 44.109802>,  <31.407019, 30.428188, 44.649345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653227, 30.007444, 44.109802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.313009, 30.131193, 43.939690>,  <31.108879, 30.205442, 43.837624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.313009, 30.131193, 43.939690>,  <31.653227, 30.007444, 44.109802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.313009, 30.131193, 43.939690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472928, 0.096240, -0.875829,
		-0.230028, -0.946059, -0.228167,
		-0.850544, 0.309372, -0.425279,
		31.057846, 30.224005, 43.812107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.664469, 29.640167, 43.455910>,  <31.653227, 30.007444, 44.109802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.664469, 29.640167, 43.455910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.437389, 29.969330, 43.446575>,  <31.301142, 30.166828, 43.440975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.437389, 29.969330, 43.446575>,  <31.664469, 29.640167, 43.455910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437389, 29.969330, 43.446575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397806, 0.249395, -0.882922,
		-0.720743, -0.510515, -0.468939,
		-0.567696, 0.822907, -0.023336,
		31.267080, 30.216202, 43.439575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.783243, 29.766327, 42.834179>,  <31.664469, 29.640167, 43.455910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.783243, 29.766327, 42.834179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.606335, 30.103746, 42.956047>,  <31.500189, 30.306198, 43.029167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.606335, 30.103746, 42.956047>,  <31.783243, 29.766327, 42.834179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.606335, 30.103746, 42.956047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439825, 0.500039, -0.746000,
		-0.781633, -0.195932, -0.592166,
		-0.442271, 0.843547, 0.304671,
		31.473654, 30.356812, 43.047447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.454952, 29.995617, 42.254665>,  <31.783243, 29.766327, 42.834179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.454952, 29.995617, 42.254665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.483025, 30.318747, 42.488758>,  <31.499868, 30.512625, 42.629211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.483025, 30.318747, 42.488758>,  <31.454952, 29.995617, 42.254665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.483025, 30.318747, 42.488758> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103021, 0.577668, -0.809745,
		-0.992200, 0.117118, -0.042682,
		0.070180, 0.807826, 0.585228,
		31.504078, 30.561094, 42.664326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.126450, 30.546886, 41.893112>,  <31.454952, 29.995617, 42.254665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.126450, 30.546886, 41.893112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.344427, 30.751265, 42.159035>,  <31.475214, 30.873892, 42.318588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.344427, 30.751265, 42.159035>,  <31.126450, 30.546886, 41.893112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.344427, 30.751265, 42.159035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172710, 0.707475, -0.685311,
		-0.820491, 0.488276, 0.297290,
		0.544946, 0.510946, 0.664807,
		31.507912, 30.904549, 42.358479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.852989, 31.294180, 41.938297>,  <31.126450, 30.546886, 41.893112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.852989, 31.294180, 41.938297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.240335, 31.285648, 42.037743>,  <31.472744, 31.280529, 42.097412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.240335, 31.285648, 42.037743>,  <30.852989, 31.294180, 41.938297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.240335, 31.285648, 42.037743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125644, 0.902497, -0.411962,
		-0.215588, 0.430167, 0.876629,
		0.968368, -0.021329, 0.248615,
		31.530846, 31.279249, 42.112328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.976267, 32.007172, 42.081074>,  <30.852989, 31.294180, 41.938297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.976267, 32.007172, 42.081074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.338017, 31.847181, 42.021576>,  <31.555067, 31.751186, 41.985878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.338017, 31.847181, 42.021576>,  <30.976267, 32.007172, 42.081074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.338017, 31.847181, 42.021576> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285591, 0.826276, -0.485496,
		0.317089, 0.396591, 0.861493,
		0.904374, -0.399980, -0.148740,
		31.609329, 31.727188, 41.976955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466885, 32.609333, 42.086895>,  <30.976267, 32.007172, 42.081074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.466885, 32.609333, 42.086895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.698267, 32.323265, 41.929962>,  <31.837095, 32.151623, 41.835804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.698267, 32.323265, 41.929962>,  <31.466885, 32.609333, 42.086895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.698267, 32.323265, 41.929962> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336522, 0.647356, -0.683874,
		0.743064, 0.263561, 0.615135,
		0.578454, -0.715169, -0.392333,
		31.871803, 32.108715, 41.812263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.120419, 32.932549, 41.971775>,  <31.466885, 32.609333, 42.086895>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.120419, 32.932549, 41.971775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.072605, 32.614731, 41.733646>,  <32.043915, 32.424042, 41.590767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.072605, 32.614731, 41.733646>,  <32.120419, 32.932549, 41.971775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.072605, 32.614731, 41.733646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176920, 0.572980, -0.800245,
		0.976939, -0.200984, 0.072078,
		-0.119537, -0.794543, -0.595325,
		32.036743, 32.376369, 41.555050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666271, 32.984306, 41.478096>,  <32.120419, 32.932549, 41.971775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666271, 32.984306, 41.478096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.424255, 32.732117, 41.283600>,  <32.279045, 32.580803, 41.166901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.424255, 32.732117, 41.283600>,  <32.666271, 32.984306, 41.478096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.424255, 32.732117, 41.283600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142261, 0.515276, -0.845135,
		0.783386, -0.580510, -0.222068,
		-0.605036, -0.630475, -0.486244,
		32.242744, 32.542973, 41.137726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325016, 33.140839, 41.612476>,  <32.666271, 32.984306, 41.478096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325016, 33.140839, 41.612476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.575615, 33.418919, 41.753437>,  <33.725975, 33.585766, 41.838013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.575615, 33.418919, 41.753437>,  <33.325016, 33.140839, 41.612476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575615, 33.418919, 41.753437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261641, -0.238313, 0.935281,
		0.734193, -0.678158, 0.032591,
		0.626502, 0.695204, 0.352401,
		33.763565, 33.627480, 41.859158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706814, 32.836384, 42.131958>,  <33.325016, 33.140839, 41.612476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706814, 32.836384, 42.131958> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.743557, 33.222885, 42.228222>,  <33.765602, 33.454784, 42.285980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.743557, 33.222885, 42.228222>,  <33.706814, 32.836384, 42.131958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743557, 33.222885, 42.228222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222284, -0.215687, 0.950825,
		0.970645, -0.140840, 0.194969,
		0.091862, 0.966252, 0.240662,
		33.771114, 33.512760, 42.300419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.208702, 32.881237, 42.664959>,  <33.706814, 32.836384, 42.131958>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.208702, 32.881237, 42.664959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.001957, 33.221992, 42.698738>,  <33.877911, 33.426445, 42.719006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.001957, 33.221992, 42.698738>,  <34.208702, 32.881237, 42.664959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.001957, 33.221992, 42.698738> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163297, -0.194950, 0.967124,
		0.840348, 0.486082, 0.239874,
		-0.516864, 0.851892, 0.084450,
		33.846897, 33.477558, 42.724072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499393, 33.234840, 43.218258>,  <34.208702, 32.881237, 42.664959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499393, 33.234840, 43.218258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.134350, 33.393192, 43.177410>,  <33.915325, 33.488205, 43.152901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.134350, 33.393192, 43.177410>,  <34.499393, 33.234840, 43.218258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134350, 33.393192, 43.177410> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171525, -0.143995, 0.974600,
		0.371122, 0.906941, 0.199315,
		-0.912605, 0.395883, -0.102123,
		33.860569, 33.511955, 43.146774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407024, 33.524590, 43.812061>,  <34.499393, 33.234840, 43.218258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407024, 33.524590, 43.812061> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.023266, 33.520683, 43.699306>,  <33.793011, 33.518341, 43.631653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.023266, 33.520683, 43.699306>,  <34.407024, 33.524590, 43.812061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023266, 33.520683, 43.699306> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281546, -0.027074, 0.959166,
		-0.017000, 0.999586, 0.023225,
		-0.959397, -0.009767, -0.281890,
		33.735447, 33.517754, 43.614738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961800, 33.863106, 44.402847>,  <34.407024, 33.524590, 43.812061>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961800, 33.863106, 44.402847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.715881, 33.638535, 44.181282>,  <33.568329, 33.503792, 44.048344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.715881, 33.638535, 44.181282>,  <33.961800, 33.863106, 44.402847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715881, 33.638535, 44.181282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529185, -0.227116, 0.817546,
		-0.584798, 0.795748, -0.157471,
		-0.614796, -0.561431, -0.553915,
		33.531441, 33.470104, 44.015106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187710, 33.915489, 44.629757>,  <33.961800, 33.863106, 44.402847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187710, 33.915489, 44.629757> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.181389, 33.569717, 44.428753>,  <33.177597, 33.362255, 44.308151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.181389, 33.569717, 44.428753>,  <33.187710, 33.915489, 44.629757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181389, 33.569717, 44.428753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603917, -0.392292, 0.693823,
		-0.796890, 0.314441, -0.515842,
		-0.015806, -0.864426, -0.502511,
		33.176647, 33.310390, 44.278000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.478413, 33.687317, 44.686470>,  <33.187710, 33.915489, 44.629757>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.478413, 33.687317, 44.686470> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.692570, 33.371063, 44.567638>,  <32.821064, 33.181313, 44.496338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.692570, 33.371063, 44.567638>,  <32.478413, 33.687317, 44.686470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.692570, 33.371063, 44.567638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547492, -0.592705, 0.590723,
		-0.643126, -0.153618, -0.750194,
		0.535389, -0.790633, -0.297079,
		32.853188, 33.133873, 44.478516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.989237, 33.066929, 44.658215>,  <32.478413, 33.687317, 44.686470>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.989237, 33.066929, 44.658215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.355206, 32.909088, 44.692177>,  <32.574787, 32.814384, 44.712555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.355206, 32.909088, 44.692177>,  <31.989237, 33.066929, 44.658215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.355206, 32.909088, 44.692177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352651, -0.679146, 0.643737,
		-0.196353, -0.618913, -0.760521,
		0.914922, -0.394598, 0.084908,
		32.629681, 32.790710, 44.717648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.831827, 32.355648, 44.844803>,  <31.989237, 33.066929, 44.658215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.831827, 32.355648, 44.844803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.223125, 32.390160, 44.920269>,  <32.457905, 32.410866, 44.965549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.223125, 32.390160, 44.920269>,  <31.831827, 32.355648, 44.844803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.223125, 32.390160, 44.920269> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055928, -0.766082, 0.640306,
		0.199777, -0.636927, -0.744589,
		0.978244, 0.086274, 0.188668,
		32.516598, 32.416042, 44.976868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.026596, 31.620216, 44.775879>,  <31.831827, 32.355648, 44.844803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.026596, 31.620216, 44.775879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.291714, 31.824879, 44.994572>,  <32.450787, 31.947676, 45.125786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.291714, 31.824879, 44.994572>,  <32.026596, 31.620216, 44.775879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291714, 31.824879, 44.994572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164408, -0.612885, 0.772879,
		0.730528, -0.602148, -0.322098,
		0.662796, 0.511654, 0.546727,
		32.490551, 31.978374, 45.158588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.414120, 31.032089, 45.105015>,  <32.026596, 31.620216, 44.775879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.414120, 31.032089, 45.105015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.481358, 31.357368, 45.327888>,  <32.521698, 31.552536, 45.461613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.481358, 31.357368, 45.327888>,  <32.414120, 31.032089, 45.105015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.481358, 31.357368, 45.327888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078440, -0.552399, 0.829881,
		0.982645, -0.183202, -0.029067,
		0.168093, 0.813199, 0.557182,
		32.531784, 31.601328, 45.495045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926003, 30.836969, 45.562504>,  <32.414120, 31.032089, 45.105015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926003, 30.836969, 45.562504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.749104, 31.151117, 45.735760>,  <32.642963, 31.339605, 45.839714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.749104, 31.151117, 45.735760>,  <32.926003, 30.836969, 45.562504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749104, 31.151117, 45.735760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111275, -0.527250, 0.842393,
		0.889964, 0.324348, 0.320567,
		-0.442247, 0.785370, 0.433142,
		32.616428, 31.386728, 45.865704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352516, 30.978941, 46.196922>,  <32.926003, 30.836969, 45.562504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352516, 30.978941, 46.196922> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.963722, 31.072809, 46.202267>,  <32.730446, 31.129131, 46.205475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.963722, 31.072809, 46.202267>,  <33.352516, 30.978941, 46.196922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.963722, 31.072809, 46.202267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122489, -0.554223, 0.823306,
		0.200614, 0.798603, 0.567440,
		-0.971983, 0.234672, 0.013364,
		32.672127, 31.143211, 46.206276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968174, 31.447096, 46.472786>,  <33.352516, 30.978941, 46.196922>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968174, 31.447096, 46.472786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.313408, 31.497564, 46.668404>,  <34.520550, 31.527845, 46.785774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.313408, 31.497564, 46.668404>,  <33.968174, 31.447096, 46.472786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313408, 31.497564, 46.668404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348888, 0.551187, -0.757939,
		-0.365185, 0.824787, 0.431701,
		0.863086, 0.126172, 0.489043,
		34.572334, 31.535416, 46.815117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129276, 32.248657, 46.494095>,  <33.968174, 31.447096, 46.472786>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129276, 32.248657, 46.494095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.480846, 32.062878, 46.537514>,  <34.691788, 31.951410, 46.563564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.480846, 32.062878, 46.537514>,  <34.129276, 32.248657, 46.494095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480846, 32.062878, 46.537514> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410824, 0.621557, -0.667001,
		0.242317, 0.630838, 0.737107,
		0.878923, -0.464447, 0.108549,
		34.744522, 31.923544, 46.570080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554028, 32.728523, 46.655315>,  <34.129276, 32.248657, 46.494095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554028, 32.728523, 46.655315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.753666, 32.425407, 46.487190>,  <34.873447, 32.243538, 46.386314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.753666, 32.425407, 46.487190>,  <34.554028, 32.728523, 46.655315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753666, 32.425407, 46.487190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332699, 0.615438, -0.714526,
		0.800137, 0.216776, 0.559276,
		0.499092, -0.757789, -0.420313,
		34.903393, 32.198071, 46.361095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.109844, 33.051098, 46.551483>,  <34.554028, 32.728523, 46.655315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.109844, 33.051098, 46.551483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.129013, 32.731377, 46.311878>,  <35.140514, 32.539543, 46.168114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.129013, 32.731377, 46.311878>,  <35.109844, 33.051098, 46.551483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129013, 32.731377, 46.311878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339827, 0.576972, -0.742712,
		0.939266, -0.167971, 0.299273,
		0.047918, -0.799305, -0.599012,
		35.143387, 32.491585, 46.132175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837246, 32.936363, 46.475147>,  <35.109844, 33.051098, 46.551483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837246, 32.936363, 46.475147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.645187, 32.779335, 46.161373>,  <35.529953, 32.685116, 45.973106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.645187, 32.779335, 46.161373>,  <35.837246, 32.936363, 46.475147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.645187, 32.779335, 46.161373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487211, 0.624291, -0.610644,
		0.729441, -0.675386, -0.108485,
		-0.480147, -0.392574, -0.784439,
		35.501144, 32.661564, 45.926041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431999, 32.752151, 46.018528>,  <35.837246, 32.936363, 46.475147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431999, 32.752151, 46.018528> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.108799, 32.751629, 45.782856>,  <35.914879, 32.751316, 45.641453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.108799, 32.751629, 45.782856>,  <36.431999, 32.752151, 46.018528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108799, 32.751629, 45.782856> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530809, 0.432349, -0.728915,
		0.255686, -0.901705, -0.348644,
		-0.808002, -0.001310, -0.589178,
		35.866398, 32.751236, 45.606102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667900, 32.455097, 45.434013>,  <36.431999, 32.752151, 46.018528>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667900, 32.455097, 45.434013> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.326382, 32.636383, 45.331539>,  <36.121471, 32.745155, 45.270054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.326382, 32.636383, 45.331539>,  <36.667900, 32.455097, 45.434013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326382, 32.636383, 45.331539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461513, 0.431171, -0.775305,
		-0.240918, -0.780185, -0.577295,
		-0.853794, 0.453214, -0.256189,
		36.070244, 32.772346, 45.254681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660736, 32.422600, 44.715370>,  <36.667900, 32.455097, 45.434013>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660736, 32.422600, 44.715370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.386822, 32.704281, 44.790379>,  <36.222473, 32.873291, 44.835384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.386822, 32.704281, 44.790379>,  <36.660736, 32.422600, 44.715370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386822, 32.704281, 44.790379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272350, 0.485974, -0.830455,
		-0.675939, -0.517614, -0.524579,
		-0.684786, 0.704206, 0.187516,
		36.181385, 32.915543, 44.846634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419495, 32.535442, 44.117832>,  <36.660736, 32.422600, 44.715370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.419495, 32.535442, 44.117832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.332691, 32.869865, 44.319393>,  <36.280609, 33.070518, 44.440331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.332691, 32.869865, 44.319393>,  <36.419495, 32.535442, 44.117832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.332691, 32.869865, 44.319393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235197, 0.545775, -0.804247,
		-0.947411, -0.056016, -0.315078,
		-0.217012, 0.836058, 0.503898,
		36.267586, 33.120682, 44.470562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836121, 32.897423, 43.763519>,  <36.419495, 32.535442, 44.117832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836121, 32.897423, 43.763519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.974960, 33.207897, 43.974064>,  <36.058262, 33.394180, 44.100391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.974960, 33.207897, 43.974064>,  <35.836121, 32.897423, 43.763519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974960, 33.207897, 43.974064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037332, 0.549376, -0.834741,
		-0.937086, 0.309387, 0.161710,
		0.347098, 0.776187, 0.526362,
		36.079090, 33.440754, 44.131973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506134, 33.463417, 43.431854>,  <35.836121, 32.897423, 43.763519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506134, 33.463417, 43.431854> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.812515, 33.617859, 43.637470>,  <35.996346, 33.710522, 43.760838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.812515, 33.617859, 43.637470>,  <35.506134, 33.463417, 43.431854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812515, 33.617859, 43.637470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202803, 0.613635, -0.763101,
		-0.610066, 0.688751, 0.391716,
		0.765957, 0.386101, 0.514038,
		36.042301, 33.733688, 43.791683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438007, 34.258118, 43.401531>,  <35.506134, 33.463417, 43.431854>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438007, 34.258118, 43.401531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.806931, 34.113453, 43.455997>,  <36.028286, 34.026653, 43.488678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.806931, 34.113453, 43.455997>,  <35.438007, 34.258118, 43.401531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806931, 34.113453, 43.455997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309621, 0.480728, -0.820387,
		0.231248, 0.798811, 0.555360,
		0.922312, -0.361665, 0.136161,
		36.083626, 34.004955, 43.496845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932049, 34.730942, 43.073509>,  <35.438007, 34.258118, 43.401531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.932049, 34.730942, 43.073509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.223526, 34.458401, 43.101116>,  <36.398411, 34.294876, 43.117680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.223526, 34.458401, 43.101116>,  <35.932049, 34.730942, 43.073509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223526, 34.458401, 43.101116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440314, 0.388936, -0.809229,
		0.524530, 0.620067, 0.583425,
		0.728692, -0.681355, 0.069016,
		36.442135, 34.253994, 43.121822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390610, 35.038666, 42.691025>,  <35.932049, 34.730942, 43.073509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390610, 35.038666, 42.691025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.544609, 34.670082, 42.711803>,  <36.637009, 34.448933, 42.724270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.544609, 34.670082, 42.711803>,  <36.390610, 35.038666, 42.691025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544609, 34.670082, 42.711803> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505519, 0.163452, -0.847192,
		0.772159, 0.352424, 0.528741,
		0.384995, -0.921456, 0.051946,
		36.660107, 34.393646, 42.727386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.449734, 37.136940, 42.565475> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.272852, 37.489124, 42.633873>,  <30.166723, 37.700436, 42.674911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.272852, 37.489124, 42.633873>,  <30.449734, 37.136940, 42.565475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.272852, 37.489124, 42.633873> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655678, -0.187256, -0.731452,
		-0.611998, -0.435567, 0.660106,
		-0.442205, 0.880463, 0.170992,
		30.140190, 37.753262, 42.685169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.710058, 37.045353, 42.543396>,  <30.449734, 37.136940, 42.565475>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.710058, 37.045353, 42.543396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.775328, 37.428112, 42.447296>,  <29.814489, 37.657768, 42.389637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.775328, 37.428112, 42.447296>,  <29.710058, 37.045353, 42.543396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.775328, 37.428112, 42.447296> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759401, -0.033637, -0.649752,
		-0.629828, 0.288468, 0.721181,
		0.163175, 0.956898, -0.240249,
		29.824280, 37.715183, 42.375221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.109650, 37.511719, 42.536999>,  <29.710058, 37.045353, 42.543396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.109650, 37.511719, 42.536999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.406698, 37.563042, 42.274078>,  <29.584929, 37.593834, 42.116325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.406698, 37.563042, 42.274078>,  <29.109650, 37.511719, 42.536999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.406698, 37.563042, 42.274078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596741, -0.318730, -0.736418,
		-0.303991, 0.939121, -0.160129,
		0.742624, 0.128309, -0.657303,
		29.629486, 37.601536, 42.076889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.791830, 37.695118, 41.918842>,  <29.109650, 37.511719, 42.536999>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.791830, 37.695118, 41.918842> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.156284, 37.633457, 41.765968>,  <29.374958, 37.596462, 41.674244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.156284, 37.633457, 41.765968>,  <28.791830, 37.695118, 41.918842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.156284, 37.633457, 41.765968> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410990, -0.271755, -0.870194,
		0.030280, 0.949940, -0.310960,
		0.911137, -0.154151, -0.382187,
		29.429625, 37.587212, 41.651314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.738609, 38.093082, 41.281841>,  <28.791830, 37.695118, 41.918842>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.738609, 38.093082, 41.281841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.013260, 37.803539, 41.254787>,  <29.178049, 37.629814, 41.238556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.013260, 37.803539, 41.254787>,  <28.738609, 38.093082, 41.281841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.013260, 37.803539, 41.254787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487650, -0.389566, -0.781304,
		0.539206, 0.569444, -0.620476,
		0.686625, -0.723859, -0.067633,
		29.219248, 37.586380, 41.234497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.847191, 38.042561, 40.535927>,  <28.738609, 38.093082, 41.281841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.847191, 38.042561, 40.535927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.973734, 37.698097, 40.695087>,  <29.049660, 37.491421, 40.790585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.973734, 37.698097, 40.695087>,  <28.847191, 38.042561, 40.535927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.973734, 37.698097, 40.695087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224716, -0.475535, -0.850511,
		0.921640, 0.179652, -0.343956,
		0.316359, -0.861157, 0.397901,
		29.068642, 37.439751, 40.814457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.289049, 37.701218, 40.102596>,  <28.847191, 38.042561, 40.535927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.289049, 37.701218, 40.102596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.165117, 37.394791, 40.327858>,  <29.090757, 37.210934, 40.463013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.165117, 37.394791, 40.327858>,  <29.289049, 37.701218, 40.102596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.165117, 37.394791, 40.327858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147091, -0.546546, -0.824410,
		0.939345, -0.338261, 0.056654,
		-0.309830, -0.766072, 0.563151,
		29.072168, 37.164970, 40.496803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.599419, 37.042866, 39.791267>,  <29.289049, 37.701218, 40.102596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.599419, 37.042866, 39.791267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.270882, 36.965797, 40.006035>,  <29.073759, 36.919556, 40.134895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.270882, 36.965797, 40.006035>,  <29.599419, 37.042866, 39.791267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.270882, 36.965797, 40.006035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335921, -0.597352, -0.728236,
		0.461040, -0.778490, 0.425905,
		-0.821340, -0.192675, 0.536914,
		29.024479, 36.907993, 40.167110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.445210, 36.359619, 39.650108>,  <29.599419, 37.042866, 39.791267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.445210, 36.359619, 39.650108> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.098480, 36.437092, 39.833893>,  <28.890442, 36.483574, 39.944164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.098480, 36.437092, 39.833893>,  <29.445210, 36.359619, 39.650108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.098480, 36.437092, 39.833893> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486840, -0.527832, -0.695975,
		0.107724, -0.826972, 0.551827,
		-0.866823, 0.193678, 0.459463,
		28.838432, 36.495193, 39.971733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.008305, 35.713486, 39.781948>,  <29.445210, 36.359619, 39.650108>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.008305, 35.713486, 39.781948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.744501, 36.014164, 39.781925>,  <28.586220, 36.194572, 39.781914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.744501, 36.014164, 39.781925>,  <29.008305, 35.713486, 39.781948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.744501, 36.014164, 39.781925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504418, -0.442610, -0.741390,
		-0.557325, -0.488925, 0.671075,
		-0.659509, 0.751697, -0.000055,
		28.546648, 36.239674, 39.781910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.435825, 35.333698, 39.687550>,  <29.008305, 35.713486, 39.781948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.435825, 35.333698, 39.687550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.362261, 35.711472, 39.578583>,  <28.318121, 35.938137, 39.513203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.362261, 35.711472, 39.578583>,  <28.435825, 35.333698, 39.687550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.362261, 35.711472, 39.578583> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508950, -0.328600, -0.795608,
		-0.840920, -0.007674, 0.541105,
		-0.183913, 0.944438, -0.272421,
		28.307087, 35.994804, 39.496857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.823933, 35.363396, 39.521412>,  <28.435825, 35.333698, 39.687550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.823933, 35.363396, 39.521412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.921173, 35.703884, 39.335369>,  <27.979517, 35.908176, 39.223743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.921173, 35.703884, 39.335369>,  <27.823933, 35.363396, 39.521412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.921173, 35.703884, 39.335369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563104, -0.266579, -0.782208,
		-0.789820, 0.452060, 0.414519,
		0.243103, 0.851221, -0.465106,
		27.994104, 35.959251, 39.195839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.151625, 35.609264, 39.307686>,  <27.823933, 35.363396, 39.521412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.151625, 35.609264, 39.307686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.435507, 35.791355, 39.092617>,  <27.605837, 35.900608, 38.963577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.435507, 35.791355, 39.092617>,  <27.151625, 35.609264, 39.307686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.435507, 35.791355, 39.092617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543767, -0.131278, -0.828905,
		-0.447925, 0.880644, 0.154369,
		0.709705, 0.455228, -0.537668,
		27.648418, 35.927925, 38.931316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.677671, 35.973240, 38.893700>,  <27.151625, 35.609264, 39.307686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.677671, 35.973240, 38.893700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.039442, 36.000324, 38.725208>,  <27.256504, 36.016575, 38.624115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.039442, 36.000324, 38.725208>,  <26.677671, 35.973240, 38.893700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.039442, 36.000324, 38.725208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402156, -0.194307, -0.894715,
		-0.142430, 0.978601, -0.148505,
		0.904425, 0.067712, -0.421225,
		27.310770, 36.020638, 38.598839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.573599, 36.441959, 38.335724>,  <26.677671, 35.973240, 38.893700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.573599, 36.441959, 38.335724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.896152, 36.223484, 38.245026>,  <27.089685, 36.092400, 38.190605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.896152, 36.223484, 38.245026>,  <26.573599, 36.441959, 38.335724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.896152, 36.223484, 38.245026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452690, -0.323368, -0.830966,
		0.380544, 0.772727, -0.508015,
		0.806386, -0.546193, -0.226750,
		27.138069, 36.059628, 38.177002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.768286, 36.594067, 37.573589>,  <26.573599, 36.441959, 38.335724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.768286, 36.594067, 37.573589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.953705, 36.255421, 37.678173>,  <27.064957, 36.052231, 37.740925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.953705, 36.255421, 37.678173>,  <26.768286, 36.594067, 37.573589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.953705, 36.255421, 37.678173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213650, -0.393168, -0.894300,
		0.859929, 0.358687, -0.363132,
		0.463546, -0.846618, 0.261463,
		27.092768, 36.001434, 37.756611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.112806, 36.437347, 36.985352>,  <26.768286, 36.594067, 37.573589>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.112806, 36.437347, 36.985352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.113642, 36.103775, 37.206097>,  <27.114143, 35.903629, 37.338543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.113642, 36.103775, 37.206097>,  <27.112806, 36.437347, 36.985352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.113642, 36.103775, 37.206097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050635, -0.551244, -0.832806,
		0.998715, -0.026204, -0.043378,
		0.002089, -0.833933, 0.551862,
		27.114269, 35.853596, 37.371655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.805748, 36.039509, 36.886955>,  <27.112806, 36.437347, 36.985352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.805748, 36.039509, 36.886955> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.486652, 35.822453, 36.992142>,  <27.295195, 35.692219, 37.055252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.486652, 35.822453, 36.992142>,  <27.805748, 36.039509, 36.886955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.486652, 35.822453, 36.992142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016217, -0.416624, -0.908934,
		0.602785, -0.729357, 0.323556,
		-0.797739, -0.542645, 0.262963,
		27.247332, 35.659660, 37.071030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.047827, 35.387741, 36.594009>,  <27.805748, 36.039509, 36.886955>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.047827, 35.387741, 36.594009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.654793, 35.411385, 36.664478>,  <27.418972, 35.425571, 36.706760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.654793, 35.411385, 36.664478>,  <28.047827, 35.387741, 36.594009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.654793, 35.411385, 36.664478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184465, -0.195837, -0.963131,
		-0.022431, -0.978853, 0.203330,
		-0.982583, 0.059111, 0.176171,
		27.360018, 35.429119, 36.717331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.794346, 35.092400, 36.621304>,  <28.047827, 35.387741, 36.594009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.794346, 35.092400, 36.621304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.802937, 35.071148, 36.221962>,  <28.808092, 35.058395, 35.982357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.802937, 35.071148, 36.221962>,  <28.794346, 35.092400, 36.621304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.802937, 35.071148, 36.221962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679755, 0.733034, -0.024388,
		0.733125, -0.678114, 0.051861,
		0.021478, -0.053132, -0.998356,
		28.809380, 35.055206, 35.922455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.489408, 35.072357, 36.396210>,  <28.794346, 35.092400, 36.621304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.489408, 35.072357, 36.396210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.319063, 35.219898, 36.065735>,  <29.216856, 35.308422, 35.867451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.319063, 35.219898, 36.065735>,  <29.489408, 35.072357, 36.396210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.319063, 35.219898, 36.065735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626546, 0.778989, 0.024825,
		0.652747, -0.507073, -0.562849,
		-0.425865, 0.368855, -0.826187,
		29.191303, 35.330555, 35.817879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.991833, 35.390625, 36.083424>,  <29.489408, 35.072357, 36.396210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.991833, 35.390625, 36.083424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.675104, 35.570423, 35.918030>,  <29.485065, 35.678303, 35.818794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.675104, 35.570423, 35.918030>,  <29.991833, 35.390625, 36.083424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.675104, 35.570423, 35.918030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480188, 0.876533, 0.033314,
		0.377405, -0.172171, -0.909902,
		-0.791824, 0.449497, -0.413482,
		29.437557, 35.705273, 35.793983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.257971, 35.621357, 35.462250>,  <29.991833, 35.390625, 36.083424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.257971, 35.621357, 35.462250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.943113, 35.837826, 35.580597>,  <29.754198, 35.967709, 35.651604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.943113, 35.837826, 35.580597>,  <30.257971, 35.621357, 35.462250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.943113, 35.837826, 35.580597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586169, 0.805621, 0.085907,
		-0.191864, 0.241047, -0.951359,
		-0.787143, 0.541175, 0.295864,
		29.706970, 36.000179, 35.669357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.466862, 36.277752, 35.358772>,  <30.257971, 35.621357, 35.462250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.466862, 36.277752, 35.358772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.134335, 36.375462, 35.558468>,  <29.934818, 36.434090, 35.678284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.134335, 36.375462, 35.558468>,  <30.466862, 36.277752, 35.358772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.134335, 36.375462, 35.558468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320543, 0.944524, 0.071601,
		-0.454053, 0.219550, -0.863501,
		-0.831317, 0.244278, 0.499239,
		29.884939, 36.448746, 35.708241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.201633, 36.910225, 35.071274>,  <30.466862, 36.277752, 35.358772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.201633, 36.910225, 35.071274> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.035965, 36.894718, 35.435024>,  <29.936563, 36.885414, 35.653275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.035965, 36.894718, 35.435024>,  <30.201633, 36.910225, 35.071274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.035965, 36.894718, 35.435024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166801, 0.978940, 0.117702,
		-0.894785, 0.200433, -0.398982,
		-0.414171, -0.038767, 0.909373,
		29.911715, 36.883087, 35.707836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.827337, 37.556377, 35.131863>,  <30.201633, 36.910225, 35.071274>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.827337, 37.556377, 35.131863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.895685, 37.419628, 35.501495>,  <29.936695, 37.337578, 35.723274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.895685, 37.419628, 35.501495>,  <29.827337, 37.556377, 35.131863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.895685, 37.419628, 35.501495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107050, 0.938762, 0.327515,
		-0.979461, 0.042960, 0.197005,
		0.170871, -0.341878, 0.924079,
		29.946947, 37.317066, 35.778721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.548433, 38.018219, 35.647526>,  <29.827337, 37.556377, 35.131863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.548433, 38.018219, 35.647526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.806944, 37.806698, 35.867596>,  <29.962051, 37.679787, 35.999638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.806944, 37.806698, 35.867596>,  <29.548433, 38.018219, 35.647526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.806944, 37.806698, 35.867596> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409437, 0.848699, 0.334771,
		-0.643961, 0.008907, 0.765006,
		0.646278, -0.528801, 0.550176,
		30.000828, 37.648056, 36.032650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.489243, 38.272202, 36.322933>,  <29.548433, 38.018219, 35.647526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.489243, 38.272202, 36.322933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.839993, 38.080185, 36.333199>,  <30.050442, 37.964977, 36.339359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.839993, 38.080185, 36.333199>,  <29.489243, 38.272202, 36.322933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.839993, 38.080185, 36.333199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438393, 0.820427, 0.367030,
		-0.197246, -0.310587, 0.929855,
		0.876873, -0.480037, 0.025666,
		30.103054, 37.936172, 36.340897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.635942, 38.248348, 36.990314>,  <29.489243, 38.272202, 36.322933>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.635942, 38.248348, 36.990314> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.977219, 38.215401, 36.784294>,  <30.181984, 38.195633, 36.660683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.977219, 38.215401, 36.784294>,  <29.635942, 38.248348, 36.990314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.977219, 38.215401, 36.784294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423518, 0.685781, 0.591893,
		0.304463, -0.723133, 0.619985,
		0.853190, -0.082366, -0.515055,
		30.233175, 38.190689, 36.629776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.079985, 38.423069, 37.476540>,  <29.635942, 38.248348, 36.990314>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.079985, 38.423069, 37.476540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.310167, 38.426762, 37.149429>,  <30.448277, 38.428978, 36.953163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.310167, 38.426762, 37.149429>,  <30.079985, 38.423069, 37.476540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.310167, 38.426762, 37.149429> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568181, 0.714700, 0.407891,
		0.588233, -0.699371, 0.406033,
		0.575459, 0.009235, -0.817779,
		30.482805, 38.429531, 36.904095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.762823, 38.284187, 37.714741>,  <30.079985, 38.423069, 37.476540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.762823, 38.284187, 37.714741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.791916, 38.461529, 37.357384>,  <30.809372, 38.567936, 37.142971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.791916, 38.461529, 37.357384>,  <30.762823, 38.284187, 37.714741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.791916, 38.461529, 37.357384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650040, 0.658291, 0.379606,
		0.756411, -0.608348, -0.240322,
		0.072730, 0.443357, -0.893389,
		30.813734, 38.594536, 37.089367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440405, 38.347931, 37.637524>,  <30.762823, 38.284187, 37.714741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440405, 38.347931, 37.637524> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.252140, 38.608200, 37.399162>,  <31.139181, 38.764362, 37.256145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.252140, 38.608200, 37.399162>,  <31.440405, 38.347931, 37.637524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.252140, 38.608200, 37.399162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587281, 0.735071, 0.338780,
		0.658468, -0.190513, -0.728097,
		-0.470661, 0.650673, -0.595905,
		31.110941, 38.803402, 37.220390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.998671, 38.774700, 37.355801>,  <31.440405, 38.347931, 37.637524>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.998671, 38.774700, 37.355801> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.655315, 38.975365, 37.312889>,  <31.449303, 39.095764, 37.287144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.655315, 38.975365, 37.312889>,  <31.998671, 38.774700, 37.355801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.655315, 38.975365, 37.312889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426648, 0.814228, 0.393705,
		0.284855, 0.292182, -0.912955,
		-0.858387, 0.501660, -0.107278,
		31.397799, 39.125862, 37.280704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.258514, 39.403599, 37.166668>,  <31.998671, 38.774700, 37.355801>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.258514, 39.403599, 37.166668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.889448, 39.481331, 37.299885>,  <31.668007, 39.527969, 37.379814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.889448, 39.481331, 37.299885>,  <32.258514, 39.403599, 37.166668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.889448, 39.481331, 37.299885> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311380, 0.884947, 0.346282,
		-0.227428, 0.423206, -0.877025,
		-0.922669, 0.194334, 0.333040,
		31.612648, 39.539631, 37.399796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.097836, 40.150002, 37.153999>,  <32.258514, 39.403599, 37.166668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.097836, 40.150002, 37.153999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.798584, 40.024559, 37.387909>,  <31.619034, 39.949291, 37.528255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.798584, 40.024559, 37.387909>,  <32.097836, 40.150002, 37.153999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.798584, 40.024559, 37.387909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003124, 0.882921, 0.469511,
		-0.663549, 0.349427, -0.661516,
		-0.748126, -0.313610, 0.584770,
		31.574146, 39.930477, 37.563339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.558874, 40.661144, 37.178730>,  <32.097836, 40.150002, 37.153999>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.558874, 40.661144, 37.178730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.495302, 40.469471, 37.524014>,  <31.457159, 40.354469, 37.731182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.495302, 40.469471, 37.524014>,  <31.558874, 40.661144, 37.178730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.495302, 40.469471, 37.524014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018667, 0.872706, 0.487889,
		-0.987114, 0.093653, -0.129752,
		-0.158928, -0.479180, 0.863208,
		31.447624, 40.325718, 37.782974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.075327, 41.142593, 37.582436>,  <31.558874, 40.661144, 37.178730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.075327, 41.142593, 37.582436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.247744, 40.899757, 37.849461>,  <31.351194, 40.754055, 38.009678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.247744, 40.899757, 37.849461>,  <31.075327, 41.142593, 37.582436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.247744, 40.899757, 37.849461> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083164, 0.763404, 0.640546,
		-0.898491, -0.220584, 0.379547,
		0.431042, -0.607089, 0.667567,
		31.377056, 40.717632, 38.049732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.905972, 41.478558, 38.262611>,  <31.075327, 41.142593, 37.582436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.905972, 41.478558, 38.262611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.176144, 41.196400, 38.348595>,  <31.338247, 41.027103, 38.400185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.176144, 41.196400, 38.348595>,  <30.905972, 41.478558, 38.262611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.176144, 41.196400, 38.348595> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506437, 0.655603, 0.560095,
		-0.536020, -0.269439, 0.800053,
		0.675429, -0.705399, 0.214962,
		31.378773, 40.984779, 38.413082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.008310, 41.470436, 38.985886>,  <30.905972, 41.478558, 38.262611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.008310, 41.470436, 38.985886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.339960, 41.293190, 38.849533>,  <31.538950, 41.186844, 38.767719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.339960, 41.293190, 38.849533>,  <31.008310, 41.470436, 38.985886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.339960, 41.293190, 38.849533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557822, 0.615059, 0.557258,
		-0.037266, -0.652188, 0.757141,
		0.829123, -0.443117, -0.340884,
		31.588697, 41.160255, 38.747269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.377892, 41.268978, 39.617523>,  <31.008310, 41.470436, 38.985886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.377892, 41.268978, 39.617523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.637568, 41.285854, 39.313744>,  <31.793373, 41.295982, 39.131474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.637568, 41.285854, 39.313744>,  <31.377892, 41.268978, 39.617523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.637568, 41.285854, 39.313744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651179, 0.485165, 0.583593,
		0.393085, -0.873404, 0.287489,
		0.649192, 0.042195, -0.759453,
		31.832325, 41.298512, 39.085907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.006229, 40.998127, 39.900269>,  <31.377892, 41.268978, 39.617523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.006229, 40.998127, 39.900269> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.133148, 41.237823, 39.606266>,  <32.209297, 41.381641, 39.429863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.133148, 41.237823, 39.606266>,  <32.006229, 40.998127, 39.900269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.133148, 41.237823, 39.606266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733350, 0.336362, 0.590811,
		0.601267, -0.726477, -0.332729,
		0.317294, 0.599242, -0.735006,
		32.228336, 41.417595, 39.385765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.728203, 40.963703, 39.807789>,  <32.006229, 40.998127, 39.900269>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.728203, 40.963703, 39.807789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.645035, 41.320629, 39.647522>,  <32.595135, 41.534786, 39.551361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.645035, 41.320629, 39.647522>,  <32.728203, 40.963703, 39.807789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645035, 41.320629, 39.647522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822115, 0.381366, 0.422714,
		0.529998, -0.241507, -0.812881,
		-0.207917, 0.892320, -0.400670,
		32.582661, 41.588326, 39.527321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.957718, 29.610283, 46.112942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.577202, 29.511587, 46.039009>,  <35.348892, 29.452370, 45.994648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.577202, 29.511587, 46.039009>,  <35.957718, 29.610283, 46.112942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577202, 29.511587, 46.039009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031941, -0.517431, 0.855129,
		-0.306632, 0.819381, 0.484347,
		-0.951292, -0.246739, -0.184833,
		35.291813, 29.437565, 45.983559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665554, 29.495617, 46.708107>,  <35.957718, 29.610283, 46.112942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665554, 29.495617, 46.708107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.380474, 29.307516, 46.499905>,  <35.209427, 29.194656, 46.374985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.380474, 29.307516, 46.499905>,  <35.665554, 29.495617, 46.708107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380474, 29.307516, 46.499905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325564, -0.435515, 0.839246,
		-0.621343, 0.767588, 0.157295,
		-0.712700, -0.470250, -0.520503,
		35.166664, 29.166441, 46.343754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127319, 29.608524, 47.123081>,  <35.665554, 29.495617, 46.708107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127319, 29.608524, 47.123081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.056801, 29.291943, 46.888981>,  <35.014488, 29.101994, 46.748520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.056801, 29.291943, 46.888981>,  <35.127319, 29.608524, 47.123081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056801, 29.291943, 46.888981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209165, -0.550864, 0.807959,
		-0.961857, 0.264853, -0.068431,
		-0.176295, -0.791455, -0.585251,
		35.003914, 29.054506, 46.713406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415863, 29.355160, 47.183895>,  <35.127319, 29.608524, 47.123081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415863, 29.355160, 47.183895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.632549, 29.047497, 47.048283>,  <34.762562, 28.862900, 46.966915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.632549, 29.047497, 47.048283>,  <34.415863, 29.355160, 47.183895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632549, 29.047497, 47.048283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261824, -0.537677, 0.801469,
		-0.798745, -0.345401, -0.492651,
		0.541715, -0.769157, -0.339032,
		34.795063, 28.816750, 46.946571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010670, 28.831486, 47.345127>,  <34.415863, 29.355160, 47.183895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010670, 28.831486, 47.345127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.368748, 28.661509, 47.291378>,  <34.583595, 28.559523, 47.259129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.368748, 28.661509, 47.291378>,  <34.010670, 28.831486, 47.345127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368748, 28.661509, 47.291378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216400, -0.678012, 0.702475,
		-0.389620, -0.599770, -0.698908,
		0.895191, -0.424942, -0.134377,
		34.637306, 28.534025, 47.251064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958767, 28.040882, 47.441322>,  <34.010670, 28.831486, 47.345127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958767, 28.040882, 47.441322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.357262, 28.074368, 47.432316>,  <34.596359, 28.094458, 47.426914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.357262, 28.074368, 47.432316>,  <33.958767, 28.040882, 47.441322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.357262, 28.074368, 47.432316> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072688, -0.665201, 0.743117,
		0.047234, -0.741956, -0.668782,
		0.996236, 0.083713, -0.022511,
		34.656132, 28.099482, 47.425564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.162334, 27.433554, 47.494453>,  <33.958767, 28.040882, 47.441322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.162334, 27.433554, 47.494453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.468582, 27.655653, 47.624393>,  <34.652328, 27.788914, 47.702358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.468582, 27.655653, 47.624393>,  <34.162334, 27.433554, 47.494453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468582, 27.655653, 47.624393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068805, -0.572762, 0.816829,
		0.639607, -0.603026, -0.476720,
		0.765617, 0.555250, 0.324852,
		34.698269, 27.822227, 47.721848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597252, 26.918785, 47.858734>,  <34.162334, 27.433554, 47.494453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597252, 26.918785, 47.858734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.731598, 27.271152, 47.992104>,  <34.812206, 27.482573, 48.072124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.731598, 27.271152, 47.992104>,  <34.597252, 26.918785, 47.858734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731598, 27.271152, 47.992104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099407, -0.385164, 0.917479,
		0.936649, -0.275007, -0.216934,
		0.335869, 0.880920, 0.333426,
		34.832359, 27.535429, 48.092133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141991, 26.755447, 48.279686>,  <34.597252, 26.918785, 47.858734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141991, 26.755447, 48.279686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.055325, 27.129105, 48.393127>,  <35.003326, 27.353298, 48.461193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.055325, 27.129105, 48.393127>,  <35.141991, 26.755447, 48.279686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055325, 27.129105, 48.393127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059311, -0.277374, 0.958930,
		0.974443, 0.224587, 0.004692,
		-0.216665, 0.934144, 0.283605,
		34.990326, 27.409348, 48.478210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614933, 26.967594, 48.858875>,  <35.141991, 26.755447, 48.279686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614933, 26.967594, 48.858875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.305012, 27.219873, 48.876301>,  <35.119061, 27.371241, 48.886757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.305012, 27.219873, 48.876301>,  <35.614933, 26.967594, 48.858875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305012, 27.219873, 48.876301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144965, -0.244322, 0.958797,
		0.615356, 0.736564, 0.280731,
		-0.774804, 0.630698, 0.043569,
		35.072571, 27.409082, 48.889370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766655, 27.290567, 49.425602>,  <35.614933, 26.967594, 48.858875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.766655, 27.290567, 49.425602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.371750, 27.312159, 49.365726>,  <35.134808, 27.325113, 49.329803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.371750, 27.312159, 49.365726>,  <35.766655, 27.290567, 49.425602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371750, 27.312159, 49.365726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159012, -0.369291, 0.915609,
		-0.005855, 0.927745, 0.373169,
		-0.987259, 0.053977, -0.149685,
		35.075573, 27.328352, 49.320820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515713, 27.581688, 50.062778>,  <35.766655, 27.290567, 49.425602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515713, 27.581688, 50.062778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.212219, 27.393452, 49.882614>,  <35.030125, 27.280510, 49.774513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.212219, 27.393452, 49.882614>,  <35.515713, 27.581688, 50.062778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212219, 27.393452, 49.882614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306081, -0.352814, 0.884216,
		-0.575014, 0.808745, 0.123653,
		-0.758731, -0.470589, -0.450414,
		34.984600, 27.252275, 49.747490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836189, 27.731329, 50.299328>,  <35.515713, 27.581688, 50.062778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836189, 27.731329, 50.299328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.809780, 27.365616, 50.139462>,  <34.793934, 27.146189, 50.043541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.809780, 27.365616, 50.139462>,  <34.836189, 27.731329, 50.299328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.809780, 27.365616, 50.139462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342503, -0.355436, 0.869688,
		-0.937194, 0.194307, -0.289676,
		-0.066025, -0.914281, -0.399663,
		34.789974, 27.091331, 50.019562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526108, 27.662296, 50.908489>,  <34.836189, 27.731329, 50.299328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526108, 27.662296, 50.908489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.510147, 27.599863, 51.303265>,  <34.500568, 27.562403, 51.540131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.510147, 27.599863, 51.303265>,  <34.526108, 27.662296, 50.908489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510147, 27.599863, 51.303265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988532, 0.150138, -0.016226,
		-0.145645, -0.976266, -0.160286,
		-0.039906, -0.156084, 0.986937,
		34.498177, 27.553038, 51.599346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641567, 28.390919, 51.133549>,  <34.526108, 27.662296, 50.908489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641567, 28.390919, 51.133549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.266422, 28.514851, 51.196056>,  <34.041336, 28.589211, 51.233559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.266422, 28.514851, 51.196056>,  <34.641567, 28.390919, 51.133549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266422, 28.514851, 51.196056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179023, 0.817782, -0.546976,
		-0.297261, -0.485013, -0.822434,
		-0.937863, 0.309830, 0.156266,
		33.985062, 28.607800, 51.242935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316704, 28.506706, 50.506222>,  <34.641567, 28.390919, 51.133549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316704, 28.506706, 50.506222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.156052, 28.749441, 50.780579>,  <34.059662, 28.895082, 50.945190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.156052, 28.749441, 50.780579>,  <34.316704, 28.506706, 50.506222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156052, 28.749441, 50.780579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186165, 0.787410, -0.587646,
		-0.896682, -0.108325, -0.429217,
		-0.401627, 0.606837, 0.685890,
		34.035564, 28.931492, 50.986347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.788769, 28.840683, 50.134346>,  <34.316704, 28.506706, 50.506222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.788769, 28.840683, 50.134346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.878372, 29.072960, 50.447426>,  <33.932133, 29.212326, 50.635273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.878372, 29.072960, 50.447426>,  <33.788769, 28.840683, 50.134346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878372, 29.072960, 50.447426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077122, 0.811151, -0.579729,
		-0.971531, 0.069501, 0.226490,
		0.224009, 0.580692, 0.782698,
		33.945576, 29.247168, 50.682236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427414, 29.382143, 50.037861>,  <33.788769, 28.840683, 50.134346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427414, 29.382143, 50.037861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.693722, 29.533037, 50.295368>,  <33.853508, 29.623573, 50.449875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.693722, 29.533037, 50.295368>,  <33.427414, 29.382143, 50.037861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693722, 29.533037, 50.295368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148751, 0.778364, -0.609937,
		-0.731179, 0.501840, 0.462097,
		0.665770, 0.377236, 0.643773,
		33.893452, 29.646208, 50.488499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173264, 30.065151, 50.144085>,  <33.427414, 29.382143, 50.037861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173264, 30.065151, 50.144085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.561119, 30.057701, 50.241623>,  <33.793831, 30.053230, 50.300144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.561119, 30.057701, 50.241623>,  <33.173264, 30.065151, 50.144085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561119, 30.057701, 50.241623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166861, 0.779324, -0.603996,
		-0.178783, 0.626344, 0.758768,
		0.969636, -0.018625, 0.243842,
		33.852009, 30.052114, 50.314777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361809, 30.818413, 50.243336>,  <33.173264, 30.065151, 50.144085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361809, 30.818413, 50.243336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.679188, 30.581606, 50.186825>,  <33.869614, 30.439522, 50.152920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.679188, 30.581606, 50.186825>,  <33.361809, 30.818413, 50.243336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679188, 30.581606, 50.186825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459608, 0.734967, -0.498583,
		0.399000, 0.330669, 0.855253,
		0.793448, -0.592015, -0.141274,
		33.917221, 30.404001, 50.144444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903625, 31.322308, 50.258114>,  <33.361809, 30.818413, 50.243336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903625, 31.322308, 50.258114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.075603, 31.000761, 50.093700>,  <34.178791, 30.807833, 49.995052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.075603, 31.000761, 50.093700>,  <33.903625, 31.322308, 50.258114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075603, 31.000761, 50.093700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401315, 0.577968, -0.710562,
		0.808760, 0.140549, 0.571098,
		0.429946, -0.803864, -0.411034,
		34.204586, 30.759602, 49.970390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673862, 31.533188, 50.112797>,  <33.903625, 31.322308, 50.258114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673862, 31.533188, 50.112797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.559856, 31.224558, 49.885311>,  <34.491451, 31.039379, 49.748817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.559856, 31.224558, 49.885311>,  <34.673862, 31.533188, 50.112797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559856, 31.224558, 49.885311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373240, 0.457159, -0.807278,
		0.882869, -0.442354, 0.157685,
		-0.285016, -0.771575, -0.568716,
		34.474350, 30.993086, 49.714695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280514, 31.468559, 49.568539>,  <34.673862, 31.533188, 50.112797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280514, 31.468559, 49.568539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.959892, 31.263399, 49.445610>,  <34.767521, 31.140303, 49.371853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.959892, 31.263399, 49.445610>,  <35.280514, 31.468559, 49.568539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959892, 31.263399, 49.445610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210728, 0.238684, -0.947958,
		0.559560, -0.824600, -0.083235,
		-0.801552, -0.512899, -0.307324,
		34.719425, 31.109529, 49.353413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466553, 31.193790, 48.911564>,  <35.280514, 31.468559, 49.568539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466553, 31.193790, 48.911564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.071903, 31.161114, 48.855145>,  <34.835114, 31.141508, 48.821293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.071903, 31.161114, 48.855145>,  <35.466553, 31.193790, 48.911564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071903, 31.161114, 48.855145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117301, 0.244958, -0.962412,
		0.113169, -0.966086, -0.232100,
		-0.986627, -0.081690, -0.141045,
		34.775913, 31.136606, 48.812832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284592, 30.620064, 48.438602>,  <35.466553, 31.193790, 48.911564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284592, 30.620064, 48.438602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.975822, 30.874224, 48.446606>,  <34.790562, 31.026720, 48.451408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.975822, 30.874224, 48.446606>,  <35.284592, 30.620064, 48.438602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975822, 30.874224, 48.446606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044730, 0.085682, -0.995318,
		-0.634140, -0.767414, -0.094561,
		-0.771923, 0.635400, 0.020008,
		34.744244, 31.064844, 48.452606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939957, 30.430569, 47.794537>,  <35.284592, 30.620064, 48.438602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939957, 30.430569, 47.794537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.781796, 30.784426, 47.893379>,  <34.686901, 30.996740, 47.952686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.781796, 30.784426, 47.893379>,  <34.939957, 30.430569, 47.794537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.781796, 30.784426, 47.893379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010604, 0.273414, -0.961838,
		-0.918448, -0.377689, -0.117488,
		-0.395399, 0.884645, 0.247111,
		34.663177, 31.049820, 47.967514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235874, 30.498953, 47.505268>,  <34.939957, 30.430569, 47.794537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.235874, 30.498953, 47.505268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.425659, 30.846004, 47.564747>,  <34.539528, 31.054235, 47.600433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.425659, 30.846004, 47.564747>,  <34.235874, 30.498953, 47.505268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425659, 30.846004, 47.564747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065807, 0.203408, -0.976880,
		-0.877814, 0.453705, 0.153605,
		0.474460, 0.867627, 0.148698,
		34.567997, 31.106293, 47.609356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934242, 30.907120, 47.022739>,  <34.235874, 30.498953, 47.505268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934242, 30.907120, 47.022739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.245518, 31.127714, 47.142929>,  <34.432285, 31.260071, 47.215042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.245518, 31.127714, 47.142929>,  <33.934242, 30.907120, 47.022739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245518, 31.127714, 47.142929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071203, 0.397877, -0.914671,
		-0.623979, 0.733183, 0.270357,
		0.778190, 0.551486, 0.300472,
		34.478973, 31.293159, 47.233070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346378, 31.250856, 46.863174>,  <33.934242, 30.907120, 47.022739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.346378, 31.250856, 46.863174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.970989, 31.184706, 46.741901>,  <32.745754, 31.145016, 46.669136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.970989, 31.184706, 46.741901>,  <33.346378, 31.250856, 46.863174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970989, 31.184706, 46.741901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199693, -0.456409, 0.867072,
		-0.281769, 0.874267, 0.395302,
		-0.938472, -0.165375, -0.303187,
		32.689449, 31.135094, 46.650944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949257, 31.246531, 47.459076>,  <33.346378, 31.250856, 46.863174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949257, 31.246531, 47.459076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.659447, 31.081970, 47.237873>,  <32.485561, 30.983234, 47.105152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.659447, 31.081970, 47.237873>,  <32.949257, 31.246531, 47.459076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659447, 31.081970, 47.237873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320996, -0.508612, 0.798921,
		-0.609943, 0.756349, 0.236443,
		-0.724521, -0.411399, -0.553010,
		32.442089, 30.958549, 47.071972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.303017, 31.379517, 47.695160>,  <32.949257, 31.246531, 47.459076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.303017, 31.379517, 47.695160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.203751, 31.057024, 47.480347>,  <32.144192, 30.863529, 47.351460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.203751, 31.057024, 47.480347>,  <32.303017, 31.379517, 47.695160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203751, 31.057024, 47.480347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462202, -0.388658, 0.797066,
		-0.851342, 0.446021, -0.276190,
		-0.248165, -0.806232, -0.537033,
		32.129303, 30.815155, 47.319237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.726343, 31.261806, 47.816189>,  <32.303017, 31.379517, 47.695160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.726343, 31.261806, 47.816189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.818821, 30.901426, 47.669308>,  <31.874308, 30.685198, 47.581181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.818821, 30.901426, 47.669308>,  <31.726343, 31.261806, 47.816189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.818821, 30.901426, 47.669308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541067, -0.432743, 0.721097,
		-0.808576, 0.031966, -0.587523,
		0.231196, -0.900951, -0.367201,
		31.888180, 30.631142, 47.559147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.103916, 30.896406, 47.802231>,  <31.726343, 31.261806, 47.816189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.103916, 30.896406, 47.802231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.409351, 30.639582, 47.829624>,  <31.592613, 30.485487, 47.846062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.409351, 30.639582, 47.829624>,  <31.103916, 30.896406, 47.802231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.409351, 30.639582, 47.829624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388977, -0.372738, 0.842475,
		-0.515392, -0.669944, -0.534365,
		0.763589, -0.642060, 0.068487,
		31.638428, 30.446964, 47.850170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.810532, 30.318516, 47.929802>,  <31.103916, 30.896406, 47.802231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.810532, 30.318516, 47.929802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.176708, 30.223289, 48.059597>,  <31.396414, 30.166155, 48.137474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.176708, 30.223289, 48.059597>,  <30.810532, 30.318516, 47.929802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.176708, 30.223289, 48.059597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401224, -0.602701, 0.689761,
		0.031360, -0.761628, -0.647255,
		0.915443, -0.238064, 0.324484,
		31.451342, 30.151871, 48.156940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.765728, 29.615414, 48.100216>,  <30.810532, 30.318516, 47.929802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.765728, 29.615414, 48.100216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.093584, 29.738285, 48.293640>,  <31.290298, 29.812008, 48.409695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.093584, 29.738285, 48.293640>,  <30.765728, 29.615414, 48.100216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.093584, 29.738285, 48.293640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272387, -0.533600, 0.800672,
		0.503978, -0.787979, -0.353689,
		0.819642, 0.307180, 0.483558,
		31.339478, 29.830439, 48.438709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.663197, 28.842890, 47.742371>,  <30.765728, 29.615414, 48.100216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.663197, 28.842890, 47.742371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.317270, 28.657558, 47.664989>,  <30.109715, 28.546360, 47.618561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.317270, 28.657558, 47.664989>,  <30.663197, 28.842890, 47.742371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.317270, 28.657558, 47.664989> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016272, 0.359234, -0.933106,
		0.501829, -0.810110, -0.303131,
		-0.864813, -0.463327, -0.193457,
		30.057827, 28.518560, 47.606953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.706434, 28.356964, 47.175991>,  <30.663197, 28.842890, 47.742371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.706434, 28.356964, 47.175991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.329412, 28.485445, 47.212696>,  <30.103199, 28.562532, 47.234718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.329412, 28.485445, 47.212696>,  <30.706434, 28.356964, 47.175991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.329412, 28.485445, 47.212696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019534, 0.327212, -0.944749,
		-0.333479, -0.888686, -0.314690,
		-0.942555, 0.321201, 0.091759,
		30.046646, 28.581806, 47.240223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.322227, 28.180180, 46.532032>,  <30.706434, 28.356964, 47.175991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.322227, 28.180180, 46.532032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.076212, 28.457525, 46.682220>,  <29.928604, 28.623932, 46.772335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.076212, 28.457525, 46.682220>,  <30.322227, 28.180180, 46.532032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.076212, 28.457525, 46.682220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183684, 0.337093, -0.923379,
		-0.766805, -0.636879, -0.079964,
		-0.615036, 0.693364, 0.375470,
		29.891701, 28.665535, 46.794861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.727676, 28.279842, 45.981129>,  <30.322227, 28.180180, 46.532032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.727676, 28.279842, 45.981129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.714272, 28.611099, 46.204937>,  <29.706228, 28.809853, 46.339222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.714272, 28.611099, 46.204937>,  <29.727676, 28.279842, 45.981129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.714272, 28.611099, 46.204937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066551, 0.556742, -0.828016,
		-0.997220, -0.064984, 0.036456,
		-0.033511, 0.828140, 0.559519,
		29.704218, 28.859541, 46.372791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.272135, 28.578178, 45.599228>,  <29.727676, 28.279842, 45.981129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.272135, 28.578178, 45.599228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.429237, 28.867342, 45.826611>,  <29.523499, 29.040840, 45.963039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.429237, 28.867342, 45.826611>,  <29.272135, 28.578178, 45.599228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.429237, 28.867342, 45.826611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163060, 0.553591, -0.816669,
		-0.905070, 0.413446, 0.099549,
		0.392758, 0.722911, 0.568455,
		29.547066, 29.084215, 45.997147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.962999, 29.187386, 45.351665>,  <29.272135, 28.578178, 45.599228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.962999, 29.187386, 45.351665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.307352, 29.311230, 45.513172>,  <29.513964, 29.385536, 45.610077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.307352, 29.311230, 45.513172>,  <28.962999, 29.187386, 45.351665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.307352, 29.311230, 45.513172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130809, 0.632202, -0.763682,
		-0.491706, 0.710255, 0.503750,
		0.860880, 0.309612, 0.403765,
		29.565617, 29.404114, 45.634300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.004629, 29.985739, 45.358780>,  <28.962999, 29.187386, 45.351665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.004629, 29.985739, 45.358780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.369856, 29.822777, 45.366047>,  <29.588991, 29.724998, 45.370407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.369856, 29.822777, 45.366047>,  <29.004629, 29.985739, 45.358780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.369856, 29.822777, 45.366047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252407, 0.529568, -0.809844,
		0.320314, 0.744027, 0.586363,
		0.913066, -0.407407, 0.018170,
		29.643776, 29.700554, 45.371498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<32.586586, 25.240776, 47.647369> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.725597, 25.546804, 47.864216>,  <32.809006, 25.730421, 47.994324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.725597, 25.546804, 47.864216>,  <32.586586, 25.240776, 47.647369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725597, 25.546804, 47.864216> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048311, 0.562777, -0.825196,
		-0.936424, 0.312971, 0.158620,
		0.347530, 0.765070, 0.542117,
		32.829857, 25.776325, 48.026852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136219, 25.862238, 47.451534>,  <32.586586, 25.240776, 47.647369>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.136219, 25.862238, 47.451534> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.493553, 25.954226, 47.605968>,  <32.707954, 26.009418, 47.698631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.493553, 25.954226, 47.605968>,  <32.136219, 25.862238, 47.451534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493553, 25.954226, 47.605968> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268076, 0.416832, -0.868555,
		-0.360673, 0.879413, 0.310723,
		0.893337, 0.229967, 0.386089,
		32.761555, 26.023216, 47.721794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.165329, 26.486462, 47.214687>,  <32.136219, 25.862238, 47.451534>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.165329, 26.486462, 47.214687> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.539490, 26.391205, 47.319225>,  <32.763988, 26.334051, 47.381950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.539490, 26.391205, 47.319225>,  <32.165329, 26.486462, 47.214687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539490, 26.391205, 47.319225> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334410, 0.355825, -0.872673,
		0.114826, 0.903702, 0.412479,
		0.935406, -0.238142, 0.261349,
		32.820110, 26.319761, 47.397629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585598, 27.042788, 47.102486>,  <32.165329, 26.486462, 47.214687>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.585598, 27.042788, 47.102486> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.868942, 26.760450, 47.103962>,  <33.038948, 26.591049, 47.104847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.868942, 26.760450, 47.103962>,  <32.585598, 27.042788, 47.102486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.868942, 26.760450, 47.103962> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322833, 0.319324, -0.890961,
		0.627697, 0.632314, 0.454066,
		0.708361, -0.705841, 0.003693,
		33.081451, 26.548698, 47.105068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050610, 27.338633, 46.673172>,  <32.585598, 27.042788, 47.102486>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050610, 27.338633, 46.673172> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.150688, 26.951479, 46.682987>,  <33.210735, 26.719187, 46.688877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.150688, 26.951479, 46.682987>,  <33.050610, 27.338633, 46.673172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150688, 26.951479, 46.682987> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226435, 0.033855, -0.973437,
		0.941343, 0.249111, 0.227634,
		0.250201, -0.967883, 0.024539,
		33.225750, 26.661114, 46.690350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759212, 27.323162, 46.517490>,  <33.050610, 27.338633, 46.673172>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759212, 27.323162, 46.517490> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.589073, 26.973047, 46.425449>,  <33.486988, 26.762978, 46.370224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.589073, 26.973047, 46.425449>,  <33.759212, 27.323162, 46.517490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589073, 26.973047, 46.425449> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158699, 0.178176, -0.971117,
		0.891006, -0.449582, 0.063120,
		-0.425350, -0.875288, -0.230105,
		33.461468, 26.710461, 46.356419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082344, 27.172314, 45.914783>,  <33.759212, 27.323162, 46.517490>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082344, 27.172314, 45.914783> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.768459, 26.924417, 45.919628>,  <33.580128, 26.775681, 45.922535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.768459, 26.924417, 45.919628>,  <34.082344, 27.172314, 45.914783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.768459, 26.924417, 45.919628> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013800, -0.002060, -0.999903,
		0.619704, -0.784805, -0.006936,
		-0.784714, -0.619740, 0.012107,
		33.533047, 26.738495, 45.923260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319599, 26.586199, 45.632881>,  <34.082344, 27.172314, 45.914783>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319599, 26.586199, 45.632881> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.922440, 26.564440, 45.590561>,  <33.684143, 26.551384, 45.565170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.922440, 26.564440, 45.590561>,  <34.319599, 26.586199, 45.632881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.922440, 26.564440, 45.590561> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111525, -0.115993, -0.986969,
		0.041415, -0.991759, 0.121236,
		-0.992898, -0.054397, -0.105802,
		33.624569, 26.548120, 45.558819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.190231, 25.978851, 45.137421>,  <34.319599, 26.586199, 45.632881>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.190231, 25.978851, 45.137421> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.867062, 26.214470, 45.130753>,  <33.673161, 26.355841, 45.126751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.867062, 26.214470, 45.130753>,  <34.190231, 25.978851, 45.137421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867062, 26.214470, 45.130753> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030987, 0.014221, -0.999419,
		-0.588469, -0.807973, -0.029742,
		-0.807926, 0.589048, -0.016668,
		33.624683, 26.391184, 45.125751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651981, 25.733789, 44.598724>,  <34.190231, 25.978851, 45.137421>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651981, 25.733789, 44.598724> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.530788, 26.111359, 44.651203>,  <33.458073, 26.337900, 44.682690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.530788, 26.111359, 44.651203>,  <33.651981, 25.733789, 44.598724>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.530788, 26.111359, 44.651203> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035440, 0.126409, -0.991345,
		-0.952337, -0.305010, -0.004847,
		-0.302982, 0.943923, 0.131194,
		33.439892, 26.394535, 44.690559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095699, 25.823080, 44.124584>,  <33.651981, 25.733789, 44.598724>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095699, 25.823080, 44.124584> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.241215, 26.179461, 44.233295>,  <33.328526, 26.393290, 44.298523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.241215, 26.179461, 44.233295>,  <33.095699, 25.823080, 44.124584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241215, 26.179461, 44.233295> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000327, 0.291651, -0.956525,
		-0.931481, 0.348062, 0.105808,
		0.363789, 0.890951, 0.271781,
		33.350349, 26.446745, 44.314831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654072, 26.356295, 43.873562>,  <33.095699, 25.823080, 44.124584>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654072, 26.356295, 43.873562> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.001812, 26.545469, 43.930912>,  <33.210457, 26.658974, 43.965321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.001812, 26.545469, 43.930912>,  <32.654072, 26.356295, 43.873562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001812, 26.545469, 43.930912> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066149, 0.398871, -0.914618,
		-0.489745, 0.785641, 0.378044,
		0.869352, 0.472937, 0.143376,
		33.262619, 26.687351, 43.973927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.133667, 26.729399, 44.303722>,  <32.654072, 26.356295, 43.873562>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.133667, 26.729399, 44.303722> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.751495, 26.828386, 44.239334>,  <31.522192, 26.887779, 44.200699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.751495, 26.828386, 44.239334>,  <32.133667, 26.729399, 44.303722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.751495, 26.828386, 44.239334> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233871, -0.301710, 0.924270,
		0.180160, 0.920723, 0.346138,
		-0.955430, 0.247468, -0.160974,
		31.464867, 26.902626, 44.191040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.886415, 27.063791, 44.900852>,  <32.133667, 26.729399, 44.303722>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.886415, 27.063791, 44.900852> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.574823, 26.926117, 44.691196>,  <31.387867, 26.843512, 44.565403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.574823, 26.926117, 44.691196>,  <31.886415, 27.063791, 44.900852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.574823, 26.926117, 44.691196> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328641, -0.487781, 0.808743,
		-0.534024, 0.802250, 0.266858,
		-0.778982, -0.344188, -0.524139,
		31.341129, 26.822861, 44.533955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.293943, 27.169294, 45.383934>,  <31.886415, 27.063791, 44.900852>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.293943, 27.169294, 45.383934> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.127312, 26.941231, 45.100700>,  <31.027332, 26.804394, 44.930759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.127312, 26.941231, 45.100700>,  <31.293943, 27.169294, 45.383934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.127312, 26.941231, 45.100700> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500790, -0.506131, 0.702169,
		-0.758729, 0.647110, -0.074685,
		-0.416580, -0.570157, -0.708083,
		31.002338, 26.770184, 44.888275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.576719, 27.190676, 45.486931>,  <31.293943, 27.169294, 45.383934>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.576719, 27.190676, 45.486931> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.676619, 26.854433, 45.294678>,  <30.736557, 26.652687, 45.179325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.676619, 26.854433, 45.294678>,  <30.576719, 27.190676, 45.486931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.676619, 26.854433, 45.294678> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677839, -0.506235, 0.533161,
		-0.691492, 0.192639, -0.696225,
		0.249746, -0.840605, -0.480635,
		30.751543, 26.602251, 45.150486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.068401, 26.976542, 45.170944>,  <30.576719, 27.190676, 45.486931>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.068401, 26.976542, 45.170944> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.278593, 26.641937, 45.233074>,  <30.404707, 26.441175, 45.270351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.278593, 26.641937, 45.233074>,  <30.068401, 26.976542, 45.170944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.278593, 26.641937, 45.233074> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785510, -0.406855, 0.466308,
		-0.326874, -0.367047, -0.870879,
		0.525479, -0.836508, 0.155328,
		30.436235, 26.390985, 45.279671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.639950, 26.512505, 45.074181>,  <30.068401, 26.976542, 45.170944>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.639950, 26.512505, 45.074181> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.909883, 26.302549, 45.281673>,  <30.071844, 26.176577, 45.406170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.909883, 26.302549, 45.281673>,  <29.639950, 26.512505, 45.074181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.909883, 26.302549, 45.281673> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729918, -0.371210, 0.573954,
		-0.108702, -0.765960, -0.633632,
		0.674837, -0.524890, 0.518736,
		30.112335, 26.145082, 45.437294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.319660, 25.904945, 45.291473>,  <29.639950, 26.512505, 45.074181>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.319660, 25.904945, 45.291473> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.634077, 25.909626, 45.538696>,  <29.822727, 25.912434, 45.687031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.634077, 25.909626, 45.538696>,  <29.319660, 25.904945, 45.291473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.634077, 25.909626, 45.538696> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515477, -0.539450, 0.665790,
		0.341203, -0.841936, -0.418000,
		0.786043, 0.011700, 0.618061,
		29.869890, 25.913136, 45.724113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.539623, 25.109142, 45.444469>,  <29.319660, 25.904945, 45.291473>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.539623, 25.109142, 45.444469> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.649473, 25.352373, 45.742416>,  <29.715384, 25.498312, 45.921185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.649473, 25.352373, 45.742416>,  <29.539623, 25.109142, 45.444469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.649473, 25.352373, 45.742416> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555501, -0.531967, 0.639085,
		0.784856, -0.589283, 0.191695,
		0.274627, 0.608076, 0.744864,
		29.731861, 25.534796, 45.965878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.460770, 24.656105, 46.025463>,  <29.539623, 25.109142, 45.444469>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.460770, 24.656105, 46.025463> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.507225, 25.013157, 46.199692>,  <29.535099, 25.227388, 46.304230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.507225, 25.013157, 46.199692>,  <29.460770, 24.656105, 46.025463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.507225, 25.013157, 46.199692> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346295, -0.374631, 0.860076,
		0.930909, -0.250724, 0.265605,
		0.116138, 0.892631, 0.435572,
		29.542067, 25.280947, 46.330364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.575342, 24.441927, 46.676697>,  <29.460770, 24.656105, 46.025463>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.575342, 24.441927, 46.676697> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.453911, 24.821201, 46.714188>,  <29.381052, 25.048765, 46.736683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.453911, 24.821201, 46.714188>,  <29.575342, 24.441927, 46.676697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.453911, 24.821201, 46.714188> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395653, -0.214935, 0.892895,
		0.866775, 0.233983, 0.440402,
		-0.303580, 0.948185, 0.093725,
		29.362837, 25.105658, 46.742306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.816498, 24.627705, 47.381599>,  <29.575342, 24.441927, 46.676697>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.816498, 24.627705, 47.381599> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.504051, 24.852242, 47.272236>,  <29.316584, 24.986963, 47.206619>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.504051, 24.852242, 47.272236>,  <29.816498, 24.627705, 47.381599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.504051, 24.852242, 47.272236> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434798, -0.174762, 0.883408,
		0.448112, 0.808922, 0.380580,
		-0.781118, 0.561341, -0.273405,
		29.269716, 25.020643, 47.190216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.554581, 24.918941, 48.050694>,  <29.816498, 24.627705, 47.381599>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.554581, 24.918941, 48.050694> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.250565, 24.975941, 47.797070>,  <29.068155, 25.010141, 47.644894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.250565, 24.975941, 47.797070>,  <29.554581, 24.918941, 48.050694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.250565, 24.975941, 47.797070> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648651, -0.226194, 0.726697,
		-0.039867, 0.963603, 0.264349,
		-0.760041, 0.142499, -0.634060,
		29.022552, 25.018690, 47.606853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.113804, 25.267597, 48.467148>,  <29.554581, 24.918941, 48.050694>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.113804, 25.267597, 48.467148> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.887564, 25.134247, 48.165432>,  <28.751820, 25.054235, 47.984402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.887564, 25.134247, 48.165432>,  <29.113804, 25.267597, 48.467148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.887564, 25.134247, 48.165432> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695837, -0.297976, 0.653469,
		-0.442612, 0.894466, -0.063440,
		-0.565602, -0.333377, -0.754290,
		28.717882, 25.034233, 47.939144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.455181, 25.545095, 48.534901>,  <29.113804, 25.267597, 48.467148>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.455181, 25.545095, 48.534901> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.430740, 25.205906, 48.324299>,  <28.416077, 25.002392, 48.197937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.430740, 25.205906, 48.324299>,  <28.455181, 25.545095, 48.534901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.430740, 25.205906, 48.324299> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715898, -0.330340, 0.615114,
		-0.695526, 0.414508, -0.586879,
		-0.061100, -0.847974, -0.526505,
		28.412411, 24.951513, 48.166348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.977064, 25.587326, 49.106411>,  <28.455181, 25.545095, 48.534901>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.977064, 25.587326, 49.106411> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.252035, 25.519680, 49.388927>,  <29.417019, 25.479092, 49.558437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.252035, 25.519680, 49.388927>,  <28.977064, 25.587326, 49.106411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.252035, 25.519680, 49.388927> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695749, -0.432239, 0.573675,
		0.208267, -0.885759, -0.414796,
		0.687429, -0.169116, 0.706287,
		29.458263, 25.468945, 49.600815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.051388, 26.209042, 48.838013>,  <28.977064, 25.587326, 49.106411>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.051388, 26.209042, 48.838013> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.388245, 26.371826, 48.979534>,  <29.590359, 26.469498, 49.064449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.388245, 26.371826, 48.979534>,  <29.051388, 26.209042, 48.838013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.388245, 26.371826, 48.979534> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134734, 0.794083, -0.592688,
		-0.522155, 0.451457, 0.723561,
		0.842141, 0.406963, 0.353808,
		29.640886, 26.493916, 49.085678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.872532, 26.874704, 49.013439>,  <29.051388, 26.209042, 48.838013>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.872532, 26.874704, 49.013439> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.270046, 26.883024, 48.969696>,  <29.508554, 26.888016, 48.943451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.270046, 26.883024, 48.969696>,  <28.872532, 26.874704, 49.013439>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.270046, 26.883024, 48.969696> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074099, 0.856725, -0.510423,
		0.083070, 0.515354, 0.852942,
		0.993785, 0.020801, -0.109355,
		29.568182, 26.889265, 48.936890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.075666, 27.505150, 49.221531>,  <28.872532, 26.874704, 49.013439>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.075666, 27.505150, 49.221531> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.385616, 27.399103, 48.992001>,  <29.571587, 27.335474, 48.854282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.385616, 27.399103, 48.992001>,  <29.075666, 27.505150, 49.221531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.385616, 27.399103, 48.992001> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054271, 0.876539, -0.478261,
		0.629781, 0.401735, 0.664820,
		0.774875, -0.265119, -0.573830,
		29.618078, 27.319567, 48.819851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.369740, 28.143341, 49.113110>,  <29.075666, 27.505150, 49.221531>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.369740, 28.143341, 49.113110> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.541265, 27.913034, 48.834652>,  <29.644182, 27.774851, 48.667580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.541265, 27.913034, 48.834652>,  <29.369740, 28.143341, 49.113110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.541265, 27.913034, 48.834652> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146373, 0.716122, -0.682455,
		0.891455, 0.394544, 0.222808,
		0.428816, -0.575765, -0.696141,
		29.669910, 27.740305, 48.625809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.879353, 28.613310, 48.781963>,  <29.369740, 28.143341, 49.113110>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.879353, 28.613310, 48.781963> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.855907, 28.304897, 48.528324>,  <29.841841, 28.119850, 48.376141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.855907, 28.304897, 48.528324>,  <29.879353, 28.613310, 48.781963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.855907, 28.304897, 48.528324> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031687, 0.633431, -0.773150,
		0.997778, -0.065411, -0.012696,
		-0.058614, -0.771030, -0.634096,
		29.838324, 28.073589, 48.338097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.504000, 28.538727, 48.392155>,  <29.879353, 28.613310, 48.781963>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.504000, 28.538727, 48.392155> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.209538, 28.385242, 48.169144>,  <30.032860, 28.293152, 48.035336>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.209538, 28.385242, 48.169144>,  <30.504000, 28.538727, 48.392155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.209538, 28.385242, 48.169144> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297889, 0.555985, -0.775979,
		0.607731, -0.737323, -0.294988,
		-0.736156, -0.383713, -0.557530,
		29.988691, 28.270128, 48.001884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.057831, 29.043640, 48.530323>,  <30.504000, 28.538727, 48.392155>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.057831, 29.043640, 48.530323> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.248810, 29.342638, 48.715057>,  <31.363398, 29.522038, 48.825897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.248810, 29.342638, 48.715057>,  <31.057831, 29.043640, 48.530323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.248810, 29.342638, 48.715057> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352166, -0.318756, 0.879985,
		0.804997, -0.582792, 0.111053,
		0.477450, 0.747494, 0.461838,
		31.392044, 29.566887, 48.853607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.543434, 28.702141, 48.979179>,  <31.057831, 29.043640, 48.530323>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.543434, 28.702141, 48.979179> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.490431, 29.067186, 49.133881>,  <31.458628, 29.286213, 49.226700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.490431, 29.067186, 49.133881>,  <31.543434, 28.702141, 48.979179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.490431, 29.067186, 49.133881> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060289, -0.396893, 0.915883,
		0.989346, 0.098046, 0.107613,
		-0.132510, 0.912613, 0.386754,
		31.450678, 29.340971, 49.249908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.888519, 28.655775, 49.685650>,  <31.543434, 28.702141, 48.979179>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.888519, 28.655775, 49.685650> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.687704, 29.001631, 49.693157>,  <31.567215, 29.209145, 49.697662>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.687704, 29.001631, 49.693157>,  <31.888519, 28.655775, 49.685650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.687704, 29.001631, 49.693157> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181604, -0.126616, 0.975186,
		0.845563, 0.486173, 0.220589,
		-0.502039, 0.864641, 0.018771,
		31.537092, 29.261023, 49.698788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078968, 28.901205, 50.383884>,  <31.888519, 28.655775, 49.685650>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.078968, 28.901205, 50.383884> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.740488, 29.057781, 50.239262>,  <31.537401, 29.151728, 50.152489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.740488, 29.057781, 50.239262>,  <32.078968, 28.901205, 50.383884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.740488, 29.057781, 50.239262> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441908, -0.136348, 0.886638,
		0.297770, 0.910045, 0.288359,
		-0.846197, 0.391442, -0.361556,
		31.486629, 29.175215, 50.130795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900839, 29.492496, 50.804676>,  <32.078968, 28.901205, 50.383884>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900839, 29.492496, 50.804676> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.569727, 29.342884, 50.637402>,  <31.371059, 29.253117, 50.537037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.569727, 29.342884, 50.637402>,  <31.900839, 29.492496, 50.804676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.569727, 29.342884, 50.637402> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418564, -0.084640, 0.904235,
		-0.373608, 0.923545, -0.086494,
		-0.827781, -0.374033, -0.418184,
		31.321392, 29.230675, 50.511948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.478771, 29.745502, 51.243191>,  <31.900839, 29.492496, 50.804676>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.478771, 29.745502, 51.243191> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.262823, 29.469645, 51.050137>,  <31.133255, 29.304131, 50.934303>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.262823, 29.469645, 51.050137>,  <31.478771, 29.745502, 51.243191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.262823, 29.469645, 51.050137> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411283, -0.284151, 0.866086,
		-0.734431, 0.666071, -0.130235,
		-0.539868, -0.689643, -0.482633,
		31.100863, 29.262751, 50.905346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.756853, 29.834013, 51.481171>,  <31.478771, 29.745502, 51.243191>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.756853, 29.834013, 51.481171> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.809277, 29.456081, 51.361092>,  <30.840731, 29.229322, 51.289043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.809277, 29.456081, 51.361092>,  <30.756853, 29.834013, 51.481171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.809277, 29.456081, 51.361092> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593187, -0.317361, 0.739872,
		-0.794325, 0.081106, -0.602054,
		0.131061, -0.944830, -0.300199,
		30.848595, 29.172632, 51.271030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.077579, 29.618080, 51.447510>,  <30.756853, 29.834013, 51.481171>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.077579, 29.618080, 51.447510> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.312239, 29.296707, 51.488182>,  <30.453035, 29.103884, 51.512585>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.312239, 29.296707, 51.488182>,  <30.077579, 29.618080, 51.447510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.312239, 29.296707, 51.488182> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573403, -0.323422, 0.752733,
		-0.571885, -0.499894, -0.650426,
		0.586649, -0.803433, 0.101680,
		30.488234, 29.055677, 51.518684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.582344, 28.935457, 51.543751>,  <30.077579, 29.618080, 51.447510>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.582344, 28.935457, 51.543751> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.945091, 28.865633, 51.697174>,  <30.162739, 28.823738, 51.789230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.945091, 28.865633, 51.697174>,  <29.582344, 28.935457, 51.543751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.945091, 28.865633, 51.697174> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416407, -0.231268, 0.879272,
		-0.064776, -0.957102, -0.282416,
		0.906868, -0.174556, 0.383564,
		30.217152, 28.813265, 51.812244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.956848, 34.997131, 37.367249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.306332, 34.806652, 37.406975>,  <35.516022, 34.692364, 37.430813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.306332, 34.806652, 37.406975>,  <34.956848, 34.997131, 37.367249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306332, 34.806652, 37.406975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375604, -0.530679, 0.759804,
		-0.309109, -0.701155, -0.642522,
		0.873712, -0.476196, 0.099319,
		35.568447, 34.663792, 37.436771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908211, 34.217884, 37.318211>,  <34.956848, 34.997131, 37.367249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908211, 34.217884, 37.318211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.179085, 34.364651, 37.573330>,  <35.341610, 34.452709, 37.726402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.179085, 34.364651, 37.573330>,  <34.908211, 34.217884, 37.318211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179085, 34.364651, 37.573330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389079, -0.557147, 0.733624,
		0.624528, -0.744956, -0.234533,
		0.677187, 0.366917, 0.637801,
		35.382240, 34.474728, 37.764671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902088, 33.696644, 37.848431>,  <34.908211, 34.217884, 37.318211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902088, 33.696644, 37.848431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071907, 34.027084, 37.996658>,  <35.173798, 34.225349, 38.085594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071907, 34.027084, 37.996658>,  <34.902088, 33.696644, 37.848431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071907, 34.027084, 37.996658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140689, -0.344121, 0.928325,
		0.894409, -0.446251, -0.029872,
		0.424545, 0.826100, 0.370568,
		35.199272, 34.274914, 38.107830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314842, 33.446777, 38.363186>,  <34.902088, 33.696644, 37.848431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314842, 33.446777, 38.363186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228001, 33.831196, 38.431602>,  <35.175896, 34.061848, 38.472652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228001, 33.831196, 38.431602>,  <35.314842, 33.446777, 38.363186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228001, 33.831196, 38.431602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311474, -0.234262, 0.920926,
		0.925121, 0.146666, 0.350201,
		-0.217108, 0.961046, 0.171038,
		35.162868, 34.119511, 38.482914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406483, 33.432266, 38.963642>,  <35.314842, 33.446777, 38.363186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406483, 33.432266, 38.963642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.178272, 33.755676, 38.905975>,  <35.041344, 33.949722, 38.871376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.178272, 33.755676, 38.905975>,  <35.406483, 33.432266, 38.963642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.178272, 33.755676, 38.905975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397759, -0.118451, 0.909811,
		0.718528, 0.576419, 0.389178,
		-0.570531, 0.808524, -0.144166,
		35.007114, 33.998234, 38.862724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597481, 33.835190, 39.485382>,  <35.406483, 33.432266, 38.963642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597481, 33.835190, 39.485382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.229145, 33.958485, 39.389847>,  <35.008144, 34.032463, 39.332527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.229145, 33.958485, 39.389847>,  <35.597481, 33.835190, 39.485382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229145, 33.958485, 39.389847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220859, 0.092505, 0.970909,
		0.321363, 0.946801, -0.017106,
		-0.920840, 0.308237, -0.238838,
		34.952892, 34.050957, 39.318195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560169, 34.418526, 39.956192>,  <35.597481, 33.835190, 39.485382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.560169, 34.418526, 39.956192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.188606, 34.316795, 39.848530>,  <34.965668, 34.255756, 39.783932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.188606, 34.316795, 39.848530>,  <35.560169, 34.418526, 39.956192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.188606, 34.316795, 39.848530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298397, 0.083668, 0.950768,
		-0.219286, 0.963492, -0.153610,
		-0.928910, -0.254327, -0.269156,
		34.909935, 34.240498, 39.767784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087074, 34.989014, 40.229439>,  <35.560169, 34.418526, 39.956192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.087074, 34.989014, 40.229439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901596, 34.637577, 40.183716>,  <34.790310, 34.426716, 40.156284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901596, 34.637577, 40.183716>,  <35.087074, 34.989014, 40.229439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901596, 34.637577, 40.183716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309791, 0.039909, 0.949967,
		-0.830068, 0.475910, -0.290684,
		-0.463700, -0.878588, -0.114305,
		34.762486, 34.374001, 40.149426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485607, 35.008701, 40.621868>,  <35.087074, 34.989014, 40.229439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485607, 35.008701, 40.621868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478466, 34.615147, 40.550709>,  <34.474182, 34.379013, 40.508015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478466, 34.615147, 40.550709>,  <34.485607, 35.008701, 40.621868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478466, 34.615147, 40.550709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480356, -0.147606, 0.864564,
		-0.876892, 0.100886, -0.469982,
		-0.017850, -0.983887, -0.177895,
		34.473110, 34.319981, 40.497341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860649, 34.828358, 40.808990>,  <34.485607, 35.008701, 40.621868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860649, 34.828358, 40.808990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101234, 34.508801, 40.807465>,  <34.245586, 34.317066, 40.806549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101234, 34.508801, 40.807465>,  <33.860649, 34.828358, 40.808990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101234, 34.508801, 40.807465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404923, -0.308958, 0.860571,
		-0.688681, -0.516057, -0.509316,
		0.601461, -0.798893, -0.003810,
		34.281673, 34.269135, 40.806320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416683, 34.282871, 40.858982>,  <33.860649, 34.828358, 40.808990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416683, 34.282871, 40.858982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768688, 34.145741, 40.990467>,  <33.979893, 34.063461, 41.069359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768688, 34.145741, 40.990467>,  <33.416683, 34.282871, 40.858982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.768688, 34.145741, 40.990467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447594, -0.367110, 0.815408,
		-0.158870, -0.864697, -0.476508,
		0.880011, -0.342826, 0.328710,
		34.032692, 34.042892, 41.089081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147587, 33.644955, 41.150993>,  <33.416683, 34.282871, 40.858982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147587, 33.644955, 41.150993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511421, 33.718014, 41.300282>,  <33.729721, 33.761848, 41.389854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511421, 33.718014, 41.300282>,  <33.147587, 33.644955, 41.150993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511421, 33.718014, 41.300282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282628, -0.386476, 0.877928,
		0.304597, -0.904032, -0.299910,
		0.909583, 0.182652, 0.373224,
		33.784298, 33.772808, 41.412251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924458, 33.005665, 40.811375>,  <33.147587, 33.644955, 41.150993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924458, 33.005665, 40.811375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582809, 32.820087, 40.717358>,  <32.377823, 32.708740, 40.660946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582809, 32.820087, 40.717358>,  <32.924458, 33.005665, 40.811375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582809, 32.820087, 40.717358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016984, 0.426809, -0.904182,
		0.519806, -0.776268, -0.356664,
		-0.854115, -0.463943, -0.235042,
		32.326576, 32.680904, 40.646847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024109, 32.589291, 40.170010>,  <32.924458, 33.005665, 40.811375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024109, 32.589291, 40.170010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650848, 32.730713, 40.195999>,  <32.426891, 32.815567, 40.211594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650848, 32.730713, 40.195999>,  <33.024109, 32.589291, 40.170010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.650848, 32.730713, 40.195999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034575, 0.268187, -0.962746,
		-0.357810, -0.896144, -0.262484,
		-0.933154, 0.353556, 0.064976,
		32.370903, 32.836781, 40.215492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575665, 32.210423, 39.778481>,  <33.024109, 32.589291, 40.170010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575665, 32.210423, 39.778481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359303, 32.545361, 39.810165>,  <32.229485, 32.746323, 39.829178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359303, 32.545361, 39.810165>,  <32.575665, 32.210423, 39.778481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359303, 32.545361, 39.810165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202921, -0.038520, -0.978437,
		-0.816237, -0.545318, 0.190750,
		-0.540907, 0.837344, 0.079215,
		32.197029, 32.796562, 39.833931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.004398, 32.118237, 39.371929>,  <32.575665, 32.210423, 39.778481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.004398, 32.118237, 39.371929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.014038, 32.512981, 39.435841>,  <32.019821, 32.749828, 39.474190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.014038, 32.512981, 39.435841>,  <32.004398, 32.118237, 39.371929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.014038, 32.512981, 39.435841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162646, 0.161569, -0.973366,
		-0.986390, -0.002530, 0.164402,
		0.024100, 0.986858, 0.159781,
		32.021267, 32.809040, 39.483776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.494471, 32.392010, 38.883038>,  <32.004398, 32.118237, 39.371929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.494471, 32.392010, 38.883038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.713324, 32.694195, 39.027218>,  <31.844635, 32.875504, 39.113728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.713324, 32.694195, 39.027218>,  <31.494471, 32.392010, 38.883038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713324, 32.694195, 39.027218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027683, 0.446718, -0.894247,
		-0.836588, 0.479294, 0.265327,
		0.547133, 0.755461, 0.360450,
		31.877464, 32.920834, 39.135353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.069506, 33.043079, 38.761330>,  <31.494471, 32.392010, 38.883038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.069506, 33.043079, 38.761330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458666, 33.125587, 38.803116>,  <31.692162, 33.175095, 38.828186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458666, 33.125587, 38.803116>,  <31.069506, 33.043079, 38.761330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.458666, 33.125587, 38.803116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008901, 0.484882, -0.874534,
		-0.231048, 0.849906, 0.473578,
		0.972902, 0.206275, 0.104466,
		31.750536, 33.187469, 38.834457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.130236, 33.828667, 38.676701>,  <31.069506, 33.043079, 38.761330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.130236, 33.828667, 38.676701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.477781, 33.650299, 38.590694>,  <31.686308, 33.543278, 38.539089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.477781, 33.650299, 38.590694>,  <31.130236, 33.828667, 38.676701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.477781, 33.650299, 38.590694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038298, 0.493570, -0.868862,
		0.493570, 0.746687, 0.445922,
		0.868862, -0.445922, -0.215015,
		31.738440, 33.516521, 38.526192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578356, 34.385040, 38.448536>,  <31.130236, 33.828667, 38.676701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578356, 34.385040, 38.448536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.748247, 34.049355, 38.312695>,  <31.850182, 33.847942, 38.231190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.748247, 34.049355, 38.312695>,  <31.578356, 34.385040, 38.448536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.748247, 34.049355, 38.312695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124674, 0.425762, -0.896205,
		0.896695, 0.338304, 0.285461,
		0.424728, -0.839212, -0.339601,
		31.875666, 33.797592, 38.210815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179981, 34.597221, 38.122608>,  <31.578356, 34.385040, 38.448536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179981, 34.597221, 38.122608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.131809, 34.234245, 37.961590>,  <32.102905, 34.016460, 37.864979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.131809, 34.234245, 37.961590>,  <32.179981, 34.597221, 38.122608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131809, 34.234245, 37.961590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291107, 0.355390, -0.888232,
		0.949081, -0.224149, 0.221365,
		-0.120425, -0.907444, -0.402545,
		32.095680, 33.962013, 37.840828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.723072, 34.594242, 37.664322>,  <32.179981, 34.597221, 38.122608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.723072, 34.594242, 37.664322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459190, 34.319061, 37.543320>,  <32.300861, 34.153954, 37.470718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459190, 34.319061, 37.543320>,  <32.723072, 34.594242, 37.664322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459190, 34.319061, 37.543320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018236, 0.417065, -0.908694,
		0.751302, -0.593955, -0.287686,
		-0.659707, -0.687949, -0.302510,
		32.261280, 34.112675, 37.452568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.877583, 34.400631, 36.909824>,  <32.723072, 34.594242, 37.664322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.877583, 34.400631, 36.909824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497238, 34.290802, 36.967064>,  <32.269032, 34.224903, 37.001408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497238, 34.290802, 36.967064>,  <32.877583, 34.400631, 36.909824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.497238, 34.290802, 36.967064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270044, 0.509320, -0.817110,
		0.151473, -0.815600, -0.558438,
		-0.950859, -0.274573, 0.143100,
		32.211979, 34.208431, 37.009995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.678688, 34.073887, 36.338459>,  <32.877583, 34.400631, 36.909824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.678688, 34.073887, 36.338459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395100, 34.255180, 36.554585>,  <32.224945, 34.363956, 36.684261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395100, 34.255180, 36.554585>,  <32.678688, 34.073887, 36.338459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395100, 34.255180, 36.554585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106065, 0.688911, -0.717044,
		-0.697217, -0.565672, -0.440346,
		-0.708971, 0.453230, 0.540318,
		32.182407, 34.391148, 36.716679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879929, 33.723995, 35.662766>,  <32.678688, 34.073887, 36.338459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879929, 33.723995, 35.662766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.081928, 33.630768, 35.330345>,  <33.203129, 33.574829, 35.130894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.081928, 33.630768, 35.330345>,  <32.879929, 33.723995, 35.662766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.081928, 33.630768, 35.330345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832436, 0.385964, 0.397595,
		0.228089, -0.892586, 0.388929,
		0.505000, -0.233072, -0.831055,
		33.233429, 33.560848, 35.081028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502892, 33.221664, 35.773426>,  <32.879929, 33.723995, 35.662766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502892, 33.221664, 35.773426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582706, 33.493996, 35.491528>,  <33.630596, 33.657394, 35.322388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582706, 33.493996, 35.491528>,  <33.502892, 33.221664, 35.773426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582706, 33.493996, 35.491528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592649, 0.488903, 0.640111,
		0.780354, -0.545391, -0.305936,
		0.199537, 0.680825, -0.704742,
		33.642567, 33.698242, 35.280106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203346, 32.936272, 35.215740>,  <33.502892, 33.221664, 35.773426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203346, 32.936272, 35.215740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992580, 32.688938, 34.982494>,  <32.866119, 32.540539, 34.842545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992580, 32.688938, 34.982494>,  <33.203346, 32.936272, 35.215740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992580, 32.688938, 34.982494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044859, -0.664899, 0.745586,
		-0.848734, 0.419018, 0.322606,
		-0.526914, -0.618332, -0.583119,
		32.834507, 32.503437, 34.807560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.713577, 32.752121, 35.778152>,  <33.203346, 32.936272, 35.215740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.713577, 32.752121, 35.778152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743988, 32.500652, 35.468575>,  <32.762234, 32.349770, 35.282829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743988, 32.500652, 35.468575>,  <32.713577, 32.752121, 35.778152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743988, 32.500652, 35.468575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177157, -0.772359, 0.609982,
		-0.981241, 0.090732, -0.170098,
		0.076032, -0.628673, -0.773944,
		32.766796, 32.312050, 35.236393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081074, 32.381664, 35.749744>,  <32.713577, 32.752121, 35.778152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081074, 32.381664, 35.749744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414982, 32.213943, 35.607002>,  <32.615326, 32.113312, 35.521358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414982, 32.213943, 35.607002>,  <32.081074, 32.381664, 35.749744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414982, 32.213943, 35.607002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049848, -0.703015, 0.709426,
		-0.548331, -0.574422, -0.607760,
		0.834774, -0.419296, -0.356851,
		32.665413, 32.088154, 35.499947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.971970, 31.703426, 35.433567>,  <32.081074, 32.381664, 35.749744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.971970, 31.703426, 35.433567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356697, 31.687925, 35.541939>,  <32.587532, 31.678625, 35.606964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356697, 31.687925, 35.541939>,  <31.971970, 31.703426, 35.433567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356697, 31.687925, 35.541939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205593, -0.755732, 0.621772,
		0.180658, -0.653733, -0.734844,
		0.961818, -0.038751, 0.270933,
		32.645241, 31.676300, 35.623219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.007847, 31.072140, 35.579609>,  <31.971970, 31.703426, 35.433567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.007847, 31.072140, 35.579609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348141, 31.206057, 35.741676>,  <32.552319, 31.286407, 35.838917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348141, 31.206057, 35.741676>,  <32.007847, 31.072140, 35.579609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.348141, 31.206057, 35.741676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049277, -0.716676, 0.695663,
		0.523275, -0.611792, -0.593206,
		0.850738, 0.334792, 0.405166,
		32.603363, 31.306494, 35.863228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.411041, 30.469362, 35.764656>,  <32.007847, 31.072140, 35.579609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.411041, 30.469362, 35.764656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.552326, 30.768360, 35.989689>,  <32.637096, 30.947758, 36.124706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.552326, 30.768360, 35.989689>,  <32.411041, 30.469362, 35.764656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.552326, 30.768360, 35.989689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043655, -0.613853, 0.788212,
		0.934523, -0.253848, -0.249454,
		0.353214, 0.747493, 0.562578,
		32.658291, 30.992607, 36.158463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770889, 30.076845, 36.322105>,  <32.411041, 30.469362, 35.764656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770889, 30.076845, 36.322105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705933, 30.436369, 36.484966>,  <32.666958, 30.652082, 36.582684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705933, 30.436369, 36.484966>,  <32.770889, 30.076845, 36.322105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705933, 30.436369, 36.484966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170391, -0.431971, 0.885646,
		0.971903, 0.074446, 0.223297,
		-0.162391, 0.898810, 0.407149,
		32.657215, 30.706013, 36.607113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.231773, 30.195822, 36.921299>,  <32.770889, 30.076845, 36.322105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.231773, 30.195822, 36.921299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.947437, 30.468088, 36.992176>,  <32.776836, 30.631449, 37.034702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.947437, 30.468088, 36.992176>,  <33.231773, 30.195822, 36.921299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947437, 30.468088, 36.992176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074785, -0.323640, 0.943220,
		0.699365, 0.657229, 0.280960,
		-0.710842, 0.680667, 0.177191,
		32.734184, 30.672289, 37.045334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345684, 30.571196, 37.487095>,  <33.231773, 30.195822, 36.921299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345684, 30.571196, 37.487095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.947723, 30.593515, 37.453480>,  <32.708946, 30.606907, 37.433311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.947723, 30.593515, 37.453480>,  <33.345684, 30.571196, 37.487095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947723, 30.593515, 37.453480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096411, -0.280882, 0.954888,
		0.029675, 0.958119, 0.284828,
		-0.994899, 0.055797, -0.084038,
		32.649254, 30.610254, 37.428268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205696, 30.821268, 38.089359>,  <33.345684, 30.571196, 37.487095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.205696, 30.821268, 38.089359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.841640, 30.691830, 37.985874>,  <32.623207, 30.614166, 37.923782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.841640, 30.691830, 37.985874>,  <33.205696, 30.821268, 38.089359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.841640, 30.691830, 37.985874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199931, -0.203889, 0.958362,
		-0.362871, 0.923967, 0.120870,
		-0.910139, -0.323596, -0.258715,
		32.568600, 30.594751, 37.908260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617104, 31.035694, 38.549347>,  <33.205696, 30.821268, 38.089359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617104, 31.035694, 38.549347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.446014, 30.732639, 38.352150>,  <32.343361, 30.550806, 38.233833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.446014, 30.732639, 38.352150>,  <32.617104, 31.035694, 38.549347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.446014, 30.732639, 38.352150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425542, -0.312400, 0.849306,
		-0.797477, 0.573053, -0.188787,
		-0.427720, -0.757638, -0.492990,
		32.317699, 30.505348, 38.204254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851397, 31.078056, 38.759953>,  <32.617104, 31.035694, 38.549347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.851397, 31.078056, 38.759953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.937696, 30.714523, 38.617138>,  <31.989477, 30.496403, 38.531448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.937696, 30.714523, 38.617138>,  <31.851397, 31.078056, 38.759953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.937696, 30.714523, 38.617138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301345, -0.409770, 0.860976,
		-0.928786, -0.078165, -0.362280,
		0.215750, -0.908834, -0.357034,
		32.002422, 30.441874, 38.510029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.207397, 30.600758, 38.930664>,  <31.851397, 31.078056, 38.759953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.207397, 30.600758, 38.930664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.503069, 30.346289, 38.842209>,  <31.680471, 30.193607, 38.789135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.503069, 30.346289, 38.842209>,  <31.207397, 30.600758, 38.930664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.503069, 30.346289, 38.842209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308174, -0.611415, 0.728835,
		-0.598868, -0.470592, -0.647997,
		0.739179, -0.636172, -0.221132,
		31.724821, 30.155437, 38.775867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.921705, 29.857447, 38.933731>,  <31.207397, 30.600758, 38.930664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.921705, 29.857447, 38.933731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.318712, 29.852129, 38.982288>,  <31.556915, 29.848938, 39.011421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.318712, 29.852129, 38.982288>,  <30.921705, 29.857447, 38.933731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.318712, 29.852129, 38.982288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107553, -0.566009, 0.817353,
		0.057844, -0.824292, -0.563203,
		0.992515, -0.013295, 0.121395,
		31.616467, 29.848141, 39.018707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.006247, 29.230639, 39.189564>,  <30.921705, 29.857447, 38.933731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.006247, 29.230639, 39.189564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.351889, 29.403652, 39.292511>,  <31.559275, 29.507460, 39.354279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.351889, 29.403652, 39.292511>,  <31.006247, 29.230639, 39.189564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.351889, 29.403652, 39.292511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055096, -0.426980, 0.902581,
		0.500285, -0.794106, -0.345126,
		0.864106, 0.432532, 0.257364,
		31.611120, 29.533411, 39.369720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.427435, 28.744120, 39.375671>,  <31.006247, 29.230639, 39.189564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.427435, 28.744120, 39.375671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.601006, 29.066557, 39.536629>,  <31.705149, 29.260019, 39.633205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.601006, 29.066557, 39.536629>,  <31.427435, 28.744120, 39.375671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.601006, 29.066557, 39.536629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004428, -0.448541, 0.893751,
		0.900937, -0.386042, -0.198203,
		0.433928, 0.806091, 0.402398,
		31.731184, 29.308384, 39.657349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077137, 28.517502, 39.695511>,  <31.427435, 28.744120, 39.375671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077137, 28.517502, 39.695511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966631, 28.858206, 39.873581>,  <31.900328, 29.062628, 39.980423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966631, 28.858206, 39.873581>,  <32.077137, 28.517502, 39.695511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966631, 28.858206, 39.873581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281956, -0.370992, 0.884797,
		0.918793, 0.369955, -0.137669,
		-0.276261, 0.851762, 0.445176,
		31.883753, 29.113735, 40.007133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.508888, 28.569300, 40.235821>,  <32.077137, 28.517502, 39.695511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.508888, 28.569300, 40.235821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218288, 28.821541, 40.345028>,  <32.043930, 28.972885, 40.410553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218288, 28.821541, 40.345028>,  <32.508888, 28.569300, 40.235821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.218288, 28.821541, 40.345028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132045, -0.261795, 0.956048,
		0.674362, 0.730619, 0.106926,
		-0.726499, 0.630603, 0.273019,
		32.000340, 29.010721, 40.426933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731491, 28.904282, 40.900486>,  <32.508888, 28.569300, 40.235821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731491, 28.904282, 40.900486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333046, 28.939474, 40.902401>,  <32.093979, 28.960590, 40.903549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333046, 28.939474, 40.902401>,  <32.731491, 28.904282, 40.900486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333046, 28.939474, 40.902401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027269, -0.359495, 0.932748,
		0.083788, 0.928990, 0.360496,
		-0.996110, 0.087983, 0.004788,
		32.034214, 28.965870, 40.903839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559746, 29.147339, 41.602432>,  <32.731491, 28.904282, 40.900486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559746, 29.147339, 41.602432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.210716, 29.017529, 41.456394>,  <32.001297, 28.939642, 41.368771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.210716, 29.017529, 41.456394>,  <32.559746, 29.147339, 41.602432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.210716, 29.017529, 41.456394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230923, -0.384571, 0.893745,
		-0.430447, 0.864170, 0.260627,
		-0.872577, -0.324525, -0.365094,
		31.948944, 28.920172, 41.346867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.992674, 29.491642, 42.012997>,  <32.559746, 29.147339, 41.602432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.992674, 29.491642, 42.012997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873516, 29.147161, 41.848270>,  <31.802021, 28.940474, 41.749435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873516, 29.147161, 41.848270>,  <31.992674, 29.491642, 42.012997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.873516, 29.147161, 41.848270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208203, -0.362397, 0.908471,
		-0.931617, 0.356369, -0.071350,
		-0.297894, -0.861203, -0.411812,
		31.784147, 28.888802, 41.724728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.437628, 29.298113, 42.437969>,  <31.992674, 29.491642, 42.012997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.437628, 29.298113, 42.437969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.462154, 28.950922, 42.240849>,  <31.476871, 28.742607, 42.122578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.462154, 28.950922, 42.240849>,  <31.437628, 29.298113, 42.437969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.462154, 28.950922, 42.240849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272701, -0.489516, 0.828256,
		-0.960143, 0.083601, -0.266714,
		0.061318, -0.867978, -0.492803,
		31.480549, 28.690529, 42.093006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.788860, 28.904205, 42.516567>,  <31.437628, 29.298113, 42.437969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.788860, 28.904205, 42.516567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082798, 28.648796, 42.425102>,  <31.259161, 28.495550, 42.370224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082798, 28.648796, 42.425102>,  <30.788860, 28.904205, 42.516567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.082798, 28.648796, 42.425102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286677, -0.597969, 0.748498,
		-0.614673, -0.484474, -0.622464,
		0.734842, -0.638528, -0.228668,
		31.303251, 28.457239, 42.356503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.500933, 28.299614, 42.509384>,  <30.788860, 28.904205, 42.516567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.500933, 28.299614, 42.509384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891624, 28.227880, 42.556438>,  <31.126040, 28.184839, 42.584671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891624, 28.227880, 42.556438>,  <30.500933, 28.299614, 42.509384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.891624, 28.227880, 42.556438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205105, -0.620658, 0.756780,
		-0.062704, -0.763297, -0.642997,
		0.976729, -0.179335, 0.117638,
		31.184643, 28.174080, 42.591728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.587223, 27.634930, 42.524967>,  <30.500933, 28.299614, 42.509384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.587223, 27.634930, 42.524967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.936855, 27.755844, 42.677074>,  <31.146635, 27.828394, 42.768337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.936855, 27.755844, 42.677074>,  <30.587223, 27.634930, 42.524967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.936855, 27.755844, 42.677074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033840, -0.743007, 0.668428,
		0.484598, -0.597129, -0.639219,
		0.874082, 0.302288, 0.380267,
		31.199080, 27.846531, 42.791153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.818306, 27.056650, 42.736954>,  <30.587223, 27.634930, 42.524967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.818306, 27.056650, 42.736954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.038235, 27.327412, 42.932709>,  <31.170191, 27.489868, 43.050159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.038235, 27.327412, 42.932709>,  <30.818306, 27.056650, 42.736954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.038235, 27.327412, 42.932709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110936, -0.639879, 0.760426,
		0.827883, -0.363807, -0.426912,
		0.549820, 0.676904, 0.489385,
		31.203180, 27.530483, 43.079525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605925, 26.801714, 42.898769>,  <30.818306, 27.056650, 42.736954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.605925, 26.801714, 42.898769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.500462, 27.073730, 43.172421>,  <31.437183, 27.236940, 43.336609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.500462, 27.073730, 43.172421>,  <31.605925, 26.801714, 42.898769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.500462, 27.073730, 43.172421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004946, -0.708257, 0.705937,
		0.964603, 0.189510, 0.183375,
		-0.263658, 0.680043, 0.684124,
		31.421364, 27.277742, 43.377659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.027657, 26.665852, 43.514130>,  <31.605925, 26.801714, 42.898769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.027657, 26.665852, 43.514130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.737129, 26.907503, 43.645271>,  <31.562813, 27.052494, 43.723957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.737129, 26.907503, 43.645271>,  <32.027657, 26.665852, 43.514130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.737129, 26.907503, 43.645271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032474, -0.506603, 0.861568,
		0.686591, 0.615126, 0.387574,
		-0.726318, 0.604131, 0.327853,
		31.519234, 27.088743, 43.743626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.596577, 27.077154, 43.473301>,  <32.027657, 26.665852, 43.514130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.596577, 27.077154, 43.473301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980553, 26.997477, 43.552132>,  <33.210938, 26.949671, 43.599430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980553, 26.997477, 43.552132>,  <32.596577, 27.077154, 43.473301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.980553, 26.997477, 43.552132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260977, 0.379519, -0.887613,
		0.102012, 0.903486, 0.416300,
		0.959940, -0.199192, 0.197074,
		33.268536, 26.937719, 43.611256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949303, 27.629814, 43.279755>,  <32.596577, 27.077154, 43.473301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949303, 27.629814, 43.279755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.225346, 27.340336, 43.281292>,  <33.390972, 27.166649, 43.282215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.225346, 27.340336, 43.281292>,  <32.949303, 27.629814, 43.279755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.225346, 27.340336, 43.281292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446498, 0.421588, -0.789242,
		0.569553, 0.546377, 0.614070,
		0.690108, -0.723696, 0.003839,
		33.432377, 27.123226, 43.282444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531765, 28.020163, 43.063934>,  <32.949303, 27.629814, 43.279755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531765, 28.020163, 43.063934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640694, 27.636402, 43.034557>,  <33.706051, 27.406147, 43.016930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640694, 27.636402, 43.034557>,  <33.531765, 28.020163, 43.063934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640694, 27.636402, 43.034557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518863, 0.210698, -0.828485,
		0.810323, 0.187506, 0.555174,
		0.272320, -0.959400, -0.073444,
		33.722389, 27.348581, 43.012524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261543, 28.016548, 42.953484>,  <33.531765, 28.020163, 43.063934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261543, 28.016548, 42.953484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160706, 27.653290, 42.819786>,  <34.100204, 27.435335, 42.739567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160706, 27.653290, 42.819786>,  <34.261543, 28.016548, 42.953484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160706, 27.653290, 42.819786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714269, 0.058416, -0.697430,
		0.652893, -0.414560, 0.633933,
		-0.252094, -0.908145, -0.334246,
		34.085075, 27.380846, 42.719513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936584, 27.713285, 42.750935>,  <34.261543, 28.016548, 42.953484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936584, 27.713285, 42.750935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.647522, 27.500938, 42.573872>,  <34.474083, 27.373531, 42.467632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.647522, 27.500938, 42.573872>,  <34.936584, 27.713285, 42.750935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647522, 27.500938, 42.573872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530004, -0.014497, -0.847871,
		0.443688, -0.847332, 0.291837,
		-0.722660, -0.530865, -0.442657,
		34.430725, 27.341679, 42.441074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
