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
	<24.063847, 35.087463, 35.363407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.259815, 35.178772, 35.026867>,  <24.377398, 35.233559, 34.824944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.259815, 35.178772, 35.026867>,  <24.063847, 35.087463, 35.363407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.259815, 35.178772, 35.026867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268639, 0.878610, 0.394814,
		0.829342, -0.419448, 0.369128,
		0.489923, 0.228273, -0.841348,
		24.406792, 35.247253, 34.774464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.673143, 35.277946, 35.608829>,  <24.063847, 35.087463, 35.363407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.673143, 35.277946, 35.608829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.548727, 35.463535, 35.277050>,  <24.474077, 35.574890, 35.077984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.548727, 35.463535, 35.277050>,  <24.673143, 35.277946, 35.608829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.548727, 35.463535, 35.277050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332847, 0.870646, 0.362199,
		0.890207, -0.163422, -0.425236,
		-0.311039, 0.463971, -0.829449,
		24.455416, 35.602726, 35.028214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.291027, 35.693043, 35.136955>,  <24.673143, 35.277946, 35.608829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.291027, 35.693043, 35.136955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.931019, 35.842098, 35.046532>,  <24.715014, 35.931534, 34.992279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.931019, 35.842098, 35.046532>,  <25.291027, 35.693043, 35.136955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.931019, 35.842098, 35.046532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374482, 0.926521, 0.036364,
		0.222996, -0.051925, -0.973435,
		-0.900020, 0.372643, -0.226056,
		24.661013, 35.953892, 34.978714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.304333, 36.158089, 34.546131>,  <25.291027, 35.693043, 35.136955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.304333, 36.158089, 34.546131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.008965, 36.248497, 34.800262>,  <24.831743, 36.302742, 34.952744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.008965, 36.248497, 34.800262>,  <25.304333, 36.158089, 34.546131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.008965, 36.248497, 34.800262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426784, 0.886096, 0.180804,
		-0.522099, 0.404659, -0.750775,
		-0.738422, 0.226021, 0.635332,
		24.787437, 36.316303, 34.990864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.762808, 36.848793, 34.455563>,  <25.304333, 36.158089, 34.546131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.762808, 36.848793, 34.455563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.577499, 36.721897, 34.786560>,  <25.466314, 36.645760, 34.985157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.577499, 36.721897, 34.786560>,  <25.762808, 36.848793, 34.455563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.577499, 36.721897, 34.786560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716756, 0.415013, 0.560380,
		-0.521192, 0.852716, 0.035118,
		-0.463271, -0.317237, 0.827491,
		25.438519, 36.626724, 35.034809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.746050, 37.414719, 34.814735>,  <25.762808, 36.848793, 34.455563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.746050, 37.414719, 34.814735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.720430, 37.099388, 35.059502>,  <25.705059, 36.910191, 35.206360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.720430, 37.099388, 35.059502>,  <25.746050, 37.414719, 34.814735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.720430, 37.099388, 35.059502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666738, 0.422436, 0.614009,
		-0.742535, 0.447314, 0.498550,
		-0.064049, -0.788326, 0.611915,
		25.701216, 36.862892, 35.243076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.534792, 37.620998, 35.506027>,  <25.746050, 37.414719, 34.814735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.534792, 37.620998, 35.506027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.775490, 37.302250, 35.484474>,  <25.919909, 37.111000, 35.471542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.775490, 37.302250, 35.484474>,  <25.534792, 37.620998, 35.506027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.775490, 37.302250, 35.484474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654729, 0.453519, 0.604690,
		-0.457421, -0.399149, 0.794636,
		0.601744, -0.796869, -0.053886,
		25.956013, 37.063190, 35.468307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.589703, 37.332401, 36.148788>,  <25.534792, 37.620998, 35.506027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.589703, 37.332401, 36.148788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.935528, 37.294941, 35.951302>,  <26.143023, 37.272465, 35.832809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.935528, 37.294941, 35.951302>,  <25.589703, 37.332401, 36.148788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.935528, 37.294941, 35.951302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443912, 0.602817, 0.662989,
		0.235531, -0.792364, 0.562747,
		0.864562, -0.093656, -0.493722,
		26.194897, 37.266846, 35.803185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.295622, 37.098656, 36.583160>,  <25.589703, 37.332401, 36.148788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.295622, 37.098656, 36.583160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.381613, 37.327995, 36.266918>,  <26.433208, 37.465599, 36.077175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.381613, 37.327995, 36.266918>,  <26.295622, 37.098656, 36.583160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.381613, 37.327995, 36.266918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478783, 0.643701, 0.597006,
		0.851206, -0.506871, -0.136129,
		0.214979, 0.573350, -0.790603,
		26.446106, 37.500000, 36.029736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.044657, 37.186108, 36.673374>,  <26.295622, 37.098656, 36.583160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.044657, 37.186108, 36.673374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.920635, 37.468925, 36.419144>,  <26.846222, 37.638618, 36.266605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.920635, 37.468925, 36.419144>,  <27.044657, 37.186108, 36.673374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.920635, 37.468925, 36.419144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513793, 0.687098, 0.513725,
		0.799928, -0.167271, -0.576312,
		-0.310052, 0.707048, -0.635571,
		26.827620, 37.681042, 36.228474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.624615, 37.503403, 36.397182>,  <27.044657, 37.186108, 36.673374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.624615, 37.503403, 36.397182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.326946, 37.766697, 36.351696>,  <27.148346, 37.924675, 36.324402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.326946, 37.766697, 36.351696>,  <27.624615, 37.503403, 36.397182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.326946, 37.766697, 36.351696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574085, 0.717260, 0.394923,
		0.341519, 0.228606, -0.911649,
		-0.744171, 0.658238, -0.113719,
		27.103695, 37.964169, 36.317581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.940407, 38.130367, 36.191891>,  <27.624615, 37.503403, 36.397182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.940407, 38.130367, 36.191891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.598093, 38.183846, 36.391796>,  <27.392706, 38.215931, 36.511738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.598093, 38.183846, 36.391796>,  <27.940407, 38.130367, 36.191891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.598093, 38.183846, 36.391796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407107, 0.770117, 0.491105,
		-0.319220, 0.623736, -0.713479,
		-0.855782, 0.133691, 0.499764,
		27.341358, 38.223953, 36.541725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.221601, 38.219742, 36.937477>,  <27.940407, 38.130367, 36.191891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.221601, 38.219742, 36.937477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.424866, 38.244892, 36.593891>,  <28.546824, 38.259983, 36.387741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.424866, 38.244892, 36.593891>,  <28.221601, 38.219742, 36.937477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.424866, 38.244892, 36.593891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721415, 0.575862, -0.384633,
		0.470460, 0.815125, 0.337992,
		0.508161, 0.062878, -0.858964,
		28.577314, 38.263756, 36.336201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.764612, 38.756084, 36.990658>,  <28.221601, 38.219742, 36.937477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.764612, 38.756084, 36.990658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.512609, 39.028439, 36.841267>,  <27.361408, 39.191853, 36.751633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.512609, 39.028439, 36.841267>,  <27.764612, 38.756084, 36.990658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.512609, 39.028439, 36.841267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478319, -0.719089, -0.504105,
		-0.611803, -0.138947, 0.778711,
		-0.630006, 0.680885, -0.373480,
		27.323608, 39.232704, 36.729221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.038704, 38.606956, 37.250889>,  <27.764612, 38.756084, 36.990658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.038704, 38.606956, 37.250889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.087631, 38.773888, 36.890694>,  <27.116987, 38.874046, 36.674576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.087631, 38.773888, 36.890694>,  <27.038704, 38.606956, 37.250889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.087631, 38.773888, 36.890694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584790, -0.702770, -0.405135,
		-0.801910, 0.576150, 0.158089,
		0.122318, 0.417331, -0.900485,
		27.124327, 38.899086, 36.620548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.379747, 38.834007, 36.878677>,  <27.038704, 38.606956, 37.250889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.379747, 38.834007, 36.878677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.670748, 38.710873, 36.633408>,  <26.845348, 38.636993, 36.486248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.670748, 38.710873, 36.633408>,  <26.379747, 38.834007, 36.878677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.670748, 38.710873, 36.633408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629272, -0.655514, -0.417515,
		-0.273418, 0.689595, -0.670598,
		0.727502, -0.307832, -0.613172,
		26.888998, 38.618523, 36.449455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.147856, 38.806221, 36.185459>,  <26.379747, 38.834007, 36.878677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.147856, 38.806221, 36.185459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.467623, 38.566879, 36.206997>,  <26.659483, 38.423275, 36.219921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.467623, 38.566879, 36.206997>,  <26.147856, 38.806221, 36.185459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.467623, 38.566879, 36.206997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498931, -0.711158, -0.495300,
		0.334661, 0.369085, -0.867051,
		0.799418, -0.598357, 0.053849,
		26.707449, 38.387371, 36.223152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.481976, 38.718323, 35.504272>,  <26.147856, 38.806221, 36.185459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.481976, 38.718323, 35.504272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.548199, 38.389965, 35.722897>,  <26.587933, 38.192951, 35.854069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.548199, 38.389965, 35.722897>,  <26.481976, 38.718323, 35.504272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.548199, 38.389965, 35.722897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424736, -0.559526, -0.711710,
		0.890050, -0.114312, -0.441297,
		0.165560, -0.820892, 0.546558,
		26.597866, 38.143696, 35.886864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.460291, 38.286278, 35.046494>,  <26.481976, 38.718323, 35.504272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.460291, 38.286278, 35.046494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.472885, 38.034222, 35.356831>,  <26.480442, 37.882988, 35.543034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.472885, 38.034222, 35.356831>,  <26.460291, 38.286278, 35.046494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.472885, 38.034222, 35.356831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285388, -0.749582, -0.597228,
		0.957895, -0.202613, -0.203434,
		0.031484, -0.630139, 0.775844,
		26.482330, 37.845181, 35.589584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.115540, 37.784271, 34.854649>,  <26.460291, 38.286278, 35.046494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.115540, 37.784271, 34.854649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.791611, 37.664253, 35.056305>,  <26.597254, 37.592243, 35.177299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.791611, 37.664253, 35.056305>,  <27.115540, 37.784271, 34.854649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.791611, 37.664253, 35.056305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023427, -0.842097, -0.538816,
		0.586205, -0.448157, 0.674921,
		-0.809824, -0.300046, 0.504141,
		26.548664, 37.574238, 35.207546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.120909, 37.103870, 35.174789>,  <27.115540, 37.784271, 34.854649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.120909, 37.103870, 35.174789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.742315, 37.133179, 35.049061>,  <26.515160, 37.150764, 34.973621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.742315, 37.133179, 35.049061>,  <27.120909, 37.103870, 35.174789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.742315, 37.133179, 35.049061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108206, -0.845487, -0.522919,
		-0.304072, -0.528946, 0.792311,
		-0.946484, 0.073273, -0.314324,
		26.458370, 37.155159, 34.954765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.860310, 37.263489, 35.044704>,  <27.120909, 37.103870, 35.174789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.860310, 37.263489, 35.044704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.665792, 37.119366, 35.363125>,  <27.549082, 37.032894, 35.554176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.665792, 37.119366, 35.363125>,  <27.860310, 37.263489, 35.044704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.665792, 37.119366, 35.363125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860041, -0.358377, 0.363175,
		0.154433, 0.861247, 0.484153,
		-0.486293, -0.360305, 0.796053,
		27.519905, 37.011272, 35.601940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.440783, 37.129551, 34.519020>,  <27.860310, 37.263489, 35.044704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.440783, 37.129551, 34.519020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.819050, 37.115253, 34.648285>,  <29.046011, 37.106674, 34.725842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.819050, 37.115253, 34.648285>,  <28.440783, 37.129551, 34.519020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.819050, 37.115253, 34.648285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321338, 0.254094, -0.912238,
		-0.049505, 0.966519, 0.251775,
		0.945670, -0.035745, 0.323158,
		29.102751, 37.104530, 34.745232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.386269, 37.307270, 33.827091>,  <28.440783, 37.129551, 34.519020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.386269, 37.307270, 33.827091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.493826, 37.606972, 33.584995>,  <28.558361, 37.786793, 33.439739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.493826, 37.606972, 33.584995>,  <28.386269, 37.307270, 33.827091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.493826, 37.606972, 33.584995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895578, -0.425742, -0.129163,
		-0.354451, -0.507306, -0.785497,
		0.268894, 0.749256, -0.605237,
		28.574493, 37.831749, 33.403423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.723728, 37.063248, 33.264538>,  <28.386269, 37.307270, 33.827091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.723728, 37.063248, 33.264538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.849371, 37.441017, 33.225742>,  <28.924757, 37.667679, 33.202465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.849371, 37.441017, 33.225742>,  <28.723728, 37.063248, 33.264538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.849371, 37.441017, 33.225742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820139, -0.321385, -0.473374,
		-0.478235, 0.069146, -0.875506,
		0.314106, 0.944421, -0.096988,
		28.943604, 37.724342, 33.196648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.984924, 37.140614, 32.617920>,  <28.723728, 37.063248, 33.264538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.984924, 37.140614, 32.617920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.155111, 37.403492, 32.866783>,  <29.257223, 37.561218, 33.016102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.155111, 37.403492, 32.866783>,  <28.984924, 37.140614, 32.617920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.155111, 37.403492, 32.866783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863689, -0.089606, -0.495996,
		-0.270216, 0.748378, -0.605734,
		0.425469, 0.657191, 0.622154,
		29.282753, 37.600651, 33.053429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.311975, 37.695343, 32.172737>,  <28.984924, 37.140614, 32.617920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.311975, 37.695343, 32.172737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.479713, 37.699432, 32.535847>,  <29.580357, 37.701885, 32.753712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.479713, 37.699432, 32.535847>,  <29.311975, 37.695343, 32.172737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.479713, 37.699432, 32.535847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892649, -0.186732, -0.410255,
		0.165315, 0.982358, -0.087431,
		0.419343, 0.010224, 0.907770,
		29.605516, 37.702499, 32.808178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.723749, 38.355755, 32.286606>,  <29.311975, 37.695343, 32.172737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.723749, 38.355755, 32.286606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.872856, 38.092075, 32.547836>,  <29.962320, 37.933868, 32.704575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.872856, 38.092075, 32.547836>,  <29.723749, 38.355755, 32.286606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.872856, 38.092075, 32.547836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920408, 0.352071, -0.169984,
		-0.117876, 0.664459, 0.737970,
		0.372765, -0.659197, 0.653074,
		29.984686, 37.894318, 32.743759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.275871, 38.682304, 32.587677>,  <29.723749, 38.355755, 32.286606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.275871, 38.682304, 32.587677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.357018, 38.294235, 32.640759>,  <30.405704, 38.061394, 32.672607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.357018, 38.294235, 32.640759>,  <30.275871, 38.682304, 32.587677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.357018, 38.294235, 32.640759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976460, 0.190284, -0.101577,
		0.073295, 0.150191, 0.985936,
		0.202864, -0.970173, 0.132708,
		30.417877, 38.003185, 32.680573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.969597, 38.713615, 32.935329>,  <30.275871, 38.682304, 32.587677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.969597, 38.713615, 32.935329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.920998, 38.380337, 32.719543>,  <30.891838, 38.180370, 32.590073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.920998, 38.380337, 32.719543>,  <30.969597, 38.713615, 32.935329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.920998, 38.380337, 32.719543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725830, 0.296148, -0.620860,
		0.677059, -0.466995, 0.568776,
		-0.121497, -0.833194, -0.539469,
		30.884548, 38.130379, 32.557701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.721813, 38.368885, 32.803291>,  <30.969597, 38.713615, 32.935329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.721813, 38.368885, 32.803291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.482710, 38.256264, 32.503048>,  <31.339249, 38.188690, 32.322903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.482710, 38.256264, 32.503048>,  <31.721813, 38.368885, 32.803291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.482710, 38.256264, 32.503048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665642, 0.347486, -0.660435,
		0.446774, -0.894417, -0.020299,
		-0.597758, -0.281554, -0.750609,
		31.303383, 38.171799, 32.277866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211788, 38.228977, 32.309639>,  <31.721813, 38.368885, 32.803291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211788, 38.228977, 32.309639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.852819, 38.273136, 32.138783>,  <31.637438, 38.299633, 32.036270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.852819, 38.273136, 32.138783>,  <32.211788, 38.228977, 32.309639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.852819, 38.273136, 32.138783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423632, 0.485922, -0.764471,
		0.123161, -0.867002, -0.482845,
		-0.897422, 0.110396, -0.427136,
		31.583593, 38.306255, 32.010643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186066, 37.923088, 31.683157>,  <32.211788, 38.228977, 32.309639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186066, 37.923088, 31.683157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899590, 38.201672, 31.665157>,  <31.727705, 38.368820, 31.654358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899590, 38.201672, 31.665157>,  <32.186066, 37.923088, 31.683157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.899590, 38.201672, 31.665157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474149, 0.438241, -0.763628,
		-0.512112, -0.568238, -0.644087,
		-0.716187, 0.696456, -0.045001,
		31.684734, 38.410610, 31.651657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.069473, 38.026054, 30.906574>,  <32.186066, 37.923088, 31.683157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.069473, 38.026054, 30.906574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926931, 38.336514, 31.114651>,  <31.841406, 38.522789, 31.239496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926931, 38.336514, 31.114651>,  <32.069473, 38.026054, 30.906574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926931, 38.336514, 31.114651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469096, 0.630109, -0.618799,
		-0.808058, 0.023505, -0.588634,
		-0.356359, 0.776151, 0.520190,
		31.820024, 38.569359, 31.270708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.797606, 38.557220, 30.439020>,  <32.069473, 38.026054, 30.906574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.797606, 38.557220, 30.439020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.944107, 38.712841, 30.777132>,  <32.032009, 38.806213, 30.980000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.944107, 38.712841, 30.777132>,  <31.797606, 38.557220, 30.439020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.944107, 38.712841, 30.777132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601276, 0.594331, -0.534076,
		-0.710157, 0.703855, -0.016248,
		0.366256, 0.389048, 0.845280,
		32.053986, 38.829556, 31.030716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.013046, 39.211525, 30.080980>,  <31.797606, 38.557220, 30.439020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.013046, 39.211525, 30.080980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.038338, 39.606861, 30.136393>,  <32.053513, 39.844063, 30.169640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.038338, 39.606861, 30.136393>,  <32.013046, 39.211525, 30.080980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.038338, 39.606861, 30.136393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130506, -0.129429, 0.982963,
		0.989429, -0.080228, 0.120800,
		0.063226, 0.988338, 0.138531,
		32.057304, 39.903362, 30.177952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522850, 39.227600, 30.486477>,  <32.013046, 39.211525, 30.080980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.522850, 39.227600, 30.486477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.240139, 39.509781, 30.507652>,  <32.070511, 39.679089, 30.520357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.240139, 39.509781, 30.507652>,  <32.522850, 39.227600, 30.486477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.240139, 39.509781, 30.507652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290384, -0.357544, 0.887603,
		0.645087, 0.611969, 0.457556,
		-0.706782, 0.705448, 0.052941,
		32.028103, 39.721416, 30.523535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593147, 39.655666, 31.154915>,  <32.522850, 39.227600, 30.486477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593147, 39.655666, 31.154915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.233322, 39.589207, 30.993336>,  <32.017426, 39.549332, 30.896389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.233322, 39.589207, 30.993336>,  <32.593147, 39.655666, 31.154915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.233322, 39.589207, 30.993336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290286, -0.463614, 0.837136,
		-0.326362, 0.870321, 0.368822,
		-0.899568, -0.166146, -0.403948,
		31.963451, 39.539364, 30.872152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.019825, 39.833759, 31.609175>,  <32.593147, 39.655666, 31.154915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.019825, 39.833759, 31.609175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.895622, 39.542847, 31.364340>,  <31.821100, 39.368298, 31.217440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.895622, 39.542847, 31.364340>,  <32.019825, 39.833759, 31.609175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.895622, 39.542847, 31.364340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434874, -0.463893, 0.771808,
		-0.845263, 0.505833, -0.172233,
		-0.310508, -0.727280, -0.612085,
		31.802469, 39.324661, 31.180714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.387999, 39.679169, 31.846653>,  <32.019825, 39.833759, 31.609175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.387999, 39.679169, 31.846653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.497572, 39.344101, 31.657644>,  <31.563316, 39.143063, 31.544239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.497572, 39.344101, 31.657644>,  <31.387999, 39.679169, 31.846653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497572, 39.344101, 31.657644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501719, -0.543628, 0.672865,
		-0.820512, 0.052754, -0.569190,
		0.273931, -0.837667, -0.472521,
		31.579752, 39.092800, 31.515888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.801409, 39.337429, 31.645990>,  <31.387999, 39.679169, 31.846653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.801409, 39.337429, 31.645990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.092630, 39.063995, 31.666588>,  <31.267363, 38.899937, 31.678946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.092630, 39.063995, 31.666588>,  <30.801409, 39.337429, 31.645990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.092630, 39.063995, 31.666588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532198, -0.516274, 0.670988,
		-0.432092, -0.515920, -0.739678,
		0.728053, -0.683584, 0.051493,
		31.311047, 38.858921, 31.682035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.437937, 38.781578, 31.499788>,  <30.801409, 39.337429, 31.645990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.437937, 38.781578, 31.499788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.776114, 38.650272, 31.668301>,  <30.979019, 38.571491, 31.769407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.776114, 38.650272, 31.668301>,  <30.437937, 38.781578, 31.499788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.776114, 38.650272, 31.668301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518610, -0.693025, 0.500760,
		0.127577, -0.641842, -0.756150,
		0.845439, -0.328261, 0.421279,
		31.029745, 38.551792, 31.794683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.549355, 37.966663, 31.386726>,  <30.437937, 38.781578, 31.499788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.549355, 37.966663, 31.386726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.724258, 38.095612, 31.722555>,  <30.829201, 38.172981, 31.924053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.724258, 38.095612, 31.722555>,  <30.549355, 37.966663, 31.386726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.724258, 38.095612, 31.722555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391566, -0.772174, 0.500423,
		0.809618, -0.547563, -0.211410,
		0.437259, 0.322370, 0.839573,
		30.855436, 38.192322, 31.974426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.952051, 37.359909, 31.689484>,  <30.549355, 37.966663, 31.386726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.952051, 37.359909, 31.689484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.799818, 37.624367, 31.948111>,  <30.708479, 37.783039, 32.103287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.799818, 37.624367, 31.948111>,  <30.952051, 37.359909, 31.689484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.799818, 37.624367, 31.948111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613430, -0.703700, 0.358483,
		0.691998, -0.260192, 0.673379,
		-0.380583, 0.661140, 0.646568,
		30.685644, 37.822708, 32.142082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.085497, 36.970654, 32.341026>,  <30.952051, 37.359909, 31.689484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.085497, 36.970654, 32.341026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.785561, 37.235123, 32.350758>,  <30.605598, 37.393803, 32.356598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.785561, 37.235123, 32.350758>,  <31.085497, 36.970654, 32.341026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.785561, 37.235123, 32.350758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603283, -0.698367, 0.385141,
		0.271636, 0.274115, 0.922537,
		-0.749843, 0.661168, 0.024333,
		30.560608, 37.433472, 32.358059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.707724, 36.778030, 32.887024>,  <31.085497, 36.970654, 32.341026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.707724, 36.778030, 32.887024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.467199, 36.988163, 32.646210>,  <30.322884, 37.114243, 32.501720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.467199, 36.988163, 32.646210>,  <30.707724, 36.778030, 32.887024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.467199, 36.988163, 32.646210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631505, -0.774082, -0.044713,
		-0.489515, 0.353304, 0.797215,
		-0.601312, 0.525333, -0.602038,
		30.286806, 37.145763, 32.465599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.083799, 36.128242, 32.670921>,  <30.707724, 36.778030, 32.887024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.083799, 36.128242, 32.670921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.759678, 35.906078, 32.596172>,  <30.565205, 35.772778, 32.551323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.759678, 35.906078, 32.596172>,  <31.083799, 36.128242, 32.670921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.759678, 35.906078, 32.596172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428528, -0.779125, 0.457523,
		-0.399710, 0.290655, 0.869340,
		-0.810306, -0.555413, -0.186870,
		30.516586, 35.739456, 32.540112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.807648, 35.750267, 33.307095>,  <31.083799, 36.128242, 32.670921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.807648, 35.750267, 33.307095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.723522, 35.542809, 32.975609>,  <30.673048, 35.418331, 32.776718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.723522, 35.542809, 32.975609>,  <30.807648, 35.750267, 33.307095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.723522, 35.542809, 32.975609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396490, -0.820083, 0.412624,
		-0.893624, -0.241799, 0.378113,
		-0.210312, -0.518648, -0.828717,
		30.660429, 35.387215, 32.726994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.536961, 35.011833, 33.545746>,  <30.807648, 35.750267, 33.307095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.536961, 35.011833, 33.545746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.666246, 34.986851, 33.168041>,  <30.743818, 34.971863, 32.941418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.666246, 34.986851, 33.168041>,  <30.536961, 35.011833, 33.545746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.666246, 34.986851, 33.168041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273915, -0.948931, 0.156524,
		-0.905815, -0.309239, -0.289602,
		0.323216, -0.062455, -0.944262,
		30.763210, 34.968113, 32.884762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.927588, 34.489399, 33.983852>,  <30.536961, 35.011833, 33.545746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.927588, 34.489399, 33.983852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.268900, 34.667419, 34.092552>,  <31.473686, 34.774231, 34.157772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.268900, 34.667419, 34.092552>,  <30.927588, 34.489399, 33.983852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.268900, 34.667419, 34.092552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256365, -0.095771, 0.961824,
		0.454083, -0.890371, 0.032376,
		0.853279, 0.445048, 0.271748,
		31.524883, 34.800934, 34.174076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.294786, 33.978508, 34.421780>,  <30.927588, 34.489399, 33.983852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.294786, 33.978508, 34.421780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.425344, 34.350574, 34.489029>,  <31.503679, 34.573814, 34.529377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.425344, 34.350574, 34.489029>,  <31.294786, 33.978508, 34.421780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.425344, 34.350574, 34.489029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015822, -0.183212, 0.982946,
		0.945102, -0.318168, -0.074517,
		0.326394, 0.930163, 0.168119,
		31.523262, 34.629623, 34.539463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.958633, 33.865887, 34.844112>,  <31.294786, 33.978508, 34.421780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.958633, 33.865887, 34.844112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.775934, 34.212677, 34.923843>,  <31.666315, 34.420750, 34.971684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.775934, 34.212677, 34.923843>,  <31.958633, 33.865887, 34.844112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.775934, 34.212677, 34.923843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038948, -0.204363, 0.978120,
		0.888742, 0.454519, 0.059576,
		-0.456749, 0.866976, 0.199329,
		31.638910, 34.472771, 34.983643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092884, 33.937893, 35.428452>,  <31.958633, 33.865887, 34.844112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092884, 33.937893, 35.428452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.839077, 34.246792, 35.415623>,  <31.686794, 34.432129, 35.407925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.839077, 34.246792, 35.415623>,  <32.092884, 33.937893, 35.428452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.839077, 34.246792, 35.415623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254377, -0.169462, 0.952142,
		0.729851, 0.612308, 0.303967,
		-0.634515, 0.772245, -0.032075,
		31.648722, 34.478466, 35.405998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323814, 34.548870, 35.811306>,  <32.092884, 33.937893, 35.428452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323814, 34.548870, 35.811306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.927711, 34.496525, 35.792255>,  <31.690050, 34.465118, 35.780827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.927711, 34.496525, 35.792255>,  <32.323814, 34.548870, 35.811306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.927711, 34.496525, 35.792255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022521, -0.186994, 0.982103,
		-0.137428, 0.973606, 0.182224,
		-0.990256, -0.130864, -0.047624,
		31.630634, 34.457264, 35.777969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.998890, 34.774570, 36.380283>,  <32.323814, 34.548870, 35.811306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.998890, 34.774570, 36.380283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694410, 34.542374, 36.264629>,  <31.511723, 34.403053, 36.195236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694410, 34.542374, 36.264629>,  <31.998890, 34.774570, 36.380283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.694410, 34.542374, 36.264629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083134, -0.354822, 0.931230,
		-0.643166, 0.732890, 0.221832,
		-0.761200, -0.580494, -0.289137,
		31.466051, 34.368225, 36.177887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.307890, 35.007477, 36.718754>,  <31.998890, 34.774570, 36.380283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.307890, 35.007477, 36.718754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.381176, 34.622013, 36.640984>,  <31.425148, 34.390736, 36.594322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.381176, 34.622013, 36.640984>,  <31.307890, 35.007477, 36.718754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.381176, 34.622013, 36.640984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088213, -0.213089, 0.973043,
		-0.979107, -0.161126, -0.124048,
		0.183216, -0.963656, -0.194423,
		31.436140, 34.332916, 36.582657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.449978, 34.522205, 37.375984>,  <31.307890, 35.007477, 36.718754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.449978, 34.522205, 37.375984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.078304, 34.417915, 37.271187>,  <30.855301, 34.355343, 37.208309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.078304, 34.417915, 37.271187>,  <31.449978, 34.522205, 37.375984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.078304, 34.417915, 37.271187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241322, 0.108981, -0.964306,
		0.279971, -0.959242, -0.038344,
		-0.929182, -0.260725, -0.261998,
		30.799549, 34.339699, 37.192589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466959, 33.912258, 36.992462>,  <31.449978, 34.522205, 37.375984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.466959, 33.912258, 36.992462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.162348, 34.154171, 36.899239>,  <30.979582, 34.299320, 36.843304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.162348, 34.154171, 36.899239>,  <31.466959, 33.912258, 36.992462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.162348, 34.154171, 36.899239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410926, 0.172447, -0.895211,
		-0.501216, -0.777497, -0.379843,
		-0.761527, 0.604781, -0.233060,
		30.933889, 34.335606, 36.829319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.294153, 33.806553, 36.319664>,  <31.466959, 33.912258, 36.992462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.294153, 33.806553, 36.319664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155172, 34.174484, 36.392532>,  <31.071785, 34.395245, 36.436253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155172, 34.174484, 36.392532>,  <31.294153, 33.806553, 36.319664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.155172, 34.174484, 36.392532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399455, 0.320960, -0.858732,
		-0.848359, -0.225596, -0.478949,
		-0.347451, 0.919832, 0.182174,
		31.050938, 34.450436, 36.447186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.701561, 34.033348, 35.797066>,  <31.294153, 33.806553, 36.319664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.701561, 34.033348, 35.797066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.882936, 34.359814, 35.940331>,  <30.991762, 34.555691, 36.026287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.882936, 34.359814, 35.940331>,  <30.701561, 34.033348, 35.797066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.882936, 34.359814, 35.940331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130817, 0.336550, -0.932535,
		-0.881636, 0.469699, 0.045836,
		0.453437, 0.816160, 0.358159,
		31.018967, 34.604660, 36.047779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.527035, 34.664204, 35.407085>,  <30.701561, 34.033348, 35.797066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.527035, 34.664204, 35.407085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.880856, 34.742252, 35.576553>,  <31.093149, 34.789082, 35.678234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.880856, 34.742252, 35.576553>,  <30.527035, 34.664204, 35.407085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.880856, 34.742252, 35.576553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286597, 0.489267, -0.823699,
		-0.368005, 0.850028, 0.376863,
		0.884553, 0.195117, 0.423669,
		31.146221, 34.800789, 35.703655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.699612, 35.376419, 35.216293>,  <30.527035, 34.664204, 35.407085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.699612, 35.376419, 35.216293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.012907, 35.139282, 35.291210>,  <31.200884, 34.997002, 35.336163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.012907, 35.139282, 35.291210>,  <30.699612, 35.376419, 35.216293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.012907, 35.139282, 35.291210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400753, 0.251094, -0.881107,
		0.475327, 0.765175, 0.434248,
		0.783238, -0.592840, 0.187294,
		31.247879, 34.961430, 35.347397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.373232, 35.801517, 35.173790>,  <30.699612, 35.376419, 35.216293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.373232, 35.801517, 35.173790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.437868, 35.413128, 35.103256>,  <31.476650, 35.180096, 35.060936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.437868, 35.413128, 35.103256>,  <31.373232, 35.801517, 35.173790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437868, 35.413128, 35.103256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576603, 0.237910, -0.781619,
		0.800885, 0.024626, 0.598312,
		0.161592, -0.970975, -0.176339,
		31.486345, 35.121834, 35.050354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077007, 35.741146, 34.922024>,  <31.373232, 35.801517, 35.173790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077007, 35.741146, 34.922024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.892904, 35.409943, 34.793922>,  <31.782442, 35.211220, 34.717064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.892904, 35.409943, 34.793922>,  <32.077007, 35.741146, 34.922024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.892904, 35.409943, 34.793922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587194, -0.013370, -0.809335,
		0.665858, -0.560550, 0.492358,
		-0.460256, -0.828012, -0.320249,
		31.754827, 35.161537, 34.697849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591278, 35.458630, 34.508656>,  <32.077007, 35.741146, 34.922024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591278, 35.458630, 34.508656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.252300, 35.274147, 34.403488>,  <32.048912, 35.163460, 34.340389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.252300, 35.274147, 34.403488>,  <32.591278, 35.458630, 34.508656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252300, 35.274147, 34.403488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294353, 0.003936, -0.955689,
		0.441800, -0.887286, 0.132421,
		-0.847448, -0.461202, -0.262914,
		31.998066, 35.135788, 34.324615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706787, 34.909370, 34.043495>,  <32.591278, 35.458630, 34.508656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706787, 34.909370, 34.043495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.335175, 35.029045, 33.956421>,  <32.112206, 35.100849, 33.904175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.335175, 35.029045, 33.956421>,  <32.706787, 34.909370, 34.043495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.335175, 35.029045, 33.956421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228733, 0.001949, -0.973487,
		-0.290834, -0.954191, -0.070245,
		-0.929030, 0.299191, -0.217688,
		32.056465, 35.118801, 33.891113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337128, 34.462139, 33.574924>,  <32.706787, 34.909370, 34.043495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337128, 34.462139, 33.574924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165901, 34.821632, 33.536888>,  <32.063164, 35.037327, 33.514065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165901, 34.821632, 33.536888>,  <32.337128, 34.462139, 33.574924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.165901, 34.821632, 33.536888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345577, 0.065556, -0.936098,
		-0.835066, -0.433574, -0.338643,
		-0.428068, 0.898730, -0.095089,
		32.037479, 35.091251, 33.508362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.687702, 34.590652, 33.038776>,  <32.337128, 34.462139, 33.574924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.687702, 34.590652, 33.038776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924078, 34.912827, 33.056950>,  <32.065903, 35.106133, 33.067856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924078, 34.912827, 33.056950>,  <31.687702, 34.590652, 33.038776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.924078, 34.912827, 33.056950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182019, -0.078252, -0.980176,
		-0.785913, 0.587495, -0.192847,
		0.590939, 0.805435, 0.045436,
		32.101360, 35.154457, 33.070580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.415199, 35.108437, 32.557014>,  <31.687702, 34.590652, 33.038776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.415199, 35.108437, 32.557014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.806585, 35.147083, 32.629974>,  <32.041416, 35.170273, 32.673752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.806585, 35.147083, 32.629974>,  <31.415199, 35.108437, 32.557014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.806585, 35.147083, 32.629974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190293, -0.079953, -0.978466,
		-0.079953, 0.992105, -0.096616,
		0.978466, 0.096616, 0.182399,
		32.100124, 35.176067, 32.684692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.655231, 35.526707, 31.990374>,  <31.415199, 35.108437, 32.557014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.655231, 35.526707, 31.990374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.002731, 35.389725, 32.133480>,  <32.211231, 35.307537, 32.219345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.002731, 35.389725, 32.133480>,  <31.655231, 35.526707, 31.990374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.002731, 35.389725, 32.133480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412572, 0.100813, -0.905329,
		0.273967, 0.934110, 0.228869,
		0.868750, -0.342455, 0.357768,
		32.263355, 35.286987, 32.240810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.261932, 35.971371, 31.739229>,  <31.655231, 35.526707, 31.990374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.261932, 35.971371, 31.739229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.410080, 35.609055, 31.821560>,  <32.498970, 35.391663, 31.870958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.410080, 35.609055, 31.821560>,  <32.261932, 35.971371, 31.739229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.410080, 35.609055, 31.821560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429017, -0.029726, -0.902807,
		0.823874, 0.422679, 0.377590,
		0.370373, -0.905792, 0.205827,
		32.521191, 35.337318, 31.883308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.778564, 35.949295, 31.371576>,  <32.261932, 35.971371, 31.739229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.778564, 35.949295, 31.371576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.768360, 35.557148, 31.449781>,  <32.762238, 35.321857, 31.496704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.768360, 35.557148, 31.449781>,  <32.778564, 35.949295, 31.371576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.768360, 35.557148, 31.449781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485319, -0.183126, -0.854944,
		0.873965, 0.073076, 0.480464,
		-0.025510, -0.980370, 0.195511,
		32.760708, 35.263039, 31.508434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456421, 35.668354, 31.507036>,  <32.778564, 35.949295, 31.371576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.456421, 35.668354, 31.507036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.213436, 35.381668, 31.370033>,  <33.067646, 35.209656, 31.287830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.213436, 35.381668, 31.370033>,  <33.456421, 35.668354, 31.507036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.213436, 35.381668, 31.370033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520827, -0.033799, -0.852993,
		0.599775, -0.696549, 0.393815,
		-0.607462, -0.716713, -0.342510,
		33.031197, 35.166653, 31.267281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903240, 35.380642, 31.079197>,  <33.456421, 35.668354, 31.507036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903240, 35.380642, 31.079197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544617, 35.233887, 30.979939>,  <33.329441, 35.145832, 30.920383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544617, 35.233887, 30.979939>,  <33.903240, 35.380642, 31.079197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544617, 35.233887, 30.979939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305535, -0.106677, -0.946186,
		0.320676, -0.924127, 0.207740,
		-0.896557, -0.366891, -0.248144,
		33.275650, 35.123821, 30.905495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056625, 34.743942, 30.740856>,  <33.903240, 35.380642, 31.079197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056625, 34.743942, 30.740856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689068, 34.858860, 30.632710>,  <33.468533, 34.927811, 30.567822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689068, 34.858860, 30.632710>,  <34.056625, 34.743942, 30.740856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689068, 34.858860, 30.632710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261073, -0.070951, -0.962708,
		-0.295767, -0.955210, -0.009810,
		-0.918892, 0.287298, -0.270365,
		33.413399, 34.945049, 30.551600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.874439, 34.328793, 30.066587>,  <34.056625, 34.743942, 30.740856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.874439, 34.328793, 30.066587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.619614, 34.637115, 30.068117>,  <33.466721, 34.822109, 30.069035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.619614, 34.637115, 30.068117>,  <33.874439, 34.328793, 30.066587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619614, 34.637115, 30.068117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238083, 0.201487, -0.950116,
		-0.733124, -0.604370, -0.311875,
		-0.637060, 0.770805, 0.003825,
		33.428497, 34.868359, 30.069265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424458, 34.197929, 29.525072>,  <33.874439, 34.328793, 30.066587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424458, 34.197929, 29.525072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419437, 34.592373, 29.591314>,  <33.416424, 34.829041, 29.631060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419437, 34.592373, 29.591314>,  <33.424458, 34.197929, 29.525072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419437, 34.592373, 29.591314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195108, 0.164851, -0.966828,
		-0.980702, 0.020177, -0.194467,
		-0.012550, 0.986112, 0.165606,
		33.415672, 34.888206, 29.640997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932449, 34.422520, 29.048187>,  <33.424458, 34.197929, 29.525072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.932449, 34.422520, 29.048187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.141762, 34.740440, 29.171131>,  <33.267349, 34.931190, 29.244898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.141762, 34.740440, 29.171131>,  <32.932449, 34.422520, 29.048187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141762, 34.740440, 29.171131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080130, 0.313191, -0.946304,
		-0.848382, 0.519815, 0.100201,
		0.523285, 0.794798, 0.307358,
		33.298748, 34.978878, 29.263338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599152, 34.878399, 28.742113>,  <32.932449, 34.422520, 29.048187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599152, 34.878399, 28.742113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957592, 35.037453, 28.821003>,  <33.172657, 35.132885, 28.868338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957592, 35.037453, 28.821003>,  <32.599152, 34.878399, 28.742113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.957592, 35.037453, 28.821003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065634, 0.558163, -0.827131,
		-0.438979, 0.728245, 0.526266,
		0.896097, 0.397634, 0.197225,
		33.226421, 35.156742, 28.880171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.511131, 35.482780, 28.624926>,  <32.599152, 34.878399, 28.742113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.511131, 35.482780, 28.624926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910194, 35.459137, 28.611103>,  <33.149632, 35.444950, 28.602810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910194, 35.459137, 28.611103>,  <32.511131, 35.482780, 28.624926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.910194, 35.459137, 28.611103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009035, 0.613923, -0.789314,
		0.067873, 0.787149, 0.613017,
		0.997653, -0.059112, -0.034557,
		33.209492, 35.441402, 28.600737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750641, 36.162811, 28.666950>,  <32.511131, 35.482780, 28.624926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750641, 36.162811, 28.666950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050312, 35.955257, 28.502274>,  <33.230114, 35.830727, 28.403467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050312, 35.955257, 28.502274>,  <32.750641, 36.162811, 28.666950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050312, 35.955257, 28.502274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066415, 0.559570, -0.826118,
		0.659030, 0.646253, 0.384756,
		0.749179, -0.518883, -0.411694,
		33.275066, 35.799591, 28.378765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288670, 36.629585, 28.549606>,  <32.750641, 36.162811, 28.666950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288670, 36.629585, 28.549606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.351974, 36.337551, 28.283697>,  <33.389957, 36.162331, 28.124151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.351974, 36.337551, 28.283697>,  <33.288670, 36.629585, 28.549606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.351974, 36.337551, 28.283697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183194, 0.639859, -0.746338,
		0.970255, 0.239896, -0.032485,
		0.158258, -0.730089, -0.664774,
		33.399452, 36.118523, 28.084265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724167, 36.933449, 28.056223>,  <33.288670, 36.629585, 28.549606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724167, 36.933449, 28.056223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.607864, 36.607750, 27.855244>,  <33.538082, 36.412331, 27.734655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.607864, 36.607750, 27.855244>,  <33.724167, 36.933449, 28.056223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.607864, 36.607750, 27.855244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153580, 0.558045, -0.815475,
		0.944391, -0.159937, -0.287307,
		-0.290755, -0.814252, -0.502450,
		33.520638, 36.363476, 27.704510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051540, 36.973804, 27.443581>,  <33.724167, 36.933449, 28.056223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.051540, 36.973804, 27.443581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.764572, 36.708073, 27.359699>,  <33.592392, 36.548634, 27.309370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.764572, 36.708073, 27.359699>,  <34.051540, 36.973804, 27.443581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764572, 36.708073, 27.359699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228842, 0.509051, -0.829758,
		0.657984, -0.547294, -0.517229,
		-0.717418, -0.664331, -0.209704,
		33.549347, 36.508774, 27.296789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247135, 36.640484, 26.765854>,  <34.051540, 36.973804, 27.443581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247135, 36.640484, 26.765854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857666, 36.585430, 26.838545>,  <33.623985, 36.552399, 26.882160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857666, 36.585430, 26.838545>,  <34.247135, 36.640484, 26.765854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857666, 36.585430, 26.838545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212456, 0.258850, -0.942263,
		0.082646, -0.956061, -0.281276,
		-0.973670, -0.137633, 0.181728,
		33.565567, 36.544140, 26.893063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939732, 36.203831, 26.189882>,  <34.247135, 36.640484, 26.765854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939732, 36.203831, 26.189882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.625271, 36.390835, 26.351570>,  <33.436592, 36.503036, 26.448582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.625271, 36.390835, 26.351570>,  <33.939732, 36.203831, 26.189882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625271, 36.390835, 26.351570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257565, 0.346701, -0.901920,
		-0.561800, -0.813162, -0.152146,
		-0.786156, 0.467511, 0.404218,
		33.389423, 36.531090, 26.472836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504002, 36.216644, 25.633213>,  <33.939732, 36.203831, 26.189882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504002, 36.216644, 25.633213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.344051, 36.479050, 25.889257>,  <33.248081, 36.636494, 26.042885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.344051, 36.479050, 25.889257>,  <33.504002, 36.216644, 25.633213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344051, 36.479050, 25.889257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331499, 0.547590, -0.768279,
		-0.854520, -0.519416, -0.001503,
		-0.399879, 0.656012, 0.640113,
		33.224087, 36.675854, 26.081291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844051, 36.204464, 25.539913>,  <33.504002, 36.216644, 25.633213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.844051, 36.204464, 25.539913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918583, 36.560505, 25.706285>,  <32.963303, 36.774128, 25.806108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918583, 36.560505, 25.706285>,  <32.844051, 36.204464, 25.539913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918583, 36.560505, 25.706285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129556, 0.441909, -0.887655,
		-0.973908, 0.111509, 0.197659,
		0.186329, 0.890102, 0.415931,
		32.974480, 36.827538, 25.831064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362106, 36.664471, 25.325457>,  <32.844051, 36.204464, 25.539913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.362106, 36.664471, 25.325457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678234, 36.883770, 25.434866>,  <32.867912, 37.015350, 25.500511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678234, 36.883770, 25.434866>,  <32.362106, 36.664471, 25.325457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678234, 36.883770, 25.434866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006262, 0.453635, -0.891166,
		-0.612658, 0.702596, 0.361951,
		0.790324, 0.548246, 0.273524,
		32.915333, 37.048244, 25.516924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.182674, 37.370564, 25.145405>,  <32.362106, 36.664471, 25.325457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.182674, 37.370564, 25.145405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.580997, 37.370899, 25.182007>,  <32.819992, 37.371101, 25.203968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.580997, 37.370899, 25.182007>,  <32.182674, 37.370564, 25.145405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580997, 37.370899, 25.182007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084737, 0.369004, -0.925557,
		-0.034545, 0.929427, 0.367385,
		0.995804, 0.000843, 0.091504,
		32.879738, 37.371151, 25.209457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298107, 38.032429, 25.001621>,  <32.182674, 37.370564, 25.145405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298107, 38.032429, 25.001621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666008, 37.889870, 24.935843>,  <32.886749, 37.804337, 24.896376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666008, 37.889870, 24.935843>,  <32.298107, 38.032429, 25.001621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666008, 37.889870, 24.935843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081532, 0.583305, -0.808151,
		0.383941, 0.729890, 0.565552,
		0.919751, -0.356393, -0.164446,
		32.941933, 37.782951, 24.886509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701416, 38.595467, 24.943295>,  <32.298107, 38.032429, 25.001621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701416, 38.595467, 24.943295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922825, 38.304535, 24.781008>,  <33.055672, 38.129978, 24.683636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922825, 38.304535, 24.781008>,  <32.701416, 38.595467, 24.943295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922825, 38.304535, 24.781008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204370, 0.590880, -0.780445,
		0.807368, 0.349079, 0.475710,
		0.553525, -0.727327, -0.405716,
		33.088882, 38.086338, 24.659292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.261158, 38.972404, 24.758184>,  <32.701416, 38.595467, 24.943295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.261158, 38.972404, 24.758184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.278202, 38.629871, 24.552317>,  <33.288429, 38.424351, 24.428795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.278202, 38.629871, 24.552317>,  <33.261158, 38.972404, 24.758184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.278202, 38.629871, 24.552317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440054, 0.478565, -0.759822,
		0.896960, -0.194106, 0.397222,
		0.042611, -0.856328, -0.514671,
		33.290985, 38.372974, 24.397915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998386, 38.891830, 24.484156>,  <33.261158, 38.972404, 24.758184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998386, 38.891830, 24.484156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736366, 38.684204, 24.264526>,  <33.579155, 38.559628, 24.132748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736366, 38.684204, 24.264526>,  <33.998386, 38.891830, 24.484156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736366, 38.684204, 24.264526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247510, 0.539184, -0.804996,
		0.713900, -0.663211, -0.224716,
		-0.655046, -0.519068, -0.549075,
		33.539852, 38.528484, 24.099804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353859, 38.713493, 23.845861>,  <33.998386, 38.891830, 24.484156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353859, 38.713493, 23.845861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973530, 38.655518, 23.736366>,  <33.745335, 38.620731, 23.670670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973530, 38.655518, 23.736366>,  <34.353859, 38.713493, 23.845861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973530, 38.655518, 23.736366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153496, 0.547120, -0.822860,
		0.269035, -0.824410, -0.497965,
		-0.950820, -0.144942, -0.273738,
		33.688282, 38.612034, 23.654245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381584, 38.392929, 23.297039>,  <34.353859, 38.713493, 23.845861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381584, 38.392929, 23.297039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029842, 38.583092, 23.307814>,  <33.818798, 38.697189, 23.314278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029842, 38.583092, 23.307814>,  <34.381584, 38.392929, 23.297039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029842, 38.583092, 23.307814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223916, 0.462780, -0.857728,
		-0.420232, -0.748216, -0.513399,
		-0.879356, 0.475403, 0.026937,
		33.766037, 38.725712, 23.315895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256451, 38.493099, 22.650272>,  <34.381584, 38.392929, 23.297039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256451, 38.493099, 22.650272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998108, 38.764397, 22.790478>,  <33.843102, 38.927174, 22.874601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998108, 38.764397, 22.790478>,  <34.256451, 38.493099, 22.650272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998108, 38.764397, 22.790478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222723, 0.606524, -0.763232,
		-0.730249, -0.414872, -0.542787,
		-0.645857, 0.678240, 0.350512,
		33.804352, 38.967869, 22.895632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700180, 38.687870, 22.055414>,  <34.256451, 38.493099, 22.650272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700180, 38.687870, 22.055414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.761700, 38.964134, 22.338068>,  <33.798611, 39.129894, 22.507660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.761700, 38.964134, 22.338068>,  <33.700180, 38.687870, 22.055414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761700, 38.964134, 22.338068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331310, 0.637701, -0.695393,
		-0.930903, 0.341063, -0.130748,
		0.153795, 0.690662, 0.706636,
		33.807838, 39.171333, 22.550058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479572, 39.225086, 21.741423>,  <33.700180, 38.687870, 22.055414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479572, 39.225086, 21.741423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669941, 39.399090, 22.047171>,  <33.784161, 39.503494, 22.230619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669941, 39.399090, 22.047171>,  <33.479572, 39.225086, 21.741423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669941, 39.399090, 22.047171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365677, 0.692546, -0.621820,
		-0.799861, 0.575451, 0.170523,
		0.475922, 0.435014, 0.764370,
		33.812717, 39.529594, 22.276482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166096, 39.950459, 21.712879>,  <33.479572, 39.225086, 21.741423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166096, 39.950459, 21.712879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.512646, 39.973923, 21.911255>,  <33.720573, 39.987999, 22.030281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.512646, 39.973923, 21.911255>,  <33.166096, 39.950459, 21.712879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512646, 39.973923, 21.911255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235608, 0.827602, -0.509474,
		-0.440326, 0.558242, 0.703191,
		0.866373, 0.058657, 0.495941,
		33.772556, 39.991520, 22.060038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140064, 40.542744, 22.010612>,  <33.166096, 39.950459, 21.712879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140064, 40.542744, 22.010612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.530338, 40.455467, 22.018972>,  <33.764503, 40.403103, 22.023989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.530338, 40.455467, 22.018972>,  <33.140064, 40.542744, 22.010612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.530338, 40.455467, 22.018972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201316, 0.854342, -0.479136,
		0.086685, 0.471693, 0.877491,
		0.975683, -0.218187, 0.020901,
		33.823044, 40.390011, 22.025242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495338, 41.222000, 22.203043>,  <33.140064, 40.542744, 22.010612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495338, 41.222000, 22.203043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.754860, 40.980396, 22.017904>,  <33.910572, 40.835434, 21.906822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.754860, 40.980396, 22.017904>,  <33.495338, 41.222000, 22.203043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.754860, 40.980396, 22.017904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383947, 0.784988, -0.486188,
		0.656988, 0.137734, 0.741212,
		0.648807, -0.604006, -0.462845,
		33.949501, 40.799194, 21.879051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038677, 41.656670, 22.050097>,  <33.495338, 41.222000, 22.203043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.038677, 41.656670, 22.050097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.095329, 41.341686, 21.810144>,  <34.129318, 41.152699, 21.666172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.095329, 41.341686, 21.810144>,  <34.038677, 41.656670, 22.050097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095329, 41.341686, 21.810144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001610, 0.606172, -0.795332,
		0.989919, 0.111675, 0.087118,
		0.141628, -0.787454, -0.599881,
		34.137817, 41.105450, 21.630180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597919, 41.966278, 21.700138>,  <34.038677, 41.656670, 22.050097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597919, 41.966278, 21.700138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.454697, 41.669250, 21.473730>,  <34.368763, 41.491032, 21.337885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.454697, 41.669250, 21.473730>,  <34.597919, 41.966278, 21.700138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454697, 41.669250, 21.473730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148876, 0.643862, -0.750519,
		0.921754, -0.184463, -0.341092,
		-0.358059, -0.742573, -0.566020,
		34.347279, 41.446480, 21.303925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970798, 41.966797, 21.130146>,  <34.597919, 41.966278, 21.700138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.970798, 41.966797, 21.130146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632492, 41.792732, 21.006657>,  <34.429508, 41.688293, 20.932564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632492, 41.792732, 21.006657>,  <34.970798, 41.966797, 21.130146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632492, 41.792732, 21.006657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108639, 0.706951, -0.698869,
		0.522375, -0.557541, -0.645192,
		-0.845767, -0.435165, -0.308723,
		34.378761, 41.662182, 20.914040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059193, 41.807110, 20.418665>,  <34.970798, 41.966797, 21.130146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059193, 41.807110, 20.418665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.661686, 41.806400, 20.463261>,  <34.423183, 41.805973, 20.490019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.661686, 41.806400, 20.463261>,  <35.059193, 41.807110, 20.418665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661686, 41.806400, 20.463261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085736, 0.651440, -0.753840,
		-0.071291, -0.758698, -0.647530,
		-0.993764, -0.001774, 0.111490,
		34.363556, 41.805866, 20.496708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874805, 41.896252, 19.763901>,  <35.059193, 41.807110, 20.418665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.874805, 41.896252, 19.763901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.540611, 41.992840, 19.961349>,  <34.340096, 42.050793, 20.079819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.540611, 41.992840, 19.961349>,  <34.874805, 41.896252, 19.763901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.540611, 41.992840, 19.961349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168974, 0.741870, -0.648904,
		-0.522890, -0.625558, -0.579019,
		-0.835484, 0.241466, 0.493620,
		34.289967, 42.065281, 20.109436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360500, 42.012753, 19.227741>,  <34.874805, 41.896252, 19.763901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360500, 42.012753, 19.227741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254711, 42.228859, 19.547281>,  <34.191238, 42.358524, 19.739006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254711, 42.228859, 19.547281>,  <34.360500, 42.012753, 19.227741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254711, 42.228859, 19.547281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155808, 0.793527, -0.588250,
		-0.951723, -0.280046, -0.125691,
		-0.264477, 0.540267, 0.798851,
		34.175369, 42.390938, 19.786936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716057, 42.385052, 19.037897>,  <34.360500, 42.012753, 19.227741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716057, 42.385052, 19.037897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895527, 42.561119, 19.349010>,  <34.003208, 42.666759, 19.535679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895527, 42.561119, 19.349010>,  <33.716057, 42.385052, 19.037897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895527, 42.561119, 19.349010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120704, 0.892172, -0.435271,
		-0.885508, 0.101412, 0.453421,
		0.448671, 0.440165, 0.777784,
		34.030128, 42.693169, 19.582346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243893, 42.995796, 19.066652>,  <33.716057, 42.385052, 19.037897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243893, 42.995796, 19.066652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.573772, 43.076378, 19.278044>,  <33.771698, 43.124725, 19.404879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.573772, 43.076378, 19.278044>,  <33.243893, 42.995796, 19.066652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.573772, 43.076378, 19.278044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049725, 0.904967, -0.422566,
		-0.563384, 0.374768, 0.736307,
		0.824698, 0.201455, 0.528479,
		33.821182, 43.136814, 19.436588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185734, 43.652805, 19.293564>,  <33.243893, 42.995796, 19.066652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185734, 43.652805, 19.293564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566216, 43.535118, 19.256363>,  <33.794502, 43.464504, 19.234043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566216, 43.535118, 19.256363>,  <33.185734, 43.652805, 19.293564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566216, 43.535118, 19.256363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207884, 0.833764, -0.511490,
		0.228032, 0.467197, 0.854242,
		0.951202, -0.294219, -0.093002,
		33.851578, 43.446854, 19.228462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717018, 44.285324, 19.540112>,  <33.185734, 43.652805, 19.293564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717018, 44.285324, 19.540112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860733, 44.041958, 19.257057>,  <33.946960, 43.895939, 19.087225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860733, 44.041958, 19.257057>,  <33.717018, 44.285324, 19.540112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860733, 44.041958, 19.257057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260342, 0.793506, -0.550064,
		0.896179, 0.013403, 0.443491,
		0.359285, -0.608415, -0.707634,
		33.968517, 43.859432, 19.044767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521992, 44.378342, 19.420147>,  <33.717018, 44.285324, 19.540112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521992, 44.378342, 19.420147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.272141, 44.277145, 19.124622>,  <34.122231, 44.216427, 18.947308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.272141, 44.277145, 19.124622>,  <34.521992, 44.378342, 19.420147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272141, 44.277145, 19.124622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191360, 0.867641, -0.458891,
		0.757116, -0.428014, -0.493537,
		-0.624625, -0.252991, -0.738810,
		34.084755, 44.201248, 18.902979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822002, 44.457886, 18.703070>,  <34.521992, 44.378342, 19.420147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822002, 44.457886, 18.703070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425362, 44.508034, 18.690403>,  <34.187378, 44.538120, 18.682804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425362, 44.508034, 18.690403>,  <34.822002, 44.457886, 18.703070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425362, 44.508034, 18.690403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127444, 0.906168, -0.403260,
		-0.021862, -0.403910, -0.914538,
		-0.991605, 0.125368, -0.031665,
		34.127880, 44.545643, 18.680902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234955, 44.518795, 18.182520>,  <34.822002, 44.457886, 18.703070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234955, 44.518795, 18.182520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.518757, 44.237682, 18.161720>,  <34.689037, 44.069016, 18.149240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.518757, 44.237682, 18.161720>,  <34.234955, 44.518795, 18.182520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518757, 44.237682, 18.161720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204301, 0.275752, -0.939267,
		0.674434, 0.655793, 0.339226,
		0.709506, -0.702778, -0.051998,
		34.731609, 44.026848, 18.146120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895908, 44.788601, 17.800823>,  <34.234955, 44.518795, 18.182520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895908, 44.788601, 17.800823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.898781, 44.390263, 17.764507>,  <34.900505, 44.151260, 17.742718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.898781, 44.390263, 17.764507>,  <34.895908, 44.788601, 17.800823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898781, 44.390263, 17.764507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275840, 0.089243, -0.957052,
		0.961177, -0.018172, 0.275334,
		0.007180, -0.995844, -0.090791,
		34.900936, 44.091511, 17.737270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222546, 45.245007, 18.399137>,  <34.895908, 44.788601, 17.800823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.222546, 45.245007, 18.399137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.534382, 45.411953, 18.585920>,  <35.721485, 45.512119, 18.697990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.534382, 45.411953, 18.585920>,  <35.222546, 45.245007, 18.399137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534382, 45.411953, 18.585920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106970, -0.645901, 0.755890,
		0.617088, -0.639234, -0.458892,
		0.779589, 0.417363, 0.466957,
		35.768257, 45.537163, 18.726007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704746, 44.747566, 18.757212>,  <35.222546, 45.245007, 18.399137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704746, 44.747566, 18.757212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.757030, 45.080822, 18.972168>,  <35.788403, 45.280777, 19.101141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.757030, 45.080822, 18.972168>,  <35.704746, 44.747566, 18.757212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757030, 45.080822, 18.972168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135568, -0.551969, 0.822771,
		0.982107, -0.034696, -0.185098,
		0.130715, 0.833143, 0.537389,
		35.796246, 45.330765, 19.133385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230572, 44.558987, 19.256197>,  <35.704746, 44.747566, 18.757212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.230572, 44.558987, 19.256197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.943520, 44.802738, 19.391052>,  <35.771286, 44.948990, 19.471966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.943520, 44.802738, 19.391052>,  <36.230572, 44.558987, 19.256197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.943520, 44.802738, 19.391052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023100, -0.504660, 0.863009,
		0.696038, 0.611536, 0.376238,
		-0.717633, 0.609378, 0.337136,
		35.728230, 44.985550, 19.492193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350468, 44.971485, 19.949072>,  <36.230572, 44.558987, 19.256197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350468, 44.971485, 19.949072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967018, 44.882912, 19.877510>,  <35.736950, 44.829769, 19.834572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967018, 44.882912, 19.877510>,  <36.350468, 44.971485, 19.949072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967018, 44.882912, 19.877510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031174, -0.543024, 0.839138,
		-0.282963, 0.809995, 0.513653,
		-0.958624, -0.221432, -0.178907,
		35.679432, 44.816483, 19.823837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905853, 45.241901, 20.532276>,  <36.350468, 44.971485, 19.949072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905853, 45.241901, 20.532276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820690, 44.903458, 20.336819>,  <35.769592, 44.700394, 20.219543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820690, 44.903458, 20.336819>,  <35.905853, 45.241901, 20.532276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820690, 44.903458, 20.336819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202669, -0.527477, 0.825041,
		-0.955821, 0.076627, 0.283785,
		-0.212910, -0.846107, -0.488644,
		35.756817, 44.649624, 20.190226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545849, 44.733509, 21.025063>,  <35.905853, 45.241901, 20.532276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545849, 44.733509, 21.025063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674240, 44.490551, 20.734396>,  <35.751274, 44.344776, 20.559996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674240, 44.490551, 20.734396>,  <35.545849, 44.733509, 21.025063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674240, 44.490551, 20.734396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321063, -0.652046, 0.686843,
		-0.891007, -0.453766, -0.014278,
		0.320976, -0.607398, -0.726665,
		35.770535, 44.308331, 20.516396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329777, 44.082226, 21.215637>,  <35.545849, 44.733509, 21.025063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329777, 44.082226, 21.215637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606720, 43.977058, 20.946857>,  <35.772884, 43.913960, 20.785589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606720, 43.977058, 20.946857>,  <35.329777, 44.082226, 21.215637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606720, 43.977058, 20.946857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284941, -0.755941, 0.589374,
		-0.662910, -0.599524, -0.448466,
		0.692358, -0.262915, -0.671950,
		35.814426, 43.898182, 20.745272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430504, 43.366619, 21.303600>,  <35.329777, 44.082226, 21.215637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430504, 43.366619, 21.303600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.765648, 43.450905, 21.102169>,  <35.966736, 43.501476, 20.981310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.765648, 43.450905, 21.102169>,  <35.430504, 43.366619, 21.303600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765648, 43.450905, 21.102169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505542, -0.647571, 0.570158,
		-0.205961, -0.732291, -0.649099,
		0.837859, 0.210716, -0.503578,
		36.017006, 43.514118, 20.951096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739689, 42.769825, 21.027243>,  <35.430504, 43.366619, 21.303600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739689, 42.769825, 21.027243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.038036, 43.035202, 21.050976>,  <36.217045, 43.194427, 21.065216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.038036, 43.035202, 21.050976>,  <35.739689, 42.769825, 21.027243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038036, 43.035202, 21.050976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522526, -0.638022, 0.565592,
		0.413096, -0.390853, -0.822548,
		0.745867, 0.663447, 0.059333,
		36.261795, 43.234238, 21.068775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339458, 42.422546, 21.215187>,  <35.739689, 42.769825, 21.027243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339458, 42.422546, 21.215187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508949, 42.778206, 21.284325>,  <36.610641, 42.991600, 21.325808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508949, 42.778206, 21.284325>,  <36.339458, 42.422546, 21.215187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508949, 42.778206, 21.284325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641280, -0.429242, 0.636012,
		0.639701, -0.158652, -0.752072,
		0.423725, 0.889146, 0.172846,
		36.636066, 43.044949, 21.336178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096474, 42.392181, 21.212702>,  <36.339458, 42.422546, 21.215187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096474, 42.392181, 21.212702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009689, 42.718201, 21.427599>,  <36.957619, 42.913811, 21.556538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009689, 42.718201, 21.427599>,  <37.096474, 42.392181, 21.212702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009689, 42.718201, 21.427599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419946, -0.418892, 0.805093,
		0.881233, 0.400287, -0.251391,
		-0.216963, 0.815046, 0.537241,
		36.944599, 42.962715, 21.588772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647041, 42.507549, 21.557035>,  <37.096474, 42.392181, 21.212702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647041, 42.507549, 21.557035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.373180, 42.699368, 21.776594>,  <37.208866, 42.814461, 21.908329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.373180, 42.699368, 21.776594>,  <37.647041, 42.507549, 21.557035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373180, 42.699368, 21.776594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445710, -0.320411, 0.835871,
		0.576715, 0.816926, 0.005629,
		-0.684648, 0.479550, 0.548898,
		37.167786, 42.843231, 21.941263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005009, 42.628197, 22.162579>,  <37.647041, 42.507549, 21.557035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005009, 42.628197, 22.162579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.622707, 42.686737, 22.264658>,  <37.393326, 42.721863, 22.325905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.622707, 42.686737, 22.264658>,  <38.005009, 42.628197, 22.162579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622707, 42.686737, 22.264658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215712, -0.241199, 0.946198,
		0.200031, 0.959377, 0.198956,
		-0.955749, 0.146352, 0.255196,
		37.335983, 42.730644, 22.341217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953522, 42.895435, 22.836897>,  <38.005009, 42.628197, 22.162579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953522, 42.895435, 22.836897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.604317, 42.712921, 22.768028>,  <37.394794, 42.603413, 22.726707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.604317, 42.712921, 22.768028>,  <37.953522, 42.895435, 22.836897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604317, 42.712921, 22.768028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001384, -0.350712, 0.936482,
		-0.487688, 0.817803, 0.305546,
		-0.873017, -0.456288, -0.172170,
		37.342411, 42.576035, 22.716377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593376, 43.059086, 23.503328>,  <37.953522, 42.895435, 22.836897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593376, 43.059086, 23.503328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395721, 42.750340, 23.343306>,  <37.277130, 42.565090, 23.247292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395721, 42.750340, 23.343306>,  <37.593376, 43.059086, 23.503328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395721, 42.750340, 23.343306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035176, -0.477538, 0.877907,
		-0.868672, 0.419734, 0.263121,
		-0.494137, -0.771869, -0.400059,
		37.247478, 42.518780, 23.223288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111267, 42.923367, 23.931067>,  <37.593376, 43.059086, 23.503328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111267, 42.923367, 23.931067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.134106, 42.589939, 23.711285>,  <37.147808, 42.389881, 23.579414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.134106, 42.589939, 23.711285>,  <37.111267, 42.923367, 23.931067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134106, 42.589939, 23.711285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012929, -0.550926, 0.834454,
		-0.998285, -0.040542, -0.042234,
		0.057099, -0.833569, -0.549457,
		37.151234, 42.339867, 23.546448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482338, 42.466290, 24.118448>,  <37.111267, 42.923367, 23.931067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482338, 42.466290, 24.118448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.751400, 42.218262, 23.956930>,  <36.912838, 42.069447, 23.860020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.751400, 42.218262, 23.956930>,  <36.482338, 42.466290, 24.118448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751400, 42.218262, 23.956930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193157, -0.673921, 0.713107,
		-0.714302, -0.401678, -0.573086,
		0.672654, -0.620069, -0.403796,
		36.953197, 42.032242, 23.835793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233334, 41.736050, 24.168350>,  <36.482338, 42.466290, 24.118448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233334, 41.736050, 24.168350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633171, 41.742474, 24.158867>,  <36.873074, 41.746330, 24.153177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633171, 41.742474, 24.158867>,  <36.233334, 41.736050, 24.168350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633171, 41.742474, 24.158867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028625, -0.582910, 0.812032,
		-0.000775, -0.812378, -0.583131,
		0.999590, 0.016063, -0.023706,
		36.933048, 41.747292, 24.151754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368977, 41.065670, 24.094833>,  <36.233334, 41.736050, 24.168350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368977, 41.065670, 24.094833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690559, 41.248558, 24.246939>,  <36.883511, 41.358292, 24.338202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690559, 41.248558, 24.246939>,  <36.368977, 41.065670, 24.094833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690559, 41.248558, 24.246939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031732, -0.605547, 0.795177,
		0.593837, -0.651356, -0.472327,
		0.803960, 0.457217, 0.380265,
		36.931747, 41.385723, 24.361017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860722, 40.532173, 24.156279>,  <36.368977, 41.065670, 24.094833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860722, 40.532173, 24.156279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945480, 40.830620, 24.408758>,  <36.996334, 41.009689, 24.560246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945480, 40.830620, 24.408758>,  <36.860722, 40.532173, 24.156279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945480, 40.830620, 24.408758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003359, -0.645305, 0.763917,
		0.977287, -0.163989, -0.134230,
		0.211893, 0.746116, 0.631199,
		37.009048, 41.054455, 24.598118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941067, 40.181435, 24.800369>,  <36.860722, 40.532173, 24.156279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941067, 40.181435, 24.800369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943836, 40.559952, 24.929665>,  <36.945499, 40.787064, 25.007242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943836, 40.559952, 24.929665>,  <36.941067, 40.181435, 24.800369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943836, 40.559952, 24.929665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276499, -0.308831, 0.910039,
		0.960989, -0.095679, 0.259510,
		0.006927, 0.946292, 0.323239,
		36.945915, 40.843838, 25.026636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296307, 40.115898, 25.460058>,  <36.941067, 40.181435, 24.800369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296307, 40.115898, 25.460058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.070469, 40.445656, 25.476107>,  <36.934967, 40.643509, 25.485735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.070469, 40.445656, 25.476107>,  <37.296307, 40.115898, 25.460058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.070469, 40.445656, 25.476107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399560, -0.315529, 0.860693,
		0.722208, 0.469913, 0.507540,
		-0.564595, 0.824392, 0.040119,
		36.901089, 40.692974, 25.488142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335857, 40.255234, 26.141903>,  <37.296307, 40.115898, 25.460058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335857, 40.255234, 26.141903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.017326, 40.465725, 26.022600>,  <36.826210, 40.592018, 25.951019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.017326, 40.465725, 26.022600>,  <37.335857, 40.255234, 26.141903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017326, 40.465725, 26.022600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361175, -0.018134, 0.932322,
		0.485203, 0.850152, 0.204500,
		-0.796323, 0.526226, -0.298255,
		36.778431, 40.623592, 25.933125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302689, 40.662964, 26.648865>,  <37.335857, 40.255234, 26.141903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302689, 40.662964, 26.648865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.942944, 40.632950, 26.476580>,  <36.727097, 40.614941, 26.373209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.942944, 40.632950, 26.476580>,  <37.302689, 40.662964, 26.648865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.942944, 40.632950, 26.476580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429552, -0.031832, 0.902481,
		-0.081427, 0.996672, -0.003602,
		-0.899363, -0.075034, -0.430715,
		36.673134, 40.610439, 26.347364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800865, 41.058933, 27.118271>,  <37.302689, 40.662964, 26.648865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800865, 41.058933, 27.118271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.569969, 40.820477, 26.895058>,  <36.431431, 40.677402, 26.761129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.569969, 40.820477, 26.895058>,  <36.800865, 41.058933, 27.118271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569969, 40.820477, 26.895058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563719, -0.203484, 0.800509,
		-0.590770, 0.776663, -0.218598,
		-0.577245, -0.596145, -0.558032,
		36.396797, 40.641632, 26.727648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948112, 41.166443, 27.222534>,  <36.800865, 41.058933, 27.118271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948112, 41.166443, 27.222534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010036, 40.792290, 27.095350>,  <36.047192, 40.567799, 27.019039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010036, 40.792290, 27.095350>,  <35.948112, 41.166443, 27.222534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010036, 40.792290, 27.095350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498000, -0.351847, 0.792591,
		-0.853246, 0.035642, -0.520289,
		0.154812, -0.935379, -0.317962,
		36.056480, 40.511677, 26.999962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396889, 40.784870, 27.507929>,  <35.948112, 41.166443, 27.222534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396889, 40.784870, 27.507929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.612305, 40.460758, 27.415476>,  <35.741554, 40.266293, 27.360004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.612305, 40.460758, 27.415476>,  <35.396889, 40.784870, 27.507929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.612305, 40.460758, 27.415476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487128, -0.523224, 0.699245,
		-0.687516, -0.263982, -0.676487,
		0.538542, -0.810278, -0.231132,
		35.773869, 40.217674, 27.346136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994476, 40.211582, 27.605101>,  <35.396889, 40.784870, 27.507929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994476, 40.211582, 27.605101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.359726, 40.054756, 27.649809>,  <35.578876, 39.960659, 27.676634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.359726, 40.054756, 27.649809>,  <34.994476, 40.211582, 27.605101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.359726, 40.054756, 27.649809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262281, -0.355055, 0.897298,
		-0.312119, -0.848657, -0.427040,
		0.913121, -0.392069, 0.111767,
		35.633663, 39.937138, 27.683340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853592, 39.570934, 27.757467>,  <34.994476, 40.211582, 27.605101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853592, 39.570934, 27.757467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.225533, 39.631889, 27.891428>,  <35.448696, 39.668465, 27.971806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.225533, 39.631889, 27.891428>,  <34.853592, 39.570934, 27.757467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225533, 39.631889, 27.891428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227613, -0.476913, 0.848968,
		0.289094, -0.865639, -0.408771,
		0.929848, 0.152390, 0.334903,
		35.504486, 39.677605, 27.991899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076504, 38.934879, 28.134121>,  <34.853592, 39.570934, 27.757467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076504, 38.934879, 28.134121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358128, 39.195744, 28.246536>,  <35.527103, 39.352264, 28.313986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358128, 39.195744, 28.246536>,  <35.076504, 38.934879, 28.134121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358128, 39.195744, 28.246536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097542, -0.303190, 0.947925,
		0.703410, -0.694808, -0.149851,
		0.704059, 0.652163, 0.281040,
		35.569347, 39.391392, 28.330849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500042, 38.582764, 28.630644>,  <35.076504, 38.934879, 28.134121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500042, 38.582764, 28.630644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.553997, 38.975201, 28.686157>,  <35.586372, 39.210663, 28.719465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.553997, 38.975201, 28.686157>,  <35.500042, 38.582764, 28.630644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553997, 38.975201, 28.686157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089000, -0.127502, 0.987837,
		0.986855, -0.145602, 0.070118,
		0.134891, 0.981093, 0.138785,
		35.594463, 39.269527, 28.727793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789204, 38.597904, 29.223431>,  <35.500042, 38.582764, 28.630644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789204, 38.597904, 29.223431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665112, 38.977646, 29.203508>,  <35.590656, 39.205490, 29.191555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665112, 38.977646, 29.203508>,  <35.789204, 38.597904, 29.223431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665112, 38.977646, 29.203508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114044, 0.014848, 0.993365,
		0.943796, 0.313851, 0.103662,
		-0.310229, 0.949356, -0.049806,
		35.572044, 39.262451, 29.188566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182922, 39.040924, 29.700708>,  <35.789204, 38.597904, 29.223431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182922, 39.040924, 29.700708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830727, 39.219078, 29.635744>,  <35.619408, 39.325970, 29.596766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830727, 39.219078, 29.635744>,  <36.182922, 39.040924, 29.700708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830727, 39.219078, 29.635744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274831, -0.200413, 0.940374,
		0.386276, 0.872622, 0.298866,
		-0.880488, 0.445381, -0.162409,
		35.566582, 39.352692, 29.587021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050484, 39.461491, 30.385880>,  <36.182922, 39.040924, 29.700708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.050484, 39.461491, 30.385880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.694489, 39.437057, 30.205130>,  <35.480892, 39.422398, 30.096680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.694489, 39.437057, 30.205130>,  <36.050484, 39.461491, 30.385880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694489, 39.437057, 30.205130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451287, -0.023857, 0.892060,
		-0.065267, 0.997848, -0.006332,
		-0.889989, -0.061080, -0.451872,
		35.427490, 39.418732, 30.069569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631104, 39.905033, 30.760386>,  <36.050484, 39.461491, 30.385880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631104, 39.905033, 30.760386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402332, 39.639343, 30.567841>,  <35.265072, 39.479931, 30.452314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402332, 39.639343, 30.567841>,  <35.631104, 39.905033, 30.760386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402332, 39.639343, 30.567841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622068, -0.031331, 0.782336,
		-0.534727, 0.746878, -0.395272,
		-0.571925, -0.664222, -0.481362,
		35.230755, 39.440075, 30.423431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946644, 40.070797, 30.961744>,  <35.631104, 39.905033, 30.760386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946644, 40.070797, 30.961744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963203, 39.689720, 30.841299>,  <34.973141, 39.461075, 30.769032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963203, 39.689720, 30.841299>,  <34.946644, 40.070797, 30.961744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963203, 39.689720, 30.841299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545064, -0.274112, 0.792319,
		-0.837372, 0.131323, -0.530625,
		0.041401, -0.952689, -0.301113,
		34.975624, 39.403912, 30.750965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360867, 39.856758, 31.304129>,  <34.946644, 40.070797, 30.961744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360867, 39.856758, 31.304129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.582104, 39.535526, 31.215452>,  <34.714844, 39.342785, 31.162247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.582104, 39.535526, 31.215452>,  <34.360867, 39.856758, 31.304129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582104, 39.535526, 31.215452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394973, -0.487055, 0.778957,
		-0.733544, -0.343271, -0.586582,
		0.553091, -0.803083, -0.221693,
		34.748032, 39.294601, 31.148945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890381, 39.213135, 31.494911>,  <34.360867, 39.856758, 31.304129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890381, 39.213135, 31.494911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260986, 39.070686, 31.446325>,  <34.483349, 38.985218, 31.417173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260986, 39.070686, 31.446325>,  <33.890381, 39.213135, 31.494911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260986, 39.070686, 31.446325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243238, -0.813175, 0.528755,
		-0.287075, -0.460352, -0.840038,
		0.926511, -0.356122, -0.121467,
		34.538940, 38.963848, 31.409885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812469, 38.470181, 31.387606>,  <33.890381, 39.213135, 31.494911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812469, 38.470181, 31.387606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182919, 38.523399, 31.528793>,  <34.405190, 38.555332, 31.613506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182919, 38.523399, 31.528793>,  <33.812469, 38.470181, 31.387606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182919, 38.523399, 31.528793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174402, -0.678685, 0.713421,
		0.334472, -0.722278, -0.605346,
		0.926127, 0.133046, 0.352968,
		34.460758, 38.563313, 31.634684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057087, 37.776234, 31.585737>,  <33.812469, 38.470181, 31.387606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057087, 37.776234, 31.585737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281479, 38.048664, 31.773964>,  <34.416115, 38.212124, 31.886900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281479, 38.048664, 31.773964>,  <34.057087, 37.776234, 31.585737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281479, 38.048664, 31.773964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146988, -0.641351, 0.753036,
		0.814677, -0.353268, -0.459894,
		0.560977, 0.681081, 0.470568,
		34.449772, 38.252987, 31.915134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474865, 37.334179, 31.770069>,  <34.057087, 37.776234, 31.585737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474865, 37.334179, 31.770069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.546532, 37.646973, 32.008865>,  <34.589531, 37.834648, 32.152142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.546532, 37.646973, 32.008865>,  <34.474865, 37.334179, 31.770069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546532, 37.646973, 32.008865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083395, -0.616697, 0.782771,
		0.980278, -0.090459, -0.175705,
		0.179165, 0.781986, 0.596990,
		34.600281, 37.881569, 32.187962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000896, 37.156734, 32.154934>,  <34.474865, 37.334179, 31.770069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000896, 37.156734, 32.154934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819679, 37.442604, 32.368095>,  <34.710949, 37.614128, 32.495995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819679, 37.442604, 32.368095>,  <35.000896, 37.156734, 32.154934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819679, 37.442604, 32.368095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033744, -0.583597, 0.811342,
		0.890852, 0.385552, 0.240276,
		-0.453038, 0.714678, 0.532908,
		34.683769, 37.657009, 32.527969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343967, 37.033276, 32.759296>,  <35.000896, 37.156734, 32.154934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343967, 37.033276, 32.759296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038250, 37.274002, 32.851963>,  <34.854820, 37.418438, 32.907562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038250, 37.274002, 32.851963>,  <35.343967, 37.033276, 32.759296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038250, 37.274002, 32.851963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169821, -0.534401, 0.827995,
		0.622107, 0.593489, 0.510641,
		-0.764293, 0.601819, 0.231668,
		34.808964, 37.454548, 32.921463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957394, 37.372894, 32.705082>,  <35.343967, 37.033276, 32.759296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957394, 37.372894, 32.705082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.308865, 37.189411, 32.652142>,  <36.519745, 37.079319, 32.620377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.308865, 37.189411, 32.652142>,  <35.957394, 37.372894, 32.705082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308865, 37.189411, 32.652142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252023, 0.681104, -0.687446,
		0.405482, 0.570686, 0.714074,
		0.878675, -0.458710, -0.132349,
		36.572468, 37.051800, 32.612438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.365696, 37.941326, 32.497856>,  <35.957394, 37.372894, 32.705082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.365696, 37.941326, 32.497856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597637, 37.628284, 32.407253>,  <36.736801, 37.440460, 32.352894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597637, 37.628284, 32.407253>,  <36.365696, 37.941326, 32.497856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597637, 37.628284, 32.407253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509146, 0.565127, -0.649155,
		0.636033, 0.261092, 0.726150,
		0.579856, -0.782600, -0.226505,
		36.771595, 37.393505, 32.339302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053555, 38.206928, 32.430237>,  <36.365696, 37.941326, 32.497856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053555, 38.206928, 32.430237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.020485, 37.866497, 32.222839>,  <37.000645, 37.662239, 32.098400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.020485, 37.866497, 32.222839>,  <37.053555, 38.206928, 32.430237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020485, 37.866497, 32.222839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539634, 0.399165, -0.741258,
		0.837831, -0.341077, 0.426270,
		-0.082674, -0.851078, -0.518489,
		36.995682, 37.611172, 32.067291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651344, 38.166779, 32.125546>,  <37.053555, 38.206928, 32.430237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.651344, 38.166779, 32.125546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.459938, 37.892128, 31.906612>,  <37.345093, 37.727337, 31.775253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.459938, 37.892128, 31.906612>,  <37.651344, 38.166779, 32.125546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.459938, 37.892128, 31.906612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453349, 0.340635, -0.823676,
		0.751996, -0.642273, 0.148281,
		-0.478515, -0.686624, -0.547330,
		37.316383, 37.686142, 31.742413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168373, 37.833138, 31.805798>,  <37.651344, 38.166779, 32.125546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168373, 37.833138, 31.805798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.832382, 37.780018, 31.595348>,  <37.630787, 37.748146, 31.469078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.832382, 37.780018, 31.595348>,  <38.168373, 37.833138, 31.805798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832382, 37.780018, 31.595348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479477, 0.272312, -0.834235,
		0.254060, -0.953001, -0.165058,
		-0.839974, -0.132804, -0.526125,
		37.580391, 37.740177, 31.437511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388790, 37.723896, 31.187773>,  <38.168373, 37.833138, 31.805798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.388790, 37.723896, 31.187773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.008724, 37.768951, 31.071493>,  <37.780685, 37.795982, 31.001726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.008724, 37.768951, 31.071493>,  <38.388790, 37.723896, 31.187773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008724, 37.768951, 31.071493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308635, 0.208207, -0.928114,
		-0.044014, -0.971578, -0.232593,
		-0.950162, 0.112636, -0.290698,
		37.723675, 37.802742, 30.984283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.272411, 37.439854, 30.486162>,  <38.388790, 37.723896, 31.187773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.272411, 37.439854, 30.486162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999287, 37.729900, 30.521870>,  <37.835411, 37.903931, 30.543295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999287, 37.729900, 30.521870>,  <38.272411, 37.439854, 30.486162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999287, 37.729900, 30.521870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315934, 0.403230, -0.858831,
		-0.658753, -0.558216, -0.504420,
		-0.682811, 0.725121, 0.089269,
		37.794445, 37.947437, 30.548651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013302, 37.489895, 29.823870>,  <38.272411, 37.439854, 30.486162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013302, 37.489895, 29.823870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921082, 37.828983, 30.014961>,  <37.865749, 38.032436, 30.129616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921082, 37.828983, 30.014961>,  <38.013302, 37.489895, 29.823870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921082, 37.828983, 30.014961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414947, 0.529725, -0.739737,
		-0.880152, 0.027687, -0.473885,
		-0.230547, 0.847718, 0.477727,
		37.851917, 38.083298, 30.158279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824936, 37.935036, 29.267281>,  <38.013302, 37.489895, 29.823870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824936, 37.935036, 29.267281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920742, 38.174728, 29.572844>,  <37.978226, 38.318542, 29.756182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920742, 38.174728, 29.572844>,  <37.824936, 37.935036, 29.267281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920742, 38.174728, 29.572844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462543, 0.621354, -0.632434,
		-0.853630, 0.504820, -0.128343,
		0.239519, 0.599229, 0.763908,
		37.992599, 38.354496, 29.802015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779793, 38.645992, 28.956774>,  <37.824936, 37.935036, 29.267281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779793, 38.645992, 28.956774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.005402, 38.636692, 29.286947>,  <38.140766, 38.631111, 29.485052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.005402, 38.636692, 29.286947>,  <37.779793, 38.645992, 28.956774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005402, 38.636692, 29.286947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743432, 0.449393, -0.495333,
		-0.359429, 0.893031, 0.270750,
		0.564021, -0.023247, 0.825433,
		38.174606, 38.629719, 29.534576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943783, 39.343014, 29.114241>,  <37.779793, 38.645992, 28.956774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.943783, 39.343014, 29.114241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.234318, 39.114349, 29.266888>,  <38.408638, 38.977150, 29.358477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.234318, 39.114349, 29.266888>,  <37.943783, 39.343014, 29.114241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234318, 39.114349, 29.266888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687182, 0.592101, -0.420948,
		0.014684, 0.567992, 0.822903,
		0.726337, -0.571665, 0.381619,
		38.452217, 38.942848, 29.381374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397705, 39.636261, 29.666323>,  <37.943783, 39.343014, 29.114241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397705, 39.636261, 29.666323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.601074, 39.394661, 29.420822>,  <38.723095, 39.249702, 29.273521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.601074, 39.394661, 29.420822>,  <38.397705, 39.636261, 29.666323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601074, 39.394661, 29.420822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443070, 0.794650, -0.414995,
		0.738374, -0.060942, 0.671632,
		0.508421, -0.604001, -0.613751,
		38.753601, 39.213459, 29.236696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104961, 39.963448, 29.457657>,  <38.397705, 39.636261, 29.666323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.104961, 39.963448, 29.457657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.061325, 39.656986, 29.204327>,  <39.035145, 39.473110, 29.052328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.061325, 39.656986, 29.204327>,  <39.104961, 39.963448, 29.457657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.061325, 39.656986, 29.204327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388521, 0.553584, -0.736611,
		0.914959, -0.326419, 0.237276,
		-0.109092, -0.766156, -0.633328,
		39.028599, 39.427139, 29.014328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744740, 39.819202, 29.040243>,  <39.104961, 39.963448, 29.457657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744740, 39.819202, 29.040243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460571, 39.643375, 28.820395>,  <39.290070, 39.537880, 28.688486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460571, 39.643375, 28.820395>,  <39.744740, 39.819202, 29.040243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460571, 39.643375, 28.820395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324571, 0.488314, -0.810063,
		0.624467, -0.753876, -0.204236,
		-0.710419, -0.439568, -0.549623,
		39.247444, 39.511505, 28.655508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.068600, 39.752251, 28.418470>,  <39.744740, 39.819202, 29.040243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.068600, 39.752251, 28.418470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.683830, 39.719532, 28.314154>,  <39.452969, 39.699902, 28.251564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.683830, 39.719532, 28.314154>,  <40.068600, 39.752251, 28.418470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683830, 39.719532, 28.314154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196073, 0.458226, -0.866939,
		0.190415, -0.885064, -0.424741,
		-0.961924, -0.081798, -0.260790,
		39.395252, 39.694992, 28.235916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053009, 39.477898, 27.802856>,  <40.068600, 39.752251, 28.418470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.053009, 39.477898, 27.802856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.689808, 39.645302, 27.810759>,  <39.471889, 39.745743, 27.815500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.689808, 39.645302, 27.810759>,  <40.053009, 39.477898, 27.802856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.689808, 39.645302, 27.810759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141839, 0.351419, -0.925412,
		-0.394233, -0.837471, -0.378448,
		-0.907999, 0.418507, 0.019755,
		39.417408, 39.770855, 27.816685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757156, 39.157383, 27.298428>,  <40.053009, 39.477898, 27.802856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.757156, 39.157383, 27.298428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528378, 39.483513, 27.334461>,  <39.391109, 39.679192, 27.356081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528378, 39.483513, 27.334461>,  <39.757156, 39.157383, 27.298428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528378, 39.483513, 27.334461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026111, 0.091668, -0.995447,
		-0.819873, -0.571697, -0.031141,
		-0.571949, 0.815328, 0.090084,
		39.356792, 39.728111, 27.361486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.394058, 39.121662, 26.751656>,  <39.757156, 39.157383, 27.298428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.394058, 39.121662, 26.751656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.288445, 39.487926, 26.872883>,  <39.225075, 39.707684, 26.945620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.288445, 39.487926, 26.872883>,  <39.394058, 39.121662, 26.751656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288445, 39.487926, 26.872883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163375, 0.267219, -0.949686,
		-0.950575, -0.300267, 0.079040,
		-0.264038, 0.915661, 0.303068,
		39.209232, 39.762623, 26.963802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803802, 39.299694, 26.367826>,  <39.394058, 39.121662, 26.751656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803802, 39.299694, 26.367826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.987587, 39.638416, 26.475027>,  <39.097858, 39.841648, 26.539347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.987587, 39.638416, 26.475027>,  <38.803802, 39.299694, 26.367826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987587, 39.638416, 26.475027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021758, 0.312376, -0.949709,
		-0.887933, 0.430520, 0.161948,
		0.459457, 0.846802, 0.268001,
		39.125423, 39.892456, 26.555428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389278, 39.851986, 26.112488>,  <38.803802, 39.299694, 26.367826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389278, 39.851986, 26.112488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.759525, 39.997787, 26.153233>,  <38.981674, 40.085270, 26.177679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.759525, 39.997787, 26.153233>,  <38.389278, 39.851986, 26.112488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759525, 39.997787, 26.153233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000483, 0.268009, -0.963416,
		-0.378470, 0.891800, 0.247897,
		0.925614, 0.364504, 0.101864,
		39.037209, 40.107140, 26.183792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354252, 40.532444, 25.778980>,  <38.389278, 39.851986, 26.112488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354252, 40.532444, 25.778980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.744083, 40.448231, 25.809641>,  <38.977982, 40.397705, 25.828037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.744083, 40.448231, 25.809641>,  <38.354252, 40.532444, 25.778980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744083, 40.448231, 25.809641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137266, 0.290669, -0.946927,
		0.177076, 0.933375, 0.312178,
		0.974578, -0.210530, 0.076650,
		39.036457, 40.385071, 25.832636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694668, 41.179363, 25.655785>,  <38.354252, 40.532444, 25.778980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694668, 41.179363, 25.655785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936981, 40.871796, 25.574009>,  <39.082371, 40.687256, 25.524942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936981, 40.871796, 25.574009>,  <38.694668, 41.179363, 25.655785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936981, 40.871796, 25.574009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122360, 0.343933, -0.930988,
		0.786164, 0.538962, 0.302434,
		0.605784, -0.768914, -0.204441,
		39.118717, 40.641121, 25.512676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345127, 41.585003, 25.418772>,  <38.694668, 41.179363, 25.655785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.345127, 41.585003, 25.418772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385544, 41.203289, 25.306248>,  <39.409794, 40.974262, 25.238733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385544, 41.203289, 25.306248>,  <39.345127, 41.585003, 25.418772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385544, 41.203289, 25.306248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327496, 0.298900, -0.896329,
		0.939435, -0.001562, 0.342725,
		0.101040, -0.954283, -0.281309,
		39.415855, 40.917004, 25.221855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907402, 41.521225, 24.963888>,  <39.345127, 41.585003, 25.418772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.907402, 41.521225, 24.963888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.656872, 41.222008, 24.876116>,  <39.506554, 41.042477, 24.823452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.656872, 41.222008, 24.876116>,  <39.907402, 41.521225, 24.963888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.656872, 41.222008, 24.876116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187270, 0.128861, -0.973820,
		0.756733, -0.651022, 0.059377,
		-0.626326, -0.748041, -0.219430,
		39.468975, 40.997597, 24.810287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267036, 41.199303, 24.355604>,  <39.907402, 41.521225, 24.963888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.267036, 41.199303, 24.355604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.897953, 41.046520, 24.334719>,  <39.676502, 40.954849, 24.322187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.897953, 41.046520, 24.334719>,  <40.267036, 41.199303, 24.355604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.897953, 41.046520, 24.334719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031743, 0.059707, -0.997711,
		0.384200, -0.922250, -0.042968,
		-0.922704, -0.381956, -0.052215,
		39.621143, 40.931934, 24.319054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250916, 40.735462, 23.750116>,  <40.267036, 41.199303, 24.355604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.250916, 40.735462, 23.750116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871090, 40.837379, 23.823231>,  <39.643196, 40.898529, 23.867100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871090, 40.837379, 23.823231>,  <40.250916, 40.735462, 23.750116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871090, 40.837379, 23.823231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199250, -0.040149, -0.979126,
		-0.242138, -0.966161, 0.088892,
		-0.949562, 0.254795, 0.182787,
		39.586220, 40.913818, 23.878067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954876, 40.309929, 23.202549>,  <40.250916, 40.735462, 23.750116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954876, 40.309929, 23.202549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.670868, 40.569805, 23.311197>,  <39.500465, 40.725731, 23.376387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.670868, 40.569805, 23.311197>,  <39.954876, 40.309929, 23.202549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670868, 40.569805, 23.311197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301022, 0.068676, -0.951141,
		-0.636601, -0.757091, 0.146810,
		-0.710018, 0.649690, 0.271621,
		39.457863, 40.764713, 23.392683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474163, 40.058697, 22.881737>,  <39.954876, 40.309929, 23.202549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474163, 40.058697, 22.881737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408573, 40.443459, 22.969233>,  <39.369221, 40.674316, 23.021730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408573, 40.443459, 22.969233>,  <39.474163, 40.058697, 22.881737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408573, 40.443459, 22.969233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415155, 0.133857, -0.899849,
		-0.894852, -0.238361, 0.377392,
		-0.163972, 0.961908, 0.218738,
		39.359383, 40.732033, 23.034855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899147, 40.213013, 22.525938>,  <39.474163, 40.058697, 22.881737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899147, 40.213013, 22.525938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.011959, 40.588551, 22.604958>,  <39.079647, 40.813873, 22.652369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.011959, 40.588551, 22.604958>,  <38.899147, 40.213013, 22.525938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011959, 40.588551, 22.604958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396698, 0.301598, -0.866988,
		-0.873549, 0.166151, 0.457499,
		0.282032, 0.938846, 0.197549,
		39.096569, 40.870205, 22.664223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413265, 40.553055, 22.050915>,  <38.899147, 40.213013, 22.525938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413265, 40.553055, 22.050915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.680260, 40.830467, 22.159338>,  <38.840458, 40.996914, 22.224392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.680260, 40.830467, 22.159338>,  <38.413265, 40.553055, 22.050915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680260, 40.830467, 22.159338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338263, 0.606712, -0.719360,
		-0.663353, 0.388477, 0.639570,
		0.667489, 0.693532, 0.271057,
		38.880505, 41.038528, 22.240656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050835, 41.263065, 22.044651>,  <38.413265, 40.553055, 22.050915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.050835, 41.263065, 22.044651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448132, 41.296654, 22.012619>,  <38.686512, 41.316807, 21.993401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448132, 41.296654, 22.012619>,  <38.050835, 41.263065, 22.044651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448132, 41.296654, 22.012619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112885, 0.539622, -0.834305,
		-0.026846, 0.837709, 0.545456,
		0.993245, 0.083972, -0.080078,
		38.746105, 41.321846, 21.988596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182991, 41.925426, 21.926636>,  <38.050835, 41.263065, 22.044651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182991, 41.925426, 21.926636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522545, 41.750587, 21.807743>,  <38.726276, 41.645683, 21.736406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522545, 41.750587, 21.807743>,  <38.182991, 41.925426, 21.926636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522545, 41.750587, 21.807743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026047, 0.596230, -0.802391,
		0.527939, 0.673394, 0.517514,
		0.848883, -0.437093, -0.297234,
		38.777210, 41.619461, 21.718573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620766, 42.488312, 21.820004>,  <38.182991, 41.925426, 21.926636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620766, 42.488312, 21.820004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.744526, 42.184151, 21.591599>,  <38.818783, 42.001656, 21.454556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.744526, 42.184151, 21.591599>,  <38.620766, 42.488312, 21.820004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744526, 42.184151, 21.591599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051277, 0.612947, -0.788458,
		0.949547, 0.214672, 0.228640,
		0.309404, -0.760402, -0.571015,
		38.837349, 41.956032, 21.420294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393608, 42.699718, 21.515564>,  <38.620766, 42.488312, 21.820004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.393608, 42.699718, 21.515564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238274, 42.397522, 21.304501>,  <39.145073, 42.216202, 21.177862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238274, 42.397522, 21.304501>,  <39.393608, 42.699718, 21.515564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238274, 42.397522, 21.304501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039220, 0.558530, -0.828557,
		0.920684, -0.342452, -0.187266,
		-0.388334, -0.755494, -0.527660,
		39.121773, 42.170876, 21.146202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786083, 42.617332, 20.822138>,  <39.393608, 42.699718, 21.515564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.786083, 42.617332, 20.822138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435562, 42.441605, 20.743044>,  <39.225250, 42.336166, 20.695587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435562, 42.441605, 20.743044>,  <39.786083, 42.617332, 20.822138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435562, 42.441605, 20.743044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092635, 0.249127, -0.964031,
		0.472779, -0.863096, -0.177613,
		-0.876298, -0.439320, -0.197734,
		39.172672, 42.309807, 20.683723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880692, 42.438335, 20.167038>,  <39.786083, 42.617332, 20.822138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880692, 42.438335, 20.167038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.482407, 42.421902, 20.200174>,  <39.243435, 42.412041, 20.220057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.482407, 42.421902, 20.200174>,  <39.880692, 42.438335, 20.167038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482407, 42.421902, 20.200174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091733, 0.325913, -0.940939,
		0.011660, -0.944507, -0.328285,
		-0.995715, -0.041085, 0.082842,
		39.183693, 42.409576, 20.225027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669987, 42.136948, 19.531221>,  <39.880692, 42.438335, 20.167038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.669987, 42.136948, 19.531221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338032, 42.307407, 19.675272>,  <39.138859, 42.409683, 19.761703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338032, 42.307407, 19.675272>,  <39.669987, 42.136948, 19.531221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338032, 42.307407, 19.675272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160021, 0.436552, -0.885334,
		-0.534497, -0.792351, -0.294095,
		-0.829883, 0.426147, 0.360129,
		39.089066, 42.435253, 19.783310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337910, 41.583958, 19.266199>,  <39.669987, 42.136948, 19.531221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.337910, 41.583958, 19.266199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.292130, 41.203506, 19.151478>,  <40.264660, 40.975235, 19.082645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.292130, 41.203506, 19.151478>,  <40.337910, 41.583958, 19.266199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.292130, 41.203506, 19.151478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085175, -0.297032, 0.951061,
		-0.989770, 0.084424, 0.115009,
		-0.114454, -0.951128, -0.286802,
		40.257793, 40.918167, 19.065437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927601, 41.277412, 19.756166>,  <40.337910, 41.583958, 19.266199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.927601, 41.277412, 19.756166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.117958, 40.972507, 19.580677>,  <40.232174, 40.789566, 19.475384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.117958, 40.972507, 19.580677>,  <39.927601, 41.277412, 19.756166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.117958, 40.972507, 19.580677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091143, -0.453400, 0.886635,
		-0.874766, -0.461932, -0.146296,
		0.475896, -0.762264, -0.438721,
		40.260727, 40.743828, 19.449060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.530602, 40.790474, 20.012047>,  <39.927601, 41.277412, 19.756166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.530602, 40.790474, 20.012047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.886520, 40.636913, 19.913355>,  <40.100071, 40.544777, 19.854139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.886520, 40.636913, 19.913355>,  <39.530602, 40.790474, 20.012047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.886520, 40.636913, 19.913355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032194, -0.486501, 0.873087,
		-0.455214, -0.784815, -0.420529,
		0.889800, -0.383903, -0.246729,
		40.153461, 40.521740, 19.839336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536133, 39.997723, 20.113010>,  <39.530602, 40.790474, 20.012047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.536133, 39.997723, 20.113010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916702, 40.118637, 20.089626>,  <40.145042, 40.191185, 20.075596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916702, 40.118637, 20.089626>,  <39.536133, 39.997723, 20.113010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916702, 40.118637, 20.089626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241066, -0.613257, 0.752199,
		0.191532, -0.729751, -0.656338,
		0.951422, 0.302291, -0.058460,
		40.202129, 40.209324, 20.072088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897316, 39.394432, 20.154413>,  <39.536133, 39.997723, 20.113010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897316, 39.394432, 20.154413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.146141, 39.691002, 20.255072>,  <40.295437, 39.868946, 20.315466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.146141, 39.691002, 20.255072>,  <39.897316, 39.394432, 20.154413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.146141, 39.691002, 20.255072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331591, -0.540623, 0.773159,
		0.709286, -0.397509, -0.582151,
		0.622062, 0.741427, 0.251646,
		40.332760, 39.913429, 20.330566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508293, 39.087372, 20.239141>,  <39.897316, 39.394432, 20.154413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.508293, 39.087372, 20.239141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.564869, 39.428078, 20.440931>,  <40.598816, 39.632500, 20.562004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.564869, 39.428078, 20.440931>,  <40.508293, 39.087372, 20.239141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.564869, 39.428078, 20.440931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416338, -0.513520, 0.750306,
		0.898141, 0.103905, -0.427255,
		0.141443, 0.851763, 0.504473,
		40.607304, 39.683605, 20.592274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.211781, 39.012810, 20.525827>,  <40.508293, 39.087372, 20.239141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.211781, 39.012810, 20.525827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.981274, 39.281887, 20.711473>,  <40.842972, 39.443333, 20.822861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.981274, 39.281887, 20.711473>,  <41.211781, 39.012810, 20.525827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.981274, 39.281887, 20.711473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358153, -0.302589, 0.883270,
		0.734605, 0.675222, -0.066555,
		-0.576265, 0.672692, 0.464116,
		40.808395, 39.483696, 20.850708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.631798, 39.183460, 21.170002>,  <41.211781, 39.012810, 20.525827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.631798, 39.183460, 21.170002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.256569, 39.296928, 21.249544>,  <41.031429, 39.365009, 21.297270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.256569, 39.296928, 21.249544>,  <41.631798, 39.183460, 21.170002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.256569, 39.296928, 21.249544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179289, -0.093620, 0.979332,
		0.296428, 0.954340, 0.036963,
		-0.938076, 0.283674, 0.198854,
		40.975147, 39.382030, 21.309200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.599339, 39.754925, 21.763262>,  <41.631798, 39.183460, 21.170002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.599339, 39.754925, 21.763262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.264126, 39.538769, 21.733099>,  <41.063000, 39.409077, 21.715000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.264126, 39.538769, 21.733099>,  <41.599339, 39.754925, 21.763262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.264126, 39.538769, 21.733099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083445, -0.263513, 0.961040,
		-0.539206, 0.799088, 0.265924,
		-0.838030, -0.540388, -0.075408,
		41.012718, 39.376652, 21.710476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.278076, 39.976276, 22.291508>,  <41.599339, 39.754925, 21.763262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.278076, 39.976276, 22.291508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.047329, 39.659126, 22.212955>,  <40.908878, 39.468834, 22.165825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.047329, 39.659126, 22.212955>,  <41.278076, 39.976276, 22.291508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.047329, 39.659126, 22.212955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004274, -0.237482, 0.971382,
		-0.816825, 0.561201, 0.133608,
		-0.576870, -0.792878, -0.196380,
		40.874268, 39.421265, 22.154041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.796879, 39.941868, 22.836229>,  <41.278076, 39.976276, 22.291508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.796879, 39.941868, 22.836229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.809986, 39.574490, 22.678555>,  <40.817848, 39.354061, 22.583950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.809986, 39.574490, 22.678555>,  <40.796879, 39.941868, 22.836229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.809986, 39.574490, 22.678555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042843, -0.392747, 0.918648,
		-0.998544, -0.046989, 0.026480,
		0.032766, -0.918445, -0.394189,
		40.819817, 39.298958, 22.560297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325226, 39.577938, 23.257301>,  <40.796879, 39.941868, 22.836229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.325226, 39.577938, 23.257301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.538074, 39.287323, 23.083408>,  <40.665783, 39.112953, 22.979073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.538074, 39.287323, 23.083408>,  <40.325226, 39.577938, 23.257301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.538074, 39.287323, 23.083408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053228, -0.541149, 0.839240,
		-0.844996, -0.423434, -0.326627,
		0.532117, -0.726540, -0.434730,
		40.697708, 39.069363, 22.952990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942360, 38.971828, 23.285671>,  <40.325226, 39.577938, 23.257301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942360, 38.971828, 23.285671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.330830, 38.880348, 23.258783>,  <40.563911, 38.825462, 23.242651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.330830, 38.880348, 23.258783>,  <39.942360, 38.971828, 23.285671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.330830, 38.880348, 23.258783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028369, -0.390884, 0.920003,
		-0.236676, -0.891576, -0.386105,
		0.971174, -0.228696, -0.067219,
		40.622181, 38.811737, 23.238617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954887, 38.392586, 23.697653>,  <39.942360, 38.971828, 23.285671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954887, 38.392586, 23.697653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.340729, 38.481220, 23.640474>,  <40.572235, 38.534401, 23.606167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.340729, 38.481220, 23.640474>,  <39.954887, 38.392586, 23.697653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.340729, 38.481220, 23.640474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248823, -0.585394, 0.771622,
		0.087301, -0.779880, -0.619811,
		0.964606, 0.221587, -0.142947,
		40.630112, 38.547695, 23.597589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235283, 37.870876, 24.025080>,  <39.954887, 38.392586, 23.697653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.235283, 37.870876, 24.025080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.538811, 38.127953, 23.982880>,  <40.720928, 38.282200, 23.957560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.538811, 38.127953, 23.982880>,  <40.235283, 37.870876, 24.025080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.538811, 38.127953, 23.982880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466413, -0.423180, 0.776774,
		0.454582, -0.638642, -0.620880,
		0.758824, 0.642694, -0.105501,
		40.766457, 38.320763, 23.951229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828827, 37.527218, 24.163801>,  <40.235283, 37.870876, 24.025080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.828827, 37.527218, 24.163801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.953609, 37.900307, 24.236151>,  <41.028477, 38.124161, 24.279560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.953609, 37.900307, 24.236151>,  <40.828827, 37.527218, 24.163801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.953609, 37.900307, 24.236151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273697, -0.270523, 0.922988,
		0.909822, -0.238425, -0.339674,
		0.311953, 0.932722, 0.180872,
		41.047195, 38.180122, 24.290413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.610703, 37.541264, 24.530527>,  <40.828827, 37.527218, 24.163801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.610703, 37.541264, 24.530527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.381237, 37.859524, 24.608349>,  <41.243557, 38.050480, 24.655043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.381237, 37.859524, 24.608349>,  <41.610703, 37.541264, 24.530527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.381237, 37.859524, 24.608349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071097, -0.188258, 0.979543,
		0.816001, 0.575759, 0.051428,
		-0.573662, 0.795651, 0.194554,
		41.209137, 38.098221, 24.666716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.922073, 37.882965, 25.018557>,  <41.610703, 37.541264, 24.530527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.922073, 37.882965, 25.018557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.554790, 38.034359, 25.065292>,  <41.334423, 38.125195, 25.093334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.554790, 38.034359, 25.065292>,  <41.922073, 37.882965, 25.018557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.554790, 38.034359, 25.065292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083874, -0.102505, 0.991190,
		0.387124, 0.919915, 0.062376,
		-0.918205, 0.378482, 0.116839,
		41.279327, 38.147903, 25.100344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.926563, 38.467369, 25.510309>,  <41.922073, 37.882965, 25.018557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.926563, 38.467369, 25.510309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.545460, 38.346439, 25.521999>,  <41.316799, 38.273880, 25.529013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.545460, 38.346439, 25.521999>,  <41.926563, 38.467369, 25.510309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.545460, 38.346439, 25.521999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001867, 0.090388, 0.995905,
		-0.303730, 0.948909, -0.085553,
		-0.952756, -0.302327, 0.029225,
		41.259632, 38.255741, 25.530767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.551716, 39.006718, 25.936050>,  <41.926563, 38.467369, 25.510309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.551716, 39.006718, 25.936050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.335239, 38.670475, 25.927164>,  <41.205353, 38.468731, 25.921831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.335239, 38.670475, 25.927164>,  <41.551716, 39.006718, 25.936050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.335239, 38.670475, 25.927164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066227, 0.016269, 0.997672,
		-0.838288, 0.541402, -0.064476,
		-0.541191, -0.840606, -0.022218,
		41.172882, 38.418293, 25.920498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.971687, 39.187996, 26.295858>,  <41.551716, 39.006718, 25.936050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.971687, 39.187996, 26.295858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.983376, 38.788174, 26.293344>,  <40.990391, 38.548283, 26.291836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.983376, 38.788174, 26.293344>,  <40.971687, 39.187996, 26.295858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.983376, 38.788174, 26.293344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270457, -0.013957, 0.962631,
		-0.962288, -0.026431, -0.270744,
		0.029222, -0.999553, -0.006283,
		40.992142, 38.488308, 26.291460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370125, 39.023155, 26.615324>,  <40.971687, 39.187996, 26.295858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370125, 39.023155, 26.615324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.581070, 38.684273, 26.641020>,  <40.707638, 38.480942, 26.656437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.581070, 38.684273, 26.641020>,  <40.370125, 39.023155, 26.615324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.581070, 38.684273, 26.641020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334238, -0.137355, 0.932426,
		-0.781135, -0.513199, -0.355605,
		0.527364, -0.847208, 0.064238,
		40.739281, 38.430111, 26.660292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953663, 38.570992, 26.897600>,  <40.370125, 39.023155, 26.615324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.953663, 38.570992, 26.897600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301937, 38.381935, 26.952032>,  <40.510902, 38.268501, 26.984692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301937, 38.381935, 26.952032>,  <39.953663, 38.570992, 26.897600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301937, 38.381935, 26.952032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365093, -0.435698, 0.822724,
		-0.329558, -0.766018, -0.551913,
		0.870689, -0.472635, 0.136080,
		40.563145, 38.240143, 26.992855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839920, 37.826538, 27.022343>,  <39.953663, 38.570992, 26.897600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839920, 37.826538, 27.022343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.213894, 37.879704, 27.153938>,  <40.438278, 37.911602, 27.232897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.213894, 37.879704, 27.153938>,  <39.839920, 37.826538, 27.022343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.213894, 37.879704, 27.153938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239632, -0.447282, 0.861693,
		0.261680, -0.884462, -0.386329,
		0.934933, 0.132911, 0.328990,
		40.494373, 37.919579, 27.252636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.113224, 37.135670, 27.198067>,  <39.839920, 37.826538, 27.022343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.113224, 37.135670, 27.198067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.289177, 37.435913, 27.395287>,  <40.394749, 37.616058, 27.513618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.289177, 37.435913, 27.395287>,  <40.113224, 37.135670, 27.198067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.289177, 37.435913, 27.395287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133462, -0.488284, 0.862419,
		0.888084, -0.445165, -0.114609,
		0.439880, 0.750604, 0.493050,
		40.421143, 37.661095, 27.543201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.420059, 36.703300, 27.725218>,  <40.113224, 37.135670, 27.198067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.420059, 36.703300, 27.725218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.468071, 37.085945, 27.831419>,  <40.496876, 37.315533, 27.895140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.468071, 37.085945, 27.831419>,  <40.420059, 36.703300, 27.725218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.468071, 37.085945, 27.831419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206415, -0.237547, 0.949192,
		0.971075, -0.168731, 0.168946,
		0.120025, 0.956609, 0.265505,
		40.504078, 37.372929, 27.911070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.830730, 36.724316, 28.267355>,  <40.420059, 36.703300, 27.725218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.830730, 36.724316, 28.267355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.571964, 37.029221, 28.275944>,  <40.416706, 37.212162, 28.281097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.571964, 37.029221, 28.275944>,  <40.830730, 36.724316, 28.267355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.571964, 37.029221, 28.275944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295789, -0.276784, 0.914275,
		0.702860, 0.585105, 0.404524,
		-0.646913, 0.762262, 0.021473,
		40.377892, 37.257900, 28.282385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.940784, 37.027702, 28.915337>,  <40.830730, 36.724316, 28.267355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.940784, 37.027702, 28.915337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.590881, 37.182087, 28.798145>,  <40.380939, 37.274715, 28.727831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.590881, 37.182087, 28.798145>,  <40.940784, 37.027702, 28.915337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.590881, 37.182087, 28.798145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279296, 0.092481, 0.955741,
		0.395970, 0.917869, 0.026898,
		-0.874758, 0.385958, -0.292977,
		40.328453, 37.297874, 28.710253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.840294, 37.652225, 29.317966>,  <40.940784, 37.027702, 28.915337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.840294, 37.652225, 29.317966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.477345, 37.523991, 29.209223>,  <40.259575, 37.447052, 29.143976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.477345, 37.523991, 29.209223>,  <40.840294, 37.652225, 29.317966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.477345, 37.523991, 29.209223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228755, -0.165974, 0.959231,
		-0.352636, 0.932565, 0.077264,
		-0.907369, -0.320585, -0.271858,
		40.205135, 37.427814, 29.127665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.520409, 37.925640, 29.799364>,  <40.840294, 37.652225, 29.317966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.520409, 37.925640, 29.799364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.283939, 37.632553, 29.664520>,  <40.142059, 37.456699, 29.583614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.283939, 37.632553, 29.664520>,  <40.520409, 37.925640, 29.799364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.283939, 37.632553, 29.664520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250854, -0.230201, 0.940255,
		-0.766544, 0.640417, -0.047717,
		-0.591171, -0.732717, -0.337111,
		40.106586, 37.412739, 29.563387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.088833, 37.935551, 30.335350>,  <40.520409, 37.925640, 29.799364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.088833, 37.935551, 30.335350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.046295, 37.584862, 30.147713>,  <40.020775, 37.374447, 30.035130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.046295, 37.584862, 30.147713>,  <40.088833, 37.935551, 30.335350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.046295, 37.584862, 30.147713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203861, -0.442523, 0.873278,
		-0.973207, 0.188495, -0.131672,
		-0.106341, -0.876723, -0.469093,
		40.014393, 37.321846, 30.006985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507256, 37.632950, 30.563961>,  <40.088833, 37.935551, 30.335350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507256, 37.632950, 30.563961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.698643, 37.319412, 30.405643>,  <39.813477, 37.131290, 30.310652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.698643, 37.319412, 30.405643>,  <39.507256, 37.632950, 30.563961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698643, 37.319412, 30.405643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322515, -0.576106, 0.751056,
		-0.816732, -0.231707, -0.528450,
		0.478468, -0.783846, -0.395796,
		39.842182, 37.084259, 30.286905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011028, 37.040962, 30.537415>,  <39.507256, 37.632950, 30.563961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011028, 37.040962, 30.537415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383385, 36.895000, 30.544176>,  <39.606800, 36.807423, 30.548233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383385, 36.895000, 30.544176>,  <39.011028, 37.040962, 30.537415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383385, 36.895000, 30.544176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260421, -0.630474, 0.731221,
		-0.256167, -0.685090, -0.681931,
		0.930892, -0.364905, 0.016905,
		39.662651, 36.785530, 30.549248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890793, 36.406319, 30.668800>,  <39.011028, 37.040962, 30.537415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890793, 36.406319, 30.668800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285664, 36.432613, 30.726984>,  <39.522587, 36.448391, 30.761894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285664, 36.432613, 30.726984>,  <38.890793, 36.406319, 30.668800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285664, 36.432613, 30.726984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079738, -0.586335, 0.806135,
		0.138280, -0.807397, -0.573575,
		0.987178, 0.065736, 0.145459,
		39.581818, 36.452335, 30.770622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160091, 35.668266, 30.796833>,  <38.890793, 36.406319, 30.668800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160091, 35.668266, 30.796833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.454315, 35.884914, 30.959612>,  <39.630848, 36.014904, 31.057280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.454315, 35.884914, 30.959612>,  <39.160091, 35.668266, 30.796833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.454315, 35.884914, 30.959612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062915, -0.652710, 0.754991,
		0.674535, -0.529736, -0.514181,
		0.735557, 0.541617, 0.406947,
		39.674984, 36.047398, 31.081696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653725, 35.214615, 31.197292>,  <39.160091, 35.668266, 30.796833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.653725, 35.214615, 31.197292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.709278, 35.571476, 31.369232>,  <39.742611, 35.785595, 31.472395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.709278, 35.571476, 31.369232>,  <39.653725, 35.214615, 31.197292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709278, 35.571476, 31.369232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212065, -0.450779, 0.867080,
		0.967337, -0.029267, -0.251800,
		0.138883, 0.892156, 0.429848,
		39.750942, 35.839123, 31.498186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.244411, 35.139103, 31.537945>,  <39.653725, 35.214615, 31.197292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.244411, 35.139103, 31.537945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.029583, 35.439514, 31.691576>,  <39.900688, 35.619762, 31.783754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.029583, 35.439514, 31.691576>,  <40.244411, 35.139103, 31.537945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.029583, 35.439514, 31.691576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015904, -0.464253, 0.885560,
		0.843390, 0.469496, 0.261279,
		-0.537067, 0.751028, 0.384079,
		39.868462, 35.664822, 31.806799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508476, 35.234585, 32.285976>,  <40.244411, 35.139103, 31.537945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.508476, 35.234585, 32.285976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.152008, 35.414928, 32.265770>,  <39.938129, 35.523132, 32.253647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.152008, 35.414928, 32.265770>,  <40.508476, 35.234585, 32.285976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.152008, 35.414928, 32.265770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224260, -0.340985, 0.912927,
		0.394374, 0.824899, 0.404984,
		-0.891166, 0.450856, -0.050516,
		39.884659, 35.550186, 32.250614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325565, 35.544960, 32.973236>,  <40.508476, 35.234585, 32.285976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.325565, 35.544960, 32.973236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.967216, 35.531563, 32.796021>,  <39.752205, 35.523525, 32.689690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.967216, 35.531563, 32.796021>,  <40.325565, 35.544960, 32.973236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967216, 35.531563, 32.796021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395895, -0.392443, 0.830214,
		-0.201676, 0.919166, 0.338320,
		-0.895876, -0.033495, -0.443040,
		39.698452, 35.521515, 32.663109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752434, 35.692387, 33.488403>,  <40.325565, 35.544960, 32.973236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.752434, 35.692387, 33.488403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.597069, 35.483105, 33.184982>,  <39.503849, 35.357536, 33.002930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.597069, 35.483105, 33.184982>,  <39.752434, 35.692387, 33.488403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597069, 35.483105, 33.184982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599051, -0.482134, 0.639285,
		-0.700198, 0.702714, -0.126160,
		-0.388409, -0.523202, -0.758550,
		39.480545, 35.326145, 32.957417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065826, 35.645226, 33.616291>,  <39.752434, 35.692387, 33.488403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065826, 35.645226, 33.616291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.131516, 35.348179, 33.356583>,  <39.170929, 35.169952, 33.200760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.131516, 35.348179, 33.356583>,  <39.065826, 35.645226, 33.616291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131516, 35.348179, 33.356583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537614, -0.619240, 0.572288,
		-0.827044, 0.255070, -0.500937,
		0.164227, -0.742618, -0.649268,
		39.180782, 35.125393, 33.161804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403149, 35.237762, 33.551651>,  <39.065826, 35.645226, 33.616291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403149, 35.237762, 33.551651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.694984, 34.988022, 33.440014>,  <38.870087, 34.838181, 33.373032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.694984, 34.988022, 33.440014>,  <38.403149, 35.237762, 33.551651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694984, 34.988022, 33.440014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504506, -0.766877, 0.396703,
		-0.461706, -0.148629, -0.874492,
		0.729590, -0.624347, -0.279088,
		38.913860, 34.800716, 33.356289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010201, 34.696899, 33.357700>,  <38.403149, 35.237762, 33.551651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010201, 34.696899, 33.357700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382381, 34.557037, 33.401508>,  <38.605690, 34.473122, 33.427792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382381, 34.557037, 33.401508>,  <38.010201, 34.696899, 33.357700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382381, 34.557037, 33.401508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356059, -0.792323, 0.495425,
		-0.086456, -0.499965, -0.861719,
		0.930455, -0.349656, 0.109516,
		38.661518, 34.452141, 33.434364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949589, 33.949688, 33.346725>,  <38.010201, 34.696899, 33.357700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949589, 33.949688, 33.346725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.304932, 34.014565, 33.518543>,  <38.518139, 34.053490, 33.621635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.304932, 34.014565, 33.518543>,  <37.949589, 33.949688, 33.346725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304932, 34.014565, 33.518543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197697, -0.709248, 0.676670,
		0.414405, -0.686047, -0.598003,
		0.888360, 0.162192, 0.429546,
		38.571442, 34.063221, 33.647408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316761, 33.242508, 33.357521>,  <37.949589, 33.949688, 33.346725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316761, 33.242508, 33.357521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.441864, 33.503517, 33.633606>,  <38.516926, 33.660122, 33.799259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.441864, 33.503517, 33.633606>,  <38.316761, 33.242508, 33.357521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441864, 33.503517, 33.633606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139146, -0.687354, 0.712870,
		0.939584, -0.318999, -0.124182,
		0.312762, 0.652522, 0.690214,
		38.535694, 33.699272, 33.840672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357635, 32.765110, 34.066135>,  <38.316761, 33.242508, 33.357521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.357635, 32.765110, 34.066135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.441631, 33.120163, 34.230095>,  <38.492031, 33.333195, 34.328468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.441631, 33.120163, 34.230095>,  <38.357635, 32.765110, 34.066135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441631, 33.120163, 34.230095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201737, -0.370883, 0.906503,
		0.956664, -0.273049, 0.101186,
		0.209991, 0.887632, 0.409895,
		38.504627, 33.386452, 34.353062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930115, 32.662373, 34.574711>,  <38.357635, 32.765110, 34.066135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930115, 32.662373, 34.574711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725540, 32.997742, 34.650063>,  <38.602795, 33.198963, 34.695274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725540, 32.997742, 34.650063>,  <38.930115, 32.662373, 34.574711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725540, 32.997742, 34.650063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163143, -0.309966, 0.936646,
		0.843695, 0.448298, 0.295310,
		-0.511432, 0.838421, 0.188380,
		38.572109, 33.249268, 34.706577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244579, 32.883198, 35.146297>,  <38.930115, 32.662373, 34.574711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.244579, 32.883198, 35.146297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868031, 33.017895, 35.137962>,  <38.642101, 33.098713, 35.132961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868031, 33.017895, 35.137962>,  <39.244579, 32.883198, 35.146297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868031, 33.017895, 35.137962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161168, -0.394583, 0.904615,
		0.296399, 0.854933, 0.425719,
		-0.941368, 0.336739, -0.020834,
		38.585621, 33.118916, 35.131714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109241, 33.314720, 35.707382>,  <39.244579, 32.883198, 35.146297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109241, 33.314720, 35.707382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.760025, 33.154804, 35.595695>,  <38.550495, 33.058853, 35.528683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.760025, 33.154804, 35.595695>,  <39.109241, 33.314720, 35.707382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.760025, 33.154804, 35.595695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173187, -0.281055, 0.943936,
		-0.455854, 0.872453, 0.176134,
		-0.873042, -0.399793, -0.279218,
		38.498112, 33.034866, 35.511929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684784, 33.389862, 36.353001>,  <39.109241, 33.314720, 35.707382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684784, 33.389862, 36.353001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.463215, 33.140022, 36.132801>,  <38.330273, 32.990120, 36.000679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.463215, 33.140022, 36.132801>,  <38.684784, 33.389862, 36.353001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.463215, 33.140022, 36.132801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258250, -0.499698, 0.826806,
		-0.791504, 0.600152, 0.115491,
		-0.553921, -0.624595, -0.550503,
		38.297039, 32.952644, 35.967651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010399, 33.544388, 36.611740>,  <38.684784, 33.389862, 36.353001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010399, 33.544388, 36.611740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017765, 33.176815, 36.454151>,  <38.022186, 32.956272, 36.359596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017765, 33.176815, 36.454151>,  <38.010399, 33.544388, 36.611740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017765, 33.176815, 36.454151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308184, -0.380074, 0.872105,
		-0.951149, 0.105355, -0.290202,
		0.018417, -0.918937, -0.393976,
		38.023289, 32.901134, 36.335957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432114, 33.246170, 36.816654>,  <38.010399, 33.544388, 36.611740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432114, 33.246170, 36.816654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.644348, 32.917683, 36.732674>,  <37.771690, 32.720589, 36.682285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.644348, 32.917683, 36.732674>,  <37.432114, 33.246170, 36.816654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644348, 32.917683, 36.732674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221019, -0.373167, 0.901054,
		-0.818310, -0.431681, -0.379501,
		0.530585, -0.821218, -0.209956,
		37.803524, 32.671318, 36.669685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025291, 32.647011, 37.050266>,  <37.432114, 33.246170, 36.816654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025291, 32.647011, 37.050266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.417427, 32.568424, 37.042995>,  <37.652710, 32.521271, 37.038631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.417427, 32.568424, 37.042995>,  <37.025291, 32.647011, 37.050266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417427, 32.568424, 37.042995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085372, -0.505450, 0.858622,
		-0.177882, -0.840190, -0.512287,
		0.980341, -0.196468, -0.018182,
		37.711529, 32.509483, 37.037540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872971, 31.892048, 36.764580>,  <37.025291, 32.647011, 37.050266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872971, 31.892048, 36.764580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.256332, 31.998003, 36.807076>,  <37.486351, 32.061577, 36.832573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.256332, 31.998003, 36.807076>,  <36.872971, 31.892048, 36.764580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256332, 31.998003, 36.807076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102063, -0.665748, 0.739163,
		0.266523, -0.697578, -0.665095,
		0.958409, 0.264886, 0.106240,
		37.543854, 32.077469, 36.838947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115772, 31.307001, 37.000866>,  <36.872971, 31.892048, 36.764580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.115772, 31.307001, 37.000866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.446655, 31.524551, 37.057327>,  <37.645184, 31.655083, 37.091206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.446655, 31.524551, 37.057327>,  <37.115772, 31.307001, 37.000866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446655, 31.524551, 37.057327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343993, -0.688813, 0.638126,
		0.444294, -0.479305, -0.756882,
		0.827207, 0.543878, 0.141157,
		37.694817, 31.687716, 37.099674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737835, 30.978849, 36.967163>,  <37.115772, 31.307001, 37.000866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737835, 30.978849, 36.967163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.820194, 31.275463, 37.222580>,  <37.869610, 31.453432, 37.375828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.820194, 31.275463, 37.222580>,  <37.737835, 30.978849, 36.967163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.820194, 31.275463, 37.222580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237474, -0.670878, 0.702517,
		0.949323, 0.006992, -0.314225,
		0.205895, 0.741535, 0.638540,
		37.881962, 31.497923, 37.414143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399704, 30.775064, 37.278107>,  <37.737835, 30.978849, 36.967163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399704, 30.775064, 37.278107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193363, 31.040985, 37.494228>,  <38.069557, 31.200539, 37.623901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193363, 31.040985, 37.494228>,  <38.399704, 30.775064, 37.278107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193363, 31.040985, 37.494228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182378, -0.531021, 0.827499,
		0.837039, 0.525408, 0.152684,
		-0.515853, 0.664803, 0.540308,
		38.038609, 31.240425, 37.656322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795410, 31.101421, 37.839558>,  <38.399704, 30.775064, 37.278107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.795410, 31.101421, 37.839558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.405682, 31.082569, 37.927628>,  <38.171844, 31.071259, 37.980469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.405682, 31.082569, 37.927628>,  <38.795410, 31.101421, 37.839558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405682, 31.082569, 37.927628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205168, -0.588660, 0.781911,
		0.092757, 0.807006, 0.583214,
		-0.974322, -0.047128, 0.220174,
		38.113384, 31.068430, 37.993679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690605, 31.208227, 38.646496>,  <38.795410, 31.101421, 37.839558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690605, 31.208227, 38.646496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.359085, 31.025721, 38.516937>,  <38.160172, 30.916216, 38.439201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.359085, 31.025721, 38.516937>,  <38.690605, 31.208227, 38.646496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359085, 31.025721, 38.516937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008126, -0.588608, 0.808378,
		-0.559483, 0.667353, 0.491547,
		-0.828802, -0.456268, -0.323893,
		38.110443, 30.888840, 38.419769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206593, 31.052807, 39.225719>,  <38.690605, 31.208227, 38.646496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206593, 31.052807, 39.225719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.067993, 30.805460, 38.943565>,  <37.984833, 30.657051, 38.774273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.067993, 30.805460, 38.943565>,  <38.206593, 31.052807, 39.225719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.067993, 30.805460, 38.943565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352964, -0.610756, 0.708798,
		-0.869112, 0.494570, -0.006637,
		-0.346497, -0.618367, -0.705381,
		37.964043, 30.619949, 38.731953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393791, 30.939251, 39.349049>,  <38.206593, 31.052807, 39.225719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393791, 30.939251, 39.349049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.588268, 30.636480, 39.174385>,  <37.704956, 30.454819, 39.069588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.588268, 30.636480, 39.174385>,  <37.393791, 30.939251, 39.349049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588268, 30.636480, 39.174385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456558, -0.646108, 0.611637,
		-0.745096, -0.098014, -0.659716,
		0.486197, -0.756927, -0.436664,
		37.734127, 30.409403, 39.043385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880894, 30.405968, 39.072151>,  <37.393791, 30.939251, 39.349049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880894, 30.405968, 39.072151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.240017, 30.256666, 39.165642>,  <37.455490, 30.167086, 39.221737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.240017, 30.256666, 39.165642>,  <36.880894, 30.405968, 39.072151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240017, 30.256666, 39.165642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435112, -0.669850, 0.601647,
		-0.068002, -0.641860, -0.763800,
		0.897805, -0.373252, 0.233730,
		37.509357, 30.144691, 39.235760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120724, 29.675835, 38.834862>,  <36.880894, 30.405968, 39.072151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120724, 29.675835, 38.834862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.275070, 29.776850, 39.189789>,  <37.367676, 29.837458, 39.402744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.275070, 29.776850, 39.189789>,  <37.120724, 29.675835, 38.834862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.275070, 29.776850, 39.189789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375602, -0.835480, 0.401119,
		0.842634, -0.488056, -0.227529,
		0.385864, 0.252536, 0.887319,
		37.390831, 29.852612, 39.455986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457699, 29.111298, 39.192295>,  <37.120724, 29.675835, 38.834862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457699, 29.111298, 39.192295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.362709, 29.359072, 39.491604>,  <37.305717, 29.507736, 39.671188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.362709, 29.359072, 39.491604>,  <37.457699, 29.111298, 39.192295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362709, 29.359072, 39.491604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328905, -0.776078, 0.538074,
		0.914018, -0.118333, 0.388031,
		-0.237470, 0.619435, 0.748270,
		37.291470, 29.544903, 39.716084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183712, 28.938259, 39.528950>,  <37.457699, 29.111298, 39.192295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183712, 28.938259, 39.528950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541630, 29.101927, 39.600430>,  <38.756378, 29.200127, 39.643318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541630, 29.101927, 39.600430>,  <38.183712, 28.938259, 39.528950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541630, 29.101927, 39.600430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330376, 0.875975, -0.351453,
		-0.300337, 0.255440, 0.918993,
		0.894790, 0.409168, 0.178696,
		38.810066, 29.224678, 39.654037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403725, 29.447315, 39.034733>,  <38.183712, 28.938259, 39.528950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403725, 29.447315, 39.034733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.029072, 29.585241, 39.009983>,  <37.804279, 29.667997, 38.995132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.029072, 29.585241, 39.009983>,  <38.403725, 29.447315, 39.034733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029072, 29.585241, 39.009983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325651, 0.791866, -0.516623,
		-0.129140, -0.504034, -0.853974,
		-0.936629, 0.344814, -0.061877,
		37.748081, 29.688686, 38.991421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129791, 29.442160, 38.296181>,  <38.403725, 29.447315, 39.034733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129791, 29.442160, 38.296181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.924778, 29.726967, 38.488155>,  <37.801769, 29.897852, 38.603340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.924778, 29.726967, 38.488155>,  <38.129791, 29.442160, 38.296181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924778, 29.726967, 38.488155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089633, 0.600241, -0.794780,
		-0.853975, -0.364335, -0.371465,
		-0.512535, 0.712019, 0.479935,
		37.771019, 29.940573, 38.632137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.503864, 29.782057, 37.841511>,  <38.129791, 29.442160, 38.296181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.503864, 29.782057, 37.841511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641945, 30.033876, 38.119938>,  <37.724792, 30.184969, 38.286995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641945, 30.033876, 38.119938>,  <37.503864, 29.782057, 37.841511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641945, 30.033876, 38.119938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013083, 0.744810, -0.667149,
		-0.938438, 0.221193, 0.265344,
		0.345199, 0.629549, 0.696064,
		37.745506, 30.222742, 38.328758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030888, 30.346716, 37.965939>,  <37.503864, 29.782057, 37.841511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030888, 30.346716, 37.965939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.384022, 30.492937, 38.083908>,  <37.595901, 30.580669, 38.154690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.384022, 30.492937, 38.083908>,  <37.030888, 30.346716, 37.965939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384022, 30.492937, 38.083908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196100, 0.857434, -0.475764,
		-0.426792, 0.362186, 0.828655,
		0.882833, 0.365551, 0.294921,
		37.648872, 30.602602, 38.172386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867432, 30.937716, 38.316441>,  <37.030888, 30.346716, 37.965939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867432, 30.937716, 38.316441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244164, 30.955956, 38.183250>,  <37.470203, 30.966900, 38.103336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244164, 30.955956, 38.183250>,  <36.867432, 30.937716, 38.316441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244164, 30.955956, 38.183250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227078, 0.816733, -0.530455,
		0.247762, 0.575211, 0.779581,
		0.941833, 0.045599, -0.332973,
		37.526714, 30.969635, 38.083359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220646, 31.660353, 38.492275>,  <36.867432, 30.937716, 38.316441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220646, 31.660353, 38.492275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.374165, 31.473181, 38.173843>,  <37.466278, 31.360878, 37.982784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.374165, 31.473181, 38.173843>,  <37.220646, 31.660353, 38.492275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374165, 31.473181, 38.173843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218736, 0.791494, -0.570695,
		0.897135, 0.393163, 0.201422,
		0.383800, -0.467932, -0.796076,
		37.489304, 31.332802, 37.935020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841152, 32.055435, 38.199459>,  <37.220646, 31.660353, 38.492275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841152, 32.055435, 38.199459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.558502, 31.860434, 37.994316>,  <37.388912, 31.743433, 37.871231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.558502, 31.860434, 37.994316>,  <37.841152, 32.055435, 38.199459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558502, 31.860434, 37.994316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236881, 0.845957, -0.477748,
		0.666759, -0.216102, -0.713255,
		-0.706625, -0.487500, -0.512859,
		37.346516, 31.714184, 37.840458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959171, 32.570484, 37.745735>,  <37.841152, 32.055435, 38.199459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959171, 32.570484, 37.745735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.091740, 32.201946, 37.664455>,  <38.171280, 31.980824, 37.615688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.091740, 32.201946, 37.664455>,  <37.959171, 32.570484, 37.745735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091740, 32.201946, 37.664455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116565, 0.173735, -0.977870,
		0.936255, 0.347772, -0.049817,
		0.331420, -0.921342, -0.203199,
		38.191166, 31.925543, 37.603497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.661560, 32.516037, 37.481674>,  <37.959171, 32.570484, 37.745735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.661560, 32.516037, 37.481674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.412506, 32.237865, 37.338173>,  <38.263073, 32.070961, 37.252071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.412506, 32.237865, 37.338173>,  <38.661560, 32.516037, 37.481674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.412506, 32.237865, 37.338173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092594, 0.520718, -0.848692,
		0.777013, -0.495210, -0.388611,
		-0.622638, -0.695428, -0.358751,
		38.225716, 32.029236, 37.230549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840645, 32.185299, 36.847630>,  <38.661560, 32.516037, 37.481674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840645, 32.185299, 36.847630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.441917, 32.153648, 36.843925>,  <38.202679, 32.134659, 36.841702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.441917, 32.153648, 36.843925>,  <38.840645, 32.185299, 36.847630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441917, 32.153648, 36.843925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020042, 0.361628, -0.932107,
		0.077099, -0.928959, -0.362065,
		-0.996822, -0.079121, -0.009264,
		38.142872, 32.129913, 36.841145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684101, 31.841005, 36.210247>,  <38.840645, 32.185299, 36.847630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684101, 31.841005, 36.210247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.352497, 32.036121, 36.319653>,  <38.153534, 32.153191, 36.385296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.352497, 32.036121, 36.319653>,  <38.684101, 31.841005, 36.210247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352497, 32.036121, 36.319653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076874, 0.385046, -0.919690,
		-0.553932, -0.783454, -0.281707,
		-0.829005, 0.487790, 0.273517,
		38.103794, 32.182457, 36.401707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076557, 31.805328, 35.638680>,  <38.684101, 31.841005, 36.210247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076557, 31.805328, 35.638680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.050171, 32.139130, 35.857494>,  <38.034340, 32.339413, 35.988785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.050171, 32.139130, 35.857494>,  <38.076557, 31.805328, 35.638680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050171, 32.139130, 35.857494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144086, 0.534518, -0.832784,
		-0.987364, -0.133757, 0.084980,
		-0.065968, 0.834505, 0.547036,
		38.030380, 32.389481, 36.021606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.506687, 32.144577, 35.330631>,  <38.076557, 31.805328, 35.638680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.506687, 32.144577, 35.330631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.761063, 32.390835, 35.516777>,  <37.913689, 32.538589, 35.628464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.761063, 32.390835, 35.516777>,  <37.506687, 32.144577, 35.330631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.761063, 32.390835, 35.516777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023696, 0.587146, -0.809135,
		-0.771378, 0.525585, 0.358799,
		0.635936, 0.615646, 0.465365,
		37.951843, 32.575527, 35.656387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397312, 32.649090, 35.842300>,  <37.506687, 32.144577, 35.330631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397312, 32.649090, 35.842300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.370163, 32.302357, 36.039886>,  <37.353874, 32.094318, 36.158440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.370163, 32.302357, 36.039886>,  <37.397312, 32.649090, 35.842300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370163, 32.302357, 36.039886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908230, -0.258601, -0.329005,
		0.412931, 0.426303, 0.804831,
		-0.067874, -0.866828, 0.493966,
		37.349800, 32.042309, 36.188076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272572, 32.810143, 35.077522>,  <37.397312, 32.649090, 35.842300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.272572, 32.810143, 35.077522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.639828, 32.856457, 35.229111>,  <37.860180, 32.884247, 35.320065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.639828, 32.856457, 35.229111>,  <37.272572, 32.810143, 35.077522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639828, 32.856457, 35.229111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244194, 0.587866, -0.771222,
		-0.312082, 0.800629, 0.511466,
		0.918136, 0.115787, 0.378971,
		37.915268, 32.891193, 35.342804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391418, 33.622540, 35.183571>,  <37.272572, 32.810143, 35.077522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391418, 33.622540, 35.183571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.740326, 33.430389, 35.146935>,  <37.949669, 33.315098, 35.124954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.740326, 33.430389, 35.146935>,  <37.391418, 33.622540, 35.183571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740326, 33.430389, 35.146935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256972, 0.609588, -0.749912,
		0.416069, 0.630589, 0.655167,
		0.872268, -0.480374, -0.091587,
		38.002007, 33.286278, 35.119457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887386, 34.228058, 35.056366>,  <37.391418, 33.622540, 35.183571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887386, 34.228058, 35.056366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.121025, 33.914600, 34.971764>,  <38.261208, 33.726528, 34.921001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.121025, 33.914600, 34.971764>,  <37.887386, 34.228058, 35.056366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.121025, 33.914600, 34.971764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421393, 0.515473, -0.746134,
		0.693724, 0.346692, 0.631309,
		0.584101, -0.783641, -0.211503,
		38.296257, 33.679508, 34.908314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692249, 34.474388, 34.954548>,  <37.887386, 34.228058, 35.056366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692249, 34.474388, 34.954548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.661201, 34.126461, 34.759659>,  <38.642570, 33.917706, 34.642727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.661201, 34.126461, 34.759659>,  <38.692249, 34.474388, 34.954548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.661201, 34.126461, 34.759659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669533, 0.316619, -0.671921,
		0.738716, -0.378367, 0.557797,
		-0.077623, -0.869822, -0.487220,
		38.637913, 33.865513, 34.613491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328491, 34.374249, 34.718651>,  <38.692249, 34.474388, 34.954548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.328491, 34.374249, 34.718651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127483, 34.157940, 34.448822>,  <39.006878, 34.028156, 34.286926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127483, 34.157940, 34.448822>,  <39.328491, 34.374249, 34.718651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127483, 34.157940, 34.448822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594311, 0.350604, -0.723789,
		0.627912, -0.764619, 0.145203,
		-0.502515, -0.540772, -0.674570,
		38.976730, 33.995708, 34.246452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754372, 34.163559, 34.170033>,  <39.328491, 34.374249, 34.718651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.754372, 34.163559, 34.170033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.395718, 34.126839, 33.996773>,  <39.180527, 34.104805, 33.892818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.395718, 34.126839, 33.996773>,  <39.754372, 34.163559, 34.170033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.395718, 34.126839, 33.996773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357475, 0.427141, -0.830519,
		0.261259, -0.899513, -0.350172,
		-0.896636, -0.091803, -0.433148,
		39.126728, 34.099297, 33.866829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.830166, 33.916714, 33.505783>,  <39.754372, 34.163559, 34.170033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.830166, 33.916714, 33.505783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.472279, 34.095070, 33.495537>,  <39.257545, 34.202084, 33.489391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.472279, 34.095070, 33.495537>,  <39.830166, 33.916714, 33.505783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472279, 34.095070, 33.495537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280001, 0.515316, -0.809969,
		-0.347960, -0.731867, -0.585913,
		-0.894720, 0.445893, -0.025614,
		39.203861, 34.228836, 33.487854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.735004, 33.939041, 32.927395>,  <39.830166, 33.916714, 33.505783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.735004, 33.939041, 32.927395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483776, 34.214321, 33.072674>,  <39.333038, 34.379490, 33.159840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483776, 34.214321, 33.072674>,  <39.735004, 33.939041, 32.927395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483776, 34.214321, 33.072674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222681, 0.606172, -0.763524,
		-0.745615, -0.398670, -0.533967,
		-0.628070, 0.688199, 0.363195,
		39.295357, 34.420780, 33.181633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273006, 33.467556, 32.794605>,  <39.735004, 33.939041, 32.927395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273006, 33.467556, 32.794605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.370621, 33.847095, 32.714466>,  <40.429192, 34.074818, 32.666382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.370621, 33.847095, 32.714466>,  <40.273006, 33.467556, 32.794605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.370621, 33.847095, 32.714466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640494, 0.312823, 0.701362,
		0.728157, -0.042837, 0.684070,
		0.244038, 0.948845, -0.200348,
		40.443832, 34.131748, 32.654362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.544823, 33.765888, 33.432446>,  <40.273006, 33.467556, 32.794605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.544823, 33.765888, 33.432446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.405907, 34.049522, 33.186981>,  <40.322559, 34.219704, 33.039703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.405907, 34.049522, 33.186981>,  <40.544823, 33.765888, 33.432446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.405907, 34.049522, 33.186981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649878, 0.289784, 0.702627,
		0.676055, 0.642820, 0.360184,
		-0.347287, 0.709090, -0.613664,
		40.301720, 34.262249, 33.002884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.608429, 34.412895, 33.813030>,  <40.544823, 33.765888, 33.432446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.608429, 34.412895, 33.813030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.463421, 34.758091, 33.672268>,  <40.376415, 34.965206, 33.587811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.463421, 34.758091, 33.672268>,  <40.608429, 34.412895, 33.813030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.463421, 34.758091, 33.672268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570239, 0.504051, 0.648660,
		0.737161, 0.034484, -0.674837,
		-0.362520, 0.862985, -0.351903,
		40.354664, 35.016987, 33.566696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.116970, 34.857800, 33.471336>,  <40.608429, 34.412895, 33.813030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.116970, 34.857800, 33.471336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.818081, 35.013462, 33.686821>,  <40.638748, 35.106861, 33.816113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.818081, 35.013462, 33.686821>,  <41.116970, 34.857800, 33.471336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818081, 35.013462, 33.686821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662255, 0.368396, 0.652459,
		0.055449, 0.844299, -0.532996,
		-0.747224, 0.389157, 0.538714,
		40.593914, 35.130211, 33.848434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.140972, 34.294113, 33.002361>,  <41.116970, 34.857800, 33.471336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.140972, 34.294113, 33.002361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.444382, 34.268852, 33.261795>,  <41.626427, 34.253696, 33.417454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.444382, 34.268852, 33.261795>,  <41.140972, 34.294113, 33.002361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.444382, 34.268852, 33.261795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168047, -0.942671, -0.288327,
		0.629607, 0.327694, -0.704423,
		0.758522, -0.063157, 0.648580,
		41.671940, 34.249905, 33.456367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.904892, 34.362141, 32.699417>,  <41.140972, 34.294113, 33.002361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.904892, 34.362141, 32.699417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.884956, 34.139225, 33.030945>,  <41.872993, 34.005474, 33.229862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.884956, 34.139225, 33.030945>,  <41.904892, 34.362141, 32.699417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.884956, 34.139225, 33.030945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142394, -0.825339, -0.546387,
		0.988554, 0.090785, 0.120492,
		-0.049843, -0.557291, 0.828820,
		41.870003, 33.972038, 33.279591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.409328, 33.902027, 32.721882>,  <41.904892, 34.362141, 32.699417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.409328, 33.902027, 32.721882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.150055, 33.652294, 32.896267>,  <41.994492, 33.502453, 33.000896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.150055, 33.652294, 32.896267>,  <42.409328, 33.902027, 32.721882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.150055, 33.652294, 32.896267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419691, -0.770617, -0.479592,
		0.635384, -0.127897, 0.761531,
		-0.648187, -0.624333, 0.435961,
		41.955597, 33.464993, 33.027054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.078922, 33.890160, 32.758835>,  <42.409328, 33.902027, 32.721882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.078922, 33.890160, 32.758835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.401936, 33.671310, 32.670708>,  <43.595745, 33.540001, 32.617832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.401936, 33.671310, 32.670708>,  <43.078922, 33.890160, 32.758835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.401936, 33.671310, 32.670708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219531, -0.067895, 0.973240,
		-0.547443, -0.834292, 0.065283,
		0.807534, -0.547125, -0.220322,
		43.644196, 33.507172, 32.604610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.115002, 33.324299, 33.189812>,  <43.078922, 33.890160, 32.758835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.115002, 33.324299, 33.189812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.476910, 33.447098, 33.071735>,  <43.694054, 33.520779, 33.000889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.476910, 33.447098, 33.071735>,  <43.115002, 33.324299, 33.189812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.476910, 33.447098, 33.071735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249290, 0.180205, 0.951515,
		0.345309, -0.934493, 0.086513,
		0.904774, 0.307000, -0.295187,
		43.748341, 33.539196, 32.983181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.753891, 32.970070, 33.635132>,  <43.115002, 33.324299, 33.189812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.753891, 32.970070, 33.635132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.819489, 33.335625, 33.486580>,  <43.858849, 33.554958, 33.397449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.819489, 33.335625, 33.486580>,  <43.753891, 32.970070, 33.635132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.819489, 33.335625, 33.486580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188299, 0.340553, 0.921177,
		0.968323, -0.221001, -0.116234,
		0.163997, 0.913883, -0.371379,
		43.868687, 33.609791, 33.375168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.501621, 33.295444, 33.806076>,  <43.753891, 32.970070, 33.635132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.501621, 33.295444, 33.806076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.249363, 33.599655, 33.744251>,  <44.098007, 33.782181, 33.707157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.249363, 33.599655, 33.744251>,  <44.501621, 33.295444, 33.806076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.249363, 33.599655, 33.744251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007674, 0.193035, 0.981162,
		0.776033, 0.619952, -0.115900,
		-0.630646, 0.760524, -0.154559,
		44.060169, 33.827812, 33.697884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.764988, 33.840641, 34.257767>,  <44.501621, 33.295444, 33.806076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.764988, 33.840641, 34.257767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.379940, 33.875877, 34.155308>,  <44.148911, 33.897018, 34.093834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.379940, 33.875877, 34.155308>,  <44.764988, 33.840641, 34.257767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.379940, 33.875877, 34.155308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250083, 0.074272, 0.965372,
		0.104069, 0.993339, -0.049464,
		-0.962615, 0.088095, -0.256146,
		44.091156, 33.902306, 34.078465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.485737, 34.477497, 34.484470>,  <44.764988, 33.840641, 34.257767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.485737, 34.477497, 34.484470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.181652, 34.217648, 34.481323>,  <43.999199, 34.061737, 34.479435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.181652, 34.217648, 34.481323>,  <44.485737, 34.477497, 34.484470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.181652, 34.217648, 34.481323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038036, 0.032422, 0.998750,
		-0.648557, 0.759564, -0.049357,
		-0.760215, -0.649624, -0.007863,
		43.953587, 34.022758, 34.478966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.864246, 35.107658, 34.716507>,  <44.485737, 34.477497, 34.484470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.864246, 35.107658, 34.716507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.793961, 35.400269, 34.980022>,  <44.751789, 35.575832, 35.138130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.793961, 35.400269, 34.980022>,  <44.864246, 35.107658, 34.716507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.793961, 35.400269, 34.980022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944529, -0.063345, 0.322262,
		0.277472, 0.678870, -0.679812,
		-0.175711, 0.731521, 0.658789,
		44.741245, 35.619724, 35.177658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.502560, 35.420563, 34.611702>,  <44.864246, 35.107658, 34.716507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.502560, 35.420563, 34.611702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.314030, 35.553925, 34.938309>,  <45.200912, 35.633942, 35.134274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.314030, 35.553925, 34.938309>,  <45.502560, 35.420563, 34.611702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.314030, 35.553925, 34.938309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871510, 0.033957, 0.489201,
		0.135374, 0.942173, -0.306567,
		-0.471322, 0.333401, 0.816516,
		45.172634, 35.653946, 35.183262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.856441, 36.065910, 34.733673>,  <45.502560, 35.420563, 34.611702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.856441, 36.065910, 34.733673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.672451, 35.900436, 35.047943>,  <45.562057, 35.801151, 35.236507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.672451, 35.900436, 35.047943>,  <45.856441, 36.065910, 34.733673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.672451, 35.900436, 35.047943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887376, -0.182818, 0.423252,
		-0.031457, 0.891876, 0.451185,
		-0.459973, -0.413685, 0.785678,
		45.534458, 35.776333, 35.283646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.260658, 36.015842, 35.388119>,  <45.856441, 36.065910, 34.733673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.260658, 36.015842, 35.388119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.597878, 35.941658, 35.590057>,  <46.800209, 35.897148, 35.711220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.597878, 35.941658, 35.590057>,  <46.260658, 36.015842, 35.388119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.597878, 35.941658, 35.590057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211544, 0.977351, 0.005784,
		-0.494481, 0.101920, 0.863192,
		0.843052, -0.185463, 0.504843,
		46.850792, 35.886021, 35.741508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.255611, 35.382030, 35.349144>,  <46.260658, 36.015842, 35.388119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.255611, 35.382030, 35.349144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.257854, 34.983040, 35.377441>,  <46.259201, 34.743645, 35.394421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.257854, 34.983040, 35.377441>,  <46.255611, 35.382030, 35.349144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.257854, 34.983040, 35.377441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835237, -0.043575, -0.548161,
		0.549861, -0.056011, -0.833376,
		0.005611, -0.997479, 0.070743,
		46.259537, 34.683796, 35.398663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.966736, 35.191692, 35.829334>,  <46.255611, 35.382030, 35.349144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.966736, 35.191692, 35.829334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.045826, 35.371563, 35.480923>,  <47.093281, 35.479485, 35.271873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.045826, 35.371563, 35.480923>,  <46.966736, 35.191692, 35.829334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.045826, 35.371563, 35.480923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593534, -0.762096, -0.258703,
		-0.780143, -0.465837, -0.417580,
		0.197723, 0.449674, -0.871033,
		47.105145, 35.506466, 35.219612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.998405, 34.608929, 35.324867>,  <46.966736, 35.191692, 35.829334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.998405, 34.608929, 35.324867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.256306, 34.914635, 35.330509>,  <47.411045, 35.098057, 35.333893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.256306, 34.914635, 35.330509>,  <46.998405, 34.608929, 35.324867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.256306, 34.914635, 35.330509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760712, -0.639723, -0.109869,
		-0.074946, 0.081566, -0.993846,
		0.644748, 0.764265, 0.014104,
		47.449730, 35.143913, 35.334740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.631062, 34.563896, 34.889919>,  <46.998405, 34.608929, 35.324867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.631062, 34.563896, 34.889919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.791046, 34.821266, 35.151005>,  <47.887035, 34.975689, 35.307655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.791046, 34.821266, 35.151005>,  <47.631062, 34.563896, 34.889919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.791046, 34.821266, 35.151005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851380, -0.524530, -0.004637,
		0.339386, 0.557564, -0.757588,
		0.399963, 0.643421, 0.652717,
		47.911034, 35.014294, 35.346821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.114285, 35.630447, 23.559389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.736629, 35.761749, 23.571083>,  <35.510036, 35.840530, 23.578098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.736629, 35.761749, 23.571083>,  <36.114285, 35.630447, 23.559389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736629, 35.761749, 23.571083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056758, -0.249348, 0.966749,
		0.324628, 0.911085, 0.254050,
		-0.944137, 0.328253, 0.029234,
		35.453388, 35.860226, 23.579853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023056, 35.884789, 24.195526>,  <36.114285, 35.630447, 23.559389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023056, 35.884789, 24.195526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.638069, 35.861038, 24.089603>,  <35.407078, 35.846786, 24.026051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.638069, 35.861038, 24.089603>,  <36.023056, 35.884789, 24.195526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638069, 35.861038, 24.089603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226339, -0.362726, 0.903991,
		-0.149731, 0.930002, 0.335674,
		-0.962471, -0.059380, -0.264807,
		35.349327, 35.843224, 24.010160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629395, 36.260891, 24.677097>,  <36.023056, 35.884789, 24.195526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629395, 36.260891, 24.677097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.372547, 35.991116, 24.531326>,  <35.218437, 35.829250, 24.443863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.372547, 35.991116, 24.531326>,  <35.629395, 36.260891, 24.677097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372547, 35.991116, 24.531326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229355, -0.284591, 0.930808,
		-0.731489, 0.681276, 0.028055,
		-0.642122, -0.674441, -0.364429,
		35.179909, 35.788784, 24.421997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006683, 36.318306, 25.075573>,  <35.629395, 36.260891, 24.677097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006683, 36.318306, 25.075573> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.023022, 35.953693, 24.911896>,  <35.032825, 35.734924, 24.813690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.023022, 35.953693, 24.911896>,  <35.006683, 36.318306, 25.075573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023022, 35.953693, 24.911896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320633, -0.399835, 0.858678,
		-0.946323, 0.096126, -0.308599,
		0.040847, -0.911533, -0.409194,
		35.035275, 35.680233, 24.789137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360817, 36.004105, 25.263163>,  <35.006683, 36.318306, 25.075573>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360817, 36.004105, 25.263163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.593018, 35.697632, 25.152901>,  <34.732338, 35.513748, 25.086744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.593018, 35.697632, 25.152901>,  <34.360817, 36.004105, 25.263163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593018, 35.697632, 25.152901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385189, -0.556651, 0.736049,
		-0.717392, -0.321097, -0.618260,
		0.580499, -0.766183, -0.275654,
		34.767166, 35.467777, 25.070204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935516, 35.373158, 25.341646>,  <34.360817, 36.004105, 25.263163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935516, 35.373158, 25.341646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.320507, 35.264610, 25.340715>,  <34.551502, 35.199482, 25.340157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.320507, 35.264610, 25.340715>,  <33.935516, 35.373158, 25.341646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320507, 35.264610, 25.340715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134874, -0.485772, 0.863617,
		-0.235484, -0.830895, -0.504143,
		0.962474, -0.271364, -0.002325,
		34.609249, 35.183201, 25.340017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018578, 34.694099, 25.550159>,  <33.935516, 35.373158, 25.341646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018578, 34.694099, 25.550159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.401215, 34.803329, 25.590878>,  <34.630798, 34.868866, 25.615309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.401215, 34.803329, 25.590878>,  <34.018578, 34.694099, 25.550159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401215, 34.803329, 25.590878> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068905, -0.551321, 0.831443,
		0.283170, -0.788337, -0.546205,
		0.956591, 0.273076, 0.101797,
		34.688190, 34.885254, 25.621416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358112, 34.041840, 25.769196>,  <34.018578, 34.694099, 25.550159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.358112, 34.041840, 25.769196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.578632, 34.356102, 25.881491>,  <34.710945, 34.544659, 25.948868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.578632, 34.356102, 25.881491>,  <34.358112, 34.041840, 25.769196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578632, 34.356102, 25.881491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237834, -0.470525, 0.849730,
		0.799687, -0.401691, -0.446257,
		0.551304, 0.785653, 0.280737,
		34.744022, 34.591797, 25.965712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961250, 33.788689, 26.022680>,  <34.358112, 34.041840, 25.769196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961250, 33.788689, 26.022680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.963573, 34.146194, 26.202076>,  <34.964966, 34.360699, 26.309713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.963573, 34.146194, 26.202076>,  <34.961250, 33.788689, 26.022680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963573, 34.146194, 26.202076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512843, -0.387688, 0.765957,
		0.858463, 0.225558, -0.460615,
		0.005808, 0.893768, 0.448492,
		34.965317, 34.414326, 26.336624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627491, 33.820766, 26.356213>,  <34.961250, 33.788689, 26.022680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627491, 33.820766, 26.356213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.424664, 34.119495, 26.528328>,  <35.302967, 34.298733, 26.631598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.424664, 34.119495, 26.528328>,  <35.627491, 33.820766, 26.356213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424664, 34.119495, 26.528328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276149, -0.332142, 0.901900,
		0.816473, 0.576144, -0.037816,
		-0.507064, 0.746820, 0.430286,
		35.272545, 34.343540, 26.657413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100620, 34.088104, 26.720055>,  <35.627491, 33.820766, 26.356213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100620, 34.088104, 26.720055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.750820, 34.190746, 26.884689>,  <35.540939, 34.252331, 26.983469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.750820, 34.190746, 26.884689>,  <36.100620, 34.088104, 26.720055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750820, 34.190746, 26.884689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370047, -0.195599, 0.908189,
		0.313549, 0.946518, 0.076096,
		-0.874501, 0.256603, 0.411586,
		35.488468, 34.267727, 27.008165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271454, 34.658875, 27.238272>,  <36.100620, 34.088104, 26.720055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271454, 34.658875, 27.238272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.924530, 34.484695, 27.334745>,  <35.716377, 34.380188, 27.392630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.924530, 34.484695, 27.334745>,  <36.271454, 34.658875, 27.238272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924530, 34.484695, 27.334745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196161, 0.146330, 0.969592,
		-0.457495, 0.888243, -0.041496,
		-0.867306, -0.435444, 0.241184,
		35.664337, 34.354061, 27.407101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041908, 34.995697, 27.733469>,  <36.271454, 34.658875, 27.238272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041908, 34.995697, 27.733469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.840275, 34.651276, 27.760294>,  <35.719296, 34.444622, 27.776388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.840275, 34.651276, 27.760294>,  <36.041908, 34.995697, 27.733469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840275, 34.651276, 27.760294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150505, -0.011118, 0.988547,
		-0.850442, 0.508399, 0.135197,
		-0.504079, -0.861050, 0.067062,
		35.689053, 34.392960, 27.780413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625893, 35.080395, 28.332226>,  <36.041908, 34.995697, 27.733469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625893, 35.080395, 28.332226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.678055, 34.690594, 28.259199>,  <35.709351, 34.456711, 28.215384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.678055, 34.690594, 28.259199>,  <35.625893, 35.080395, 28.332226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678055, 34.690594, 28.259199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078798, -0.173370, 0.981699,
		-0.988324, -0.142406, 0.054181,
		0.130407, -0.974507, -0.182567,
		35.717178, 34.398243, 28.204430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464230, 34.804897, 28.994081>,  <35.625893, 35.080395, 28.332226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464230, 34.804897, 28.994081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.589806, 34.469368, 28.816172>,  <35.665150, 34.268051, 28.709425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.589806, 34.469368, 28.816172>,  <35.464230, 34.804897, 28.994081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589806, 34.469368, 28.816172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309092, -0.352646, 0.883235,
		-0.897723, -0.414755, 0.148565,
		0.313935, -0.838820, -0.444776,
		35.683987, 34.217720, 28.682739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062576, 34.225971, 29.258413>,  <35.464230, 34.804897, 28.994081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.062576, 34.225971, 29.258413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.408737, 34.086552, 29.114422>,  <35.616436, 34.002899, 29.028027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.408737, 34.086552, 29.114422>,  <35.062576, 34.225971, 29.258413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408737, 34.086552, 29.114422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252169, -0.317853, 0.913992,
		-0.432995, -0.881748, -0.187177,
		0.865405, -0.348554, -0.359978,
		35.668358, 33.981987, 29.006428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185524, 33.525772, 29.583319>,  <35.062576, 34.225971, 29.258413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185524, 33.525772, 29.583319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.545979, 33.639656, 29.452543>,  <35.762253, 33.707985, 29.374079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.545979, 33.639656, 29.452543>,  <35.185524, 33.525772, 29.583319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545979, 33.639656, 29.452543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415180, -0.349679, 0.839851,
		0.124790, -0.892561, -0.433316,
		0.901140, 0.284709, -0.326937,
		35.816322, 33.725067, 29.354462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568314, 32.950649, 29.625919>,  <35.185524, 33.525772, 29.583319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568314, 32.950649, 29.625919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.826023, 33.256367, 29.636936>,  <35.980648, 33.439796, 29.643547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.826023, 33.256367, 29.636936>,  <35.568314, 32.950649, 29.625919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826023, 33.256367, 29.636936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424011, -0.386936, 0.818837,
		0.636491, -0.515881, -0.573364,
		0.644278, 0.764295, 0.027542,
		36.019306, 33.485657, 29.645199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153614, 32.616573, 29.754498>,  <35.568314, 32.950649, 29.625919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153614, 32.616573, 29.754498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.250847, 32.989689, 29.860935>,  <36.309189, 33.213558, 29.924797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.250847, 32.989689, 29.860935>,  <36.153614, 32.616573, 29.754498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250847, 32.989689, 29.860935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631614, -0.360410, 0.686416,
		0.736188, 0.001210, -0.676776,
		0.243086, 0.932793, 0.266094,
		36.323772, 33.269527, 29.940763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.798878, 32.529457, 29.955221>,  <36.153614, 32.616573, 29.754498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.798878, 32.529457, 29.955221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.713562, 32.893696, 30.096823>,  <36.662373, 33.112240, 30.181784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.713562, 32.893696, 30.096823>,  <36.798878, 32.529457, 29.955221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713562, 32.893696, 30.096823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567339, -0.179547, 0.803672,
		0.795383, 0.372255, -0.478322,
		-0.213290, 0.910598, 0.354003,
		36.649574, 33.166874, 30.203024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421654, 32.854305, 30.084824>,  <36.798878, 32.529457, 29.955221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421654, 32.854305, 30.084824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.175163, 33.061981, 30.321709>,  <37.027271, 33.186584, 30.463840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.175163, 33.061981, 30.321709>,  <37.421654, 32.854305, 30.084824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175163, 33.061981, 30.321709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376249, -0.466521, 0.800497,
		0.691886, 0.716104, 0.092137,
		-0.616223, 0.519186, 0.592213,
		36.990295, 33.217735, 30.499372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818890, 33.105091, 30.646006>,  <37.421654, 32.854305, 30.084824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818890, 33.105091, 30.646006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.442795, 33.087978, 30.781132>,  <37.217136, 33.077709, 30.862207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.442795, 33.087978, 30.781132>,  <37.818890, 33.105091, 30.646006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442795, 33.087978, 30.781132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321487, -0.438495, 0.839266,
		0.112226, 0.897715, 0.426044,
		-0.940240, -0.042781, 0.337814,
		37.160725, 33.075146, 30.882477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549679, 33.196259, 31.269829>,  <37.818890, 33.105091, 30.646006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.549679, 33.196259, 31.269829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.940567, 33.112854, 31.253992>,  <38.175098, 33.062813, 31.244490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.940567, 33.112854, 31.253992>,  <37.549679, 33.196259, 31.269829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940567, 33.112854, 31.253992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007548, 0.152285, -0.988308,
		0.212101, 0.966092, 0.147242,
		0.977219, -0.208510, -0.039592,
		38.233734, 33.050301, 31.242115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844479, 33.734943, 30.980387>,  <37.549679, 33.196259, 31.269829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844479, 33.734943, 30.980387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.086372, 33.422173, 30.919874>,  <38.231506, 33.234509, 30.883566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.086372, 33.422173, 30.919874>,  <37.844479, 33.734943, 30.980387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086372, 33.422173, 30.919874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194569, 0.329240, -0.923983,
		0.772298, 0.529325, 0.351241,
		0.604730, -0.781931, -0.151281,
		38.267792, 33.187592, 30.874491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562584, 34.120499, 30.662271>,  <37.844479, 33.734943, 30.980387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562584, 34.120499, 30.662271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.560226, 33.735001, 30.555563>,  <38.558811, 33.503704, 30.491539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.560226, 33.735001, 30.555563>,  <38.562584, 34.120499, 30.662271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560226, 33.735001, 30.555563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484806, 0.230574, -0.843682,
		0.874602, -0.134300, 0.465870,
		-0.005889, -0.963742, -0.266769,
		38.558460, 33.445877, 30.475533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224476, 34.075424, 30.445213>,  <38.562584, 34.120499, 30.662271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224476, 34.075424, 30.445213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.996113, 33.781269, 30.299189>,  <38.859097, 33.604774, 30.211573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.996113, 33.781269, 30.299189>,  <39.224476, 34.075424, 30.445213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996113, 33.781269, 30.299189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316059, 0.213526, -0.924399,
		0.757743, -0.643125, 0.110524,
		-0.570904, -0.735389, -0.365063,
		38.824841, 33.560654, 30.189671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571396, 33.849075, 29.895636>,  <39.224476, 34.075424, 30.445213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.571396, 33.849075, 29.895636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.215622, 33.702942, 29.785772>,  <39.002155, 33.615261, 29.719854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.215622, 33.702942, 29.785772>,  <39.571396, 33.849075, 29.895636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215622, 33.702942, 29.785772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170560, 0.292214, -0.941021,
		0.424042, -0.883824, -0.197595,
		-0.889437, -0.365330, -0.274656,
		38.948792, 33.593342, 29.703375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621082, 33.523514, 29.225988>,  <39.571396, 33.849075, 29.895636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621082, 33.523514, 29.225988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.233433, 33.615868, 29.260586>,  <39.000843, 33.671280, 29.281345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.233433, 33.615868, 29.260586>,  <39.621082, 33.523514, 29.225988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233433, 33.615868, 29.260586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000540, 0.352796, -0.935700,
		-0.246557, -0.906767, -0.342029,
		-0.969128, 0.230888, 0.086495,
		38.942696, 33.685135, 29.286533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265656, 33.287888, 28.616764>,  <39.621082, 33.523514, 29.225988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265656, 33.287888, 28.616764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.978107, 33.524158, 28.763369>,  <38.805580, 33.665920, 28.851332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.978107, 33.524158, 28.763369>,  <39.265656, 33.287888, 28.616764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978107, 33.524158, 28.763369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217291, 0.309889, -0.925610,
		-0.660312, -0.745032, -0.094422,
		-0.718870, 0.590674, 0.366512,
		38.762447, 33.701359, 28.873322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715389, 33.201817, 28.091490>,  <39.265656, 33.287888, 28.616764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715389, 33.201817, 28.091490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.657642, 33.544884, 28.288897>,  <38.622993, 33.750725, 28.407341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.657642, 33.544884, 28.288897>,  <38.715389, 33.201817, 28.091490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657642, 33.544884, 28.288897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256702, 0.449208, -0.855755,
		-0.955648, -0.250227, 0.155316,
		-0.144364, 0.857670, 0.493519,
		38.614334, 33.802185, 28.436953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000797, 33.449295, 27.840164>,  <38.715389, 33.201817, 28.091490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.000797, 33.449295, 27.840164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.143326, 33.779369, 28.015484>,  <38.228844, 33.977413, 28.120676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.143326, 33.779369, 28.015484>,  <38.000797, 33.449295, 27.840164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143326, 33.779369, 28.015484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146276, 0.512570, -0.846094,
		-0.922842, 0.237370, 0.303345,
		0.356323, 0.825183, 0.438300,
		38.250221, 34.026924, 28.146975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555435, 33.934219, 27.758526>,  <38.000797, 33.449295, 27.840164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555435, 33.934219, 27.758526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.898491, 34.137115, 27.792389>,  <38.104324, 34.258854, 27.812706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.898491, 34.137115, 27.792389>,  <37.555435, 33.934219, 27.758526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898491, 34.137115, 27.792389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245292, 0.548184, -0.799579,
		-0.451987, 0.664982, 0.594564,
		0.857636, 0.507241, 0.084657,
		38.155781, 34.289288, 27.817785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403580, 34.595608, 27.638298>,  <37.555435, 33.934219, 27.758526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403580, 34.595608, 27.638298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.797417, 34.649067, 27.593197>,  <38.033718, 34.681141, 27.566135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.797417, 34.649067, 27.593197>,  <37.403580, 34.595608, 27.638298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797417, 34.649067, 27.593197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173380, 0.662515, -0.728707,
		-0.022687, 0.737029, 0.675480,
		0.984594, 0.133647, -0.112755,
		38.092796, 34.689159, 27.559370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422478, 35.349930, 27.515774>,  <37.403580, 34.595608, 27.638298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422478, 35.349930, 27.515774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.775417, 35.188625, 27.418745>,  <37.987179, 35.091843, 27.360527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.775417, 35.188625, 27.418745>,  <37.422478, 35.349930, 27.515774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775417, 35.188625, 27.418745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003461, 0.509881, -0.860238,
		0.470587, 0.759868, 0.448496,
		0.882347, -0.403264, -0.242574,
		38.040123, 35.067646, 27.345972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824131, 35.939709, 27.278803>,  <37.422478, 35.349930, 27.515774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824131, 35.939709, 27.278803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.930618, 35.585587, 27.126295>,  <37.994511, 35.373112, 27.034790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.930618, 35.585587, 27.126295>,  <37.824131, 35.939709, 27.278803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930618, 35.585587, 27.126295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061847, 0.410417, -0.909798,
		0.961928, 0.218621, 0.164012,
		0.266214, -0.885304, -0.381270,
		38.010483, 35.319996, 27.011913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521721, 36.085575, 26.904486>,  <37.824131, 35.939709, 27.278803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521721, 36.085575, 26.904486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.347515, 35.751965, 26.769001>,  <38.242992, 35.551800, 26.687710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.347515, 35.751965, 26.769001>,  <38.521721, 36.085575, 26.904486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347515, 35.751965, 26.769001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110171, 0.324058, -0.939600,
		0.893415, -0.446525, -0.049246,
		-0.435514, -0.834027, -0.338713,
		38.216862, 35.501755, 26.667387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004734, 35.770451, 26.461020>,  <38.521721, 36.085575, 26.904486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.004734, 35.770451, 26.461020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.654720, 35.606712, 26.357676>,  <38.444714, 35.508469, 26.295670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.654720, 35.606712, 26.357676>,  <39.004734, 35.770451, 26.461020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654720, 35.606712, 26.357676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205770, 0.168551, -0.963976,
		0.438150, -0.896674, -0.063256,
		-0.875033, -0.409350, -0.258359,
		38.392212, 35.483906, 26.280169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175365, 35.494759, 25.882702>,  <39.004734, 35.770451, 26.461020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.175365, 35.494759, 25.882702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.775730, 35.510963, 25.877417>,  <38.535950, 35.520687, 25.874247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.775730, 35.510963, 25.877417>,  <39.175365, 35.494759, 25.882702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775730, 35.510963, 25.877417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019806, 0.166979, -0.985762,
		-0.037730, -0.985128, -0.167629,
		-0.999092, 0.040513, -0.013211,
		38.476002, 35.523117, 25.873453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113216, 35.215981, 25.284611>,  <39.175365, 35.494759, 25.882702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.113216, 35.215981, 25.284611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.774708, 35.408684, 25.375597>,  <38.571602, 35.524307, 25.430189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.774708, 35.408684, 25.375597>,  <39.113216, 35.215981, 25.284611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774708, 35.408684, 25.375597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205845, 0.098127, -0.973652,
		-0.491386, -0.870792, 0.016126,
		-0.846267, 0.481759, 0.227467,
		38.520828, 35.553211, 25.443836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691158, 35.008976, 24.746904>,  <39.113216, 35.215981, 25.284611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691158, 35.008976, 24.746904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.501270, 35.322430, 24.907187>,  <38.387337, 35.510502, 25.003355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.501270, 35.322430, 24.907187>,  <38.691158, 35.008976, 24.746904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501270, 35.322430, 24.907187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405560, 0.209299, -0.889784,
		-0.781131, -0.584904, 0.218453,
		-0.474716, 0.783633, 0.400703,
		38.358856, 35.557518, 25.027397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.061878, 35.062904, 24.407595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.120701, 35.428196, 24.559587>,  <38.155994, 35.647369, 24.650784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.120701, 35.428196, 24.559587>,  <38.061878, 35.062904, 24.407595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120701, 35.428196, 24.559587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207597, 0.404100, -0.890846,
		-0.967097, 0.052126, 0.249011,
		0.147061, 0.913228, 0.379983,
		38.164818, 35.702164, 24.673582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455383, 35.540985, 24.318771>,  <38.061878, 35.062904, 24.407595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455383, 35.540985, 24.318771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.760185, 35.796501, 24.361303>,  <37.943066, 35.949810, 24.386822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.760185, 35.796501, 24.361303>,  <37.455383, 35.540985, 24.318771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760185, 35.796501, 24.361303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231455, 0.422005, -0.876550,
		-0.604798, 0.643323, 0.469419,
		0.762002, 0.638786, 0.106328,
		37.988785, 35.988136, 24.393202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.229076, 36.303196, 24.257761>,  <37.455383, 35.540985, 24.318771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.229076, 36.303196, 24.257761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.622963, 36.316647, 24.189402>,  <37.859295, 36.324715, 24.148386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.622963, 36.316647, 24.189402>,  <37.229076, 36.303196, 24.257761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622963, 36.316647, 24.189402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166344, 0.472462, -0.865511,
		0.051644, 0.880709, 0.470833,
		0.984715, 0.033622, -0.170900,
		37.918377, 36.326733, 24.138132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415154, 36.987732, 24.117920>,  <37.229076, 36.303196, 24.257761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415154, 36.987732, 24.117920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.693478, 36.760887, 23.941635>,  <37.860474, 36.624779, 23.835863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.693478, 36.760887, 23.941635>,  <37.415154, 36.987732, 24.117920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693478, 36.760887, 23.941635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107324, 0.524627, -0.844540,
		0.710158, 0.634941, 0.304178,
		0.695814, -0.567111, -0.440713,
		37.902222, 36.590755, 23.809422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766220, 37.421135, 23.677038>,  <37.415154, 36.987732, 24.117920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766220, 37.421135, 23.677038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.893349, 37.071812, 23.529356>,  <37.969627, 36.862217, 23.440746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.893349, 37.071812, 23.529356>,  <37.766220, 37.421135, 23.677038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893349, 37.071812, 23.529356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013956, 0.385045, -0.922792,
		0.948047, 0.298439, 0.110189,
		0.317825, -0.873312, -0.369206,
		37.988697, 36.809818, 23.418594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323891, 37.541420, 23.127495>,  <37.766220, 37.421135, 23.677038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.323891, 37.541420, 23.127495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.191566, 37.175133, 23.036264>,  <38.112171, 36.955360, 22.981527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.191566, 37.175133, 23.036264>,  <38.323891, 37.541420, 23.127495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191566, 37.175133, 23.036264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032998, 0.230310, -0.972558,
		0.943119, -0.329263, -0.045973,
		-0.330815, -0.915720, -0.228075,
		38.092323, 36.900417, 22.967842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738869, 37.318241, 22.545647>,  <38.323891, 37.541420, 23.127495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738869, 37.318241, 22.545647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.410103, 37.090446, 22.550444>,  <38.212845, 36.953770, 22.553322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.410103, 37.090446, 22.550444>,  <38.738869, 37.318241, 22.545647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410103, 37.090446, 22.550444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064728, 0.072461, -0.995269,
		0.565923, -0.818801, -0.096419,
		-0.821914, -0.569486, 0.011992,
		38.163528, 36.919601, 22.554041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707714, 36.931076, 21.895573>,  <38.738869, 37.318241, 22.545647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707714, 36.931076, 21.895573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.330387, 36.887814, 22.021084>,  <38.103992, 36.861855, 22.096392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.330387, 36.887814, 22.021084>,  <38.707714, 36.931076, 21.895573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330387, 36.887814, 22.021084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329102, 0.182412, -0.926508,
		0.042968, -0.977256, -0.207666,
		-0.943316, -0.108153, 0.313779,
		38.047394, 36.855366, 22.115217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501068, 36.311981, 21.529167>,  <38.707714, 36.931076, 21.895573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.501068, 36.311981, 21.529167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.194115, 36.544575, 21.637238>,  <38.009941, 36.684132, 21.702080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.194115, 36.544575, 21.637238>,  <38.501068, 36.311981, 21.529167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194115, 36.544575, 21.637238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198035, 0.185823, -0.962420,
		-0.609835, -0.792053, -0.027444,
		-0.767387, 0.581483, 0.270176,
		37.963898, 36.719021, 21.718290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951534, 36.120468, 21.045019>,  <38.501068, 36.311981, 21.529167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951534, 36.120468, 21.045019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.865261, 36.472816, 21.213566>,  <37.813496, 36.684227, 21.314693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.865261, 36.472816, 21.213566>,  <37.951534, 36.120468, 21.045019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865261, 36.472816, 21.213566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471931, 0.283742, -0.834728,
		-0.854846, -0.378891, 0.354512,
		-0.215681, 0.880870, 0.421366,
		37.800556, 36.737076, 21.339975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277851, 36.217625, 20.711380>,  <37.951534, 36.120468, 21.045019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277851, 36.217625, 20.711380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.404053, 36.572704, 20.845512>,  <37.479774, 36.785751, 20.925991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.404053, 36.572704, 20.845512>,  <37.277851, 36.217625, 20.711380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404053, 36.572704, 20.845512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027848, 0.361888, -0.931805,
		-0.948516, 0.284648, 0.138897,
		0.315502, 0.887700, 0.335330,
		37.498703, 36.839016, 20.946112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014824, 36.621090, 20.180346>,  <37.277851, 36.217625, 20.711380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014824, 36.621090, 20.180346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.304043, 36.831455, 20.359507>,  <37.477573, 36.957676, 20.467003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.304043, 36.831455, 20.359507>,  <37.014824, 36.621090, 20.180346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304043, 36.831455, 20.359507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222314, 0.436740, -0.871685,
		-0.654049, 0.729844, 0.198865,
		0.723047, 0.525914, 0.447904,
		37.520958, 36.989231, 20.493877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889908, 37.281864, 19.940741>,  <37.014824, 36.621090, 20.180346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889908, 37.281864, 19.940741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.258423, 37.305801, 20.094444>,  <37.479530, 37.320164, 20.186666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.258423, 37.305801, 20.094444>,  <36.889908, 37.281864, 19.940741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258423, 37.305801, 20.094444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244202, 0.679967, -0.691383,
		-0.302655, 0.730797, 0.611830,
		0.921285, 0.059840, 0.384257,
		37.534809, 37.323753, 20.209721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136688, 37.993603, 19.914829>,  <36.889908, 37.281864, 19.940741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136688, 37.993603, 19.914829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.490726, 37.809887, 19.944952>,  <37.703148, 37.699657, 19.963026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.490726, 37.809887, 19.944952>,  <37.136688, 37.993603, 19.914829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490726, 37.809887, 19.944952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386395, 0.634932, -0.668999,
		0.259447, 0.621224, 0.739438,
		0.885091, -0.459285, 0.075307,
		37.756252, 37.672100, 19.967545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678452, 38.542831, 20.006237>,  <37.136688, 37.993603, 19.914829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678452, 38.542831, 20.006237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.880081, 38.221546, 19.879271>,  <38.001060, 38.028774, 19.803091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.880081, 38.221546, 19.879271>,  <37.678452, 38.542831, 20.006237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.880081, 38.221546, 19.879271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449080, 0.557693, -0.698073,
		0.737724, 0.209335, 0.641827,
		0.504074, -0.803216, -0.317415,
		38.031303, 37.980579, 19.784046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397331, 38.683842, 20.038841>,  <37.678452, 38.542831, 20.006237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397331, 38.683842, 20.038841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.342461, 38.386162, 19.777355>,  <38.309540, 38.207554, 19.620462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.342461, 38.386162, 19.777355>,  <38.397331, 38.683842, 20.038841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342461, 38.386162, 19.777355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243585, 0.614347, -0.750496,
		0.960130, -0.262186, 0.097003,
		-0.137176, -0.744202, -0.653717,
		38.301308, 38.162903, 19.581240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025093, 38.672516, 19.623119>,  <38.397331, 38.683842, 20.038841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025093, 38.672516, 19.623119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.724705, 38.500378, 19.422783>,  <38.544472, 38.397095, 19.302580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.724705, 38.500378, 19.422783>,  <39.025093, 38.672516, 19.623119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724705, 38.500378, 19.422783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361269, 0.367131, -0.857146,
		0.552741, -0.824633, -0.120237,
		-0.750974, -0.430342, -0.500843,
		38.499413, 38.371273, 19.272530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320667, 38.335258, 19.145792>,  <39.025093, 38.672516, 19.623119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.320667, 38.335258, 19.145792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.945873, 38.385017, 19.015205>,  <38.720997, 38.414875, 18.936853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.945873, 38.385017, 19.015205>,  <39.320667, 38.335258, 19.145792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945873, 38.385017, 19.015205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349346, 0.324081, -0.879164,
		-0.003569, -0.937814, -0.347119,
		-0.936987, 0.124402, -0.326465,
		38.664776, 38.422337, 18.917265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.394428, 38.172016, 18.364393>,  <39.320667, 38.335258, 19.145792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.394428, 38.172016, 18.364393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.028866, 38.333664, 18.379658>,  <38.809528, 38.430653, 18.388817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.028866, 38.333664, 18.379658>,  <39.394428, 38.172016, 18.364393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028866, 38.333664, 18.379658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065529, 0.239665, -0.968642,
		-0.400593, -0.882750, -0.245514,
		-0.913910, 0.404119, 0.038162,
		38.754692, 38.454899, 18.391106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166668, 38.175209, 17.639317>,  <39.394428, 38.172016, 18.364393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166668, 38.175209, 17.639317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.904068, 38.428558, 17.803194>,  <38.746510, 38.580566, 17.901520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.904068, 38.428558, 17.803194>,  <39.166668, 38.175209, 17.639317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904068, 38.428558, 17.803194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152245, 0.420694, -0.894337,
		-0.738802, -0.649506, -0.179758,
		-0.656500, 0.633370, 0.409694,
		38.707119, 38.618568, 17.926102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549397, 38.178772, 17.210218>,  <39.166668, 38.175209, 17.639317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549397, 38.178772, 17.210218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.542248, 38.508320, 17.436815>,  <38.537960, 38.706051, 17.572773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.542248, 38.508320, 17.436815>,  <38.549397, 38.178772, 17.210218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.542248, 38.508320, 17.436815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153287, 0.557629, -0.815815,
		-0.988020, -0.101414, 0.116324,
		-0.017869, 0.823872, 0.566494,
		38.536888, 38.755482, 17.606764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077438, 38.586132, 16.961588>,  <38.549397, 38.178772, 17.210218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.077438, 38.586132, 16.961588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.313541, 38.844299, 17.155506>,  <38.455204, 38.999199, 17.271856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.313541, 38.844299, 17.155506>,  <38.077438, 38.586132, 16.961588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313541, 38.844299, 17.155506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000601, 0.600227, -0.799830,
		-0.807215, 0.472397, 0.353900,
		0.590257, 0.645422, 0.484796,
		38.490620, 39.037926, 17.300945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710796, 39.231144, 17.010368>,  <38.077438, 38.586132, 16.961588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710796, 39.231144, 17.010368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.014668, 39.291748, 16.757406>,  <38.196991, 39.328110, 16.605629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.014668, 39.291748, 16.757406>,  <37.710796, 39.231144, 17.010368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014668, 39.291748, 16.757406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322179, -0.757054, -0.568393,
		-0.564885, 0.635541, -0.526300,
		0.759675, 0.151514, -0.632406,
		38.242569, 39.337204, 16.567684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374470, 39.789364, 17.381748>,  <37.710796, 39.231144, 17.010368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374470, 39.789364, 17.381748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.747326, 39.651394, 17.337690>,  <37.971039, 39.568611, 17.311255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.747326, 39.651394, 17.337690>,  <37.374470, 39.789364, 17.381748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.747326, 39.651394, 17.337690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148593, -0.087004, -0.985064,
		0.330191, 0.934589, -0.132354,
		0.932145, -0.344926, -0.110145,
		38.026970, 39.547916, 17.304647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949757, 40.284477, 17.695183>,  <37.374470, 39.789364, 17.381748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949757, 40.284477, 17.695183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.607868, 40.487213, 17.650333>,  <36.402737, 40.608856, 17.623425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.607868, 40.487213, 17.650333>,  <36.949757, 40.284477, 17.695183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607868, 40.487213, 17.650333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302766, -0.311303, 0.900790,
		0.421654, 0.803867, 0.419530,
		-0.854716, 0.506842, -0.112122,
		36.351452, 40.639267, 17.616697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814594, 40.702202, 18.341732>,  <36.949757, 40.284477, 17.695183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814594, 40.702202, 18.341732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.454090, 40.697948, 18.168470>,  <36.237789, 40.695396, 18.064514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.454090, 40.697948, 18.168470>,  <36.814594, 40.702202, 18.341732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454090, 40.697948, 18.168470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430896, -0.082814, 0.898593,
		-0.045424, 0.996508, 0.070056,
		-0.901257, -0.010631, -0.433154,
		36.183712, 40.694759, 18.038525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319859, 41.107941, 18.784431>,  <36.814594, 40.702202, 18.341732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319859, 41.107941, 18.784431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.140514, 40.835274, 18.553156>,  <36.032906, 40.671673, 18.414391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.140514, 40.835274, 18.553156>,  <36.319859, 41.107941, 18.784431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140514, 40.835274, 18.553156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500734, -0.344276, 0.794191,
		-0.740430, 0.645604, -0.186974,
		-0.448362, -0.681667, -0.578188,
		36.006004, 40.630775, 18.379700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490524, 41.139923, 18.910938>,  <36.319859, 41.107941, 18.784431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490524, 41.139923, 18.910938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.567596, 40.788097, 18.736927>,  <35.613838, 40.577003, 18.632521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.567596, 40.788097, 18.736927>,  <35.490524, 41.139923, 18.910938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567596, 40.788097, 18.736927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629224, -0.450936, 0.633035,
		-0.752962, 0.151760, -0.640325,
		0.192677, -0.879560, -0.435029,
		35.625401, 40.524231, 18.606419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861267, 40.797886, 18.990662>,  <35.490524, 41.139923, 18.910938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861267, 40.797886, 18.990662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.144035, 40.529938, 18.899853>,  <35.313694, 40.369167, 18.845367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.144035, 40.529938, 18.899853>,  <34.861267, 40.797886, 18.990662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144035, 40.529938, 18.899853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330523, -0.596639, 0.731284,
		-0.625317, -0.441921, -0.643183,
		0.706918, -0.669871, -0.227024,
		35.356110, 40.328976, 18.831745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538570, 40.213005, 19.265745>,  <34.861267, 40.797886, 18.990662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538570, 40.213005, 19.265745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.915859, 40.099232, 19.197115>,  <35.142231, 40.030968, 19.155937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.915859, 40.099232, 19.197115>,  <34.538570, 40.213005, 19.265745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915859, 40.099232, 19.197115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133015, -0.796718, 0.589531,
		-0.304379, -0.533234, -0.789313,
		0.943218, -0.284431, -0.171576,
		35.198826, 40.013901, 19.145641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448383, 39.524830, 19.072496>,  <34.538570, 40.213005, 19.265745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448383, 39.524830, 19.072496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.823742, 39.578220, 19.199993>,  <35.048958, 39.610256, 19.276491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.823742, 39.578220, 19.199993>,  <34.448383, 39.524830, 19.072496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823742, 39.578220, 19.199993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097557, -0.782537, 0.614913,
		0.331504, -0.608128, -0.721308,
		0.938396, 0.133478, 0.318741,
		35.105263, 39.618263, 19.295616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878925, 38.834892, 18.953308>,  <34.448383, 39.524830, 19.072496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878925, 38.834892, 18.953308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.045368, 39.058861, 19.239901>,  <35.145233, 39.193241, 19.411856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.045368, 39.058861, 19.239901>,  <34.878925, 38.834892, 18.953308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045368, 39.058861, 19.239901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018618, -0.793015, 0.608917,
		0.909126, -0.240035, -0.340403,
		0.416106, 0.559920, 0.716482,
		35.170200, 39.226837, 19.454845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388531, 38.330116, 19.332592>,  <34.878925, 38.834892, 18.953308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388531, 38.330116, 19.332592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.341091, 38.652931, 19.563978>,  <35.312630, 38.846622, 19.702810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.341091, 38.652931, 19.563978>,  <35.388531, 38.330116, 19.332592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341091, 38.652931, 19.563978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106222, -0.568923, 0.815502,
		0.987245, 0.158161, -0.018254,
		-0.118596, 0.807039, 0.578466,
		35.305511, 38.895042, 19.737518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036808, 38.563251, 19.777918>,  <35.388531, 38.330116, 19.332592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036808, 38.563251, 19.777918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.718483, 38.687820, 19.985649>,  <35.527489, 38.762562, 20.110289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.718483, 38.687820, 19.985649>,  <36.036808, 38.563251, 19.777918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718483, 38.687820, 19.985649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236664, -0.629457, 0.740118,
		0.557384, 0.711900, 0.427226,
		-0.795810, 0.311420, 0.519330,
		35.479740, 38.781246, 20.141449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260899, 38.344498, 20.450508>,  <36.036808, 38.563251, 19.777918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260899, 38.344498, 20.450508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.880848, 38.467918, 20.468601>,  <35.652817, 38.541973, 20.479458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.880848, 38.467918, 20.468601>,  <36.260899, 38.344498, 20.450508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880848, 38.467918, 20.468601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138266, -0.546817, 0.825757,
		0.279524, 0.778323, 0.562210,
		-0.950131, 0.308554, 0.045233,
		35.595810, 38.560486, 20.482172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181271, 38.460777, 21.262770>,  <36.260899, 38.344498, 20.450508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181271, 38.460777, 21.262770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.835323, 38.408310, 21.068949>,  <35.627754, 38.376831, 20.952656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.835323, 38.408310, 21.068949>,  <36.181271, 38.460777, 21.262770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.835323, 38.408310, 21.068949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279140, -0.676600, 0.681390,
		-0.417226, 0.724573, 0.548558,
		-0.864872, -0.131170, -0.484553,
		35.575863, 38.368958, 20.923582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700516, 38.582138, 21.788748>,  <36.181271, 38.460777, 21.262770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.700516, 38.582138, 21.788748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.585743, 38.315498, 21.513557>,  <35.516880, 38.155514, 21.348442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.585743, 38.315498, 21.513557>,  <35.700516, 38.582138, 21.788748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585743, 38.315498, 21.513557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309126, -0.615325, 0.725132,
		-0.906705, 0.420732, -0.029510,
		-0.286928, -0.666603, -0.687978,
		35.499664, 38.115517, 21.307163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002110, 38.263504, 22.055315>,  <35.700516, 38.582138, 21.788748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002110, 38.263504, 22.055315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.126534, 38.017082, 21.765842>,  <35.201187, 37.869228, 21.592159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.126534, 38.017082, 21.765842>,  <35.002110, 38.263504, 22.055315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126534, 38.017082, 21.765842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266607, -0.787446, 0.555742,
		-0.912229, 0.020069, -0.409189,
		0.311062, -0.616057, -0.723681,
		35.219852, 37.832264, 21.548738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.695000, 37.731487, 22.208033>,  <35.002110, 38.263504, 22.055315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.695000, 37.731487, 22.208033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.931763, 37.574955, 21.926180>,  <35.073818, 37.481037, 21.757069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.931763, 37.574955, 21.926180>,  <34.695000, 37.731487, 22.208033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.931763, 37.574955, 21.926180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120923, -0.907447, 0.402390,
		-0.796885, -0.152970, -0.584443,
		0.591905, -0.391332, -0.704634,
		35.109333, 37.457554, 21.714790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363674, 37.118042, 22.051628>,  <34.695000, 37.731487, 22.208033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363674, 37.118042, 22.051628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.749741, 37.092506, 21.950130>,  <34.981380, 37.077183, 21.889231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.749741, 37.092506, 21.950130>,  <34.363674, 37.118042, 22.051628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749741, 37.092506, 21.950130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063279, -0.884036, 0.463117,
		-0.253886, -0.463039, -0.849198,
		0.965162, -0.063843, -0.253745,
		35.039288, 37.073353, 21.874006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434402, 36.493088, 21.732929>,  <34.363674, 37.118042, 22.051628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434402, 36.493088, 21.732929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.773941, 36.606201, 21.911587>,  <34.977665, 36.674068, 22.018782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.773941, 36.606201, 21.911587>,  <34.434402, 36.493088, 21.732929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.773941, 36.606201, 21.911587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047532, -0.800647, 0.597248,
		0.526494, -0.528203, -0.666188,
		0.848849, 0.282782, 0.446642,
		35.028595, 36.691036, 22.045580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803490, 35.888763, 21.905178>,  <34.434402, 36.493088, 21.732929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803490, 35.888763, 21.905178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.945904, 36.165012, 22.156981>,  <35.031353, 36.330761, 22.308062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.945904, 36.165012, 22.156981>,  <34.803490, 35.888763, 21.905178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945904, 36.165012, 22.156981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003621, -0.674662, 0.738117,
		0.934465, -0.260517, -0.242705,
		0.356036, 0.690624, 0.629505,
		35.052715, 36.372200, 22.345833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210403, 35.460236, 22.349586>,  <34.803490, 35.888763, 21.905178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210403, 35.460236, 22.349586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.223476, 35.794064, 22.569557>,  <35.231319, 35.994362, 22.701540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.223476, 35.794064, 22.569557>,  <35.210403, 35.460236, 22.349586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223476, 35.794064, 22.569557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126466, -0.549252, 0.826032,
		0.991432, 0.042548, -0.123497,
		0.032685, 0.834573, 0.549927,
		35.233280, 36.044434, 22.734535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832554, 35.445625, 22.809834>,  <35.210403, 35.460236, 22.349586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832554, 35.445625, 22.809834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.547501, 35.688866, 22.949759>,  <35.376469, 35.834808, 23.033714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.547501, 35.688866, 22.949759>,  <35.832554, 35.445625, 22.809834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547501, 35.688866, 22.949759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050089, -0.453262, 0.889969,
		0.699748, 0.651741, 0.292550,
		-0.712631, 0.608101, 0.349814,
		35.333710, 35.871296, 23.054703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.014046, 34.507000, 26.756216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.743698, 34.715412, 26.964725>,  <38.581490, 34.840462, 27.089830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.743698, 34.715412, 26.964725>,  <39.014046, 34.507000, 26.756216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.743698, 34.715412, 26.964725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351632, -0.393626, 0.849361,
		0.647731, 0.757353, 0.082828,
		-0.675869, 0.521033, 0.521273,
		38.540936, 34.871723, 27.121107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301044, 34.975174, 27.284830>,  <39.014046, 34.507000, 26.756216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.301044, 34.975174, 27.284830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.931721, 34.864113, 27.390968>,  <38.710125, 34.797474, 27.454651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.931721, 34.864113, 27.390968>,  <39.301044, 34.975174, 27.284830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.931721, 34.864113, 27.390968> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342294, -0.281589, 0.896405,
		-0.174174, 0.918485, 0.355034,
		-0.923308, -0.277657, 0.265346,
		38.654728, 34.780815, 27.470572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229675, 34.997768, 27.970819>,  <39.301044, 34.975174, 27.284830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229675, 34.997768, 27.970819> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.888374, 34.790321, 27.948914>,  <38.683594, 34.665852, 27.935770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.888374, 34.790321, 27.948914>,  <39.229675, 34.997768, 27.970819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888374, 34.790321, 27.948914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212420, -0.441535, 0.871736,
		-0.476281, 0.732175, 0.486905,
		-0.853249, -0.518620, -0.054767,
		38.632401, 34.634735, 27.932484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907413, 35.049706, 28.661053>,  <39.229675, 34.997768, 27.970819>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907413, 35.049706, 28.661053> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.712120, 34.741478, 28.497169>,  <38.594944, 34.556541, 28.398840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.712120, 34.741478, 28.497169>,  <38.907413, 35.049706, 28.661053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712120, 34.741478, 28.497169> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015971, -0.461498, 0.886997,
		-0.872569, 0.439602, 0.213010,
		-0.488230, -0.770564, -0.409709,
		38.565651, 34.510307, 28.374256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407761, 34.880623, 29.194542>,  <38.907413, 35.049706, 28.661053>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407761, 34.880623, 29.194542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.441483, 34.565762, 28.950153>,  <38.461716, 34.376846, 28.803520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.441483, 34.565762, 28.950153>,  <38.407761, 34.880623, 29.194542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441483, 34.565762, 28.950153> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188076, -0.614703, 0.766007,
		-0.978529, 0.050331, -0.199867,
		0.084305, -0.787151, -0.610971,
		38.466774, 34.329617, 28.766863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819977, 34.406994, 29.392147>,  <38.407761, 34.880623, 29.194542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819977, 34.406994, 29.392147> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.120667, 34.204792, 29.222734>,  <38.301079, 34.083469, 29.121088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.120667, 34.204792, 29.222734>,  <37.819977, 34.406994, 29.392147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120667, 34.204792, 29.222734> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110677, -0.729813, 0.674628,
		-0.650122, -0.460261, -0.604567,
		0.751726, -0.505502, -0.423527,
		38.346184, 34.053143, 29.095676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647243, 33.738121, 29.433947>,  <37.819977, 34.406994, 29.392147>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647243, 33.738121, 29.433947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.043159, 33.726376, 29.378151>,  <38.280708, 33.719330, 29.344673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.043159, 33.726376, 29.378151>,  <37.647243, 33.738121, 29.433947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043159, 33.726376, 29.378151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084465, -0.667462, 0.739838,
		-0.114825, -0.744064, -0.658167,
		0.989788, -0.029360, -0.139489,
		38.340096, 33.717567, 29.336304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814781, 33.017075, 29.477730>,  <37.647243, 33.738121, 29.433947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.814781, 33.017075, 29.477730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.157150, 33.209320, 29.554060>,  <38.362572, 33.324665, 29.599859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.157150, 33.209320, 29.554060>,  <37.814781, 33.017075, 29.477730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157150, 33.209320, 29.554060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080110, -0.487813, 0.869265,
		0.510865, -0.728734, -0.456031,
		0.855920, 0.480610, 0.190828,
		38.413925, 33.353504, 29.611309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263126, 32.503883, 29.731827>,  <37.814781, 33.017075, 29.477730>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263126, 32.503883, 29.731827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.429420, 32.840611, 29.869528>,  <38.529198, 33.042645, 29.952148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.429420, 32.840611, 29.869528>,  <38.263126, 32.503883, 29.731827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429420, 32.840611, 29.869528> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009881, -0.382672, 0.923831,
		0.909432, -0.380668, -0.167408,
		0.415736, 0.841816, 0.344253,
		38.554142, 33.093155, 29.972803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698528, 32.164322, 30.237970>,  <38.263126, 32.503883, 29.731827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698528, 32.164322, 30.237970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.664642, 32.556389, 30.309628>,  <38.644310, 32.791630, 30.352621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.664642, 32.556389, 30.309628>,  <38.698528, 32.164322, 30.237970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664642, 32.556389, 30.309628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073118, -0.173187, 0.982171,
		0.993718, 0.096307, -0.056996,
		-0.084719, 0.980169, 0.179141,
		38.639225, 32.850441, 30.363369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151749, 32.250351, 30.675312>,  <38.698528, 32.164322, 30.237970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.151749, 32.250351, 30.675312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.893036, 32.550266, 30.731142>,  <38.737808, 32.730217, 30.764639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.893036, 32.550266, 30.731142>,  <39.151749, 32.250351, 30.675312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893036, 32.550266, 30.731142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067824, -0.125735, 0.989743,
		0.759649, 0.649619, 0.030470,
		-0.646786, 0.749791, 0.139574,
		38.699001, 32.775204, 30.773014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512325, 32.712883, 31.210077>,  <39.151749, 32.250351, 30.675312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512325, 32.712883, 31.210077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.122948, 32.803692, 31.221821>,  <38.889320, 32.858177, 31.228867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.122948, 32.803692, 31.221821>,  <39.512325, 32.712883, 31.210077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122948, 32.803692, 31.221821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004689, -0.147999, 0.988976,
		0.228865, 0.962578, 0.145134,
		-0.973447, 0.227023, 0.029359,
		38.830914, 32.871799, 31.230629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.324787, 33.363869, 31.717337>,  <39.512325, 32.712883, 31.210077>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.324787, 33.363869, 31.717337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.018539, 33.110603, 31.671864>,  <38.834789, 32.958645, 31.644579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.018539, 33.110603, 31.671864>,  <39.324787, 33.363869, 31.717337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018539, 33.110603, 31.671864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003753, -0.172322, 0.985034,
		-0.643278, 0.754591, 0.129558,
		-0.765623, -0.633165, -0.113683,
		38.788853, 32.920654, 31.637758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617226, 33.619686, 32.062027>,  <39.324787, 33.363869, 31.717337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.617226, 33.619686, 32.062027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.685768, 33.225643, 32.056423>,  <38.726894, 32.989216, 32.053059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.685768, 33.225643, 32.056423>,  <38.617226, 33.619686, 32.062027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685768, 33.225643, 32.056423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063255, -0.025194, 0.997679,
		-0.983177, -0.170070, -0.066630,
		0.171354, -0.985110, -0.014012,
		38.737175, 32.930111, 32.052219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230354, 34.213333, 32.233604>,  <38.617226, 33.619686, 32.062027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230354, 34.213333, 32.233604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.226017, 34.488876, 32.523529>,  <39.223415, 34.654202, 32.697483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.226017, 34.488876, 32.523529>,  <39.230354, 34.213333, 32.233604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226017, 34.488876, 32.523529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190411, 0.713017, -0.674797,
		-0.981645, 0.130698, -0.138894,
		-0.010839, 0.688858, 0.724816,
		39.222767, 34.695534, 32.740974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866989, 34.746109, 31.997932>,  <39.230354, 34.213333, 32.233604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866989, 34.746109, 31.997932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.040897, 34.945068, 32.298218>,  <39.145241, 35.064445, 32.478390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.040897, 34.945068, 32.298218>,  <38.866989, 34.746109, 31.997932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040897, 34.945068, 32.298218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175487, 0.770846, -0.612373,
		-0.883279, 0.397980, 0.247852,
		0.434768, 0.497402, 0.750712,
		39.171329, 35.094288, 32.523430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580086, 35.419250, 32.035263>,  <38.866989, 34.746109, 31.997932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580086, 35.419250, 32.035263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.931408, 35.450218, 32.223980>,  <39.142200, 35.468800, 32.337212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.931408, 35.450218, 32.223980>,  <38.580086, 35.419250, 32.035263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.931408, 35.450218, 32.223980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234592, 0.790057, -0.566371,
		-0.416594, 0.608124, 0.675747,
		0.878303, 0.077421, 0.471794,
		39.194901, 35.473446, 32.365517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667145, 36.179520, 32.103920>,  <38.580086, 35.419250, 32.035263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.667145, 36.179520, 32.103920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.018574, 35.992527, 32.143044>,  <39.229431, 35.880333, 32.166519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.018574, 35.992527, 32.143044>,  <38.667145, 36.179520, 32.103920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018574, 35.992527, 32.143044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415725, 0.647717, -0.638463,
		0.235115, 0.601600, 0.763412,
		0.878575, -0.467482, 0.097812,
		39.282146, 35.852283, 32.172386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185730, 36.723057, 32.171844>,  <38.667145, 36.179520, 32.103920>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185730, 36.723057, 32.171844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.388718, 36.391891, 32.076317>,  <39.510509, 36.193192, 32.019001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.388718, 36.391891, 32.076317>,  <39.185730, 36.723057, 32.171844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.388718, 36.391891, 32.076317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459043, 0.494313, -0.738197,
		0.729216, 0.264981, 0.630895,
		0.507468, -0.827913, -0.238823,
		39.540958, 36.143517, 32.004669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783360, 37.011013, 32.061787>,  <39.185730, 36.723057, 32.171844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.783360, 37.011013, 32.061787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.778217, 36.658001, 31.873756>,  <39.775131, 36.446194, 31.760939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.778217, 36.658001, 31.873756>,  <39.783360, 37.011013, 32.061787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.778217, 36.658001, 31.873756> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413875, 0.423258, -0.805953,
		0.910243, -0.204910, 0.359819,
		-0.012852, -0.882533, -0.470075,
		39.774361, 36.393242, 31.732735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455437, 36.872875, 31.659323>,  <39.783360, 37.011013, 32.061787>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.455437, 36.872875, 31.659323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.204666, 36.616611, 31.482000>,  <40.054203, 36.462852, 31.375607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.204666, 36.616611, 31.482000>,  <40.455437, 36.872875, 31.659323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.204666, 36.616611, 31.482000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265893, 0.358899, -0.894702,
		0.732298, -0.678787, -0.054659,
		-0.626930, -0.640655, -0.443306,
		40.016586, 36.424416, 31.349009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855003, 36.485989, 31.202778>,  <40.455437, 36.872875, 31.659323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.855003, 36.485989, 31.202778> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.476101, 36.485558, 31.074589>,  <40.248760, 36.485298, 30.997675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.476101, 36.485558, 31.074589>,  <40.855003, 36.485989, 31.202778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.476101, 36.485558, 31.074589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272355, 0.524310, -0.806797,
		0.168898, -0.851527, -0.496362,
		-0.947257, -0.001079, -0.320472,
		40.191925, 36.485233, 30.978447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882671, 36.336346, 30.440619>,  <40.855003, 36.485989, 31.202778>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.882671, 36.336346, 30.440619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.500313, 36.450500, 30.468357>,  <40.270897, 36.518993, 30.485001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.500313, 36.450500, 30.468357>,  <40.882671, 36.336346, 30.440619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.500313, 36.450500, 30.468357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058015, 0.414957, -0.907989,
		-0.287906, -0.863924, -0.413214,
		-0.955900, 0.285388, 0.069348,
		40.213543, 36.536118, 30.489161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.388046, 36.026001, 29.892139>,  <40.882671, 36.336346, 30.440619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.388046, 36.026001, 29.892139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.255390, 36.383175, 30.013920>,  <40.175797, 36.597477, 30.086988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.255390, 36.383175, 30.013920>,  <40.388046, 36.026001, 29.892139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.255390, 36.383175, 30.013920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018276, 0.316575, -0.948392,
		-0.943231, -0.320084, -0.088668,
		-0.331636, 0.892931, 0.304453,
		40.155899, 36.651054, 30.105255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948353, 36.196430, 29.346495>,  <40.388046, 36.026001, 29.892139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.948353, 36.196430, 29.346495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.906769, 36.539143, 29.548532>,  <39.881821, 36.744770, 29.669756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.906769, 36.539143, 29.548532>,  <39.948353, 36.196430, 29.346495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.906769, 36.539143, 29.548532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015388, 0.506402, -0.862160,
		-0.994462, -0.097401, -0.039461,
		-0.103958, 0.856779, 0.505096,
		39.875580, 36.796177, 29.700062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325409, 36.473564, 29.212141>,  <39.948353, 36.196430, 29.346495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325409, 36.473564, 29.212141> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.568069, 36.773815, 29.316856>,  <39.713665, 36.953964, 29.379686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.568069, 36.773815, 29.316856>,  <39.325409, 36.473564, 29.212141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568069, 36.773815, 29.316856> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058116, 0.370302, -0.927091,
		-0.792843, 0.547205, 0.268267,
		0.606649, 0.750628, 0.261791,
		39.750065, 36.999004, 29.395393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006256, 37.101368, 28.882946>,  <39.325409, 36.473564, 29.212141>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006256, 37.101368, 28.882946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.389942, 37.186348, 28.957531>,  <39.620155, 37.237335, 29.002283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.389942, 37.186348, 28.957531>,  <39.006256, 37.101368, 28.882946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389942, 37.186348, 28.957531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122438, 0.282297, -0.951482,
		-0.254777, 0.935508, 0.244773,
		0.959217, 0.212447, 0.186465,
		39.677708, 37.250080, 29.013470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098156, 37.754486, 28.590652>,  <39.006256, 37.101368, 28.882946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098156, 37.754486, 28.590652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.467052, 37.602032, 28.616571>,  <39.688393, 37.510559, 28.632122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.467052, 37.602032, 28.616571>,  <39.098156, 37.754486, 28.590652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467052, 37.602032, 28.616571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175673, 0.263834, -0.948436,
		0.344389, 0.886073, 0.310275,
		0.922245, -0.381138, 0.064797,
		39.743725, 37.487690, 28.636011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212933, 38.051155, 29.344873>,  <39.098156, 37.754486, 28.590652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.212933, 38.051155, 29.344873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.141491, 38.441803, 29.392729>,  <39.098625, 38.676193, 29.421442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.141491, 38.441803, 29.392729>,  <39.212933, 38.051155, 29.344873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.141491, 38.441803, 29.392729> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698901, -0.211512, 0.683228,
		0.692559, 0.038414, 0.720338,
		-0.178606, 0.976620, 0.119637,
		39.087910, 38.734791, 29.428619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299461, 38.245472, 30.074659>,  <39.212933, 38.051155, 29.344873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.299461, 38.245472, 30.074659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.035595, 38.465481, 29.869791>,  <38.877274, 38.597485, 29.746870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.035595, 38.465481, 29.869791>,  <39.299461, 38.245472, 30.074659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035595, 38.465481, 29.869791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675482, -0.135127, 0.724890,
		0.329495, 0.824147, 0.460667,
		-0.659665, 0.550020, -0.512173,
		38.837696, 38.630486, 29.716139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891361, 38.602699, 30.584135>,  <39.299461, 38.245472, 30.074659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891361, 38.602699, 30.584135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.667404, 38.612839, 30.252863>,  <38.533031, 38.618923, 30.054100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.667404, 38.612839, 30.252863>,  <38.891361, 38.602699, 30.584135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667404, 38.612839, 30.252863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819537, -0.164113, 0.549023,
		-0.121998, 0.986116, 0.112660,
		-0.559889, 0.025349, -0.828180,
		38.499439, 38.620445, 30.004410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380272, 39.093170, 30.834272>,  <38.891361, 38.602699, 30.584135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380272, 39.093170, 30.834272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.249084, 38.880241, 30.522100>,  <38.170372, 38.752483, 30.334797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.249084, 38.880241, 30.522100>,  <38.380272, 39.093170, 30.834272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.249084, 38.880241, 30.522100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780313, -0.313008, 0.541422,
		-0.532490, 0.786550, -0.312719,
		-0.327972, -0.532320, -0.780429,
		38.150692, 38.720547, 30.287971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645733, 39.211506, 30.766819>,  <38.380272, 39.093170, 30.834272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645733, 39.211506, 30.766819> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.709309, 38.857143, 30.592505>,  <37.747456, 38.644527, 30.487915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.709309, 38.857143, 30.592505>,  <37.645733, 39.211506, 30.766819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709309, 38.857143, 30.592505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777014, -0.384557, 0.498362,
		-0.609086, 0.259402, -0.749483,
		0.158943, -0.885904, -0.435787,
		37.756992, 38.591373, 30.461769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034653, 38.905251, 30.882906>,  <37.645733, 39.211506, 30.766819>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034653, 38.905251, 30.882906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.264370, 38.597301, 30.771570>,  <37.402203, 38.412533, 30.704769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.264370, 38.597301, 30.771570>,  <37.034653, 38.905251, 30.882906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264370, 38.597301, 30.771570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564790, -0.618734, 0.546060,
		-0.592618, -0.156395, -0.790155,
		0.574297, -0.769876, -0.278342,
		37.436657, 38.366337, 30.688068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590218, 38.289345, 30.787701>,  <37.034653, 38.905251, 30.882906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.590218, 38.289345, 30.787701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.947464, 38.111141, 30.812557>,  <37.161812, 38.004219, 30.827471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.947464, 38.111141, 30.812557>,  <36.590218, 38.289345, 30.787701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947464, 38.111141, 30.812557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376460, -0.664674, 0.645357,
		-0.246211, -0.599773, -0.761349,
		0.893117, -0.445512, 0.062141,
		37.215401, 37.977489, 30.831200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518253, 37.532028, 30.651810>,  <36.590218, 38.289345, 30.787701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518253, 37.532028, 30.651810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.837078, 37.595165, 30.884970>,  <37.028374, 37.633049, 31.024866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.837078, 37.595165, 30.884970>,  <36.518253, 37.532028, 30.651810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.837078, 37.595165, 30.884970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340787, -0.679294, 0.649941,
		0.498553, -0.716690, -0.487649,
		0.797063, 0.157846, 0.582902,
		37.076199, 37.642517, 31.059841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517956, 36.970196, 30.996237>,  <36.518253, 37.532028, 30.651810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517956, 36.970196, 30.996237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.771191, 37.192451, 31.211817>,  <36.923130, 37.325806, 31.341166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.771191, 37.192451, 31.211817>,  <36.517956, 36.970196, 30.996237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771191, 37.192451, 31.211817> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217614, -0.540412, 0.812772,
		0.742866, -0.631835, -0.221210,
		0.633083, 0.555643, 0.538950,
		36.961117, 37.359146, 31.373503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986557, 36.587452, 31.314552>,  <36.517956, 36.970196, 30.996237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986557, 36.587452, 31.314552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.007374, 36.905834, 31.555798>,  <37.019863, 37.096863, 31.700544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.007374, 36.905834, 31.555798>,  <36.986557, 36.587452, 31.314552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007374, 36.905834, 31.555798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115186, -0.595119, 0.795340,
		0.991980, -0.110859, 0.060714,
		0.052039, 0.795954, 0.603115,
		37.022987, 37.144619, 31.736732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.441086, 36.401318, 31.889318>,  <36.986557, 36.587452, 31.314552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.441086, 36.401318, 31.889318> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.240860, 36.715309, 32.035324>,  <37.120724, 36.903706, 32.122929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.240860, 36.715309, 32.035324>,  <37.441086, 36.401318, 31.889318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240860, 36.715309, 32.035324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026818, -0.435500, 0.899789,
		0.865282, 0.440616, 0.239049,
		-0.500568, 0.784982, 0.365013,
		37.090691, 36.950806, 32.144829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773609, 36.675781, 32.442749>,  <37.441086, 36.401318, 31.889318>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773609, 36.675781, 32.442749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.384193, 36.755562, 32.487354>,  <37.150543, 36.803432, 32.514118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.384193, 36.755562, 32.487354>,  <37.773609, 36.675781, 32.442749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384193, 36.755562, 32.487354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001047, -0.484097, 0.875014,
		0.228509, 0.851979, 0.471079,
		-0.973541, 0.199455, 0.111512,
		37.092133, 36.815399, 32.520809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.334846, 40.169575, 25.888105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941525, 40.241062, 25.874434>,  <39.705532, 40.283955, 25.866230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941525, 40.241062, 25.874434>,  <40.334846, 40.169575, 25.888105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.941525, 40.241062, 25.874434> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063904, -0.163322, 0.984501,
		0.170369, 0.970250, 0.172016,
		-0.983306, 0.178721, -0.034177,
		39.646534, 40.294678, 25.864180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207020, 40.675640, 26.393675>,  <40.334846, 40.169575, 25.888105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.207020, 40.675640, 26.393675> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847298, 40.509918, 26.337664>,  <39.631466, 40.410484, 26.304056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847298, 40.509918, 26.337664>,  <40.207020, 40.675640, 26.393675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.847298, 40.509918, 26.337664> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099686, -0.117564, 0.988049,
		-0.425816, 0.902513, 0.064425,
		-0.899301, -0.414305, -0.140029,
		39.577507, 40.385628, 26.295654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.812717, 40.953667, 26.893471>,  <40.207020, 40.675640, 26.393675>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.812717, 40.953667, 26.893471> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613804, 40.623486, 26.786634>,  <39.494457, 40.425377, 26.722532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613804, 40.623486, 26.786634>,  <39.812717, 40.953667, 26.893471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.613804, 40.623486, 26.786634> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164859, -0.212341, 0.963189,
		-0.851782, 0.523008, -0.030490,
		-0.497282, -0.825454, -0.267091,
		39.464619, 40.375851, 26.706507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260246, 41.009186, 27.218534>,  <39.812717, 40.953667, 26.893471>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260246, 41.009186, 27.218534> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234264, 40.617233, 27.143045>,  <39.218678, 40.382061, 27.097752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234264, 40.617233, 27.143045>,  <39.260246, 41.009186, 27.218534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234264, 40.617233, 27.143045> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206976, -0.171779, 0.963147,
		-0.976187, 0.101620, -0.191654,
		-0.064953, -0.979880, -0.188722,
		39.214779, 40.323269, 27.086430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541759, 40.763195, 27.446014>,  <39.260246, 41.009186, 27.218534>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541759, 40.763195, 27.446014> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795185, 40.453999, 27.432800>,  <38.947239, 40.268482, 27.424871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795185, 40.453999, 27.432800>,  <38.541759, 40.763195, 27.446014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795185, 40.453999, 27.432800> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226243, -0.225929, 0.947507,
		-0.739876, -0.592829, -0.318023,
		0.633560, -0.772988, -0.033036,
		38.985252, 40.222103, 27.422890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207699, 40.231918, 27.802994>,  <38.541759, 40.763195, 27.446014>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207699, 40.231918, 27.802994> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583374, 40.095486, 27.818970>,  <38.808777, 40.013626, 27.828554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583374, 40.095486, 27.818970>,  <38.207699, 40.231918, 27.802994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.583374, 40.095486, 27.818970> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212254, -0.485116, 0.848299,
		-0.269967, -0.805185, -0.528010,
		0.939184, -0.341085, 0.039938,
		38.865128, 39.993160, 27.830952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122414, 39.561573, 27.784174>,  <38.207699, 40.231918, 27.802994>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122414, 39.561573, 27.784174> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496082, 39.604450, 27.920311>,  <38.720284, 39.630177, 28.001993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496082, 39.604450, 27.920311>,  <38.122414, 39.561573, 27.784174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496082, 39.604450, 27.920311> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237962, -0.523579, 0.818070,
		0.265890, -0.845207, -0.463603,
		0.934172, 0.107197, 0.340342,
		38.776333, 39.636608, 28.022413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408752, 38.911667, 27.906389>,  <38.122414, 39.561573, 27.784174>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.408752, 38.911667, 27.906389> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642040, 39.135494, 28.141928>,  <38.782013, 39.269791, 28.283251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642040, 39.135494, 28.141928>,  <38.408752, 38.911667, 27.906389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.642040, 39.135494, 28.141928> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174779, -0.621475, 0.763689,
		0.793292, -0.548313, -0.264652,
		0.583215, 0.559573, 0.588845,
		38.817005, 39.303368, 28.318581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842880, 38.415108, 28.279150>,  <38.408752, 38.911667, 27.906389>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.842880, 38.415108, 28.279150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812637, 38.747704, 28.499296>,  <38.794491, 38.947262, 28.631384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812637, 38.747704, 28.499296>,  <38.842880, 38.415108, 28.279150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812637, 38.747704, 28.499296> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351774, -0.538700, 0.765544,
		0.933027, -0.135725, 0.333227,
		-0.075606, 0.831493, 0.550365,
		38.789955, 38.997150, 28.664406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640232, 38.288177, 28.272514>,  <38.842880, 38.415108, 28.279150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.640232, 38.288177, 28.272514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873951, 37.964428, 28.296244>,  <40.014183, 37.770180, 28.310480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873951, 37.964428, 28.296244>,  <39.640232, 38.288177, 28.272514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873951, 37.964428, 28.296244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582687, 0.367521, -0.724847,
		0.564869, 0.458089, 0.686351,
		0.584293, -0.809372, 0.059321,
		40.049240, 37.721615, 28.314039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418118, 38.619827, 28.318945>,  <39.640232, 38.288177, 28.272514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.418118, 38.619827, 28.318945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.435150, 38.240494, 28.193178>,  <40.445370, 38.012894, 28.117718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.435150, 38.240494, 28.193178>,  <40.418118, 38.619827, 28.318945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.435150, 38.240494, 28.193178> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608105, 0.274293, -0.744964,
		0.792714, -0.159477, 0.588363,
		0.042579, -0.948330, -0.314415,
		40.447926, 37.955994, 28.098854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.150372, 38.481110, 28.261780>,  <40.418118, 38.619827, 28.318945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.150372, 38.481110, 28.261780> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.954762, 38.223579, 28.026375>,  <40.837395, 38.069061, 27.885132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.954762, 38.223579, 28.026375>,  <41.150372, 38.481110, 28.261780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.954762, 38.223579, 28.026375> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583144, 0.260444, -0.769488,
		0.648689, -0.719486, 0.248078,
		-0.489025, -0.643823, -0.588511,
		40.808052, 38.030434, 27.849821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.632935, 38.071056, 27.827831>,  <41.150372, 38.481110, 28.261780>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.632935, 38.071056, 27.827831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.280857, 38.046116, 27.639631>,  <41.069611, 38.031151, 27.526712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.280857, 38.046116, 27.639631>,  <41.632935, 38.071056, 27.827831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.280857, 38.046116, 27.639631> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467929, 0.051760, -0.882249,
		0.079366, -0.996711, -0.016381,
		-0.880195, -0.062355, -0.470498,
		41.016800, 38.027409, 27.498482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.757580, 37.715626, 27.279959>,  <41.632935, 38.071056, 27.827831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.757580, 37.715626, 27.279959> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.408028, 37.891418, 27.196823>,  <41.198296, 37.996895, 27.146942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.408028, 37.891418, 27.196823>,  <41.757580, 37.715626, 27.279959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.408028, 37.891418, 27.196823> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294344, 0.138052, -0.945676,
		-0.386914, -0.887580, -0.249999,
		-0.873876, 0.439481, -0.207839,
		41.145866, 38.023262, 27.134472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.469143, 37.369022, 26.730761>,  <41.757580, 37.715626, 27.279959>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.469143, 37.369022, 26.730761> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.236919, 37.694584, 26.721714>,  <41.097584, 37.889919, 26.716286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.236919, 37.694584, 26.721714>,  <41.469143, 37.369022, 26.730761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.236919, 37.694584, 26.721714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147669, 0.077937, -0.985961,
		-0.800713, -0.575752, -0.165435,
		-0.580563, 0.813901, -0.022616,
		41.062752, 37.938755, 26.714930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.039879, 37.208088, 26.262556>,  <41.469143, 37.369022, 26.730761>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.039879, 37.208088, 26.262556> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015244, 37.606907, 26.280916>,  <41.000462, 37.846199, 26.291933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015244, 37.606907, 26.280916>,  <41.039879, 37.208088, 26.262556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.015244, 37.606907, 26.280916> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065546, 0.049931, -0.996600,
		-0.995947, -0.058371, -0.068427,
		-0.061589, 0.997046, 0.045902,
		40.996765, 37.906021, 26.294687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452805, 37.317890, 25.771973>,  <41.039879, 37.208088, 26.262556>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.452805, 37.317890, 25.771973> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.664604, 37.652630, 25.827559>,  <40.791683, 37.853474, 25.860910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.664604, 37.652630, 25.827559>,  <40.452805, 37.317890, 25.771973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.664604, 37.652630, 25.827559> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130900, 0.242454, -0.961291,
		-0.838151, 0.490812, 0.237923,
		0.529498, 0.836851, 0.138966,
		40.823452, 37.903687, 25.869247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026089, 37.958260, 25.499891>,  <40.452805, 37.317890, 25.771973>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026089, 37.958260, 25.499891> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417091, 38.042618, 25.499859>,  <40.651695, 38.093235, 25.499840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417091, 38.042618, 25.499859>,  <40.026089, 37.958260, 25.499891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.417091, 38.042618, 25.499859> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074140, 0.343286, -0.936300,
		-0.197436, 0.915247, 0.351201,
		0.977508, 0.210897, -0.000079,
		40.710342, 38.105888, 25.499836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142910, 38.711536, 25.186905>,  <40.026089, 37.958260, 25.499891>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142910, 38.711536, 25.186905> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.496616, 38.525715, 25.167896>,  <40.708839, 38.414223, 25.156492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.496616, 38.525715, 25.167896>,  <40.142910, 38.711536, 25.186905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.496616, 38.525715, 25.167896> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139772, 0.360394, -0.922269,
		0.445569, 0.808892, 0.383616,
		0.884269, -0.464553, -0.047520,
		40.761898, 38.386349, 25.153641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.614452, 39.279720, 24.898058>,  <40.142910, 38.711536, 25.186905>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.614452, 39.279720, 24.898058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.788631, 38.928471, 24.818781>,  <40.893139, 38.717720, 24.771214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.788631, 38.928471, 24.818781>,  <40.614452, 39.279720, 24.898058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.788631, 38.928471, 24.818781> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238620, 0.324882, -0.915157,
		0.868011, 0.351214, 0.351008,
		0.435452, -0.878123, -0.198195,
		40.919266, 38.665035, 24.759323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.234768, 39.416389, 24.487125>,  <40.614452, 39.279720, 24.898058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.234768, 39.416389, 24.487125> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.186195, 39.024097, 24.425915>,  <41.157051, 38.788723, 24.389189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.186195, 39.024097, 24.425915>,  <41.234768, 39.416389, 24.487125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.186195, 39.024097, 24.425915> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072424, 0.145003, -0.986777,
		0.989954, -0.130908, 0.053421,
		-0.121431, -0.980733, -0.153028,
		41.149765, 38.729877, 24.380007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.703148, 39.181774, 24.095547>,  <41.234768, 39.416389, 24.487125>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.703148, 39.181774, 24.095547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.410347, 38.912823, 24.051569>,  <41.234669, 38.751453, 24.025183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.410347, 38.912823, 24.051569>,  <41.703148, 39.181774, 24.095547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.410347, 38.912823, 24.051569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043737, 0.207418, -0.977274,
		0.679902, -0.710553, -0.181237,
		-0.731997, -0.672378, -0.109947,
		41.190746, 38.711109, 24.018585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.922783, 38.814632, 23.498634>,  <41.703148, 39.181774, 24.095547>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.922783, 38.814632, 23.498634> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.534286, 38.720119, 23.510330>,  <41.301189, 38.663410, 23.517347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.534286, 38.720119, 23.510330>,  <41.922783, 38.814632, 23.498634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.534286, 38.720119, 23.510330> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060164, 0.124750, -0.990362,
		0.230359, -0.963643, -0.135379,
		-0.971245, -0.236283, 0.029239,
		41.242912, 38.649235, 23.519102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.483479, 38.424183, 23.285631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.870674, 38.455357, 23.381060>,  <33.102993, 38.474060, 23.438316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.870674, 38.455357, 23.381060>,  <32.483479, 38.424183, 23.285631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870674, 38.455357, 23.381060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111012, -0.719558, 0.685501,
		0.225091, -0.690045, -0.687875,
		0.967993, 0.077938, 0.238569,
		33.161072, 38.478737, 23.452631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.804909, 37.810062, 23.305120>,  <32.483479, 38.424183, 23.285631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.804909, 37.810062, 23.305120> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.035439, 38.029297, 23.547590>,  <33.173756, 38.160839, 23.693073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.035439, 38.029297, 23.547590>,  <32.804909, 37.810062, 23.305120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.035439, 38.029297, 23.547590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106054, -0.685320, 0.720478,
		0.810309, -0.479518, -0.336841,
		0.576326, 0.548087, 0.606176,
		33.208336, 38.193722, 23.729443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269035, 37.365952, 23.591719>,  <32.804909, 37.810062, 23.305120>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269035, 37.365952, 23.591719> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.300358, 37.668755, 23.851196>,  <33.319149, 37.850437, 24.006882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.300358, 37.668755, 23.851196>,  <33.269035, 37.365952, 23.591719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300358, 37.668755, 23.851196> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095739, -0.653394, 0.750940,
		0.992322, 0.003305, -0.123638,
		0.078302, 0.757011, 0.648693,
		33.323849, 37.895859, 24.045805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786499, 37.136883, 24.126026>,  <33.269035, 37.365952, 23.591719>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786499, 37.136883, 24.126026> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.556038, 37.418739, 24.291687>,  <33.417763, 37.587852, 24.391085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.556038, 37.418739, 24.291687>,  <33.786499, 37.136883, 24.126026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556038, 37.418739, 24.291687> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034015, -0.485597, 0.873521,
		0.816634, 0.517368, 0.255809,
		-0.576152, 0.704646, 0.414153,
		33.383194, 37.630135, 24.415934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117722, 37.144062, 24.793413>,  <33.786499, 37.136883, 24.126026>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117722, 37.144062, 24.793413> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.772709, 37.346298, 24.801680>,  <33.565701, 37.467640, 24.806639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.772709, 37.346298, 24.801680>,  <34.117722, 37.144062, 24.793413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772709, 37.346298, 24.801680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105055, -0.218874, 0.970081,
		0.494983, 0.834551, 0.241900,
		-0.862528, 0.505587, 0.020665,
		33.513950, 37.497974, 24.807878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.152611, 37.487747, 25.406927>,  <34.117722, 37.144062, 24.793413>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.152611, 37.487747, 25.406927> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.767178, 37.424534, 25.320637>,  <33.535919, 37.386604, 25.268862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.767178, 37.424534, 25.320637>,  <34.152611, 37.487747, 25.406927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767178, 37.424534, 25.320637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162093, -0.296451, 0.941192,
		-0.212697, 0.941881, 0.260037,
		-0.963580, -0.158038, -0.215727,
		33.478104, 37.377121, 25.255919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880783, 37.807240, 25.940601>,  <34.152611, 37.487747, 25.406927>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880783, 37.807240, 25.940601> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.578667, 37.581535, 25.807243>,  <33.397396, 37.446114, 25.727228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.578667, 37.581535, 25.807243>,  <33.880783, 37.807240, 25.940601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.578667, 37.581535, 25.807243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306146, -0.146032, 0.940718,
		-0.579491, 0.812582, -0.062449,
		-0.755291, -0.564256, -0.333393,
		33.352081, 37.412258, 25.707226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281418, 37.986984, 26.366119>,  <33.880783, 37.807240, 25.940601>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281418, 37.986984, 26.366119> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.175159, 37.636524, 26.205229>,  <33.111404, 37.426247, 26.108694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.175159, 37.636524, 26.205229>,  <33.281418, 37.986984, 26.366119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.175159, 37.636524, 26.205229> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145067, -0.376139, 0.915137,
		-0.953094, 0.301452, -0.027181,
		-0.265646, -0.876154, -0.402227,
		33.095467, 37.373676, 26.084560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630264, 37.678993, 26.688866>,  <33.281418, 37.986984, 26.366119>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630264, 37.678993, 26.688866> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.780800, 37.348602, 26.520994>,  <32.871120, 37.150368, 26.420271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.780800, 37.348602, 26.520994>,  <32.630264, 37.678993, 26.688866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.780800, 37.348602, 26.520994> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015453, -0.458515, 0.888552,
		-0.926352, -0.327914, -0.185322,
		0.376341, -0.825976, -0.419679,
		32.893703, 37.100811, 26.395090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360256, 37.171116, 27.028349>,  <32.630264, 37.678993, 26.688866>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360256, 37.171116, 27.028349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.660053, 36.969830, 26.856283>,  <32.839931, 36.849060, 26.753044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.660053, 36.969830, 26.856283>,  <32.360256, 37.171116, 27.028349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.660053, 36.969830, 26.856283> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105969, -0.550210, 0.828275,
		-0.653480, -0.666368, -0.359052,
		0.749490, -0.503213, -0.430165,
		32.884899, 36.818867, 26.727234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282379, 36.510281, 27.238335>,  <32.360256, 37.171116, 27.028349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282379, 36.510281, 27.238335> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.660126, 36.525921, 27.107710>,  <32.886772, 36.535305, 27.029335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.660126, 36.525921, 27.107710>,  <32.282379, 36.510281, 27.238335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.660126, 36.525921, 27.107710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265594, -0.676298, 0.687082,
		-0.193985, -0.735590, -0.649059,
		0.944367, 0.039103, -0.326560,
		32.943436, 36.537651, 27.009743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.491974, 35.822552, 27.214205>,  <32.282379, 36.510281, 27.238335>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.491974, 35.822552, 27.214205> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.831631, 36.033760, 27.219013>,  <33.035427, 36.160484, 27.221897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.831631, 36.033760, 27.219013>,  <32.491974, 35.822552, 27.214205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831631, 36.033760, 27.219013> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335523, -0.556870, 0.759816,
		0.407893, -0.641161, -0.650027,
		0.849145, 0.528023, 0.012019,
		33.086372, 36.192165, 27.222618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.007015, 35.318443, 27.091612>,  <32.491974, 35.822552, 27.214205>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.007015, 35.318443, 27.091612> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.178497, 35.634605, 27.266645>,  <33.281387, 35.824303, 27.371666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.178497, 35.634605, 27.266645>,  <33.007015, 35.318443, 27.091612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.178497, 35.634605, 27.266645> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339398, -0.589772, 0.732787,
		0.837271, -0.165633, -0.521098,
		0.428703, 0.790401, 0.437583,
		33.307110, 35.871727, 27.397921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757488, 35.235149, 27.179522>,  <33.007015, 35.318443, 27.091612>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757488, 35.235149, 27.179522> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.627739, 35.482071, 27.466217>,  <33.549889, 35.630222, 27.638235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.627739, 35.482071, 27.466217>,  <33.757488, 35.235149, 27.179522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627739, 35.482071, 27.466217> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293733, -0.654522, 0.696651,
		0.899167, 0.436507, 0.030989,
		-0.324376, 0.617303, 0.716741,
		33.530426, 35.667263, 27.681240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526001, 35.257858, 27.146645>,  <33.757488, 35.235149, 27.179522>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526001, 35.257858, 27.146645> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.753143, 34.963528, 26.999083>,  <34.889431, 34.786930, 26.910545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.753143, 34.963528, 26.999083>,  <34.526001, 35.257858, 27.146645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753143, 34.963528, 26.999083> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005508, 0.444771, -0.895628,
		0.823107, 0.510622, 0.248514,
		0.567859, -0.735829, -0.368906,
		34.923500, 34.742779, 26.888411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027328, 35.624550, 26.832644>,  <34.526001, 35.257858, 27.146645>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027328, 35.624550, 26.832644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.014084, 35.257599, 26.673992>,  <35.006138, 35.037426, 26.578802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.014084, 35.257599, 26.673992>,  <35.027328, 35.624550, 26.832644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014084, 35.257599, 26.673992> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070579, 0.393708, -0.916522,
		0.996956, -0.058345, 0.051710,
		-0.033116, -0.917382, -0.396627,
		35.004150, 34.982384, 26.555004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491199, 35.580795, 26.305435>,  <35.027328, 35.624550, 26.832644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491199, 35.580795, 26.305435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.244984, 35.278976, 26.214417>,  <35.097256, 35.097885, 26.159805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.244984, 35.278976, 26.214417>,  <35.491199, 35.580795, 26.305435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244984, 35.278976, 26.214417> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079180, 0.346473, -0.934712,
		0.784122, -0.557331, -0.273011,
		-0.615535, -0.754545, -0.227548,
		35.060322, 35.052612, 26.146152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858788, 35.275978, 25.795185>,  <35.491199, 35.580795, 26.305435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858788, 35.275978, 25.795185> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.474030, 35.175545, 25.751884>,  <35.243176, 35.115284, 25.725904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.474030, 35.175545, 25.751884>,  <35.858788, 35.275978, 25.795185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474030, 35.175545, 25.751884> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013913, 0.350455, -0.936476,
		0.273072, -0.902296, -0.333607,
		-0.961893, -0.251085, -0.108253,
		35.185463, 35.100220, 25.719408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885288, 34.831600, 25.191206>,  <35.858788, 35.275978, 25.795185>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885288, 34.831600, 25.191206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.498104, 34.918144, 25.242168>,  <35.265793, 34.970070, 25.272747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.498104, 34.918144, 25.242168>,  <35.885288, 34.831600, 25.191206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.498104, 34.918144, 25.242168> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050354, 0.329839, -0.942693,
		-0.245990, -0.918908, -0.308377,
		-0.967963, 0.216365, 0.127408,
		35.207714, 34.983055, 25.280390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483665, 34.318703, 24.816946>,  <35.885288, 34.831600, 25.191206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483665, 34.318703, 24.816946> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.292259, 34.664783, 24.876892>,  <35.177418, 34.872433, 24.912859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.292259, 34.664783, 24.876892>,  <35.483665, 34.318703, 24.816946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292259, 34.664783, 24.876892> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105960, 0.226323, -0.968272,
		-0.871664, -0.447450, -0.199975,
		-0.478512, 0.865197, 0.149866,
		35.148705, 34.924343, 24.921852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994389, 34.495056, 24.242619>,  <35.483665, 34.318703, 24.816946>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994389, 34.495056, 24.242619> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.029587, 34.857113, 24.408978>,  <35.050705, 35.074348, 24.508793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.029587, 34.857113, 24.408978>,  <34.994389, 34.495056, 24.242619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029587, 34.857113, 24.408978> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007428, 0.416908, -0.908918,
		-0.996093, 0.083074, 0.029964,
		0.087999, 0.905144, 0.415896,
		35.055988, 35.128654, 24.533747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.411690, 34.848850, 23.940010>,  <34.994389, 34.495056, 24.242619>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.411690, 34.848850, 23.940010> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.677750, 35.116188, 24.073214>,  <34.837383, 35.276592, 24.153135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.677750, 35.116188, 24.073214>,  <34.411690, 34.848850, 23.940010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677750, 35.116188, 24.073214> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014344, 0.457317, -0.889188,
		-0.746575, 0.586664, 0.313770,
		0.665147, 0.668346, 0.333006,
		34.877293, 35.316692, 24.173115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144775, 35.513634, 23.604420>,  <34.411690, 34.848850, 23.940010>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144775, 35.513634, 23.604420> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.507893, 35.615650, 23.737606>,  <34.725761, 35.676861, 23.817518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.507893, 35.615650, 23.737606>,  <34.144775, 35.513634, 23.604420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.507893, 35.615650, 23.737606> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072120, 0.687136, -0.722941,
		-0.413171, 0.680294, 0.605384,
		0.907793, 0.255038, 0.332967,
		34.780231, 35.692162, 23.837496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234016, 36.262863, 23.730103>,  <34.144775, 35.513634, 23.604420>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234016, 36.262863, 23.730103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.605545, 36.127323, 23.670147>,  <34.828465, 36.045998, 23.634172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.605545, 36.127323, 23.670147>,  <34.234016, 36.262863, 23.730103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605545, 36.127323, 23.670147> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130532, 0.677848, -0.723521,
		0.346769, 0.652458, 0.673832,
		0.928823, -0.338851, -0.149890,
		34.884193, 36.025669, 23.625179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504852, 36.838570, 23.449041>,  <34.234016, 36.262863, 23.730103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504852, 36.838570, 23.449041> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.760918, 36.546013, 23.355007>,  <34.914555, 36.370480, 23.298586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.760918, 36.546013, 23.355007>,  <34.504852, 36.838570, 23.449041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760918, 36.546013, 23.355007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287303, 0.511721, -0.809690,
		0.712497, 0.450791, 0.537714,
		0.640160, -0.731389, -0.235086,
		34.952965, 36.326595, 23.284481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159977, 37.099304, 23.488554>,  <34.504852, 36.838570, 23.449041>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159977, 37.099304, 23.488554> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.142860, 36.784664, 23.242163>,  <35.132591, 36.595879, 23.094328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.142860, 36.784664, 23.242163>,  <35.159977, 37.099304, 23.488554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142860, 36.784664, 23.242163> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414103, 0.547123, -0.727444,
		0.909224, -0.286205, 0.302323,
		-0.042790, -0.786602, -0.615976,
		35.130024, 36.548683, 23.057369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769466, 37.053837, 23.211731>,  <35.159977, 37.099304, 23.488554>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769466, 37.053837, 23.211731> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.547203, 36.866020, 22.937277>,  <35.413845, 36.753330, 22.772604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.547203, 36.866020, 22.937277>,  <35.769466, 37.053837, 23.211731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547203, 36.866020, 22.937277> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195485, 0.728345, -0.656734,
		0.808104, -0.499047, -0.312921,
		-0.555655, -0.469538, -0.686135,
		35.380505, 36.725159, 22.731436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181541, 37.052891, 22.516636>,  <35.769466, 37.053837, 23.211731>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181541, 37.052891, 22.516636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.836159, 36.920513, 22.364365>,  <35.628929, 36.841087, 22.273003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.836159, 36.920513, 22.364365>,  <36.181541, 37.052891, 22.516636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836159, 36.920513, 22.364365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064001, 0.676706, -0.733467,
		0.500341, -0.657683, -0.563127,
		-0.863460, -0.330942, -0.380676,
		35.577122, 36.821232, 22.250162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851608, 36.648663, 22.438231>,  <36.181541, 37.052891, 22.516636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851608, 36.648663, 22.438231> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.232876, 36.687702, 22.323721>,  <37.461636, 36.711124, 22.255016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.232876, 36.687702, 22.323721>,  <36.851608, 36.648663, 22.438231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232876, 36.687702, 22.323721> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302421, -0.320930, 0.897522,
		-0.004278, -0.942061, -0.335414,
		0.953165, 0.097596, -0.286272,
		37.518826, 36.716980, 22.237839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147270, 36.051529, 22.640106>,  <36.851608, 36.648663, 22.438231>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147270, 36.051529, 22.640106> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.432735, 36.328484, 22.597601>,  <37.604015, 36.494656, 22.572098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.432735, 36.328484, 22.597601>,  <37.147270, 36.051529, 22.640106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432735, 36.328484, 22.597601> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442254, -0.327710, 0.834876,
		0.543232, -0.642813, -0.540084,
		0.713659, 0.692386, -0.106264,
		37.646832, 36.536198, 22.565722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670696, 35.641396, 22.818781>,  <37.147270, 36.051529, 22.640106>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670696, 35.641396, 22.818781> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.767620, 36.027554, 22.857349>,  <37.825775, 36.259251, 22.880489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.767620, 36.027554, 22.857349>,  <37.670696, 35.641396, 22.818781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767620, 36.027554, 22.857349> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610042, -0.228880, 0.758593,
		0.754412, -0.124990, -0.644391,
		0.242305, 0.965397, 0.096420,
		37.840313, 36.317173, 22.886276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391197, 35.716412, 22.867447>,  <37.670696, 35.641396, 22.818781>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391197, 35.716412, 22.867447> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.259239, 36.052776, 23.039043>,  <38.180065, 36.254597, 23.142002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.259239, 36.052776, 23.039043>,  <38.391197, 35.716412, 22.867447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259239, 36.052776, 23.039043> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555506, -0.194498, 0.808445,
		0.763269, 0.505012, -0.402968,
		-0.329898, 0.840912, 0.428992,
		38.160271, 36.305050, 23.167742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888000, 35.856026, 23.535330>,  <38.391197, 35.716412, 22.867447>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.888000, 35.856026, 23.535330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.597679, 36.126064, 23.588184>,  <38.423489, 36.288086, 23.619898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.597679, 36.126064, 23.588184>,  <38.888000, 35.856026, 23.535330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597679, 36.126064, 23.588184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261975, 0.093645, 0.960521,
		0.636069, 0.731763, -0.244825,
		-0.725800, 0.675095, 0.132139,
		38.379940, 36.328594, 23.627827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167236, 36.320343, 23.998428>,  <38.888000, 35.856026, 23.535330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167236, 36.320343, 23.998428> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.768909, 36.341290, 24.028358>,  <38.529911, 36.353855, 24.046316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.768909, 36.341290, 24.028358>,  <39.167236, 36.320343, 23.998428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768909, 36.341290, 24.028358> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071871, -0.056214, 0.995829,
		0.056352, 0.997045, 0.052215,
		-0.995821, 0.052364, 0.074826,
		38.470161, 36.356998, 24.050806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008537, 36.726044, 24.597910>,  <39.167236, 36.320343, 23.998428>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008537, 36.726044, 24.597910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.669636, 36.519413, 24.548412>,  <38.466293, 36.395435, 24.518715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.669636, 36.519413, 24.548412>,  <39.008537, 36.726044, 24.597910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669636, 36.519413, 24.548412> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019758, -0.202145, 0.979156,
		-0.530821, 0.832039, 0.161061,
		-0.847253, -0.516575, -0.123742,
		38.415459, 36.364441, 24.511290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488056, 36.874207, 25.174875>,  <39.008537, 36.726044, 24.597910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.488056, 36.874207, 25.174875> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.399551, 36.513626, 25.026047>,  <38.346447, 36.297279, 24.936750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.399551, 36.513626, 25.026047>,  <38.488056, 36.874207, 25.174875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.399551, 36.513626, 25.026047> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106942, -0.356796, 0.928041,
		-0.969333, 0.245131, -0.017457,
		-0.221263, -0.901447, -0.372069,
		38.333172, 36.243191, 24.914427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899113, 36.676163, 25.494686>,  <38.488056, 36.874207, 25.174875>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899113, 36.676163, 25.494686> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.030006, 36.332069, 25.338272>,  <38.108543, 36.125614, 25.244423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.030006, 36.332069, 25.338272>,  <37.899113, 36.676163, 25.494686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030006, 36.332069, 25.338272> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120499, -0.448430, 0.885658,
		-0.937229, -0.242697, -0.250399,
		0.327233, -0.860237, -0.391037,
		38.128178, 36.073997, 25.220961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486980, 36.188282, 25.797005>,  <37.899113, 36.676163, 25.494686>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486980, 36.188282, 25.797005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.801872, 35.980740, 25.663704>,  <37.990807, 35.856213, 25.583723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.801872, 35.980740, 25.663704>,  <37.486980, 36.188282, 25.797005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801872, 35.980740, 25.663704> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062099, -0.604370, 0.794280,
		-0.613559, -0.604564, -0.507984,
		0.787204, -0.518883, -0.333274,
		38.038040, 35.825081, 25.563728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210766, 35.558563, 25.599951>,  <37.486980, 36.188282, 25.797005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210766, 35.558563, 25.599951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.594101, 35.562054, 25.714151>,  <37.824100, 35.564148, 25.782671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.594101, 35.562054, 25.714151>,  <37.210766, 35.558563, 25.599951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594101, 35.562054, 25.714151> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234613, -0.546057, 0.804225,
		0.162921, -0.837702, -0.521260,
		0.958339, 0.008730, 0.285500,
		37.881603, 35.564674, 25.799801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294010, 34.934841, 25.916275>,  <37.210766, 35.558563, 25.599951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294010, 34.934841, 25.916275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.633808, 35.116825, 26.023136>,  <37.837685, 35.226017, 26.087254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.633808, 35.116825, 26.023136>,  <37.294010, 34.934841, 25.916275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633808, 35.116825, 26.023136> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006968, -0.515988, 0.856568,
		0.527555, -0.725786, -0.441498,
		0.849492, 0.454963, 0.267155,
		37.888657, 35.253315, 26.103283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801311, 34.344936, 26.057831>,  <37.294010, 34.934841, 25.916275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801311, 34.344936, 26.057831> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.926571, 34.679424, 26.237906>,  <38.001728, 34.880119, 26.345951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.926571, 34.679424, 26.237906>,  <37.801311, 34.344936, 26.057831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926571, 34.679424, 26.237906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053234, -0.488741, 0.870803,
		0.948210, -0.248728, -0.197565,
		0.313151, 0.836221, 0.450189,
		38.020515, 34.930290, 26.372963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311665, 34.180737, 26.493002>,  <37.801311, 34.344936, 26.057831>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311665, 34.180737, 26.493002> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.213421, 34.532543, 26.656033>,  <38.154476, 34.743629, 26.753851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.213421, 34.532543, 26.656033>,  <38.311665, 34.180737, 26.493002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213421, 34.532543, 26.656033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394778, -0.293255, 0.870719,
		0.885340, 0.374759, -0.275189,
		-0.245609, 0.879521, 0.407577,
		38.139736, 34.796398, 26.778305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.767349, 38.322346, 22.953218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.402836, 38.468502, 23.029175>,  <41.184128, 38.556194, 23.074749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.402836, 38.468502, 23.029175>,  <41.767349, 38.322346, 22.953218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.402836, 38.468502, 23.029175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126928, 0.189446, -0.973653,
		-0.391735, -0.911374, -0.126261,
		-0.911281, 0.365388, 0.189891,
		41.129452, 38.578117, 23.086142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.343109, 38.063931, 22.427774>,  <41.767349, 38.322346, 22.953218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.343109, 38.063931, 22.427774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.156876, 38.379078, 22.589014>,  <41.045135, 38.568169, 22.685759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.156876, 38.379078, 22.589014>,  <41.343109, 38.063931, 22.427774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.156876, 38.379078, 22.589014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200333, 0.349832, -0.915142,
		-0.862032, -0.506830, -0.005039,
		-0.465584, 0.787872, 0.403101,
		41.017200, 38.615440, 22.709944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819382, 38.121952, 22.011141>,  <41.343109, 38.063931, 22.427774>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.819382, 38.121952, 22.011141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.825424, 38.483410, 22.182352>,  <40.829052, 38.700283, 22.285078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.825424, 38.483410, 22.182352>,  <40.819382, 38.121952, 22.011141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.825424, 38.483410, 22.182352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225996, 0.420083, -0.878895,
		-0.974011, -0.083453, 0.210566,
		0.015108, 0.903640, 0.428026,
		40.829956, 38.754501, 22.310760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118774, 38.455353, 21.864210>,  <40.819382, 38.121952, 22.011141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118774, 38.455353, 21.864210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.378685, 38.748714, 21.944111>,  <40.534634, 38.924732, 21.992052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.378685, 38.748714, 21.944111>,  <40.118774, 38.455353, 21.864210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.378685, 38.748714, 21.944111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258596, 0.460404, -0.849209,
		-0.714782, 0.500145, 0.488817,
		0.649781, 0.733405, 0.199753,
		40.573620, 38.968735, 22.004036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765015, 39.114491, 21.735155>,  <40.118774, 38.455353, 21.864210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765015, 39.114491, 21.735155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.156853, 39.194859, 21.737211>,  <40.391956, 39.243080, 21.738445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.156853, 39.194859, 21.737211>,  <39.765015, 39.114491, 21.735155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.156853, 39.194859, 21.737211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093928, 0.480281, -0.872071,
		-0.177683, 0.853793, 0.489353,
		0.979595, 0.200916, 0.005143,
		40.450729, 39.255135, 21.738754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.773659, 39.807640, 21.604826>,  <39.765015, 39.114491, 21.735155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.773659, 39.807640, 21.604826> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.126350, 39.657787, 21.490143>,  <40.337967, 39.567875, 21.421333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.126350, 39.657787, 21.490143>,  <39.773659, 39.807640, 21.604826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.126350, 39.657787, 21.490143> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114978, 0.418769, -0.900785,
		0.457523, 0.827217, 0.326169,
		0.881733, -0.374627, -0.286708,
		40.390869, 39.545399, 21.404131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224632, 40.386696, 21.506437>,  <39.773659, 39.807640, 21.604826>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224632, 40.386696, 21.506437> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.367008, 40.081150, 21.291101>,  <40.452435, 39.897823, 21.161900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.367008, 40.081150, 21.291101>,  <40.224632, 40.386696, 21.506437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.367008, 40.081150, 21.291101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221813, 0.628664, -0.745373,
		0.907802, 0.145899, 0.393204,
		0.355943, -0.763868, -0.538340,
		40.473789, 39.851990, 21.129599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.740555, 40.815716, 21.252090>,  <40.224632, 40.386696, 21.506437>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.740555, 40.815716, 21.252090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.689686, 40.469143, 21.058960>,  <40.659164, 40.261200, 20.943081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.689686, 40.469143, 21.058960>,  <40.740555, 40.815716, 21.252090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.689686, 40.469143, 21.058960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074584, 0.493753, -0.866398,
		0.989072, -0.074171, -0.127414,
		-0.127173, -0.866433, -0.482826,
		40.651535, 40.209213, 20.914112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.176304, 40.860920, 20.687654>,  <40.740555, 40.815716, 21.252090>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.176304, 40.860920, 20.687654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.935848, 40.557228, 20.587889>,  <40.791576, 40.375011, 20.528030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.935848, 40.557228, 20.587889>,  <41.176304, 40.860920, 20.687654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935848, 40.557228, 20.587889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018418, 0.325177, -0.945474,
		0.798936, -0.563763, -0.209458,
		-0.601135, -0.759230, -0.249412,
		40.755508, 40.329460, 20.513065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.446144, 40.574291, 20.085039>,  <41.176304, 40.860920, 20.687654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.446144, 40.574291, 20.085039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.067154, 40.446861, 20.073753>,  <40.839760, 40.370403, 20.066982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.067154, 40.446861, 20.073753>,  <41.446144, 40.574291, 20.085039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.067154, 40.446861, 20.073753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052236, 0.241178, -0.969074,
		0.315534, -0.916700, -0.245151,
		-0.947475, -0.318582, -0.028216,
		40.782909, 40.351288, 20.065289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.345768, 40.173157, 19.453945>,  <41.446144, 40.574291, 20.085039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.345768, 40.173157, 19.453945> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.976212, 40.281807, 19.561754>,  <40.754478, 40.346996, 19.626440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.976212, 40.281807, 19.561754>,  <41.345768, 40.173157, 19.453945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.976212, 40.281807, 19.561754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255704, 0.085758, -0.962944,
		-0.284677, -0.958574, -0.009774,
		-0.923891, 0.271629, 0.269524,
		40.699043, 40.363297, 19.642612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.979927, 39.796261, 19.017307>,  <41.345768, 40.173157, 19.453945>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.979927, 39.796261, 19.017307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.746807, 40.087894, 19.160851>,  <40.606934, 40.262875, 19.246977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.746807, 40.087894, 19.160851>,  <40.979927, 39.796261, 19.017307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.746807, 40.087894, 19.160851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366907, 0.157939, -0.916752,
		-0.725067, -0.665952, 0.175458,
		-0.582801, 0.729084, 0.358859,
		40.571968, 40.306618, 19.268509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.330070, 39.691471, 18.696644>,  <40.979927, 39.796261, 19.017307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.330070, 39.691471, 18.696644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.322929, 40.075012, 18.809977>,  <40.318645, 40.305138, 18.877977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.322929, 40.075012, 18.809977>,  <40.330070, 39.691471, 18.696644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.322929, 40.075012, 18.809977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408200, 0.251696, -0.877509,
		-0.912718, -0.131322, 0.386912,
		-0.017852, 0.958855, 0.283333,
		40.317574, 40.362667, 18.894976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692795, 40.081264, 18.620359>,  <40.330070, 39.691471, 18.696644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692795, 40.081264, 18.620359> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.904034, 40.416115, 18.677393>,  <40.030777, 40.617027, 18.711613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.904034, 40.416115, 18.677393>,  <39.692795, 40.081264, 18.620359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.904034, 40.416115, 18.677393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566217, 0.472258, -0.675552,
		-0.632861, 0.276023, 0.723394,
		0.528097, 0.837128, 0.142584,
		40.062462, 40.667252, 18.720169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339310, 39.778908, 18.011463>,  <39.692795, 40.081264, 18.620359>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.339310, 39.778908, 18.011463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.075089, 39.568989, 17.796707>,  <38.916553, 39.443039, 17.667854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.075089, 39.568989, 17.796707>,  <39.339310, 39.778908, 18.011463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.075089, 39.568989, 17.796707> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178145, -0.585130, 0.791130,
		-0.729335, 0.618231, 0.293022,
		-0.660557, -0.524799, -0.536890,
		38.876923, 39.411549, 17.635639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791721, 39.832947, 18.384741>,  <39.339310, 39.778908, 18.011463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.791721, 39.832947, 18.384741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.731369, 39.514465, 18.150373>,  <38.695160, 39.323376, 18.009752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.731369, 39.514465, 18.150373>,  <38.791721, 39.832947, 18.384741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731369, 39.514465, 18.150373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398687, -0.493355, 0.773078,
		-0.904591, 0.350239, -0.242998,
		-0.150878, -0.796200, -0.585920,
		38.686104, 39.275604, 17.974598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041885, 39.554646, 18.534220>,  <38.791721, 39.832947, 18.384741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041885, 39.554646, 18.534220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.240673, 39.268543, 18.337677>,  <38.359943, 39.096882, 18.219751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.240673, 39.268543, 18.337677>,  <38.041885, 39.554646, 18.534220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240673, 39.268543, 18.337677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135056, -0.623082, 0.770408,
		-0.857195, -0.316506, -0.406251,
		0.496966, -0.715257, -0.491357,
		38.389763, 39.053967, 18.190269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629208, 39.055241, 18.536097>,  <38.041885, 39.554646, 18.534220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629208, 39.055241, 18.536097> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.974846, 38.862354, 18.478399>,  <38.182228, 38.746624, 18.443781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.974846, 38.862354, 18.478399>,  <37.629208, 39.055241, 18.536097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974846, 38.862354, 18.478399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198671, -0.590076, 0.782522,
		-0.462457, -0.647518, -0.605685,
		0.864097, -0.482214, -0.144241,
		38.234074, 38.717690, 18.435127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514957, 38.330303, 18.343027>,  <37.629208, 39.055241, 18.536097>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514957, 38.330303, 18.343027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.867268, 38.372784, 18.527617>,  <38.078655, 38.398273, 18.638371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.867268, 38.372784, 18.527617>,  <37.514957, 38.330303, 18.343027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.867268, 38.372784, 18.527617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283999, -0.661336, 0.694247,
		0.378922, -0.742533, -0.552325,
		0.880774, 0.106206, 0.461474,
		38.131500, 38.404644, 18.666058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659332, 37.612103, 18.614574>,  <37.514957, 38.330303, 18.343027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659332, 37.612103, 18.614574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.916473, 37.848244, 18.809809>,  <38.070759, 37.989929, 18.926950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.916473, 37.848244, 18.809809>,  <37.659332, 37.612103, 18.614574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.916473, 37.848244, 18.809809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004184, -0.634480, 0.772928,
		0.765980, -0.498919, -0.405406,
		0.642851, 0.590351, 0.488087,
		38.109329, 38.025349, 18.956234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366070, 37.199097, 18.720896>,  <37.659332, 37.612103, 18.614574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366070, 37.199097, 18.720896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.318165, 37.493626, 18.987274>,  <38.289421, 37.670345, 19.147100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.318165, 37.493626, 18.987274>,  <38.366070, 37.199097, 18.720896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318165, 37.493626, 18.987274> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103417, -0.657872, 0.745996,
		0.987401, 0.158213, 0.002641,
		-0.119763, 0.736324, 0.665945,
		38.282234, 37.714523, 19.187057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704872, 36.959927, 19.275530>,  <38.366070, 37.199097, 18.720896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.704872, 36.959927, 19.275530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.478367, 37.252193, 19.428093>,  <38.342464, 37.427555, 19.519630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.478367, 37.252193, 19.428093>,  <38.704872, 36.959927, 19.275530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478367, 37.252193, 19.428093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054271, -0.494795, 0.867313,
		0.822434, 0.470430, 0.319839,
		-0.566265, 0.730666, 0.381406,
		38.308487, 37.471394, 19.542515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859501, 37.033245, 19.981085>,  <38.704872, 36.959927, 19.275530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859501, 37.033245, 19.981085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.519623, 37.243633, 19.995880>,  <38.315697, 37.369865, 20.004757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.519623, 37.243633, 19.995880>,  <38.859501, 37.033245, 19.981085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519623, 37.243633, 19.995880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249394, -0.462713, 0.850705,
		0.464565, 0.713615, 0.524341,
		-0.849695, 0.525975, 0.036989,
		38.264713, 37.401424, 20.006977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748856, 37.172047, 20.586327>,  <38.859501, 37.033245, 19.981085>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.748856, 37.172047, 20.586327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.375629, 37.250534, 20.465742>,  <38.151691, 37.297626, 20.393393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.375629, 37.250534, 20.465742>,  <38.748856, 37.172047, 20.586327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375629, 37.250534, 20.465742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358910, -0.452588, 0.816301,
		0.023738, 0.869863, 0.492721,
		-0.933070, 0.196220, -0.301459,
		38.095707, 37.309399, 20.375305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492279, 37.599689, 21.087524>,  <38.748856, 37.172047, 20.586327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492279, 37.599689, 21.087524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.200798, 37.404167, 20.895666>,  <38.025909, 37.286854, 20.780550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.200798, 37.404167, 20.895666>,  <38.492279, 37.599689, 21.087524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.200798, 37.404167, 20.895666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252310, -0.459493, 0.851591,
		-0.636659, 0.741574, 0.211501,
		-0.728701, -0.488809, -0.479647,
		37.982189, 37.257523, 20.751772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920193, 37.973751, 21.367041>,  <38.492279, 37.599689, 21.087524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920193, 37.973751, 21.367041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.781937, 37.617413, 21.249107>,  <37.698982, 37.403610, 21.178347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.781937, 37.617413, 21.249107>,  <37.920193, 37.973751, 21.367041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781937, 37.617413, 21.249107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172505, -0.248521, 0.953142,
		-0.922375, 0.380304, -0.067777,
		-0.345640, -0.890846, -0.294834,
		37.678246, 37.350159, 21.160658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.233509, 37.810894, 21.610851>,  <37.920193, 37.973751, 21.367041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.233509, 37.810894, 21.610851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.421677, 37.466160, 21.535019>,  <37.534576, 37.259319, 21.489519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.421677, 37.466160, 21.535019>,  <37.233509, 37.810894, 21.610851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421677, 37.466160, 21.535019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263005, -0.342002, 0.902143,
		-0.842337, -0.374527, -0.387552,
		0.470421, -0.861837, -0.189579,
		37.562801, 37.207607, 21.478146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833946, 37.301411, 21.994596>,  <37.233509, 37.810894, 21.610851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833946, 37.301411, 21.994596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.176720, 37.115200, 21.906105>,  <37.382385, 37.003471, 21.853010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.176720, 37.115200, 21.906105>,  <36.833946, 37.301411, 21.994596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176720, 37.115200, 21.906105> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092417, -0.283486, 0.954513,
		-0.507070, -0.838402, -0.199906,
		0.856935, -0.465531, -0.221229,
		37.433800, 36.975540, 21.839737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281376, 36.889893, 21.691435>,  <36.833946, 37.301411, 21.994596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281376, 36.889893, 21.691435> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.889912, 36.952381, 21.744820>,  <35.655033, 36.989876, 21.776850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.889912, 36.952381, 21.744820>,  <36.281376, 36.889893, 21.691435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889912, 36.952381, 21.744820> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047843, 0.458433, -0.887440,
		-0.199821, -0.874891, -0.441177,
		-0.978664, 0.156222, 0.133462,
		35.596313, 36.999249, 21.784859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992264, 36.775085, 21.039038>,  <36.281376, 36.889893, 21.691435>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992264, 36.775085, 21.039038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.723522, 36.983383, 21.249727>,  <35.562279, 37.108360, 21.376141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.723522, 36.983383, 21.249727>,  <35.992264, 36.775085, 21.039038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723522, 36.983383, 21.249727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077670, 0.657681, -0.749282,
		-0.736602, -0.544318, -0.401418,
		-0.671852, 0.520744, 0.526726,
		35.521965, 37.139606, 21.407745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649971, 37.078606, 20.573246>,  <35.992264, 36.775085, 21.039038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649971, 37.078606, 20.573246> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.509300, 37.296833, 20.877531>,  <35.424896, 37.427769, 21.060102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.509300, 37.296833, 20.877531>,  <35.649971, 37.078606, 20.573246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509300, 37.296833, 20.877531> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269280, 0.719320, -0.640365,
		-0.896556, -0.430046, -0.106058,
		-0.351676, 0.545564, 0.760713,
		35.403797, 37.460503, 21.105745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957577, 37.369148, 20.398550>,  <35.649971, 37.078606, 20.573246>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957577, 37.369148, 20.398550> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.119507, 37.606464, 20.676865>,  <35.216667, 37.748856, 20.843853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.119507, 37.606464, 20.676865>,  <34.957577, 37.369148, 20.398550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119507, 37.606464, 20.676865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143858, 0.792778, -0.592291,
		-0.903005, 0.139682, 0.406289,
		0.404829, 0.593290, 0.695788,
		35.240955, 37.784451, 20.885601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494324, 37.951588, 20.366400>,  <34.957577, 37.369148, 20.398550>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494324, 37.951588, 20.366400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.830143, 38.086391, 20.536852>,  <35.031635, 38.167274, 20.639124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.830143, 38.086391, 20.536852>,  <34.494324, 37.951588, 20.366400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830143, 38.086391, 20.536852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063138, 0.839561, -0.539583,
		-0.539609, 0.426099, 0.726128,
		0.839545, 0.337010, 0.426132,
		35.082008, 38.187496, 20.664692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296688, 38.700092, 20.607309>,  <34.494324, 37.951588, 20.366400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296688, 38.700092, 20.607309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.690880, 38.667034, 20.547977>,  <34.927395, 38.647198, 20.512379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.690880, 38.667034, 20.547977>,  <34.296688, 38.700092, 20.607309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690880, 38.667034, 20.547977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011241, 0.839871, -0.542670,
		0.169428, 0.536457, 0.826745,
		0.985478, -0.082650, -0.148328,
		34.986523, 38.642239, 20.503479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.626278, 39.410275, 20.833572>,  <34.296688, 38.700092, 20.607309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.626278, 39.410275, 20.833572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.866940, 39.196163, 20.596424>,  <35.011337, 39.067696, 20.454136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.866940, 39.196163, 20.596424>,  <34.626278, 39.410275, 20.833572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866940, 39.196163, 20.596424> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115687, 0.792807, -0.598392,
		0.790336, 0.291437, 0.538919,
		0.601652, -0.535277, -0.592869,
		35.047436, 39.035580, 20.418564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865726, 40.060078, 21.231356>,  <34.626278, 39.410275, 20.833572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865726, 40.060078, 21.231356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.590149, 40.278328, 21.422203>,  <34.424801, 40.409279, 21.536711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.590149, 40.278328, 21.422203>,  <34.865726, 40.060078, 21.231356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590149, 40.278328, 21.422203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004917, -0.661768, 0.749692,
		0.724795, 0.514153, 0.458606,
		-0.688947, 0.545628, 0.477118,
		34.383465, 40.442017, 21.565338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077320, 40.166893, 21.966721>,  <34.865726, 40.060078, 21.231356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077320, 40.166893, 21.966721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.680523, 40.215248, 21.952124>,  <34.442444, 40.244263, 21.943365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.680523, 40.215248, 21.952124>,  <35.077320, 40.166893, 21.966721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680523, 40.215248, 21.952124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102421, -0.601213, 0.792497,
		0.073864, 0.789891, 0.608782,
		-0.991995, 0.120889, -0.036494,
		34.382923, 40.251514, 21.941175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898911, 40.153519, 22.735626>,  <35.077320, 40.166893, 21.966721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898911, 40.153519, 22.735626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.555729, 40.099335, 22.537405>,  <34.349819, 40.066826, 22.418472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.555729, 40.099335, 22.537405>,  <34.898911, 40.153519, 22.735626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555729, 40.099335, 22.537405> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349745, -0.552548, 0.756551,
		-0.376298, 0.822400, 0.426683,
		-0.857950, -0.135458, -0.495553,
		34.298344, 40.058697, 22.388739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426640, 40.178738, 23.260923>,  <34.898911, 40.153519, 22.735626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426640, 40.178738, 23.260923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.227985, 39.991180, 22.968760>,  <34.108791, 39.878647, 22.793461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.227985, 39.991180, 22.968760>,  <34.426640, 40.178738, 23.260923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227985, 39.991180, 22.968760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489521, -0.543598, 0.681814,
		-0.716745, 0.696162, 0.040437,
		-0.496634, -0.468892, -0.730407,
		34.078995, 39.850513, 22.749638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732033, 40.128773, 23.446812>,  <34.426640, 40.178738, 23.260923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732033, 40.128773, 23.446812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.784786, 39.834637, 23.180916>,  <33.816437, 39.658154, 23.021379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.784786, 39.834637, 23.180916>,  <33.732033, 40.128773, 23.446812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784786, 39.834637, 23.180916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517372, -0.623072, 0.586607,
		-0.845537, 0.266553, -0.462618,
		0.131882, -0.735344, -0.664738,
		33.824352, 39.614033, 22.981495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141617, 39.831600, 23.546831>,  <33.732033, 40.128773, 23.446812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141617, 39.831600, 23.546831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.343140, 39.564816, 23.327253>,  <33.464054, 39.404747, 23.195507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.343140, 39.564816, 23.327253>,  <33.141617, 39.831600, 23.546831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.343140, 39.564816, 23.327253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417258, -0.744334, 0.521404,
		-0.756354, -0.033637, -0.653297,
		0.503810, -0.666960, -0.548945,
		33.494282, 39.364727, 23.162569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.590984, 39.309132, 23.210693>,  <33.141617, 39.831600, 23.546831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.590984, 39.309132, 23.210693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.952049, 39.140568, 23.245602>,  <33.168690, 39.039429, 23.266546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.952049, 39.140568, 23.245602>,  <32.590984, 39.309132, 23.210693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952049, 39.140568, 23.245602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428122, -0.858730, 0.281591,
		-0.043720, -0.291545, -0.955557,
		0.902663, -0.421406, 0.087273,
		33.222847, 39.014145, 23.271784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.503757, 43.439137, 19.876329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.527946, 43.100517, 19.664785>,  <38.542461, 42.897346, 19.537859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.527946, 43.100517, 19.664785>,  <38.503757, 43.439137, 19.876329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527946, 43.100517, 19.664785> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192008, -0.529802, 0.826101,
		-0.979528, 0.051589, -0.194583,
		0.060473, -0.846551, -0.528861,
		38.546089, 42.846554, 19.506126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969063, 43.003510, 20.123091>,  <38.503757, 43.439137, 19.876329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969063, 43.003510, 20.123091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.299465, 42.812653, 20.003059>,  <38.497707, 42.698139, 19.931040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.299465, 42.812653, 20.003059>,  <37.969063, 43.003510, 20.123091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299465, 42.812653, 20.003059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070050, -0.615147, 0.785295,
		-0.559288, -0.627639, -0.541540,
		0.826008, -0.477141, -0.300079,
		38.547268, 42.669510, 19.913034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903393, 42.331455, 20.478849>,  <37.969063, 43.003510, 20.123091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903393, 42.331455, 20.478849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.292145, 42.361855, 20.389698>,  <38.525394, 42.380096, 20.336206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.292145, 42.361855, 20.389698>,  <37.903393, 42.331455, 20.478849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292145, 42.361855, 20.389698> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223656, -0.594086, 0.772683,
		-0.073683, -0.800803, -0.594379,
		0.971879, 0.076002, -0.222879,
		38.583710, 42.384655, 20.322834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153389, 41.611736, 20.394621>,  <37.903393, 42.331455, 20.478849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153389, 41.611736, 20.394621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.465908, 41.845783, 20.481543>,  <38.653419, 41.986210, 20.533695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.465908, 41.845783, 20.481543>,  <38.153389, 41.611736, 20.394621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465908, 41.845783, 20.481543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270944, -0.631575, 0.726431,
		0.562288, -0.508679, -0.651980,
		0.781294, 0.585114, 0.217303,
		38.700298, 42.021317, 20.546734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653465, 41.141212, 20.412626>,  <38.153389, 41.611736, 20.394621>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653465, 41.141212, 20.412626> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.782318, 41.451782, 20.629290>,  <38.859631, 41.638123, 20.759289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.782318, 41.451782, 20.629290>,  <38.653465, 41.141212, 20.412626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782318, 41.451782, 20.629290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313015, -0.627331, 0.713076,
		0.893451, -0.060154, -0.445114,
		0.322129, 0.776426, 0.541661,
		38.878956, 41.684711, 20.791788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341423, 40.990330, 20.724461>,  <38.653465, 41.141212, 20.412626>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341423, 40.990330, 20.724461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.209267, 41.296169, 20.945810>,  <39.129971, 41.479675, 21.078619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.209267, 41.296169, 20.945810>,  <39.341423, 40.990330, 20.724461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209267, 41.296169, 20.945810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219778, -0.507857, 0.832934,
		0.917898, 0.396816, -0.000250,
		-0.330394, 0.764603, 0.553373,
		39.110149, 41.525551, 21.111822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903530, 41.124504, 21.276154>,  <39.341423, 40.990330, 20.724461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903530, 41.124504, 21.276154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.560692, 41.284241, 21.406336>,  <39.354988, 41.380081, 21.484446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.560692, 41.284241, 21.406336>,  <39.903530, 41.124504, 21.276154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560692, 41.284241, 21.406336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169917, -0.377263, 0.910385,
		0.486333, 0.835585, 0.255495,
		-0.857093, 0.399337, 0.325456,
		39.303562, 41.404041, 21.503973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020538, 41.591030, 21.822289>,  <39.903530, 41.124504, 21.276154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.020538, 41.591030, 21.822289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.643341, 41.470352, 21.878498>,  <39.417023, 41.397945, 21.912224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.643341, 41.470352, 21.878498>,  <40.020538, 41.591030, 21.822289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643341, 41.470352, 21.878498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187169, -0.131606, 0.973472,
		-0.275196, 0.944278, 0.180571,
		-0.942992, -0.301693, 0.140522,
		39.360443, 41.379845, 21.920654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843632, 41.981476, 22.388346>,  <40.020538, 41.591030, 21.822289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843632, 41.981476, 22.388346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.575069, 41.685890, 22.365875>,  <39.413933, 41.508541, 22.352394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.575069, 41.685890, 22.365875>,  <39.843632, 41.981476, 22.388346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575069, 41.685890, 22.365875> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095168, -0.161144, 0.982332,
		-0.734956, 0.654195, 0.178518,
		-0.671404, -0.738960, -0.056175,
		39.373650, 41.464203, 22.349022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412724, 42.088417, 22.856663>,  <39.843632, 41.981476, 22.388346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412724, 42.088417, 22.856663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.336243, 41.699863, 22.800295>,  <39.290352, 41.466732, 22.766474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.336243, 41.699863, 22.800295>,  <39.412724, 42.088417, 22.856663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336243, 41.699863, 22.800295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082088, -0.127242, 0.988469,
		-0.978111, 0.200568, -0.055409,
		-0.191205, -0.971381, -0.140921,
		39.278881, 41.408447, 22.758018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989876, 41.956009, 23.293388>,  <39.412724, 42.088417, 22.856663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989876, 41.956009, 23.293388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.057529, 41.573299, 23.198746>,  <39.098122, 41.343674, 23.141960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.057529, 41.573299, 23.198746>,  <38.989876, 41.956009, 23.293388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.057529, 41.573299, 23.198746> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116165, -0.257742, 0.959206,
		-0.978724, -0.134746, -0.154736,
		0.169131, -0.956772, -0.236605,
		39.108269, 41.286266, 23.127764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534695, 41.643581, 23.636356>,  <38.989876, 41.956009, 23.293388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534695, 41.643581, 23.636356> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.832745, 41.380543, 23.591906>,  <39.011574, 41.222721, 23.565235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.832745, 41.380543, 23.591906>,  <38.534695, 41.643581, 23.636356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832745, 41.380543, 23.591906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177478, -0.356135, 0.917425,
		-0.642872, -0.663878, -0.382075,
		0.745129, -0.657597, -0.111126,
		39.056282, 41.183262, 23.558569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867340, 41.294350, 23.426956>,  <38.534695, 41.643581, 23.636356>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867340, 41.294350, 23.426956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.560272, 41.515812, 23.556046>,  <37.376030, 41.648689, 23.633499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.560272, 41.515812, 23.556046>,  <37.867340, 41.294350, 23.426956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560272, 41.515812, 23.556046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096170, 0.398361, -0.912173,
		-0.633589, -0.731284, -0.252565,
		-0.767670, 0.553653, 0.322724,
		37.329971, 41.681908, 23.652863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315319, 41.193710, 22.947412>,  <37.867340, 41.294350, 23.426956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.315319, 41.193710, 22.947412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.261471, 41.545036, 23.130907>,  <37.229160, 41.755833, 23.241003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.261471, 41.545036, 23.130907>,  <37.315319, 41.193710, 22.947412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261471, 41.545036, 23.130907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049688, 0.456384, -0.888395,
		-0.989650, -0.142392, -0.017798,
		-0.134624, 0.878316, 0.458735,
		37.221085, 41.808533, 23.268528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702431, 41.484371, 22.653315>,  <37.315319, 41.193710, 22.947412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.702431, 41.484371, 22.653315> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.861423, 41.811287, 22.820187>,  <36.956821, 42.007435, 22.920311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.861423, 41.811287, 22.820187>,  <36.702431, 41.484371, 22.653315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.861423, 41.811287, 22.820187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218132, 0.525767, -0.822184,
		-0.891304, 0.235806, 0.387262,
		0.397486, 0.817291, 0.417182,
		36.980671, 42.056473, 22.945341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175808, 42.056156, 22.590315>,  <36.702431, 41.484371, 22.653315>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175808, 42.056156, 22.590315> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.542526, 42.214203, 22.613564>,  <36.762558, 42.309029, 22.627512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.542526, 42.214203, 22.613564>,  <36.175808, 42.056156, 22.590315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542526, 42.214203, 22.613564> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281200, 0.741998, -0.608577,
		-0.283582, 0.541596, 0.791363,
		0.916792, 0.395112, 0.058121,
		36.817562, 42.332737, 22.631001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052078, 42.794403, 22.733376>,  <36.175808, 42.056156, 22.590315>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052078, 42.794403, 22.733376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.432640, 42.773720, 22.611948>,  <36.660976, 42.761311, 22.539091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.432640, 42.773720, 22.611948>,  <36.052078, 42.794403, 22.733376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432640, 42.773720, 22.611948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184148, 0.694588, -0.695441,
		0.246813, 0.717547, 0.651313,
		0.951406, -0.051706, -0.303568,
		36.718063, 42.758209, 22.520878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239319, 43.488201, 22.598106>,  <36.052078, 42.794403, 22.733376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239319, 43.488201, 22.598106> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.534786, 43.297962, 22.407036>,  <36.712067, 43.183819, 22.292393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.534786, 43.297962, 22.407036>,  <36.239319, 43.488201, 22.598106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534786, 43.297962, 22.407036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195728, 0.526783, -0.827158,
		0.645023, 0.704493, 0.296032,
		0.738672, -0.475594, -0.477676,
		36.756390, 43.155285, 22.263733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459103, 43.989082, 22.197535>,  <36.239319, 43.488201, 22.598106>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459103, 43.989082, 22.197535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.631432, 43.673908, 22.021561>,  <36.734829, 43.484802, 21.915976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.631432, 43.673908, 22.021561>,  <36.459103, 43.989082, 22.197535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631432, 43.673908, 22.021561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233803, 0.373397, -0.897725,
		0.871624, 0.489618, -0.023355,
		0.430822, -0.787940, -0.439936,
		36.760677, 43.437527, 21.889580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801971, 44.258469, 21.643044>,  <36.459103, 43.989082, 22.197535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801971, 44.258469, 21.643044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.761723, 43.878212, 21.525639>,  <36.737576, 43.650059, 21.455194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.761723, 43.878212, 21.525639>,  <36.801971, 44.258469, 21.643044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761723, 43.878212, 21.525639> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285568, 0.310192, -0.906770,
		0.953062, -0.007419, -0.302685,
		-0.100618, -0.950645, -0.293514,
		36.731537, 43.593018, 21.437584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222046, 44.098309, 21.043598>,  <36.801971, 44.258469, 21.643044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222046, 44.098309, 21.043598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.928383, 43.826725, 21.045752>,  <36.752186, 43.663776, 21.047043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.928383, 43.826725, 21.045752>,  <37.222046, 44.098309, 21.043598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928383, 43.826725, 21.045752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365353, 0.388350, -0.845991,
		0.572302, -0.623058, -0.533170,
		-0.734158, -0.678958, 0.005383,
		36.708134, 43.623039, 21.047367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209915, 43.781303, 20.451906>,  <37.222046, 44.098309, 21.043598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209915, 43.781303, 20.451906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.838825, 43.731384, 20.592617>,  <36.616169, 43.701435, 20.677044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.838825, 43.731384, 20.592617>,  <37.209915, 43.781303, 20.451906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838825, 43.731384, 20.592617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372549, 0.367662, -0.852075,
		-0.023000, -0.921548, -0.387583,
		-0.927728, -0.124796, 0.351778,
		36.560509, 43.693947, 20.698151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830997, 43.790878, 19.855251>,  <37.209915, 43.781303, 20.451906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830997, 43.790878, 19.855251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.552013, 43.823776, 20.140005>,  <36.384621, 43.843513, 20.310858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.552013, 43.823776, 20.140005>,  <36.830997, 43.790878, 19.855251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552013, 43.823776, 20.140005> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614429, 0.442622, -0.653118,
		-0.368809, -0.892929, -0.258182,
		-0.697464, 0.082241, 0.711884,
		36.342773, 43.848450, 20.353571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229271, 43.531471, 19.553127>,  <36.830997, 43.790878, 19.855251>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229271, 43.531471, 19.553127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.105453, 43.749622, 19.864702>,  <36.031162, 43.880512, 20.051647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.105453, 43.749622, 19.864702>,  <36.229271, 43.531471, 19.553127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105453, 43.749622, 19.864702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686485, 0.438654, -0.579932,
		-0.657967, -0.714243, 0.238613,
		-0.309544, 0.545381, 0.778937,
		36.012589, 43.913235, 20.098383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480270, 43.464382, 19.695709>,  <36.229271, 43.531471, 19.553127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480270, 43.464382, 19.695709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.573853, 43.830574, 19.826649>,  <35.630001, 44.050289, 19.905212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.573853, 43.830574, 19.826649>,  <35.480270, 43.464382, 19.695709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573853, 43.830574, 19.826649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671565, 0.395630, -0.626480,
		-0.703040, -0.073267, 0.707366,
		0.233955, 0.915483, 0.327347,
		35.644039, 44.105221, 19.924852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882462, 43.378265, 20.159327>,  <35.480270, 43.464382, 19.695709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882462, 43.378265, 20.159327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.556931, 43.312630, 19.936342>,  <34.361610, 43.273251, 19.802551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.556931, 43.312630, 19.936342>,  <34.882462, 43.378265, 20.159327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556931, 43.312630, 19.936342> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341712, -0.640791, 0.687473,
		-0.470021, 0.749975, 0.465422,
		-0.813826, -0.164086, -0.557461,
		34.312782, 43.263405, 19.769104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265247, 43.360489, 20.673658>,  <34.882462, 43.378265, 20.159327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265247, 43.360489, 20.673658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.184109, 43.149517, 20.343647>,  <34.135426, 43.022934, 20.145639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.184109, 43.149517, 20.343647>,  <34.265247, 43.360489, 20.673658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.184109, 43.149517, 20.343647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354455, -0.745861, 0.563962,
		-0.912806, 0.406833, -0.035656,
		-0.202844, -0.527427, -0.825030,
		34.123257, 42.991287, 20.096138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651695, 43.043045, 20.821701>,  <34.265247, 43.360489, 20.673658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651695, 43.043045, 20.821701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.818104, 42.848640, 20.514265>,  <33.917950, 42.731998, 20.329803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.818104, 42.848640, 20.514265>,  <33.651695, 43.043045, 20.821701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818104, 42.848640, 20.514265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237575, -0.873933, 0.424028,
		-0.877784, 0.006206, -0.479016,
		0.415996, -0.486007, -0.768599,
		33.942909, 42.702839, 20.283689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228035, 42.454491, 20.728115>,  <33.651695, 43.043045, 20.821701>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228035, 42.454491, 20.728115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.569466, 42.342243, 20.552546>,  <33.774326, 42.274895, 20.447205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.569466, 42.342243, 20.552546>,  <33.228035, 42.454491, 20.728115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569466, 42.342243, 20.552546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124130, -0.927811, 0.351794,
		-0.505959, -0.245800, -0.826794,
		0.853579, -0.280623, -0.438923,
		33.825539, 42.258057, 20.420868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084225, 41.720142, 20.722456>,  <33.228035, 42.454491, 20.728115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.084225, 41.720142, 20.722456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.477970, 41.749783, 20.658537>,  <33.714218, 41.767567, 20.620186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.477970, 41.749783, 20.658537>,  <33.084225, 41.720142, 20.722456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477970, 41.749783, 20.658537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151666, -0.817893, 0.555021,
		-0.089572, -0.570579, -0.816343,
		0.984365, 0.074097, -0.159797,
		33.773281, 41.772011, 20.610598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267811, 41.005001, 20.581779>,  <33.084225, 41.720142, 20.722456>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267811, 41.005001, 20.581779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.594376, 41.209511, 20.689163>,  <33.790314, 41.332218, 20.753593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.594376, 41.209511, 20.689163>,  <33.267811, 41.005001, 20.581779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594376, 41.209511, 20.689163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338421, -0.800297, 0.494971,
		0.467915, -0.313246, -0.826397,
		0.816411, 0.511275, 0.268462,
		33.839298, 41.362892, 20.769701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822899, 40.549656, 20.514559>,  <33.267811, 41.005001, 20.581779>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822899, 40.549656, 20.514559> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.975544, 40.836418, 20.747940>,  <34.067131, 41.008476, 20.887970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.975544, 40.836418, 20.747940>,  <33.822899, 40.549656, 20.514559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975544, 40.836418, 20.747940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261465, -0.689167, 0.675785,
		0.886573, -0.105332, -0.450438,
		0.381609, 0.716906, 0.583456,
		34.090027, 41.051491, 20.922977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341320, 40.237396, 20.751738>,  <33.822899, 40.549656, 20.514559>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341320, 40.237396, 20.751738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.279316, 40.517342, 21.030638>,  <34.242111, 40.685310, 21.197977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.279316, 40.517342, 21.030638>,  <34.341320, 40.237396, 20.751738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.279316, 40.517342, 21.030638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316181, -0.633511, 0.706182,
		0.935949, 0.329924, -0.123082,
		-0.155013, 0.699867, 0.697250,
		34.232811, 40.727303, 21.239813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090488, 39.896782, 20.547714>,  <34.341320, 40.237396, 20.751738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090488, 39.896782, 20.547714> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.179985, 39.582977, 20.316376>,  <35.233681, 39.394695, 20.177572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.179985, 39.582977, 20.316376>,  <35.090488, 39.896782, 20.547714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179985, 39.582977, 20.316376> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173485, 0.615969, -0.768431,
		0.959085, 0.071593, 0.273917,
		0.223738, -0.784511, -0.578346,
		35.247108, 39.347626, 20.142872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798241, 39.910645, 20.358562>,  <35.090488, 39.896782, 20.547714>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798241, 39.910645, 20.358562> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.603630, 39.709103, 20.073069>,  <35.486862, 39.588177, 19.901772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.603630, 39.709103, 20.073069>,  <35.798241, 39.910645, 20.358562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603630, 39.709103, 20.073069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291406, 0.676574, -0.676261,
		0.823633, -0.537008, -0.182348,
		-0.486530, -0.503854, -0.713736,
		35.457672, 39.557945, 19.858948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287762, 39.862804, 19.802477>,  <35.798241, 39.910645, 20.358562>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287762, 39.862804, 19.802477> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.935661, 39.770065, 19.636873>,  <35.724400, 39.714420, 19.537512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.935661, 39.770065, 19.636873>,  <36.287762, 39.862804, 19.802477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935661, 39.770065, 19.636873> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218140, 0.577115, -0.786990,
		0.421393, -0.783061, -0.457431,
		-0.880252, -0.231848, -0.414009,
		35.671585, 39.700512, 19.512671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419842, 39.574707, 19.083065>,  <36.287762, 39.862804, 19.802477>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.419842, 39.574707, 19.083065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.053238, 39.733265, 19.104515>,  <35.833275, 39.828400, 19.117384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.053238, 39.733265, 19.104515>,  <36.419842, 39.574707, 19.083065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053238, 39.733265, 19.104515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133764, 0.430056, -0.892837,
		-0.376980, -0.811123, -0.447175,
		-0.916512, 0.396398, 0.053623,
		35.778286, 39.852184, 19.120602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211494, 39.415260, 18.368605>,  <36.419842, 39.574707, 19.083065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211494, 39.415260, 18.368605> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.949539, 39.680336, 18.513914>,  <35.792366, 39.839382, 18.601099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.949539, 39.680336, 18.513914>,  <36.211494, 39.415260, 18.368605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949539, 39.680336, 18.513914> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059601, 0.524486, -0.849330,
		-0.753371, -0.534565, -0.382977,
		-0.654889, 0.662687, 0.363272,
		35.753071, 39.879143, 18.622896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652000, 39.486176, 17.864767>,  <36.211494, 39.415260, 18.368605>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652000, 39.486176, 17.864767> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.653748, 39.802883, 18.109091>,  <35.654797, 39.992908, 18.255686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.653748, 39.802883, 18.109091>,  <35.652000, 39.486176, 17.864767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653748, 39.802883, 18.109091> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064959, 0.609300, -0.790274,
		-0.997878, 0.043133, -0.048768,
		0.004372, 0.791766, 0.610810,
		35.655060, 40.040413, 18.292334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171349, 39.972713, 17.586535>,  <35.652000, 39.486176, 17.864767>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171349, 39.972713, 17.586535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.429836, 40.162876, 17.825327>,  <35.584930, 40.276974, 17.968603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.429836, 40.162876, 17.825327>,  <35.171349, 39.972713, 17.586535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429836, 40.162876, 17.825327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193089, 0.654952, -0.730585,
		-0.738318, 0.587391, 0.331449,
		0.646222, 0.475405, 0.596982,
		35.623703, 40.305496, 18.004421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945026, 40.716812, 17.522579>,  <35.171349, 39.972713, 17.586535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945026, 40.716812, 17.522579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.321831, 40.689949, 17.654102>,  <35.547913, 40.673832, 17.733015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.321831, 40.689949, 17.654102>,  <34.945026, 40.716812, 17.522579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321831, 40.689949, 17.654102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288760, 0.661446, -0.692176,
		-0.171002, 0.746980, 0.642479,
		0.942006, -0.067159, 0.328806,
		35.604431, 40.669800, 17.752745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205486, 41.387180, 17.541948>,  <34.945026, 40.716812, 17.522579>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205486, 41.387180, 17.541948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.533749, 41.158913, 17.553635>,  <35.730705, 41.021950, 17.560646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.533749, 41.158913, 17.553635>,  <35.205486, 41.387180, 17.541948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533749, 41.158913, 17.553635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448374, 0.611402, -0.652034,
		0.354235, 0.548197, 0.757627,
		0.820658, -0.570673, 0.029217,
		35.779945, 40.987709, 17.562399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.918770, 33.072651, 31.332445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.298645, 33.094864, 31.209156>,  <36.526569, 33.108192, 31.135181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.298645, 33.094864, 31.209156>,  <35.918770, 33.072651, 31.332445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298645, 33.094864, 31.209156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260164, 0.687781, -0.677696,
		0.174358, 0.723791, 0.667627,
		0.949691, 0.055531, -0.308225,
		36.583553, 33.111523, 31.116688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166874, 33.829338, 31.304184>,  <35.918770, 33.072651, 31.332445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166874, 33.829338, 31.304184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.402390, 33.627102, 31.051929>,  <36.543701, 33.505760, 30.900576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.402390, 33.627102, 31.051929>,  <36.166874, 33.829338, 31.304184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402390, 33.627102, 31.051929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248264, 0.629382, -0.736371,
		0.769213, 0.590135, 0.245056,
		0.588793, -0.505588, -0.630638,
		36.579029, 33.475426, 30.862738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388855, 34.342388, 30.820259>,  <36.166874, 33.829338, 31.304184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.388855, 34.342388, 30.820259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.476913, 33.995632, 30.641359>,  <36.529747, 33.787579, 30.534019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.476913, 33.995632, 30.641359>,  <36.388855, 34.342388, 30.820259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476913, 33.995632, 30.641359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239470, 0.396441, -0.886278,
		0.945617, 0.302213, -0.120320,
		0.220145, -0.866892, -0.447251,
		36.542957, 33.735565, 30.507183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656113, 34.484360, 30.220200>,  <36.388855, 34.342388, 30.820259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656113, 34.484360, 30.220200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.552036, 34.109051, 30.129040>,  <36.489590, 33.883865, 30.074345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.552036, 34.109051, 30.129040>,  <36.656113, 34.484360, 30.220200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552036, 34.109051, 30.129040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295589, 0.302099, -0.906291,
		0.919199, -0.168445, -0.355948,
		-0.260192, -0.938276, -0.227899,
		36.473980, 33.827568, 30.060671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878906, 34.387360, 29.547623>,  <36.656113, 34.484360, 30.220200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878906, 34.387360, 29.547623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.618546, 34.084438, 29.568874>,  <36.462330, 33.902687, 29.581625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.618546, 34.084438, 29.568874>,  <36.878906, 34.387360, 29.547623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618546, 34.084438, 29.568874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325073, 0.214787, -0.920975,
		0.686045, -0.616733, -0.385984,
		-0.650899, -0.757303, 0.053130,
		36.423275, 33.857246, 29.584814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025528, 34.004646, 28.977205>,  <36.878906, 34.387360, 29.547623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025528, 34.004646, 28.977205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.650154, 33.920570, 29.086872>,  <36.424931, 33.870125, 29.152672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.650154, 33.920570, 29.086872>,  <37.025528, 34.004646, 28.977205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650154, 33.920570, 29.086872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317108, 0.209186, -0.925032,
		0.137080, -0.955019, -0.262959,
		-0.938431, -0.210189, 0.274169,
		36.368626, 33.857513, 29.169123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831753, 33.571133, 28.464622>,  <37.025528, 34.004646, 28.977205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831753, 33.571133, 28.464622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.506477, 33.722023, 28.641899>,  <36.311310, 33.812557, 28.748266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.506477, 33.722023, 28.641899>,  <36.831753, 33.571133, 28.464622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506477, 33.722023, 28.641899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401708, 0.187223, -0.896426,
		-0.421132, -0.906999, -0.000713,
		-0.813190, 0.377227, 0.443194,
		36.262520, 33.835190, 28.774857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336277, 33.241455, 28.100420>,  <36.831753, 33.571133, 28.464622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336277, 33.241455, 28.100420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.126793, 33.517895, 28.299662>,  <36.001102, 33.683758, 28.419207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.126793, 33.517895, 28.299662>,  <36.336277, 33.241455, 28.100420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126793, 33.517895, 28.299662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517146, 0.206724, -0.830557,
		-0.676969, -0.692563, 0.249137,
		-0.523711, 0.691101, 0.498103,
		35.969681, 33.725224, 28.449093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.664692, 33.114834, 27.961546>,  <36.336277, 33.241455, 28.100420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.664692, 33.114834, 27.961546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.670044, 33.501003, 28.065678>,  <35.673256, 33.732704, 28.128157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.670044, 33.501003, 28.065678>,  <35.664692, 33.114834, 27.961546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670044, 33.501003, 28.065678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607483, 0.214640, -0.764784,
		-0.794220, -0.147915, 0.589352,
		0.013376, 0.965428, 0.260327,
		35.674057, 33.790630, 28.143776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033730, 33.300774, 27.886616>,  <35.664692, 33.114834, 27.961546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033730, 33.300774, 27.886616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.232872, 33.646881, 27.863102>,  <35.352356, 33.854546, 27.848993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.232872, 33.646881, 27.863102>,  <35.033730, 33.300774, 27.886616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232872, 33.646881, 27.863102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556486, 0.266731, -0.786879,
		-0.665178, 0.424466, 0.614301,
		0.497856, 0.865265, -0.058786,
		35.382229, 33.906460, 27.845467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533489, 33.861401, 27.818384>,  <35.033730, 33.300774, 27.886616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533489, 33.861401, 27.818384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.873947, 34.023083, 27.684416>,  <35.078220, 34.120090, 27.604034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.873947, 34.023083, 27.684416>,  <34.533489, 33.861401, 27.818384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873947, 34.023083, 27.684416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497982, 0.419936, -0.758727,
		-0.166034, 0.812572, 0.558712,
		0.851144, 0.404203, -0.334923,
		35.129292, 34.144344, 27.583939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324104, 34.535324, 27.590149>,  <34.533489, 33.861401, 27.818384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324104, 34.535324, 27.590149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.671783, 34.454964, 27.409428>,  <34.880390, 34.406746, 27.300995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.671783, 34.454964, 27.409428>,  <34.324104, 34.535324, 27.590149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671783, 34.454964, 27.409428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358565, 0.373061, -0.855720,
		0.340468, 0.905794, 0.252228,
		0.869202, -0.200905, -0.451801,
		34.932545, 34.394691, 27.273888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319389, 35.239185, 27.871475>,  <34.324104, 34.535324, 27.590149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319389, 35.239185, 27.871475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.983894, 35.394497, 28.024183>,  <33.782597, 35.487686, 28.115808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.983894, 35.394497, 28.024183>,  <34.319389, 35.239185, 27.871475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983894, 35.394497, 28.024183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309354, -0.237200, 0.920889,
		0.448121, 0.890491, 0.078833,
		-0.838742, 0.388282, 0.381771,
		33.732273, 35.510983, 28.138714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475246, 35.493118, 28.545351>,  <34.319389, 35.239185, 27.871475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475246, 35.493118, 28.545351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.076027, 35.482800, 28.568073>,  <33.836494, 35.476608, 28.581707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.076027, 35.482800, 28.568073>,  <34.475246, 35.493118, 28.545351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076027, 35.482800, 28.568073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061404, -0.244983, 0.967581,
		-0.011049, 0.969184, 0.246090,
		-0.998052, -0.025802, 0.056805,
		33.776611, 35.475060, 28.585115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.414604, 35.698544, 29.158733>,  <34.475246, 35.493118, 28.545351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.414604, 35.698544, 29.158733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.052994, 35.550003, 29.074032>,  <33.836029, 35.460880, 29.023211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.052994, 35.550003, 29.074032>,  <34.414604, 35.698544, 29.158733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052994, 35.550003, 29.074032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129059, -0.235143, 0.963354,
		-0.407531, 0.898226, 0.164650,
		-0.904026, -0.371347, -0.211752,
		33.781788, 35.438599, 29.010506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968468, 36.064289, 29.584396>,  <34.414604, 35.698544, 29.158733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968468, 36.064289, 29.584396> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.754051, 35.739872, 29.490705>,  <33.625401, 35.545219, 29.434492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.754051, 35.739872, 29.490705>,  <33.968468, 36.064289, 29.584396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.754051, 35.739872, 29.490705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299173, -0.076937, 0.951092,
		-0.789400, 0.579901, -0.201401,
		-0.536044, -0.811046, -0.234225,
		33.593239, 35.496559, 29.420439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422630, 36.185051, 30.005030>,  <33.968468, 36.064289, 29.584396>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.422630, 36.185051, 30.005030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.418610, 35.803432, 29.885233>,  <33.416195, 35.574463, 29.813354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.418610, 35.803432, 29.885233>,  <33.422630, 36.185051, 30.005030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418610, 35.803432, 29.885233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334149, -0.279085, 0.900253,
		-0.942467, 0.109129, -0.315987,
		-0.010057, -0.954045, -0.299493,
		33.415592, 35.517220, 29.795385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731632, 35.953083, 30.024130>,  <33.422630, 36.185051, 30.005030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731632, 35.953083, 30.024130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.936310, 35.610119, 30.046120>,  <33.059116, 35.404343, 30.059315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.936310, 35.610119, 30.046120>,  <32.731632, 35.953083, 30.024130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936310, 35.610119, 30.046120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491787, -0.239824, 0.837036,
		-0.704497, -0.455341, -0.544378,
		0.511692, -0.857408, 0.054976,
		33.089817, 35.352898, 30.062613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.219498, 35.405327, 30.284456>,  <32.731632, 35.953083, 30.024130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.219498, 35.405327, 30.284456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.582382, 35.247139, 30.341820>,  <32.800114, 35.152225, 30.376238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.582382, 35.247139, 30.341820>,  <32.219498, 35.405327, 30.284456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582382, 35.247139, 30.341820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328831, -0.454064, 0.828068,
		-0.262358, -0.798393, -0.541976,
		0.907214, -0.395469, 0.143409,
		32.854546, 35.128498, 30.384842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.057835, 34.750950, 30.636927>,  <32.219498, 35.405327, 30.284456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.057835, 34.750950, 30.636927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.443352, 34.817081, 30.720602>,  <32.674664, 34.856762, 30.770807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.443352, 34.817081, 30.720602>,  <32.057835, 34.750950, 30.636927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443352, 34.817081, 30.720602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117491, -0.440945, 0.889811,
		0.239357, -0.882175, -0.405556,
		0.963797, 0.165334, 0.209191,
		32.732491, 34.866680, 30.783360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.304028, 34.154732, 31.032631>,  <32.057835, 34.750950, 30.636927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.304028, 34.154732, 31.032631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.560726, 34.455338, 31.093811>,  <32.714745, 34.635700, 31.130518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.560726, 34.455338, 31.093811>,  <32.304028, 34.154732, 31.032631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560726, 34.455338, 31.093811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084236, -0.129155, 0.988040,
		0.762279, -0.646953, -0.019580,
		0.641744, 0.751513, 0.152949,
		32.753250, 34.680790, 31.139696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780045, 33.997570, 31.640429>,  <32.304028, 34.154732, 31.032631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780045, 33.997570, 31.640429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.752941, 34.395969, 31.617132>,  <32.736679, 34.635010, 31.603153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.752941, 34.395969, 31.617132>,  <32.780045, 33.997570, 31.640429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.752941, 34.395969, 31.617132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111674, 0.050439, 0.992464,
		0.991432, 0.073749, 0.107810,
		-0.067755, 0.996001, -0.058242,
		32.732616, 34.694771, 31.599659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092297, 34.255188, 32.179779>,  <32.780045, 33.997570, 31.640429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092297, 34.255188, 32.179779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.905182, 34.598297, 32.094555>,  <32.792912, 34.804165, 32.043419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.905182, 34.598297, 32.094555>,  <33.092297, 34.255188, 32.179779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.905182, 34.598297, 32.094555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241709, 0.107719, 0.964351,
		0.850149, 0.502610, 0.156942,
		-0.467787, 0.857776, -0.213063,
		32.764847, 34.855629, 32.030636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366436, 34.725975, 32.601799>,  <33.092297, 34.255188, 32.179779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366436, 34.725975, 32.601799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.031075, 34.914101, 32.491611>,  <32.829857, 35.026978, 32.425499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.031075, 34.914101, 32.491611>,  <33.366436, 34.725975, 32.601799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.031075, 34.914101, 32.491611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105163, 0.356329, 0.928423,
		0.534810, 0.807362, -0.249288,
		-0.838402, 0.470315, -0.275473,
		32.779552, 35.055195, 32.408970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343830, 35.381283, 32.915409>,  <33.366436, 34.725975, 32.601799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343830, 35.381283, 32.915409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.952827, 35.372158, 32.831543>,  <32.718227, 35.366684, 32.781223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.952827, 35.372158, 32.831543>,  <33.343830, 35.381283, 32.915409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952827, 35.372158, 32.831543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198966, 0.429429, 0.880911,
		0.069938, 0.902813, -0.424309,
		-0.977508, -0.022814, -0.209662,
		32.659576, 35.365314, 32.768646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057076, 36.070644, 33.045753>,  <33.343830, 35.381283, 32.915409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057076, 36.070644, 33.045753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.756927, 35.806503, 33.057575>,  <32.576839, 35.648018, 33.064667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.756927, 35.806503, 33.057575>,  <33.057076, 36.070644, 33.045753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756927, 35.806503, 33.057575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291372, 0.370562, 0.881922,
		-0.593334, 0.653157, -0.470468,
		-0.750371, -0.660355, 0.029556,
		32.531815, 35.608398, 33.066441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724903, 36.635838, 32.990368>,  <33.057076, 36.070644, 33.045753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724903, 36.635838, 32.990368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.914463, 36.861237, 33.261040>,  <34.028198, 36.996475, 33.423443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.914463, 36.861237, 33.261040>,  <33.724903, 36.635838, 32.990368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.914463, 36.861237, 33.261040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335475, 0.594961, -0.730396,
		-0.814172, 0.573142, 0.092912,
		0.473899, 0.563498, 0.676675,
		34.056633, 37.030285, 33.464043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599888, 37.385563, 32.902115>,  <33.724903, 36.635838, 32.990368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599888, 37.385563, 32.902115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.939548, 37.435001, 33.107510>,  <34.143345, 37.464664, 33.230747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.939548, 37.435001, 33.107510>,  <33.599888, 37.385563, 32.902115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939548, 37.435001, 33.107510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353204, 0.589944, -0.726095,
		-0.392674, 0.797928, 0.457294,
		0.849149, 0.123600, 0.513487,
		34.194294, 37.472080, 33.261555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654057, 38.116405, 33.136341>,  <33.599888, 37.385563, 32.902115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654057, 38.116405, 33.136341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.009068, 37.939823, 33.083561>,  <34.222076, 37.833874, 33.051891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.009068, 37.939823, 33.083561>,  <33.654057, 38.116405, 33.136341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009068, 37.939823, 33.083561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224229, 0.664015, -0.713306,
		0.402507, 0.603493, 0.688320,
		0.887530, -0.441452, -0.131950,
		34.275326, 37.807388, 33.043976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107857, 38.556355, 33.236588>,  <33.654057, 38.116405, 33.136341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107857, 38.556355, 33.236588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.328106, 38.295750, 33.027840>,  <34.460255, 38.139385, 32.902592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.328106, 38.295750, 33.027840>,  <34.107857, 38.556355, 33.236588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328106, 38.295750, 33.027840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210035, 0.713194, -0.668760,
		0.807896, 0.258627, 0.529544,
		0.550627, -0.651511, -0.521866,
		34.493294, 38.100296, 32.871281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638931, 38.914055, 33.003555>,  <34.107857, 38.556355, 33.236588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638931, 38.914055, 33.003555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.623943, 38.609173, 32.745056>,  <34.614948, 38.426243, 32.589954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.623943, 38.609173, 32.745056>,  <34.638931, 38.914055, 33.003555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623943, 38.609173, 32.745056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228693, 0.623002, -0.748043,
		0.972777, -0.175824, 0.150966,
		-0.037472, -0.762204, -0.646251,
		34.612701, 38.380512, 32.551182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288780, 38.977585, 32.651360>,  <34.638931, 38.914055, 33.003555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288780, 38.977585, 32.651360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.023937, 38.780472, 32.425518>,  <34.865032, 38.662205, 32.290012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.023937, 38.780472, 32.425518>,  <35.288780, 38.977585, 32.651360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023937, 38.780472, 32.425518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307466, 0.508445, -0.804331,
		0.683428, -0.706153, -0.185135,
		-0.662111, -0.492780, -0.564603,
		34.825302, 38.632637, 32.256138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650860, 38.727169, 32.006111>,  <35.288780, 38.977585, 32.651360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.650860, 38.727169, 32.006111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.268780, 38.673798, 31.900438>,  <35.039532, 38.641777, 31.837036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.268780, 38.673798, 31.900438>,  <35.650860, 38.727169, 32.006111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268780, 38.673798, 31.900438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158420, 0.523468, -0.837188,
		0.249991, -0.841534, -0.478880,
		-0.955200, -0.133426, -0.264178,
		34.982220, 38.633770, 31.821184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753162, 38.554493, 31.286995>,  <35.650860, 38.727169, 32.006111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753162, 38.554493, 31.286995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.375122, 38.677258, 31.331890>,  <35.148300, 38.750916, 31.358828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.375122, 38.677258, 31.331890>,  <35.753162, 38.554493, 31.286995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375122, 38.677258, 31.331890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028960, 0.420762, -0.906709,
		-0.325507, -0.853677, -0.406549,
		-0.945096, 0.306913, 0.112238,
		35.091595, 38.769333, 31.365562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364586, 38.187855, 30.811199>,  <35.753162, 38.554493, 31.286995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.364586, 38.187855, 30.811199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.170063, 38.522171, 30.913149>,  <35.053349, 38.722759, 30.974319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.170063, 38.522171, 30.913149>,  <35.364586, 38.187855, 30.811199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170063, 38.522171, 30.913149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068420, 0.327218, -0.942469,
		-0.871104, -0.440893, -0.216314,
		-0.486310, 0.835788, 0.254875,
		35.024170, 38.772907, 30.989611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822895, 38.217300, 30.281324>,  <35.364586, 38.187855, 30.811199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822895, 38.217300, 30.281324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.891281, 38.583321, 30.427454>,  <34.932312, 38.802933, 30.515131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.891281, 38.583321, 30.427454>,  <34.822895, 38.217300, 30.281324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891281, 38.583321, 30.427454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221641, 0.325561, -0.919176,
		-0.960024, 0.238118, -0.147152,
		0.170965, 0.915046, 0.365323,
		34.942570, 38.857834, 30.537050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425850, 38.557083, 29.843071>,  <34.822895, 38.217300, 30.281324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425850, 38.557083, 29.843071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.666275, 38.835476, 30.000216>,  <34.810528, 39.002510, 30.094501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.666275, 38.835476, 30.000216>,  <34.425850, 38.557083, 29.843071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666275, 38.835476, 30.000216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165983, 0.372138, -0.913216,
		-0.781779, 0.614104, 0.108156,
		0.601058, 0.695982, 0.392860,
		34.846592, 39.044270, 30.118074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318184, 39.215183, 29.498207>,  <34.425850, 38.557083, 29.843071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318184, 39.215183, 29.498207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.663158, 39.281326, 29.689564>,  <34.870144, 39.321011, 29.804377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.663158, 39.281326, 29.689564>,  <34.318184, 39.215183, 29.498207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663158, 39.281326, 29.689564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338852, 0.513480, -0.788364,
		-0.376005, 0.842019, 0.386814,
		0.862439, 0.165356, 0.478390,
		34.921890, 39.330933, 29.833080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456402, 39.989990, 29.410172>,  <34.318184, 39.215183, 29.498207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456402, 39.989990, 29.410172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.814316, 39.820633, 29.466877>,  <35.029064, 39.719021, 29.500900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.814316, 39.820633, 29.466877>,  <34.456402, 39.989990, 29.410172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814316, 39.820633, 29.466877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292385, 0.315675, -0.902696,
		0.337442, 0.849170, 0.406255,
		0.894787, -0.423390, 0.141763,
		35.082752, 39.693615, 29.509405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025425, 40.453320, 29.072676>,  <34.456402, 39.989990, 29.410172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025425, 40.453320, 29.072676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.217293, 40.103588, 29.102259>,  <35.332413, 39.893749, 29.120008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.217293, 40.103588, 29.102259>,  <35.025425, 40.453320, 29.072676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217293, 40.103588, 29.102259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352495, 0.114826, -0.928742,
		0.803530, 0.471563, 0.363274,
		0.479674, -0.874324, 0.073958,
		35.361195, 39.841290, 29.124447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640705, 40.568386, 28.836157>,  <35.025425, 40.453320, 29.072676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.640705, 40.568386, 28.836157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.622360, 40.169304, 28.816261>,  <35.611355, 39.929855, 28.804325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.622360, 40.169304, 28.816261>,  <35.640705, 40.568386, 28.836157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622360, 40.169304, 28.816261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368356, 0.029391, -0.929220,
		0.928553, -0.060938, 0.366164,
		-0.045863, -0.997709, -0.049738,
		35.608601, 39.869991, 28.801340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336609, 40.354115, 28.799814>,  <35.640705, 40.568386, 28.836157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336609, 40.354115, 28.799814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.107174, 40.065285, 28.645100>,  <35.969513, 39.891987, 28.552271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.107174, 40.065285, 28.645100>,  <36.336609, 40.354115, 28.799814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107174, 40.065285, 28.645100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412737, 0.153105, -0.897890,
		0.707565, -0.674658, 0.210209,
		-0.573585, -0.722077, -0.386788,
		35.935097, 39.848663, 28.529064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714203, 40.049042, 28.345160>,  <36.336609, 40.354115, 28.799814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714203, 40.049042, 28.345160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.350567, 39.918243, 28.241913>,  <36.132385, 39.839764, 28.179964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.350567, 39.918243, 28.241913>,  <36.714203, 40.049042, 28.345160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350567, 39.918243, 28.241913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215902, 0.160079, -0.963203,
		0.356286, -0.931368, -0.074927,
		-0.909091, -0.326999, -0.258118,
		36.077839, 39.820145, 28.164478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867462, 39.590408, 27.839916>,  <36.714203, 40.049042, 28.345160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867462, 39.590408, 27.839916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.477264, 39.658947, 27.784719>,  <36.243145, 39.700069, 27.751600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.477264, 39.658947, 27.784719>,  <36.867462, 39.590408, 27.839916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477264, 39.658947, 27.784719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173204, 0.211382, -0.961935,
		-0.135654, -0.962267, -0.235880,
		-0.975499, 0.171345, -0.137994,
		36.184616, 39.710350, 27.743320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657768, 39.314190, 27.118248>,  <36.867462, 39.590408, 27.839916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657768, 39.314190, 27.118248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.376671, 39.590824, 27.185003>,  <36.208012, 39.756805, 27.225056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.376671, 39.590824, 27.185003>,  <36.657768, 39.314190, 27.118248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376671, 39.590824, 27.185003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137389, 0.362083, -0.921966,
		-0.698049, -0.624979, -0.349469,
		-0.702746, 0.691590, 0.166886,
		36.165848, 39.798302, 27.235069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.116077, 39.293839, 26.574739>,  <36.657768, 39.314190, 27.118248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.116077, 39.293839, 26.574739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.148052, 39.665703, 26.718596>,  <36.167236, 39.888821, 26.804909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.148052, 39.665703, 26.718596>,  <36.116077, 39.293839, 26.574739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148052, 39.665703, 26.718596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263820, 0.328197, -0.907021,
		-0.961254, 0.167386, -0.219027,
		0.079939, 0.929661, 0.359640,
		36.172035, 39.944599, 26.826488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796227, 39.749577, 26.058882>,  <36.116077, 39.293839, 26.574739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796227, 39.749577, 26.058882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.975571, 40.033199, 26.276583>,  <36.083179, 40.203373, 26.407204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.975571, 40.033199, 26.276583>,  <35.796227, 39.749577, 26.058882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975571, 40.033199, 26.276583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210062, 0.508247, -0.835200,
		-0.868817, 0.488800, 0.078934,
		0.448364, 0.709055, 0.544252,
		36.110081, 40.245914, 26.439857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445507, 40.516205, 25.843925>,  <35.796227, 39.749577, 26.058882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445507, 40.516205, 25.843925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.823658, 40.521709, 25.974203>,  <36.050549, 40.525013, 26.052370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.823658, 40.521709, 25.974203>,  <35.445507, 40.516205, 25.843925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823658, 40.521709, 25.974203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289932, 0.421205, -0.859376,
		-0.149012, 0.906861, 0.394206,
		0.945376, 0.013765, 0.325692,
		36.107269, 40.525841, 26.071911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691029, 41.155235, 25.556120>,  <35.445507, 40.516205, 25.843925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691029, 41.155235, 25.556120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.040051, 41.001091, 25.676216>,  <36.249462, 40.908604, 25.748274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.040051, 41.001091, 25.676216>,  <35.691029, 41.155235, 25.556120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040051, 41.001091, 25.676216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463182, 0.457266, -0.759191,
		0.155276, 0.801500, 0.577483,
		0.872554, -0.385364, 0.300238,
		36.301815, 40.885483, 25.766287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175289, 41.762451, 25.505196>,  <35.691029, 41.155235, 25.556120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175289, 41.762451, 25.505196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.398460, 41.430737, 25.492535>,  <36.532364, 41.231709, 25.484938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.398460, 41.430737, 25.492535>,  <36.175289, 41.762451, 25.505196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.398460, 41.430737, 25.492535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513847, 0.375152, -0.771506,
		0.651673, 0.414182, 0.635434,
		0.557928, -0.829286, -0.031650,
		36.565838, 41.181950, 25.483040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808479, 41.989265, 25.549757>,  <36.175289, 41.762451, 25.505196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.808479, 41.989265, 25.549757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.875900, 41.635094, 25.376501>,  <36.916351, 41.422592, 25.272547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.875900, 41.635094, 25.376501>,  <36.808479, 41.989265, 25.549757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875900, 41.635094, 25.376501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555059, 0.448391, -0.700610,
		0.814556, -0.122332, 0.567039,
		0.168548, -0.885426, -0.433142,
		36.926464, 41.369465, 25.246559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524384, 42.030903, 25.379988>,  <36.808479, 41.989265, 25.549757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524384, 42.030903, 25.379988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.349651, 41.750050, 25.155064>,  <37.244812, 41.581539, 25.020109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.349651, 41.750050, 25.155064>,  <37.524384, 42.030903, 25.379988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349651, 41.750050, 25.155064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491196, 0.337503, -0.803006,
		0.753596, -0.626981, 0.197452,
		-0.436829, -0.702130, -0.562311,
		37.218601, 41.539410, 24.986370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999683, 41.860802, 24.932808>,  <37.524384, 42.030903, 25.379988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999683, 41.860802, 24.932808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.676826, 41.724308, 24.740107>,  <37.483112, 41.642414, 24.624487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.676826, 41.724308, 24.740107>,  <37.999683, 41.860802, 24.932808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676826, 41.724308, 24.740107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342277, 0.394398, -0.852817,
		0.481014, -0.853234, -0.201536,
		-0.807138, -0.341236, -0.481753,
		37.434685, 41.621937, 24.595581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218605, 41.803589, 24.254370>,  <37.999683, 41.860802, 24.932808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218605, 41.803589, 24.254370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.821507, 41.772903, 24.217344>,  <37.583248, 41.754494, 24.195129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.821507, 41.772903, 24.217344>,  <38.218605, 41.803589, 24.254370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821507, 41.772903, 24.217344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050638, 0.431495, -0.900693,
		0.109031, -0.898848, -0.424481,
		-0.992748, -0.076709, -0.092562,
		37.523682, 41.749889, 24.189575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352436, 41.125149, 24.112814>,  <38.218605, 41.803589, 24.254370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352436, 41.125149, 24.112814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.727707, 41.010689, 24.034891>,  <38.952869, 40.942013, 23.988138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.727707, 41.010689, 24.034891>,  <38.352436, 41.125149, 24.112814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727707, 41.010689, 24.034891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149342, -0.173119, 0.973513,
		-0.312294, -0.942417, -0.119682,
		0.938174, -0.286148, -0.194806,
		39.009159, 40.924843, 23.976450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399086, 40.563828, 24.550423>,  <38.352436, 41.125149, 24.112814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399086, 40.563828, 24.550423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.775421, 40.655983, 24.451029>,  <39.001221, 40.711277, 24.391392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.775421, 40.655983, 24.451029>,  <38.399086, 40.563828, 24.550423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775421, 40.655983, 24.451029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310611, -0.293233, 0.904177,
		0.135451, -0.927865, -0.347447,
		0.940837, 0.230393, -0.248486,
		39.057671, 40.725101, 24.376482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738663, 39.893005, 24.639402>,  <38.399086, 40.563828, 24.550423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738663, 39.893005, 24.639402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.954720, 40.226849, 24.682619>,  <39.084354, 40.427155, 24.708549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.954720, 40.226849, 24.682619>,  <38.738663, 39.893005, 24.639402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954720, 40.226849, 24.682619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089096, -0.184368, 0.978811,
		0.836845, -0.519070, -0.173945,
		0.540142, 0.834610, 0.108041,
		39.116760, 40.477230, 24.715031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445656, 39.675583, 24.725599>,  <38.738663, 39.893005, 24.639402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445656, 39.675583, 24.725599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.417450, 40.039932, 24.888247>,  <39.400524, 40.258541, 24.985836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.417450, 40.039932, 24.888247>,  <39.445656, 39.675583, 24.725599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417450, 40.039932, 24.888247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138568, -0.412628, 0.900298,
		0.987839, 0.007142, 0.155315,
		-0.070518, 0.910872, 0.406620,
		39.396294, 40.313194, 25.010233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008358, 39.702316, 25.217762>,  <39.445656, 39.675583, 24.725599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008358, 39.702316, 25.217762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.752491, 39.990707, 25.324356>,  <39.598972, 40.163742, 25.388313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.752491, 39.990707, 25.324356>,  <40.008358, 39.702316, 25.217762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752491, 39.990707, 25.324356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090601, -0.273555, 0.957580,
		0.763292, 0.636678, 0.109663,
		-0.639669, 0.720978, 0.266486,
		39.560589, 40.207001, 25.404303>
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
