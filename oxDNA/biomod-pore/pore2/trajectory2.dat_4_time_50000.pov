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
	location <18.5, 18.5, 82.5562>
	look_at <18.5, 18.5, 18.5>
	direction <0, 0, -64.0562>
	angle 67.0682
}


# declare cpy_camera_pos = <18.5, 18.5, 82.5562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 29.6
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
	<22.475273, 16.836685, -1.707539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.399467, 17.228844, -1.685955>,  <22.353985, 17.464138, -1.673005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.399467, 17.228844, -1.685955>,  <22.475273, 16.836685, -1.707539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.399467, 17.228844, -1.685955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960970, -0.196477, 0.194764,
		0.201548, -0.014944, 0.979365,
		-0.189512, 0.980395, 0.053960,
		22.342613, 17.522963, -1.669767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.390760, 17.037291, -1.019990>,  <22.475273, 16.836685, -1.707539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.390760, 17.037291, -1.019990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.187473, 17.240273, -1.298329>,  <22.065500, 17.362062, -1.465332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.187473, 17.240273, -1.298329>,  <22.390760, 17.037291, -1.019990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.187473, 17.240273, -1.298329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860318, -0.336264, 0.383118,
		-0.039573, 0.793358, 0.607468,
		-0.508219, 0.507455, -0.695847,
		22.035007, 17.392509, -1.507083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.909399, 17.625324, -0.838602>,  <22.390760, 17.037291, -1.019990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.909399, 17.625324, -0.838602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.788013, 17.423737, -1.162065>,  <21.715183, 17.302784, -1.356142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.788013, 17.423737, -1.162065>,  <21.909399, 17.625324, -0.838602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.788013, 17.423737, -1.162065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783358, -0.351201, 0.512844,
		-0.542459, 0.789096, -0.288212,
		-0.303463, -0.503969, -0.808657,
		21.696974, 17.272545, -1.404661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.269844, 17.954521, -0.905151>,  <21.909399, 17.625324, -0.838602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.269844, 17.954521, -0.905151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.260532, 17.602390, -1.094670>,  <21.254946, 17.391111, -1.208381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.260532, 17.602390, -1.094670>,  <21.269844, 17.954521, -0.905151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.260532, 17.602390, -1.094670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934178, -0.149632, 0.323916,
		-0.356047, 0.450152, -0.818898,
		-0.023278, -0.880326, -0.473798,
		21.253550, 17.338293, -1.236809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.653395, 17.939459, -1.315228>,  <21.269844, 17.954521, -0.905151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.653395, 17.939459, -1.315228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.794277, 17.580467, -1.209033>,  <20.878807, 17.365072, -1.145317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.794277, 17.580467, -1.209033>,  <20.653395, 17.939459, -1.315228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.794277, 17.580467, -1.209033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898334, -0.244591, 0.364927,
		-0.262582, -0.367016, -0.892384,
		0.352203, -0.897482, 0.265478,
		20.899939, 17.311224, -1.129388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.369211, 17.407499, -1.664838>,  <20.653395, 17.939459, -1.315228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.369211, 17.407499, -1.664838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.479340, 17.278496, -1.302581>,  <20.545416, 17.201094, -1.085227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.479340, 17.278496, -1.302581>,  <20.369211, 17.407499, -1.664838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.479340, 17.278496, -1.302581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959017, -0.157772, 0.235362,
		0.066979, -0.933326, -0.352728,
		0.275320, -0.322507, 0.905642,
		20.561935, 17.181744, -1.030889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.004633, 16.748331, -1.471584>,  <20.369211, 17.407499, -1.664838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.004633, 16.748331, -1.471584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.096268, 16.951149, -1.139217>,  <20.151249, 17.072840, -0.939796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.096268, 16.951149, -1.139217>,  <20.004633, 16.748331, -1.471584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.096268, 16.951149, -1.139217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964221, 0.001216, 0.265095,
		0.133405, -0.861919, 0.489181,
		0.229086, 0.507044, 0.830919,
		20.164993, 17.103262, -0.889941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.763916, 16.352150, -0.829374>,  <20.004633, 16.748331, -1.471584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.763916, 16.352150, -0.829374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.758987, 16.748234, -0.773752>,  <19.756029, 16.985884, -0.740379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.758987, 16.748234, -0.773752>,  <19.763916, 16.352150, -0.829374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.758987, 16.748234, -0.773752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957153, -0.051919, 0.284891,
		0.289321, -0.129587, 0.948420,
		-0.012323, 0.990208, 0.139056,
		19.755291, 17.045296, -0.732035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.476458, 16.432232, -0.255943>,  <19.763916, 16.352150, -0.829374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.476458, 16.432232, -0.255943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.418072, 16.778702, -0.447124>,  <19.383041, 16.986584, -0.561833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.418072, 16.778702, -0.447124>,  <19.476458, 16.432232, -0.255943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.418072, 16.778702, -0.447124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973230, -0.039024, 0.226496,
		0.177533, 0.498219, 0.848681,
		-0.145963, 0.866173, -0.477954,
		19.374283, 17.038553, -0.590511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.211342, 16.970299, 0.252615>,  <19.476458, 16.432232, -0.255943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.211342, 16.970299, 0.252615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.084770, 16.962021, -0.126741>,  <19.008827, 16.957054, -0.354355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.084770, 16.962021, -0.126741>,  <19.211342, 16.970299, 0.252615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.084770, 16.962021, -0.126741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931971, -0.179681, 0.314873,
		-0.176924, 0.983507, 0.037571,
		-0.316430, -0.020694, -0.948390,
		18.989841, 16.955812, -0.411258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.119328, 17.678040, -0.004686>,  <19.211342, 16.970299, 0.252615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.119328, 17.678040, -0.004686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.106899, 17.903706, -0.334717>,  <19.099442, 18.039104, -0.532736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.106899, 17.903706, -0.334717>,  <19.119328, 17.678040, -0.004686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.106899, 17.903706, -0.334717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305152, 0.780712, 0.545318,
		0.951797, 0.268718, 0.147898,
		-0.031071, 0.564163, -0.825079,
		19.097578, 18.072954, -0.582241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.498426, 18.294840, 0.070649>,  <19.119328, 17.678040, -0.004686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.498426, 18.294840, 0.070649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.217873, 18.357483, -0.207498>,  <19.049540, 18.395069, -0.374386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.217873, 18.357483, -0.207498>,  <19.498426, 18.294840, 0.070649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.217873, 18.357483, -0.207498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289312, 0.829041, 0.478529,
		0.651428, 0.536811, -0.536168,
		-0.701385, 0.156607, -0.695366,
		19.007458, 18.404465, -0.416108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.449656, 18.976866, -0.167255>,  <19.498426, 18.294840, 0.070649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.449656, 18.976866, -0.167255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.075798, 18.835381, -0.181824>,  <18.851484, 18.750488, -0.190566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.075798, 18.835381, -0.181824>,  <19.449656, 18.976866, -0.167255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.075798, 18.835381, -0.181824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283705, 0.680035, 0.676065,
		-0.214365, 0.642213, -0.735941,
		-0.934644, -0.353715, -0.036423,
		18.795404, 18.729265, -0.192751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.869135, 19.458464, -0.383900>,  <19.449656, 18.976866, -0.167255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.869135, 19.458464, -0.383900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.731255, 19.181290, -0.130595>,  <18.648527, 19.014984, 0.021387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.731255, 19.181290, -0.130595>,  <18.869135, 19.458464, -0.383900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.731255, 19.181290, -0.130595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339373, 0.720968, 0.604179,
		-0.875219, -0.006652, -0.483681,
		-0.344699, -0.692937, 0.633262,
		18.627844, 18.973408, 0.059383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.052982, 19.482468, -0.277258>,  <18.869135, 19.458464, -0.383900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.052982, 19.482468, -0.277258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.274933, 19.355404, 0.030302>,  <18.408102, 19.279165, 0.214837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.274933, 19.355404, 0.030302>,  <18.052982, 19.482468, -0.277258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.274933, 19.355404, 0.030302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338980, 0.757701, 0.557658,
		-0.759742, -0.570071, 0.312748,
		0.554874, -0.317661, 0.768900,
		18.441395, 19.260105, 0.260971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.737759, 19.284370, 0.338284>,  <18.052982, 19.482468, -0.277258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.737759, 19.284370, 0.338284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.102478, 19.408112, 0.446305>,  <18.321310, 19.482357, 0.511117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.102478, 19.408112, 0.446305>,  <17.737759, 19.284370, 0.338284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.102478, 19.408112, 0.446305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409658, 0.639769, 0.650289,
		0.028398, -0.703560, 0.710068,
		0.911797, 0.309352, 0.270051,
		18.376017, 19.500917, 0.527320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.827950, 19.882002, 0.740509>,  <17.737759, 19.284370, 0.338284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.827950, 19.882002, 0.740509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.669216, 19.748959, 1.082712>,  <17.573977, 19.669132, 1.288034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.669216, 19.748959, 1.082712>,  <17.827950, 19.882002, 0.740509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.669216, 19.748959, 1.082712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761648, 0.400838, 0.509137,
		-0.512264, 0.853639, 0.094265,
		-0.396834, -0.332609, 0.855508,
		17.550165, 19.649176, 1.339364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.615582, 20.381660, 1.284919>,  <17.827950, 19.882002, 0.740509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.615582, 20.381660, 1.284919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.691784, 20.057980, 1.507234>,  <17.737505, 19.863771, 1.640623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.691784, 20.057980, 1.507234>,  <17.615582, 20.381660, 1.284919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.691784, 20.057980, 1.507234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681817, 0.516390, 0.518138,
		-0.706282, 0.280238, 0.650102,
		0.190504, -0.809202, 0.555788,
		17.748936, 19.815220, 1.673970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.617674, 20.473757, 1.924500>,  <17.615582, 20.381660, 1.284919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.617674, 20.473757, 1.924500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.859352, 20.155502, 1.941974>,  <18.004358, 19.964550, 1.952459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.859352, 20.155502, 1.941974>,  <17.617674, 20.473757, 1.924500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.859352, 20.155502, 1.941974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485959, 0.411369, 0.771116,
		-0.631500, -0.444675, 0.635195,
		0.604195, -0.795638, 0.043685,
		18.040611, 19.916811, 1.955080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.760555, 20.349653, 2.563853>,  <17.617674, 20.473757, 1.924500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.760555, 20.349653, 2.563853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.101055, 20.312042, 2.357345>,  <18.305355, 20.289474, 2.233441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.101055, 20.312042, 2.357345>,  <17.760555, 20.349653, 2.563853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.101055, 20.312042, 2.357345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509453, 0.383981, 0.770076,
		0.125827, -0.918541, 0.374767,
		0.851249, -0.094030, -0.516269,
		18.356430, 20.283833, 2.202465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.220667, 19.927933, 2.866352>,  <17.760555, 20.349653, 2.563853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.220667, 19.927933, 2.866352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.447998, 20.192276, 2.670284>,  <18.584396, 20.350882, 2.552642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.447998, 20.192276, 2.670284>,  <18.220667, 19.927933, 2.866352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.447998, 20.192276, 2.670284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336479, 0.356974, 0.871408,
		0.750857, -0.660177, -0.019488,
		0.568327, 0.660860, -0.490172,
		18.618496, 20.390533, 2.523232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.929157, 19.889635, 3.101897>,  <18.220667, 19.927933, 2.866352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.929157, 19.889635, 3.101897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.799267, 20.252258, 2.994044>,  <18.721333, 20.469833, 2.929332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.799267, 20.252258, 2.994044>,  <18.929157, 19.889635, 3.101897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.799267, 20.252258, 2.994044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347075, 0.379412, 0.857663,
		0.879825, 0.184923, -0.437849,
		-0.324726, 0.906560, -0.269634,
		18.701849, 20.524227, 2.913153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.361628, 20.533085, 3.263924>,  <18.929157, 19.889635, 3.101897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.361628, 20.533085, 3.263924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.984989, 20.666252, 3.243679>,  <18.759007, 20.746153, 3.231532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.984989, 20.666252, 3.243679>,  <19.361628, 20.533085, 3.263924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.984989, 20.666252, 3.243679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118308, 0.467773, 0.875895,
		0.315275, 0.818752, -0.479841,
		-0.941597, 0.332917, -0.050613,
		18.702511, 20.766127, 3.228496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.249485, 21.369390, 3.291962>,  <19.361628, 20.533085, 3.263924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.249485, 21.369390, 3.291962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.988621, 21.134159, 3.483313>,  <18.832102, 20.993019, 3.598124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.988621, 21.134159, 3.483313>,  <19.249485, 21.369390, 3.291962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.988621, 21.134159, 3.483313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254612, 0.424465, 0.868909,
		-0.714043, 0.688470, -0.127087,
		-0.652162, -0.588080, 0.478379,
		18.792973, 20.957735, 3.626827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.552029, 21.692701, 3.620943>,  <19.249485, 21.369390, 3.291962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.552029, 21.692701, 3.620943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.746563, 21.388237, 3.792576>,  <18.863283, 21.205559, 3.895555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.746563, 21.388237, 3.792576>,  <18.552029, 21.692701, 3.620943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.746563, 21.388237, 3.792576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252567, 0.592567, 0.764901,
		-0.836472, -0.263628, 0.480431,
		0.486338, -0.761160, 0.429083,
		18.892464, 21.159889, 3.921300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.410542, 21.584848, 4.362123>,  <18.552029, 21.692701, 3.620943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.410542, 21.584848, 4.362123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.783066, 21.454884, 4.296286>,  <19.006580, 21.376905, 4.256783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.783066, 21.454884, 4.296286>,  <18.410542, 21.584848, 4.362123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.783066, 21.454884, 4.296286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313106, 0.483338, 0.817526,
		-0.186069, -0.812907, 0.551870,
		0.931313, -0.324910, -0.164592,
		19.062460, 21.357410, 4.246908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.699118, 20.957430, 4.745265>,  <18.410542, 21.584848, 4.362123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.699118, 20.957430, 4.745265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.989716, 21.219372, 4.661960>,  <19.164074, 21.376537, 4.611977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.989716, 21.219372, 4.661960>,  <18.699118, 20.957430, 4.745265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.989716, 21.219372, 4.661960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141040, 0.154523, 0.977870,
		0.672543, -0.739790, 0.019900,
		0.726494, 0.654854, -0.208263,
		19.207664, 21.415829, 4.599481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.408047, 20.735687, 5.071112>,  <18.699118, 20.957430, 4.745265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.408047, 20.735687, 5.071112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.291107, 21.117760, 5.052503>,  <19.220943, 21.347002, 5.041337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.291107, 21.117760, 5.052503>,  <19.408047, 20.735687, 5.071112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.291107, 21.117760, 5.052503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089281, 0.075697, 0.993126,
		0.952135, 0.286184, -0.107409,
		-0.292348, 0.955180, -0.046523,
		19.203403, 21.404314, 5.038546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.837366, 21.259125, 5.500247>,  <19.408047, 20.735687, 5.071112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.837366, 21.259125, 5.500247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.457390, 21.376530, 5.457415>,  <19.229404, 21.446972, 5.431715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.457390, 21.376530, 5.457415>,  <19.837366, 21.259125, 5.500247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.457390, 21.376530, 5.457415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088410, 0.076199, 0.993165,
		0.299664, 0.952914, -0.046435,
		-0.949939, 0.293511, -0.107081,
		19.172407, 21.464582, 5.425290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.622599, 21.771067, 5.955105>,  <19.837366, 21.259125, 5.500247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.622599, 21.771067, 5.955105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.270653, 21.600483, 5.871233>,  <19.059484, 21.498133, 5.820910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.270653, 21.600483, 5.871233>,  <19.622599, 21.771067, 5.955105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.270653, 21.600483, 5.871233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260895, 0.064696, 0.963197,
		-0.397201, 0.902189, -0.168185,
		-0.879867, -0.426462, -0.209679,
		19.006693, 21.472544, 5.808329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.181238, 22.233784, 6.168479>,  <19.622599, 21.771067, 5.955105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.181238, 22.233784, 6.168479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.093296, 21.845657, 6.208774>,  <19.040531, 21.612782, 6.232950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.093296, 21.845657, 6.208774>,  <19.181238, 22.233784, 6.168479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.093296, 21.845657, 6.208774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192263, 0.144337, 0.970671,
		-0.956398, 0.194041, -0.218290,
		-0.219857, -0.970317, 0.100736,
		19.027338, 21.554562, 6.238995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.862194, 22.074135, 6.829450>,  <19.181238, 22.233784, 6.168479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.862194, 22.074135, 6.829450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.258320, 22.071152, 6.884911>,  <19.495995, 22.069363, 6.918187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.258320, 22.071152, 6.884911>,  <18.862194, 22.074135, 6.829450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.258320, 22.071152, 6.884911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125163, -0.480264, 0.868148,
		0.060117, -0.877092, -0.476545,
		0.990313, -0.007455, 0.138652,
		19.555414, 22.068914, 6.926506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.057032, 21.481230, 7.246622>,  <18.862194, 22.074135, 6.829450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.057032, 21.481230, 7.246622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.421982, 21.644970, 7.247044>,  <19.640953, 21.743214, 7.247296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.421982, 21.644970, 7.247044>,  <19.057032, 21.481230, 7.246622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.421982, 21.644970, 7.247044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194206, -0.435116, 0.879180,
		0.360352, -0.801939, -0.476488,
		0.912376, 0.409351, 0.001054,
		19.695694, 21.767775, 7.247360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.424831, 21.055309, 7.656211>,  <19.057032, 21.481230, 7.246622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.424831, 21.055309, 7.656211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.650379, 21.385647, 7.653882>,  <19.785707, 21.583849, 7.652485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.650379, 21.385647, 7.653882>,  <19.424831, 21.055309, 7.656211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.650379, 21.385647, 7.653882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413864, -0.276463, 0.867343,
		0.714681, -0.491477, -0.497676,
		0.563869, 0.825844, -0.005822,
		19.819540, 21.633400, 7.652135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.076241, 20.835268, 7.816914>,  <19.424831, 21.055309, 7.656211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.076241, 20.835268, 7.816914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.029121, 21.211090, 7.945512>,  <20.000851, 21.436583, 8.022671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.029121, 21.211090, 7.945512>,  <20.076241, 20.835268, 7.816914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.029121, 21.211090, 7.945512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335862, -0.266976, 0.903283,
		0.934516, 0.214382, -0.284112,
		-0.117797, 0.939555, 0.321496,
		19.993782, 21.492956, 8.041961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.723122, 20.977043, 8.090375>,  <20.076241, 20.835268, 7.816914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.723122, 20.977043, 8.090375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.431049, 21.199463, 8.249193>,  <20.255806, 21.332914, 8.344484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.431049, 21.199463, 8.249193>,  <20.723122, 20.977043, 8.090375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.431049, 21.199463, 8.249193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362569, -0.177209, 0.914954,
		0.579118, 0.812039, -0.072211,
		-0.730182, 0.556048, 0.397045,
		20.211994, 21.366278, 8.368307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.110086, 21.546337, 8.445744>,  <20.723122, 20.977043, 8.090375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.110086, 21.546337, 8.445744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.742939, 21.510273, 8.600345>,  <20.522650, 21.488634, 8.693106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.742939, 21.510273, 8.600345>,  <21.110086, 21.546337, 8.445744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.742939, 21.510273, 8.600345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391977, -0.053336, 0.918427,
		-0.062189, 0.994498, 0.084296,
		-0.917870, -0.090158, 0.386504,
		20.467577, 21.483225, 8.716296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.113535, 21.899084, 9.064449>,  <21.110086, 21.546337, 8.445744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.113535, 21.899084, 9.064449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.792347, 21.667442, 9.120850>,  <20.599634, 21.528458, 9.154690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.792347, 21.667442, 9.120850>,  <21.113535, 21.899084, 9.064449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.792347, 21.667442, 9.120850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316908, -0.214464, 0.923891,
		-0.504788, 0.786540, 0.355730,
		-0.802969, -0.579103, 0.141002,
		20.551456, 21.493711, 9.163150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.868227, 22.146376, 9.736220>,  <21.113535, 21.899084, 9.064449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.868227, 22.146376, 9.736220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.701935, 21.785896, 9.687217>,  <20.602160, 21.569609, 9.657814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.701935, 21.785896, 9.687217>,  <20.868227, 22.146376, 9.736220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.701935, 21.785896, 9.687217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246345, -0.241244, 0.938677,
		-0.875491, 0.360056, 0.322298,
		-0.415729, -0.901200, -0.122509,
		20.577217, 21.515537, 9.650464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.544512, 22.068096, 10.384896>,  <20.868227, 22.146376, 9.736220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.544512, 22.068096, 10.384896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.520733, 21.688938, 10.259704>,  <20.506466, 21.461443, 10.184588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.520733, 21.688938, 10.259704>,  <20.544512, 22.068096, 10.384896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.520733, 21.688938, 10.259704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193718, -0.318530, 0.927907,
		-0.979255, -0.005470, 0.202560,
		-0.059446, -0.947897, -0.312982,
		20.502899, 21.404570, 10.165809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.109459, 21.702007, 10.796593>,  <20.544512, 22.068096, 10.384896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.109459, 21.702007, 10.796593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.347820, 21.428310, 10.628443>,  <20.490837, 21.264093, 10.527553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.347820, 21.428310, 10.628443>,  <20.109459, 21.702007, 10.796593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.347820, 21.428310, 10.628443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216960, -0.366829, 0.904635,
		-0.773194, -0.630279, -0.070141,
		0.595903, -0.684241, -0.420375,
		20.526590, 21.223038, 10.502331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.984732, 21.141500, 11.086819>,  <20.109459, 21.702007, 10.796593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.984732, 21.141500, 11.086819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.333405, 21.051243, 10.912804>,  <20.542608, 20.997087, 10.808394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.333405, 21.051243, 10.912804>,  <19.984732, 21.141500, 11.086819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.333405, 21.051243, 10.912804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273015, -0.513604, 0.813433,
		-0.406984, -0.827825, -0.386094,
		0.871680, -0.225645, -0.435037,
		20.594910, 20.983549, 10.782292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.961704, 20.412352, 11.094607>,  <19.984732, 21.141500, 11.086819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.961704, 20.412352, 11.094607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.340069, 20.542019, 11.089393>,  <20.567087, 20.619820, 11.086264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.340069, 20.542019, 11.089393>,  <19.961704, 20.412352, 11.094607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.340069, 20.542019, 11.089393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144169, -0.384000, 0.912009,
		0.290639, -0.864557, -0.409964,
		0.945909, 0.324169, -0.013037,
		20.623842, 20.639269, 11.085482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.378387, 19.892197, 11.230283>,  <19.961704, 20.412352, 11.094607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.378387, 19.892197, 11.230283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.627411, 20.197392, 11.299875>,  <20.776825, 20.380508, 11.341631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.627411, 20.197392, 11.299875>,  <20.378387, 19.892197, 11.230283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.627411, 20.197392, 11.299875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241080, -0.398494, 0.884920,
		0.744513, -0.508972, -0.432028,
		0.622559, 0.762987, 0.173981,
		20.814178, 20.426289, 11.352070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.003332, 19.585443, 11.544293>,  <20.378387, 19.892197, 11.230283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.003332, 19.585443, 11.544293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.061207, 19.969501, 11.639948>,  <21.095932, 20.199936, 11.697341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.061207, 19.969501, 11.639948>,  <21.003332, 19.585443, 11.544293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.061207, 19.969501, 11.639948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375389, -0.276876, 0.884547,
		0.915505, -0.038213, -0.400489,
		0.144687, 0.960146, 0.239136,
		21.104612, 20.257545, 11.711689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.728983, 19.667542, 11.818014>,  <21.003332, 19.585443, 11.544293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.728983, 19.667542, 11.818014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.498466, 19.960030, 11.964004>,  <21.360157, 20.135523, 12.051598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.498466, 19.960030, 11.964004>,  <21.728983, 19.667542, 11.818014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.498466, 19.960030, 11.964004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275369, -0.246734, 0.929136,
		0.769454, 0.635956, -0.059165,
		-0.576292, 0.731220, 0.364974,
		21.325579, 20.179396, 12.073496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.089434, 19.962711, 12.267157>,  <21.728983, 19.667542, 11.818014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.089434, 19.962711, 12.267157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.717999, 20.074444, 12.364893>,  <21.495138, 20.141483, 12.423534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.717999, 20.074444, 12.364893>,  <22.089434, 19.962711, 12.267157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.717999, 20.074444, 12.364893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205844, -0.160171, 0.965388,
		0.308797, 0.946742, 0.091235,
		-0.928586, 0.279329, 0.244341,
		21.439423, 20.158243, 12.438195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.162495, 20.348577, 12.867741>,  <22.089434, 19.962711, 12.267157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.162495, 20.348577, 12.867741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.777672, 20.240326, 12.881644>,  <21.546778, 20.175375, 12.889987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.777672, 20.240326, 12.881644>,  <22.162495, 20.348577, 12.867741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.777672, 20.240326, 12.881644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096311, -0.217628, 0.971268,
		-0.255286, 0.937763, 0.235435,
		-0.962057, -0.270627, 0.034760,
		21.489056, 20.159138, 12.892072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.955477, 20.669146, 13.424082>,  <22.162495, 20.348577, 12.867741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.955477, 20.669146, 13.424082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.642941, 20.421799, 13.390316>,  <21.455420, 20.273390, 13.370056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.642941, 20.421799, 13.390316>,  <21.955477, 20.669146, 13.424082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.642941, 20.421799, 13.390316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069297, -0.048462, 0.996418,
		-0.620245, 0.784392, -0.004985,
		-0.781341, -0.618369, -0.084414,
		21.408539, 20.236288, 13.364992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.393173, 20.904116, 13.812407>,  <21.955477, 20.669146, 13.424082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.393173, 20.904116, 13.812407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.357780, 20.506557, 13.786035>,  <21.336546, 20.268023, 13.770211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.357780, 20.506557, 13.786035>,  <21.393173, 20.904116, 13.812407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.357780, 20.506557, 13.786035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059198, -0.060826, 0.996391,
		-0.994317, 0.092064, -0.053455,
		-0.088480, -0.993894, -0.065930,
		21.331236, 20.208389, 13.766255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.882277, 20.726044, 14.238350>,  <21.393173, 20.904116, 13.812407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.882277, 20.726044, 14.238350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.009384, 20.351048, 14.181590>,  <21.085649, 20.126051, 14.147534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.009384, 20.351048, 14.181590>,  <20.882277, 20.726044, 14.238350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.009384, 20.351048, 14.181590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292002, -0.239143, 0.926038,
		-0.902085, -0.252832, -0.349741,
		0.317770, -0.937489, -0.141900,
		21.104715, 20.069801, 14.139020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.302446, 20.308371, 14.386786>,  <20.882277, 20.726044, 14.238350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.302446, 20.308371, 14.386786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.657181, 20.139870, 14.462747>,  <20.870022, 20.038769, 14.508324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.657181, 20.139870, 14.462747>,  <20.302446, 20.308371, 14.386786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.657181, 20.139870, 14.462747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317623, -0.257242, 0.912657,
		-0.335609, -0.869696, -0.361932,
		0.886838, -0.421254, 0.189903,
		20.923233, 20.013494, 14.519717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.081074, 19.778625, 14.810834>,  <20.302446, 20.308371, 14.386786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.081074, 19.778625, 14.810834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.478462, 19.738689, 14.832921>,  <20.716894, 19.714727, 14.846173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.478462, 19.738689, 14.832921>,  <20.081074, 19.778625, 14.810834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.478462, 19.738689, 14.832921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084697, -0.321116, 0.943245,
		-0.076442, -0.941763, -0.327475,
		0.993470, -0.099840, 0.055218,
		20.776503, 19.708738, 14.849486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.259861, 19.142574, 15.176224>,  <20.081074, 19.778625, 14.810834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.259861, 19.142574, 15.176224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.579708, 19.377056, 15.228341>,  <20.771616, 19.517746, 15.259612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.579708, 19.377056, 15.228341>,  <20.259861, 19.142574, 15.176224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.579708, 19.377056, 15.228341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067461, -0.303287, 0.950508,
		0.596709, -0.751253, -0.282059,
		0.799617, 0.586205, 0.130294,
		20.819593, 19.552917, 15.267429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.688847, 18.756046, 15.627276>,  <20.259861, 19.142574, 15.176224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.688847, 18.756046, 15.627276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.821678, 19.131306, 15.666465>,  <20.901377, 19.356462, 15.689978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.821678, 19.131306, 15.666465>,  <20.688847, 18.756046, 15.627276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.821678, 19.131306, 15.666465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092270, -0.135675, 0.986447,
		0.938729, -0.318537, -0.131618,
		0.332077, 0.938151, 0.097971,
		20.921301, 19.412750, 15.695856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.054409, 18.666752, 16.176327>,  <20.688847, 18.756046, 15.627276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.054409, 18.666752, 16.176327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.029686, 19.065437, 16.155375>,  <21.014853, 19.304647, 16.142803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.029686, 19.065437, 16.155375>,  <21.054409, 18.666752, 16.176327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.029686, 19.065437, 16.155375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314578, 0.069263, 0.946701,
		0.947217, 0.042037, -0.317824,
		-0.061810, 0.996712, -0.052383,
		21.011143, 19.364450, 16.139660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.742569, 18.909187, 16.381968>,  <21.054409, 18.666752, 16.176327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.742569, 18.909187, 16.381968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.490097, 19.215050, 16.433985>,  <21.338614, 19.398567, 16.465195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.490097, 19.215050, 16.433985>,  <21.742569, 18.909187, 16.381968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.490097, 19.215050, 16.433985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341425, 0.123363, 0.931778,
		0.696450, 0.632518, -0.338938,
		-0.631179, 0.764658, 0.130041,
		21.300743, 19.444447, 16.472998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.133953, 19.447117, 16.709129>,  <21.742569, 18.909187, 16.381968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.133953, 19.447117, 16.709129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.752708, 19.528957, 16.798313>,  <21.523960, 19.578062, 16.851824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.752708, 19.528957, 16.798313>,  <22.133953, 19.447117, 16.709129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.752708, 19.528957, 16.798313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285804, 0.366506, 0.885432,
		0.099446, 0.907640, -0.407799,
		-0.953114, 0.204603, 0.222960,
		21.466774, 19.590338, 16.865202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.143848, 20.164169, 16.957920>,  <22.133953, 19.447117, 16.709129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.143848, 20.164169, 16.957920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.803383, 19.992432, 17.078711>,  <21.599104, 19.889389, 17.151184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.803383, 19.992432, 17.078711>,  <22.143848, 20.164169, 16.957920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.803383, 19.992432, 17.078711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233607, 0.205337, 0.950402,
		-0.470055, 0.879489, -0.074477,
		-0.851162, -0.429343, 0.301974,
		21.548035, 19.863628, 17.169302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.901991, 20.515528, 17.503349>,  <22.143848, 20.164169, 16.957920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.901991, 20.515528, 17.503349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.697933, 20.174553, 17.549137>,  <21.575499, 19.969969, 17.576609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.697933, 20.174553, 17.549137>,  <21.901991, 20.515528, 17.503349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.697933, 20.174553, 17.549137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036666, 0.154522, 0.987309,
		-0.859306, 0.499474, -0.110084,
		-0.510145, -0.852437, 0.114468,
		21.544889, 19.918821, 17.583477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.241240, 20.607439, 17.932575>,  <21.901991, 20.515528, 17.503349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.241240, 20.607439, 17.932575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.332172, 20.223484, 17.998222>,  <21.386732, 19.993111, 18.037611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.332172, 20.223484, 17.998222>,  <21.241240, 20.607439, 17.932575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.332172, 20.223484, 17.998222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101683, 0.144212, 0.984309,
		-0.968494, -0.240452, -0.064821,
		0.227331, -0.959889, 0.164118,
		21.400372, 19.935518, 18.047459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.909922, 20.398680, 18.507181>,  <21.241240, 20.607439, 17.932575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.909922, 20.398680, 18.507181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.155457, 20.083416, 18.489260>,  <21.302778, 19.894257, 18.478508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.155457, 20.083416, 18.489260>,  <20.909922, 20.398680, 18.507181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.155457, 20.083416, 18.489260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017093, -0.043469, 0.998908,
		-0.789248, -0.613932, -0.013211,
		0.613837, -0.788161, -0.044802,
		21.339607, 19.846968, 18.475819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.666241, 19.938583, 19.079241>,  <20.909922, 20.398680, 18.507181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.666241, 19.938583, 19.079241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.047527, 19.870483, 18.979330>,  <21.276300, 19.829622, 18.919384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.047527, 19.870483, 18.979330>,  <20.666241, 19.938583, 19.079241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.047527, 19.870483, 18.979330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238904, -0.081947, 0.967579,
		-0.185202, -0.981987, -0.037439,
		0.953218, -0.170253, -0.249777,
		21.333492, 19.819408, 18.904396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.932257, 19.397692, 19.355114>,  <20.666241, 19.938583, 19.079241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.932257, 19.397692, 19.355114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.285122, 19.572308, 19.284437>,  <21.496841, 19.677076, 19.242031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.285122, 19.572308, 19.284437>,  <20.932257, 19.397692, 19.355114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.285122, 19.572308, 19.284437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283360, -0.192338, 0.939528,
		0.376157, -0.878885, -0.293372,
		0.882164, 0.436540, -0.176691,
		21.549770, 19.703270, 19.231430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.502726, 18.957987, 19.493204>,  <20.932257, 19.397692, 19.355114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.502726, 18.957987, 19.493204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.628990, 19.336514, 19.521030>,  <21.704750, 19.563629, 19.537727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.628990, 19.336514, 19.521030>,  <21.502726, 18.957987, 19.493204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.628990, 19.336514, 19.521030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384466, -0.194585, 0.902398,
		0.867492, -0.258107, -0.425250,
		0.315663, 0.946318, 0.069568,
		21.723690, 19.620409, 19.541901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.978903, 18.879763, 20.014374>,  <21.502726, 18.957987, 19.493204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.978903, 18.879763, 20.014374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.967533, 19.278393, 19.983324>,  <21.960711, 19.517570, 19.964693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.967533, 19.278393, 19.983324>,  <21.978903, 18.879763, 20.014374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.967533, 19.278393, 19.983324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283357, 0.082505, 0.955459,
		0.958593, 0.005165, -0.284733,
		-0.028427, 0.996577, -0.077625,
		21.959005, 19.577366, 19.960037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.561764, 19.056879, 20.388073>,  <21.978903, 18.879763, 20.014374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.561764, 19.056879, 20.388073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.337543, 19.386738, 20.357767>,  <22.203011, 19.584654, 20.339582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.337543, 19.386738, 20.357767>,  <22.561764, 19.056879, 20.388073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.337543, 19.386738, 20.357767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113464, 0.167110, 0.979388,
		0.820310, 0.540400, -0.187241,
		-0.560551, 0.824647, -0.075766,
		22.169378, 19.634132, 20.335037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.910711, 19.563015, 20.839674>,  <22.561764, 19.056879, 20.388073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.910711, 19.563015, 20.839674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.541344, 19.706684, 20.785572>,  <22.319723, 19.792885, 20.753111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.541344, 19.706684, 20.785572>,  <22.910711, 19.563015, 20.839674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.541344, 19.706684, 20.785572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021092, 0.304391, 0.952314,
		0.383213, 0.882237, -0.273505,
		-0.923419, 0.359170, -0.135255,
		22.264318, 19.814436, 20.744995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.911583, 20.169207, 21.208721>,  <22.910711, 19.563015, 20.839674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.911583, 20.169207, 21.208721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.531857, 20.049290, 21.170933>,  <22.304020, 19.977339, 21.148260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.531857, 20.049290, 21.170933>,  <22.911583, 20.169207, 21.208721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.531857, 20.049290, 21.170933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149380, 0.165860, 0.974770,
		-0.276559, 0.939476, -0.202236,
		-0.949316, -0.299792, -0.094469,
		22.247063, 19.959352, 21.142591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.483057, 20.724171, 21.494003>,  <22.911583, 20.169207, 21.208721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.483057, 20.724171, 21.494003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.276661, 20.381573, 21.499197>,  <22.152822, 20.176014, 21.502314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.276661, 20.381573, 21.499197>,  <22.483057, 20.724171, 21.494003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.276661, 20.381573, 21.499197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193443, 0.131280, 0.972289,
		-0.834466, 0.499180, -0.233423,
		-0.515991, -0.856496, 0.012985,
		22.121864, 20.124624, 21.503092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.868666, 20.901794, 21.735186>,  <22.483057, 20.724171, 21.494003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.868666, 20.901794, 21.735186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.910870, 20.515911, 21.831692>,  <21.936192, 20.284382, 21.889595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.910870, 20.515911, 21.831692>,  <21.868666, 20.901794, 21.735186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.910870, 20.515911, 21.831692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075149, 0.249662, 0.965412,
		-0.991575, -0.083730, 0.098838,
		0.105511, -0.964706, 0.241267,
		21.942522, 20.226500, 21.904072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.376038, 20.838169, 22.205154>,  <21.868666, 20.901794, 21.735186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.376038, 20.838169, 22.205154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.636616, 20.539761, 22.260395>,  <21.792963, 20.360716, 22.293539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.636616, 20.539761, 22.260395>,  <21.376038, 20.838169, 22.205154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.636616, 20.539761, 22.260395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050565, 0.138928, 0.989011,
		-0.757009, -0.651269, 0.052781,
		0.651445, -0.746021, 0.138101,
		21.832048, 20.315954, 22.301825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.181982, 20.476557, 22.741533>,  <21.376038, 20.838169, 22.205154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.181982, 20.476557, 22.741533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.536434, 20.292107, 22.760038>,  <21.749105, 20.181437, 22.771141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.536434, 20.292107, 22.760038>,  <21.181982, 20.476557, 22.741533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.536434, 20.292107, 22.760038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099920, -0.092622, 0.990675,
		-0.452541, -0.882487, -0.128151,
		0.886128, -0.461126, 0.046263,
		21.802273, 20.153769, 22.773918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.029604, 19.902000, 23.253016>,  <21.181982, 20.476557, 22.741533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.029604, 19.902000, 23.253016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.420555, 19.986572, 23.255268>,  <21.655127, 20.037315, 23.256620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.420555, 19.986572, 23.255268>,  <21.029604, 19.902000, 23.253016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.420555, 19.986572, 23.255268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013773, -0.090192, 0.995829,
		0.211054, -0.973223, -0.091064,
		0.977378, 0.211428, 0.005632,
		21.713768, 20.050001, 23.256958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.288361, 19.535116, 23.797775>,  <21.029604, 19.902000, 23.253016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.288361, 19.535116, 23.797775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.572399, 19.801151, 23.705324>,  <21.742823, 19.960772, 23.649853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.572399, 19.801151, 23.705324>,  <21.288361, 19.535116, 23.797775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.572399, 19.801151, 23.705324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146527, 0.181485, 0.972416,
		0.688689, -0.724376, 0.031418,
		0.710097, 0.665088, -0.231127,
		21.785429, 20.000677, 23.635986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.639042, 19.722166, 24.415699>,  <21.288361, 19.535116, 23.797775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.639042, 19.722166, 24.415699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.880562, 19.915787, 24.162363>,  <22.025475, 20.031960, 24.010361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.880562, 19.915787, 24.162363>,  <21.639042, 19.722166, 24.415699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.880562, 19.915787, 24.162363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602595, 0.242947, 0.760168,
		0.521828, -0.840638, -0.144995,
		0.603800, 0.484050, -0.633341,
		22.061703, 20.061001, 23.972361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.318861, 19.478935, 24.538965>,  <21.639042, 19.722166, 24.415699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.318861, 19.478935, 24.538965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.346859, 19.829556, 24.348488>,  <22.363659, 20.039927, 24.234201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.346859, 19.829556, 24.348488>,  <22.318861, 19.478935, 24.538965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.346859, 19.829556, 24.348488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714268, 0.289197, 0.637327,
		0.696363, -0.384741, -0.605849,
		0.069996, 0.876550, -0.476194,
		22.367857, 20.092520, 24.205629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.086899, 19.668530, 24.467178>,  <22.318861, 19.478935, 24.538965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.086899, 19.668530, 24.467178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.870518, 20.002354, 24.425459>,  <22.740690, 20.202648, 24.400427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.870518, 20.002354, 24.425459>,  <23.086899, 19.668530, 24.467178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.870518, 20.002354, 24.425459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635465, 0.486802, 0.599339,
		0.550959, 0.257934, -0.793671,
		-0.540951, 0.834562, -0.104300,
		22.708233, 20.252722, 24.394169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.477945, 20.215084, 24.174139>,  <23.086899, 19.668530, 24.467178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.477945, 20.215084, 24.174139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.202187, 20.344311, 24.433481>,  <23.036732, 20.421846, 24.589087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.202187, 20.344311, 24.433481>,  <23.477945, 20.215084, 24.174139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.202187, 20.344311, 24.433481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720048, 0.403419, 0.564610,
		-0.079153, 0.856085, -0.510738,
		-0.689395, 0.323065, 0.648354,
		22.995367, 20.441231, 24.627987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.648808, 20.948301, 24.314363>,  <23.477945, 20.215084, 24.174139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.648808, 20.948301, 24.314363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.471592, 20.749752, 24.612982>,  <23.365263, 20.630623, 24.792152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.471592, 20.749752, 24.612982>,  <23.648808, 20.948301, 24.314363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.471592, 20.749752, 24.612982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586433, 0.469399, 0.660122,
		-0.678095, 0.730258, 0.083128,
		-0.443039, -0.496375, 0.746544,
		23.338680, 20.600840, 24.836945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.366150, 21.487980, 24.841927>,  <23.648808, 20.948301, 24.314363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.366150, 21.487980, 24.841927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.497452, 21.138649, 24.985899>,  <23.576233, 20.929050, 25.072283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.497452, 21.138649, 24.985899>,  <23.366150, 21.487980, 24.841927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.497452, 21.138649, 24.985899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513572, 0.484811, 0.707956,
		-0.792775, -0.047541, 0.607658,
		0.328256, -0.873326, 0.359930,
		23.595928, 20.876652, 25.093878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.115932, 21.411547, 25.523167>,  <23.366150, 21.487980, 24.841927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.115932, 21.411547, 25.523167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.473827, 21.253963, 25.439034>,  <23.688564, 21.159412, 25.388554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.473827, 21.253963, 25.439034>,  <23.115932, 21.411547, 25.523167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.473827, 21.253963, 25.439034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426331, 0.613226, 0.664978,
		-0.132992, -0.684653, 0.716634,
		0.894737, -0.393960, -0.210335,
		23.742249, 21.135775, 25.375933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.496525, 21.663780, 25.828966>,  <23.115932, 21.411547, 25.523167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.496525, 21.663780, 25.828966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.287785, 21.815754, 26.134468>,  <22.162540, 21.906939, 26.317770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.287785, 21.815754, 26.134468>,  <22.496525, 21.663780, 25.828966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.287785, 21.815754, 26.134468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810073, 0.059847, -0.583267,
		-0.267312, -0.923075, 0.276544,
		-0.521849, 0.379935, 0.763756,
		22.131229, 21.929735, 26.363594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.861181, 21.226921, 25.924519>,  <22.496525, 21.663780, 25.828966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.861181, 21.226921, 25.924519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.839939, 21.607361, 26.046232>,  <21.827194, 21.835625, 26.119261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.839939, 21.607361, 26.046232>,  <21.861181, 21.226921, 25.924519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.839939, 21.607361, 26.046232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773892, 0.153373, -0.614466,
		-0.631088, -0.268115, 0.727903,
		-0.053107, 0.951100, 0.304284,
		21.824007, 21.892691, 26.137518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.173014, 21.529194, 26.127514>,  <21.861181, 21.226921, 25.924519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.173014, 21.529194, 26.127514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.392323, 21.808254, 25.943045>,  <21.523909, 21.975691, 25.832363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.392323, 21.808254, 25.943045>,  <21.173014, 21.529194, 26.127514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.392323, 21.808254, 25.943045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691536, 0.068102, -0.719124,
		-0.470292, 0.713193, 0.519790,
		0.548273, 0.697652, -0.461171,
		21.556805, 22.017550, 25.804693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.726633, 21.925852, 25.787785>,  <21.173014, 21.529194, 26.127514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.726633, 21.925852, 25.787785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.059910, 22.070507, 25.620447>,  <21.259876, 22.157301, 25.520044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.059910, 22.070507, 25.620447>,  <20.726633, 21.925852, 25.787785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.059910, 22.070507, 25.620447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504842, 0.188719, -0.842330,
		-0.225669, 0.913019, 0.339809,
		0.833191, 0.361637, -0.418342,
		21.309868, 22.178999, 25.494944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.401695, 22.418453, 25.612640>,  <20.726633, 21.925852, 25.787785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.401695, 22.418453, 25.612640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.735203, 22.306911, 25.422031>,  <20.935307, 22.239986, 25.307667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.735203, 22.306911, 25.422031>,  <20.401695, 22.418453, 25.612640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.735203, 22.306911, 25.422031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491603, 0.017913, -0.870635,
		0.251315, 0.960167, -0.122150,
		0.833767, -0.278853, -0.476523,
		20.985332, 22.223255, 25.279074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.534452, 22.810349, 24.971455>,  <20.401695, 22.418453, 25.612640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.534452, 22.810349, 24.971455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.697216, 22.448425, 24.921251>,  <20.794874, 22.231272, 24.891129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.697216, 22.448425, 24.921251>,  <20.534452, 22.810349, 24.971455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.697216, 22.448425, 24.921251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423427, -0.065081, -0.903589,
		0.809405, 0.420822, -0.409601,
		0.406907, -0.904806, -0.125510,
		20.819288, 22.176983, 24.883598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.674232, 22.840858, 24.294609>,  <20.534452, 22.810349, 24.971455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.674232, 22.840858, 24.294609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.690754, 22.450794, 24.381651>,  <20.700666, 22.216755, 24.433876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.690754, 22.450794, 24.381651>,  <20.674232, 22.840858, 24.294609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.690754, 22.450794, 24.381651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218617, -0.221332, -0.950378,
		0.974936, -0.008315, -0.222330,
		0.041306, -0.975163, 0.217603,
		20.703146, 22.158245, 24.446932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.249685, 22.559832, 23.935026>,  <20.674232, 22.840858, 24.294609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.249685, 22.559832, 23.935026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.995846, 22.260578, 24.012571>,  <20.843542, 22.081026, 24.059099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.995846, 22.260578, 24.012571>,  <21.249685, 22.559832, 23.935026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.995846, 22.260578, 24.012571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149813, -0.127004, -0.980523,
		0.758184, -0.651280, -0.031484,
		-0.634596, -0.748134, 0.193863,
		20.805468, 22.036139, 24.070730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.398069, 22.172052, 23.416115>,  <21.249685, 22.559832, 23.935026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.398069, 22.172052, 23.416115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.042057, 22.053009, 23.554256>,  <20.828449, 21.981583, 23.637142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.042057, 22.053009, 23.554256>,  <21.398069, 22.172052, 23.416115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.042057, 22.053009, 23.554256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358614, -0.010698, -0.933425,
		0.281493, -0.954627, -0.097206,
		-0.890033, -0.297612, 0.345354,
		20.775047, 21.963726, 23.657864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.184280, 21.518068, 23.129810>,  <21.398069, 22.172052, 23.416115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.184280, 21.518068, 23.129810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.849335, 21.711975, 23.230862>,  <20.648367, 21.828320, 23.291492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.849335, 21.711975, 23.230862>,  <21.184280, 21.518068, 23.129810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.849335, 21.711975, 23.230862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357096, -0.135180, -0.924234,
		-0.413886, -0.864135, 0.286303,
		-0.837366, 0.484765, 0.252630,
		20.598125, 21.857405, 23.306650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.775215, 21.129822, 22.731190>,  <21.184280, 21.518068, 23.129810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.775215, 21.129822, 22.731190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.543995, 21.443386, 22.821823>,  <20.405262, 21.631525, 22.876204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.543995, 21.443386, 22.821823>,  <20.775215, 21.129822, 22.731190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.543995, 21.443386, 22.821823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468815, -0.091772, -0.878516,
		-0.667883, -0.614055, 0.420558,
		-0.578053, 0.783909, 0.226585,
		20.370579, 21.678558, 22.889799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.061646, 20.904224, 22.633869>,  <20.775215, 21.129822, 22.731190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.061646, 20.904224, 22.633869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.085045, 21.302498, 22.605049>,  <20.099085, 21.541462, 22.587757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.085045, 21.302498, 22.605049>,  <20.061646, 20.904224, 22.633869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.085045, 21.302498, 22.605049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629349, -0.019242, -0.776885,
		-0.774918, 0.090793, 0.625507,
		0.058500, 0.995684, -0.072051,
		20.102594, 21.601204, 22.583433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.410154, 21.087732, 22.383131>,  <20.061646, 20.904224, 22.633869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.410154, 21.087732, 22.383131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.599369, 21.436619, 22.333376>,  <19.712898, 21.645950, 22.303524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.599369, 21.436619, 22.333376>,  <19.410154, 21.087732, 22.383131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.599369, 21.436619, 22.333376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539987, 0.175463, -0.823181,
		-0.696168, 0.456563, 0.553986,
		0.473038, 0.872217, -0.124386,
		19.741280, 21.698284, 22.296061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.858248, 21.597895, 22.231583>,  <19.410154, 21.087732, 22.383131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.858248, 21.597895, 22.231583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.205814, 21.725189, 22.079948>,  <19.414354, 21.801567, 21.988968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.205814, 21.725189, 22.079948>,  <18.858248, 21.597895, 22.231583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.205814, 21.725189, 22.079948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445212, 0.167897, -0.879544,
		-0.216256, 0.933025, 0.287572,
		0.868919, 0.318237, -0.379085,
		19.466490, 21.820660, 21.966223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.669836, 22.111240, 21.768297>,  <18.858248, 21.597895, 22.231583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.669836, 22.111240, 21.768297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.041702, 22.025810, 21.648226>,  <19.264822, 21.974552, 21.576183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.041702, 22.025810, 21.648226>,  <18.669836, 22.111240, 21.768297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.041702, 22.025810, 21.648226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260359, 0.195586, -0.945494,
		0.260644, 0.957148, 0.126223,
		0.929665, -0.213574, -0.300181,
		19.320602, 21.961739, 21.558172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.778248, 22.634052, 21.276720>,  <18.669836, 22.111240, 21.768297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.778248, 22.634052, 21.276720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.004677, 22.309967, 21.215908>,  <19.140533, 22.115515, 21.179420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.004677, 22.309967, 21.215908>,  <18.778248, 22.634052, 21.276720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.004677, 22.309967, 21.215908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085518, 0.125711, -0.988374,
		0.819907, 0.572493, 0.001873,
		0.566073, -0.810215, -0.152030,
		19.174500, 22.066902, 21.170300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.082607, 23.003981, 20.812366>,  <18.778248, 22.634052, 21.276720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.082607, 23.003981, 20.812366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.133415, 22.609482, 20.770065>,  <19.163900, 22.372784, 20.744684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.133415, 22.609482, 20.770065>,  <19.082607, 23.003981, 20.812366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.133415, 22.609482, 20.770065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051515, 0.099914, -0.993662,
		0.990561, 0.131665, -0.038115,
		0.127022, -0.986246, -0.105753,
		19.171522, 22.313608, 20.738338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.233400, 22.930386, 20.089111>,  <19.082607, 23.003981, 20.812366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.233400, 22.930386, 20.089111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.279736, 22.545177, 20.186417>,  <19.307537, 22.314053, 20.244801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.279736, 22.545177, 20.186417>,  <19.233400, 22.930386, 20.089111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.279736, 22.545177, 20.186417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154633, -0.224442, -0.962141,
		0.981158, 0.149068, 0.122916,
		0.115837, -0.963018, 0.243264,
		19.314487, 22.256271, 20.259396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.891668, 22.495739, 19.814695>,  <19.233400, 22.930386, 20.089111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.891668, 22.495739, 19.814695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.586700, 22.242317, 19.867340>,  <19.403719, 22.090263, 19.898926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.586700, 22.242317, 19.867340>,  <19.891668, 22.495739, 19.814695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.586700, 22.242317, 19.867340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006195, -0.210527, -0.977568,
		0.647051, -0.744504, 0.164435,
		-0.762421, -0.633556, 0.131610,
		19.357973, 22.052250, 19.906824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.971870, 22.005835, 19.302771>,  <19.891668, 22.495739, 19.814695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.971870, 22.005835, 19.302771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.591900, 21.910439, 19.383532>,  <19.363918, 21.853201, 19.431988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.591900, 21.910439, 19.383532>,  <19.971870, 22.005835, 19.302771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.591900, 21.910439, 19.383532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136730, -0.263760, -0.954848,
		0.280974, -0.934641, 0.217944,
		-0.949926, -0.238488, 0.201903,
		19.306923, 21.838892, 19.444103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.891619, 21.405857, 19.108349>,  <19.971870, 22.005835, 19.302771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.891619, 21.405857, 19.108349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.509953, 21.525238, 19.117275>,  <19.280952, 21.596867, 19.122631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.509953, 21.525238, 19.117275>,  <19.891619, 21.405857, 19.108349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.509953, 21.525238, 19.117275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103413, -0.258802, -0.960379,
		-0.280864, -0.918662, 0.277804,
		-0.954160, 0.298464, 0.022314,
		19.223703, 21.614773, 19.123970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.584705, 20.975090, 18.671499>,  <19.891619, 21.405857, 19.108349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.584705, 20.975090, 18.671499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.322720, 21.276424, 18.695185>,  <19.165527, 21.457226, 18.709396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.322720, 21.276424, 18.695185>,  <19.584705, 20.975090, 18.671499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.322720, 21.276424, 18.695185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370075, -0.251452, -0.894324,
		-0.658837, -0.607664, 0.443483,
		-0.654964, 0.753336, 0.059216,
		19.126230, 21.502426, 18.712950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.889294, 20.771143, 18.351671>,  <19.584705, 20.975090, 18.671499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.889294, 20.771143, 18.351671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.901188, 21.170380, 18.330040>,  <18.908325, 21.409922, 18.317060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.901188, 21.170380, 18.330040>,  <18.889294, 20.771143, 18.351671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.901188, 21.170380, 18.330040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289244, -0.043197, -0.956280,
		-0.956794, 0.044079, 0.287408,
		0.029737, 0.998094, -0.054080,
		18.910109, 21.469809, 18.313816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.231142, 21.031727, 17.993368>,  <18.889294, 20.771143, 18.351671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.231142, 21.031727, 17.993368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.521294, 21.304306, 17.954468>,  <18.695385, 21.467854, 17.931128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.521294, 21.304306, 17.954468>,  <18.231142, 21.031727, 17.993368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.521294, 21.304306, 17.954468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241254, 0.119359, -0.963094,
		-0.644689, 0.722069, 0.250982,
		0.725378, 0.681446, -0.097252,
		18.738907, 21.508739, 17.925293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.925438, 21.606754, 17.576080>,  <18.231142, 21.031727, 17.993368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.925438, 21.606754, 17.576080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.321918, 21.641361, 17.536001>,  <18.559807, 21.662125, 17.511953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.321918, 21.641361, 17.536001>,  <17.925438, 21.606754, 17.576080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.321918, 21.641361, 17.536001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117249, 0.222371, -0.967886,
		-0.061456, 0.971116, 0.230558,
		0.991199, 0.086515, -0.100196,
		18.619278, 21.667316, 17.505943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.995974, 22.185656, 17.168907>,  <17.925438, 21.606754, 17.576080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.995974, 22.185656, 17.168907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.337593, 21.982430, 17.124235>,  <18.542564, 21.860495, 17.097433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.337593, 21.982430, 17.124235>,  <17.995974, 22.185656, 17.168907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.337593, 21.982430, 17.124235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065679, 0.318284, -0.945718,
		0.516032, 0.800353, 0.305199,
		0.854048, -0.508066, -0.111678,
		18.593807, 21.830009, 17.090733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.415932, 22.629217, 16.727835>,  <17.995974, 22.185656, 17.168907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.415932, 22.629217, 16.727835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.605480, 22.277180, 16.715965>,  <18.719210, 22.065958, 16.708843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.605480, 22.277180, 16.715965>,  <18.415932, 22.629217, 16.727835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.605480, 22.277180, 16.715965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267896, 0.176179, -0.947202,
		0.838854, 0.440904, 0.319260,
		0.473872, -0.880094, -0.029672,
		18.747643, 22.013151, 16.707064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.150347, 22.752958, 16.536137>,  <18.415932, 22.629217, 16.727835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.150347, 22.752958, 16.536137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.073822, 22.366100, 16.469170>,  <19.027908, 22.133986, 16.428989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.073822, 22.366100, 16.469170>,  <19.150347, 22.752958, 16.536137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.073822, 22.366100, 16.469170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319684, 0.099872, -0.942246,
		0.928010, -0.233782, 0.290075,
		-0.191310, -0.967146, -0.167419,
		19.016430, 22.075956, 16.418943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.630827, 22.622355, 16.081114>,  <19.150347, 22.752958, 16.536137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.630827, 22.622355, 16.081114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.381332, 22.312561, 16.038910>,  <19.231636, 22.126686, 16.013588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.381332, 22.312561, 16.038910>,  <19.630827, 22.622355, 16.081114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.381332, 22.312561, 16.038910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344000, -0.150784, -0.926784,
		0.701867, -0.614364, 0.360471,
		-0.623736, -0.774481, -0.105511,
		19.194212, 22.080217, 16.007257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.964975, 22.024857, 15.743688>,  <19.630827, 22.622355, 16.081114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.964975, 22.024857, 15.743688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.571877, 21.988266, 15.679385>,  <19.336018, 21.966312, 15.640803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.571877, 21.988266, 15.679385>,  <19.964975, 22.024857, 15.743688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.571877, 21.988266, 15.679385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158741, 0.028951, -0.986896,
		0.094934, -0.995386, -0.013930,
		-0.982745, -0.091479, -0.160757,
		19.277052, 21.960823, 15.631158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.955667, 21.592731, 15.177860>,  <19.964975, 22.024857, 15.743688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.955667, 21.592731, 15.177860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.577023, 21.714790, 15.219453>,  <19.349836, 21.788025, 15.244409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.577023, 21.714790, 15.219453>,  <19.955667, 21.592731, 15.177860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.577023, 21.714790, 15.219453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123585, -0.045588, -0.991286,
		-0.297746, -0.951214, 0.080866,
		-0.946612, 0.305145, 0.103982,
		19.293039, 21.806334, 15.250648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.554035, 21.144041, 14.762853>,  <19.955667, 21.592731, 15.177860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.554035, 21.144041, 14.762853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.343922, 21.482258, 14.801082>,  <19.217854, 21.685188, 14.824019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.343922, 21.482258, 14.801082>,  <19.554035, 21.144041, 14.762853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.343922, 21.482258, 14.801082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208675, -0.019115, -0.977798,
		-0.824944, -0.533565, 0.186484,
		-0.525284, 0.845543, 0.095573,
		19.186337, 21.735920, 14.829754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.855795, 21.023664, 14.383422>,  <19.554035, 21.144041, 14.762853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.855795, 21.023664, 14.383422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.899323, 21.419945, 14.416093>,  <18.925438, 21.657713, 14.435696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.899323, 21.419945, 14.416093>,  <18.855795, 21.023664, 14.383422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.899323, 21.419945, 14.416093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146550, 0.097257, -0.984411,
		-0.983200, 0.095151, 0.155771,
		0.108818, 0.990700, 0.081678,
		18.931969, 21.717155, 14.440597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.266838, 21.297195, 13.985748>,  <18.855795, 21.023664, 14.383422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.266838, 21.297195, 13.985748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.520042, 21.606003, 14.008674>,  <18.671965, 21.791286, 14.022429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.520042, 21.606003, 14.008674>,  <18.266838, 21.297195, 13.985748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.520042, 21.606003, 14.008674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300089, 0.312952, -0.901115,
		-0.713614, 0.553216, 0.429776,
		0.633011, 0.772019, 0.057313,
		18.709946, 21.837608, 14.025867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.885473, 21.862080, 13.787270>,  <18.266838, 21.297195, 13.985748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.885473, 21.862080, 13.787270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.265728, 21.973732, 13.733043>,  <18.493881, 22.040724, 13.700507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.265728, 21.973732, 13.733043>,  <17.885473, 21.862080, 13.787270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.265728, 21.973732, 13.733043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209885, 0.256594, -0.943455,
		-0.228562, 0.925336, 0.302512,
		0.950635, 0.279131, -0.135567,
		18.550919, 22.057470, 13.692372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.772396, 22.471916, 13.541195>,  <17.885473, 21.862080, 13.787270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.772396, 22.471916, 13.541195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.145599, 22.385635, 13.425976>,  <18.369520, 22.333868, 13.356845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.145599, 22.385635, 13.425976>,  <17.772396, 22.471916, 13.541195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.145599, 22.385635, 13.425976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135768, 0.530299, -0.836869,
		0.333264, 0.819913, 0.465488,
		0.933007, -0.215700, -0.288047,
		18.425501, 22.320925, 13.339561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.050068, 23.049223, 13.296955>,  <17.772396, 22.471916, 13.541195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.050068, 23.049223, 13.296955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.280022, 22.769405, 13.127182>,  <18.417994, 22.601515, 13.025318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.280022, 22.769405, 13.127182>,  <18.050068, 23.049223, 13.296955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.280022, 22.769405, 13.127182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135701, 0.430022, -0.892561,
		0.806902, 0.570717, 0.152285,
		0.574886, -0.699544, -0.424433,
		18.452488, 22.559542, 12.999852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.375254, 23.440062, 12.821553>,  <18.050068, 23.049223, 13.296955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.375254, 23.440062, 12.821553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.499302, 23.094528, 12.662748>,  <18.573730, 22.887209, 12.567466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.499302, 23.094528, 12.662748>,  <18.375254, 23.440062, 12.821553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.499302, 23.094528, 12.662748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002266, 0.418272, -0.908319,
		0.950695, 0.280789, 0.131672,
		0.310121, -0.863832, -0.397012,
		18.592339, 22.835379, 12.543645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.084614, 23.507427, 12.315344>,  <18.375254, 23.440062, 12.821553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.084614, 23.507427, 12.315344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.897316, 23.164154, 12.231186>,  <18.784937, 22.958189, 12.180692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.897316, 23.164154, 12.231186>,  <19.084614, 23.507427, 12.315344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.897316, 23.164154, 12.231186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057750, 0.207878, -0.976449,
		0.881710, -0.469367, -0.047777,
		-0.468244, -0.858185, -0.210394,
		18.756842, 22.906698, 12.168068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.428940, 23.138205, 11.704523>,  <19.084614, 23.507427, 12.315344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.428940, 23.138205, 11.704523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.057922, 22.989971, 11.723827>,  <18.835312, 22.901031, 11.735410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.057922, 22.989971, 11.723827>,  <19.428940, 23.138205, 11.704523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.057922, 22.989971, 11.723827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135566, 0.213313, -0.967533,
		0.348261, -0.903970, -0.248096,
		-0.927543, -0.370587, 0.048259,
		18.779659, 22.878796, 11.738305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.404753, 22.814831, 11.125805>,  <19.428940, 23.138205, 11.704523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.404753, 22.814831, 11.125805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.017250, 22.856319, 11.215915>,  <18.784748, 22.881212, 11.269980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.017250, 22.856319, 11.215915>,  <19.404753, 22.814831, 11.125805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.017250, 22.856319, 11.215915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198263, 0.221809, -0.954721,
		-0.148993, -0.969558, -0.194315,
		-0.968759, 0.103721, 0.225275,
		18.726622, 22.887436, 11.283497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.036070, 22.257629, 10.823727>,  <19.404753, 22.814831, 11.125805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.036070, 22.257629, 10.823727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.768620, 22.552681, 10.861342>,  <18.608149, 22.729712, 10.883912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.768620, 22.552681, 10.861342>,  <19.036070, 22.257629, 10.823727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.768620, 22.552681, 10.861342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217154, -0.072739, -0.973423,
		-0.711183, -0.671279, 0.208814,
		-0.668627, 0.737627, 0.094040,
		18.568031, 22.773970, 10.889555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.524332, 22.036020, 10.415241>,  <19.036070, 22.257629, 10.823727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.524332, 22.036020, 10.415241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.454338, 22.426395, 10.467278>,  <18.412342, 22.660622, 10.498499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.454338, 22.426395, 10.467278>,  <18.524332, 22.036020, 10.415241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.454338, 22.426395, 10.467278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168611, 0.100473, -0.980548,
		-0.970026, -0.193516, 0.146973,
		-0.174985, 0.975939, 0.130091,
		18.401842, 22.719177, 10.506305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.964571, 22.199139, 10.051028>,  <18.524332, 22.036020, 10.415241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.964571, 22.199139, 10.051028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.134296, 22.559235, 10.090075>,  <18.236132, 22.775291, 10.113503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.134296, 22.559235, 10.090075>,  <17.964571, 22.199139, 10.051028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.134296, 22.559235, 10.090075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331650, 0.254814, -0.908338,
		-0.842595, 0.353046, 0.406685,
		0.424315, 0.900238, 0.097617,
		18.261591, 22.829306, 10.119361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.391672, 22.754265, 9.860550>,  <17.964571, 22.199139, 10.051028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.391672, 22.754265, 9.860550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.760075, 22.907013, 9.829766>,  <17.981115, 22.998661, 9.811296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.760075, 22.907013, 9.829766>,  <17.391672, 22.754265, 9.860550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.760075, 22.907013, 9.829766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195184, 0.281405, -0.939529,
		-0.337122, 0.880333, 0.333710,
		0.921006, 0.381870, -0.076959,
		18.036377, 23.021574, 9.806679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.731218, 22.516304, 10.040864>,  <17.391672, 22.754265, 9.860550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.731218, 22.516304, 10.040864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.519920, 22.183315, 9.973990>,  <16.393141, 21.983522, 9.933867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.519920, 22.183315, 9.973990>,  <16.731218, 22.516304, 10.040864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.519920, 22.183315, 9.973990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223915, -0.053349, 0.973147,
		-0.819035, 0.551496, -0.158221,
		-0.528246, -0.832470, -0.167183,
		16.361446, 21.933575, 9.923836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.114580, 22.633755, 10.459798>,  <16.731218, 22.516304, 10.040864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.114580, 22.633755, 10.459798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.118191, 22.244495, 10.367796>,  <16.120358, 22.010941, 10.312595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.118191, 22.244495, 10.367796>,  <16.114580, 22.633755, 10.459798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.118191, 22.244495, 10.367796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282075, -0.223150, 0.933080,
		-0.959350, 0.056456, -0.276515,
		0.009027, -0.973148, -0.230004,
		16.120899, 21.952551, 10.298795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.398956, 22.301775, 10.495097>,  <16.114580, 22.633755, 10.459798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.398956, 22.301775, 10.495097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.676175, 22.021893, 10.564493>,  <15.842506, 21.853964, 10.606131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.676175, 22.021893, 10.564493>,  <15.398956, 22.301775, 10.495097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.676175, 22.021893, 10.564493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346725, -0.112538, 0.931191,
		-0.632035, -0.705513, -0.320599,
		0.693047, -0.699705, 0.173491,
		15.884089, 21.811981, 10.616541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.060700, 21.733747, 10.900377>,  <15.398956, 22.301775, 10.495097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.060700, 21.733747, 10.900377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.448199, 21.653889, 10.959262>,  <15.680698, 21.605974, 10.994593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.448199, 21.653889, 10.959262>,  <15.060700, 21.733747, 10.900377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.448199, 21.653889, 10.959262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216780, -0.392949, 0.893643,
		-0.120565, -0.897626, -0.423947,
		0.968747, -0.199645, 0.147211,
		15.738823, 21.593994, 11.003425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.047637, 21.142044, 11.300895>,  <15.060700, 21.733747, 10.900377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.047637, 21.142044, 11.300895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.419509, 21.286407, 11.330399>,  <15.642632, 21.373026, 11.348101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.419509, 21.286407, 11.330399>,  <15.047637, 21.142044, 11.300895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.419509, 21.286407, 11.330399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031127, -0.276487, 0.960513,
		0.367049, -0.890675, -0.268279,
		0.929681, 0.360907, 0.073761,
		15.698413, 21.394680, 11.352527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.409883, 20.599541, 11.603239>,  <15.047637, 21.142044, 11.300895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.409883, 20.599541, 11.603239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.588675, 20.946857, 11.689286>,  <15.695951, 21.155247, 11.740914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.588675, 20.946857, 11.689286>,  <15.409883, 20.599541, 11.603239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.588675, 20.946857, 11.689286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002260, -0.239381, 0.970923,
		0.894540, -0.434471, -0.105037,
		0.446981, 0.868292, 0.215118,
		15.722770, 21.207346, 11.753821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.144226, 20.442842, 11.806955>,  <15.409883, 20.599541, 11.603239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.144226, 20.442842, 11.806955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.009895, 20.784176, 11.966475>,  <15.929297, 20.988976, 12.062186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.009895, 20.784176, 11.966475>,  <16.144226, 20.442842, 11.806955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.009895, 20.784176, 11.966475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142571, -0.372459, 0.917032,
		0.931072, 0.364819, 0.003420,
		-0.335825, 0.853335, 0.398799,
		15.909148, 21.040176, 12.086114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.363291, 20.398380, 12.556765>,  <16.144226, 20.442842, 11.806955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.363291, 20.398380, 12.556765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.150421, 20.736973, 12.550357>,  <16.022699, 20.940128, 12.546513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.150421, 20.736973, 12.550357>,  <16.363291, 20.398380, 12.556765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.150421, 20.736973, 12.550357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011002, 0.025834, 0.999606,
		0.846563, 0.531789, -0.023061,
		-0.532175, 0.846483, -0.016019,
		15.990768, 20.990917, 12.545551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.802315, 21.032743, 12.934361>,  <16.363291, 20.398380, 12.556765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.802315, 21.032743, 12.934361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.405453, 21.078838, 12.953760>,  <16.167336, 21.106495, 12.965400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.405453, 21.078838, 12.953760>,  <16.802315, 21.032743, 12.934361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.405453, 21.078838, 12.953760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065543, 0.149049, 0.986655,
		0.106472, 0.982092, -0.155432,
		-0.992153, 0.115239, 0.048500,
		16.107807, 21.113411, 12.968310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.755522, 21.440981, 13.515141>,  <16.802315, 21.032743, 12.934361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.755522, 21.440981, 13.515141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.374619, 21.321835, 13.488378>,  <16.146076, 21.250347, 13.472320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.374619, 21.321835, 13.488378>,  <16.755522, 21.440981, 13.515141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.374619, 21.321835, 13.488378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075635, 0.017862, 0.996976,
		-0.295770, 0.954441, -0.039538,
		-0.952260, -0.297866, -0.066906,
		16.088940, 21.232475, 13.468306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.442230, 21.916258, 14.006309>,  <16.755522, 21.440981, 13.515141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.442230, 21.916258, 14.006309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.239334, 21.573631, 13.968358>,  <16.117598, 21.368055, 13.945588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.239334, 21.573631, 13.968358>,  <16.442230, 21.916258, 14.006309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.239334, 21.573631, 13.968358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127732, -0.034150, 0.991221,
		-0.852287, 0.514904, -0.092089,
		-0.507238, -0.856568, -0.094876,
		16.087162, 21.316662, 13.939896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.935813, 21.899147, 14.495391>,  <16.442230, 21.916258, 14.006309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.935813, 21.899147, 14.495391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.969087, 21.507889, 14.419168>,  <15.989051, 21.273134, 14.373433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.969087, 21.507889, 14.419168>,  <15.935813, 21.899147, 14.495391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.969087, 21.507889, 14.419168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020634, -0.192871, 0.981007,
		-0.996321, -0.077672, -0.036227,
		0.083184, -0.978145, -0.190559,
		15.994042, 21.214445, 14.362000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.344488, 21.519670, 14.841041>,  <15.935813, 21.899147, 14.495391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.344488, 21.519670, 14.841041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.652326, 21.265446, 14.816426>,  <15.837029, 21.112911, 14.801658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.652326, 21.265446, 14.816426>,  <15.344488, 21.519670, 14.841041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.652326, 21.265446, 14.816426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253246, -0.392271, 0.884302,
		-0.586166, -0.664970, -0.462842,
		0.769594, -0.635561, -0.061535,
		15.883204, 21.074778, 14.797966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.074523, 21.006498, 15.179370>,  <15.344488, 21.519670, 14.841041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.074523, 21.006498, 15.179370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.462207, 20.920074, 15.132125>,  <15.694818, 20.868221, 15.103778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.462207, 20.920074, 15.132125>,  <15.074523, 21.006498, 15.179370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.462207, 20.920074, 15.132125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030203, -0.371740, 0.927846,
		-0.244374, -0.902845, -0.353768,
		0.969210, -0.216056, -0.118113,
		15.752970, 20.855257, 15.096691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.152000, 20.253929, 15.400063>,  <15.074523, 21.006498, 15.179370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.152000, 20.253929, 15.400063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.505097, 20.441311, 15.414569>,  <15.716955, 20.553740, 15.423272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.505097, 20.441311, 15.414569>,  <15.152000, 20.253929, 15.400063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.505097, 20.441311, 15.414569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095298, -0.254086, 0.962475,
		0.460092, -0.846162, -0.268935,
		0.882742, 0.468456, 0.036265,
		15.769920, 20.581848, 15.425448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.596532, 19.816042, 15.765904>,  <15.152000, 20.253929, 15.400063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.596532, 19.816042, 15.765904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.721925, 20.193329, 15.809850>,  <15.797160, 20.419701, 15.836217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.721925, 20.193329, 15.809850>,  <15.596532, 19.816042, 15.765904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.721925, 20.193329, 15.809850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286085, -0.204129, 0.936209,
		0.905475, -0.262054, -0.333831,
		0.313482, 0.943217, 0.109864,
		15.815969, 20.476294, 15.842809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.323368, 19.592012, 15.995103>,  <15.596532, 19.816042, 15.765904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.323368, 19.592012, 15.995103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.298847, 19.980919, 16.085381>,  <16.284134, 20.214264, 16.139547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.298847, 19.980919, 16.085381>,  <16.323368, 19.592012, 15.995103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.298847, 19.980919, 16.085381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487253, -0.168194, 0.856910,
		0.871106, 0.162503, -0.463430,
		-0.061304, 0.972267, 0.225695,
		16.280457, 20.272598, 16.153090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.969534, 19.804489, 16.132421>,  <16.323368, 19.592012, 15.995103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.969534, 19.804489, 16.132421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.720951, 20.057888, 16.316799>,  <16.571800, 20.209929, 16.427425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.720951, 20.057888, 16.316799>,  <16.969534, 19.804489, 16.132421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.720951, 20.057888, 16.316799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476253, -0.161685, 0.864315,
		0.622071, 0.756661, -0.201226,
		-0.621459, 0.633500, 0.460942,
		16.534513, 20.247938, 16.455082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.379885, 20.183594, 16.483994>,  <16.969534, 19.804489, 16.132421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.379885, 20.183594, 16.483994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.033909, 20.213390, 16.682520>,  <16.826323, 20.231268, 16.801636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.033909, 20.213390, 16.682520>,  <17.379885, 20.183594, 16.483994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.033909, 20.213390, 16.682520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493015, -0.058904, 0.868024,
		0.093893, 0.995481, 0.014224,
		-0.864939, 0.074489, 0.496318,
		16.774427, 20.235737, 16.831415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.588287, 20.629616, 16.987946>,  <17.379885, 20.183594, 16.483994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.588287, 20.629616, 16.987946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.239597, 20.485703, 17.121002>,  <17.030382, 20.399355, 17.200836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.239597, 20.485703, 17.121002>,  <17.588287, 20.629616, 16.987946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.239597, 20.485703, 17.121002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370115, -0.038602, 0.928184,
		-0.321105, 0.932237, 0.166812,
		-0.871726, -0.359784, 0.332640,
		16.978079, 20.377768, 17.220795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.458708, 20.975964, 17.571573>,  <17.588287, 20.629616, 16.987946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.458708, 20.975964, 17.571573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.209465, 20.665180, 17.607512>,  <17.059919, 20.478710, 17.629074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.209465, 20.665180, 17.607512>,  <17.458708, 20.975964, 17.571573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.209465, 20.665180, 17.607512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204816, -0.051227, 0.977459,
		-0.754843, 0.627463, 0.191053,
		-0.623107, -0.776959, 0.089846,
		17.022533, 20.432093, 17.634466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.046118, 21.132151, 18.065258>,  <17.458708, 20.975964, 17.571573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.046118, 21.132151, 18.065258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.073620, 20.733635, 18.044559>,  <17.090122, 20.494526, 18.032141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.073620, 20.733635, 18.044559>,  <17.046118, 21.132151, 18.065258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.073620, 20.733635, 18.044559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231033, -0.034557, 0.972332,
		-0.970513, -0.078810, 0.227800,
		0.068757, -0.996291, -0.051746,
		17.094248, 20.434748, 18.029036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.689854, 20.966572, 18.609306>,  <17.046118, 21.132151, 18.065258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.689854, 20.966572, 18.609306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.898212, 20.631519, 18.543528>,  <17.023228, 20.430489, 18.504061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.898212, 20.631519, 18.543528>,  <16.689854, 20.966572, 18.609306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.898212, 20.631519, 18.543528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139743, -0.106369, 0.984458,
		-0.842104, -0.535780, 0.061646,
		0.520896, -0.837631, -0.164446,
		17.054482, 20.380230, 18.494194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.404457, 20.523914, 19.065578>,  <16.689854, 20.966572, 18.609306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.404457, 20.523914, 19.065578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.755268, 20.361546, 18.962778>,  <16.965755, 20.264124, 18.901098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.755268, 20.361546, 18.962778>,  <16.404457, 20.523914, 19.065578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.755268, 20.361546, 18.962778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181739, -0.214875, 0.959583,
		-0.444741, -0.888287, -0.114679,
		0.877027, -0.405924, -0.257001,
		17.018375, 20.239769, 18.885677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.504042, 19.874695, 19.413044>,  <16.404457, 20.523914, 19.065578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.504042, 19.874695, 19.413044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.886921, 19.960472, 19.335285>,  <17.116648, 20.011938, 19.288630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.886921, 19.960472, 19.335285>,  <16.504042, 19.874695, 19.413044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.886921, 19.960472, 19.335285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267596, -0.399685, 0.876724,
		0.110310, -0.891216, -0.439961,
		0.957196, 0.214443, -0.194397,
		17.174080, 20.024805, 19.276966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.884720, 19.252090, 19.463509>,  <16.504042, 19.874695, 19.413044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.884720, 19.252090, 19.463509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.133877, 19.557102, 19.533422>,  <17.283371, 19.740110, 19.575371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.133877, 19.557102, 19.533422>,  <16.884720, 19.252090, 19.463509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.133877, 19.557102, 19.533422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321385, -0.453126, 0.831498,
		0.713244, -0.461761, -0.527315,
		0.622893, 0.762532, 0.174786,
		17.320745, 19.785862, 19.585859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.515869, 18.990530, 19.763405>,  <16.884720, 19.252090, 19.463509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.515869, 18.990530, 19.763405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.593178, 19.372131, 19.855074>,  <17.639563, 19.601093, 19.910076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.593178, 19.372131, 19.855074>,  <17.515869, 18.990530, 19.763405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.593178, 19.372131, 19.855074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284036, -0.277978, 0.917634,
		0.939133, -0.112257, -0.324697,
		0.193270, 0.954005, 0.229173,
		17.651159, 19.658333, 19.923826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.086433, 18.950857, 20.084766>,  <17.515869, 18.990530, 19.763405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.086433, 18.950857, 20.084766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.953579, 19.303692, 20.218399>,  <17.873867, 19.515392, 20.298578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.953579, 19.303692, 20.218399>,  <18.086433, 18.950857, 20.084766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.953579, 19.303692, 20.218399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339860, -0.218480, 0.914747,
		0.879876, 0.417360, -0.227221,
		-0.332136, 0.882087, 0.334079,
		17.853939, 19.568317, 20.318623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.682590, 19.220943, 20.476910>,  <18.086433, 18.950857, 20.084766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.682590, 19.220943, 20.476910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.374607, 19.433205, 20.618654>,  <18.189817, 19.560562, 20.703701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.374607, 19.433205, 20.618654>,  <18.682590, 19.220943, 20.476910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.374607, 19.433205, 20.618654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289389, -0.204550, 0.935101,
		0.568698, 0.822537, 0.003930,
		-0.769959, 0.530652, 0.354360,
		18.143620, 19.592400, 20.724962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.962025, 19.727335, 21.007332>,  <18.682590, 19.220943, 20.476910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.962025, 19.727335, 21.007332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.575344, 19.677086, 21.096512>,  <18.343336, 19.646936, 21.150021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.575344, 19.677086, 21.096512>,  <18.962025, 19.727335, 21.007332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.575344, 19.677086, 21.096512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251486, -0.305093, 0.918517,
		-0.047365, 0.944000, 0.326526,
		-0.966701, -0.125623, 0.222952,
		18.285334, 19.639399, 21.163397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.912889, 19.976511, 21.621893>,  <18.962025, 19.727335, 21.007332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.912889, 19.976511, 21.621893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.584503, 19.749699, 21.595083>,  <18.387472, 19.613611, 21.578999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.584503, 19.749699, 21.595083>,  <18.912889, 19.976511, 21.621893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.584503, 19.749699, 21.595083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071222, -0.218163, 0.973310,
		-0.566519, 0.794280, 0.219490,
		-0.820965, -0.567031, -0.067023,
		18.338213, 19.579590, 21.574976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.431389, 20.256155, 22.148375>,  <18.912889, 19.976511, 21.621893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.431389, 20.256155, 22.148375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.345242, 19.872257, 22.076258>,  <18.293554, 19.641918, 22.032988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.345242, 19.872257, 22.076258>,  <18.431389, 20.256155, 22.148375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.345242, 19.872257, 22.076258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042104, -0.175327, 0.983609,
		-0.975625, 0.219428, -0.002650,
		-0.215367, -0.959745, -0.180293,
		18.280632, 19.584333, 22.022169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.920773, 20.108328, 22.550785>,  <18.431389, 20.256155, 22.148375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.920773, 20.108328, 22.550785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.096825, 19.759151, 22.466633>,  <18.202456, 19.549646, 22.416142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.096825, 19.759151, 22.466633>,  <17.920773, 20.108328, 22.550785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.096825, 19.759151, 22.466633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041643, -0.253886, 0.966337,
		-0.896969, -0.416552, -0.148094,
		0.440129, -0.872942, -0.210381,
		18.228863, 19.497269, 22.403519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.622778, 19.666437, 23.041822>,  <17.920773, 20.108328, 22.550785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.622778, 19.666437, 23.041822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.920208, 19.439251, 22.900677>,  <18.098665, 19.302940, 22.815989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.920208, 19.439251, 22.900677>,  <17.622778, 19.666437, 23.041822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.920208, 19.439251, 22.900677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142606, -0.380881, 0.913561,
		-0.653269, -0.729621, -0.202218,
		0.743575, -0.567963, -0.352866,
		18.143280, 19.268862, 22.794817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.530834, 19.030321, 23.398687>,  <17.622778, 19.666437, 23.041822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.530834, 19.030321, 23.398687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.913986, 19.037437, 23.284044>,  <18.143879, 19.041706, 23.215258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.913986, 19.037437, 23.284044>,  <17.530834, 19.030321, 23.398687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.913986, 19.037437, 23.284044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282205, -0.242935, 0.928085,
		-0.053116, -0.969879, -0.237724,
		0.957882, 0.017791, -0.286609,
		18.201351, 19.042774, 23.198061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.796276, 18.328436, 23.512976>,  <17.530834, 19.030321, 23.398687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.796276, 18.328436, 23.512976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.108814, 18.577480, 23.530222>,  <18.296337, 18.726906, 23.540569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.108814, 18.577480, 23.530222>,  <17.796276, 18.328436, 23.512976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.108814, 18.577480, 23.530222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256583, -0.383436, 0.887210,
		0.568917, -0.682154, -0.459346,
		0.781344, 0.622610, 0.043114,
		18.343218, 18.764263, 23.543156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.224167, 17.887163, 23.829103>,  <17.796276, 18.328436, 23.512976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.224167, 17.887163, 23.829103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.412849, 18.236462, 23.877983>,  <18.526060, 18.446041, 23.907310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.412849, 18.236462, 23.877983>,  <18.224167, 17.887163, 23.829103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.412849, 18.236462, 23.877983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301624, -0.290026, 0.908244,
		0.828562, -0.391568, -0.400200,
		0.471708, 0.873246, 0.122198,
		18.554361, 18.498436, 23.914642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.690222, 17.703857, 24.235983>,  <18.224167, 17.887163, 23.829103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.690222, 17.703857, 24.235983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.673664, 18.100925, 24.281406>,  <18.663729, 18.339167, 24.308661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.673664, 18.100925, 24.281406>,  <18.690222, 17.703857, 24.235983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.673664, 18.100925, 24.281406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161589, -0.105507, 0.981202,
		0.985990, 0.058967, -0.156037,
		-0.041396, 0.992669, 0.113558,
		18.661245, 18.398726, 24.315474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.527332, 17.155325, 23.763411>,  <18.690222, 17.703857, 24.235983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.527332, 17.155325, 23.763411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.512829, 16.757557, 23.803041>,  <18.504128, 16.518896, 23.826820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.512829, 16.757557, 23.803041>,  <18.527332, 17.155325, 23.763411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.512829, 16.757557, 23.803041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047845, -0.097300, -0.994104,
		0.998197, -0.040783, -0.044050,
		-0.036257, -0.994419, 0.099076,
		18.501951, 16.459230, 23.832764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.885784, 16.911425, 23.137253>,  <18.527332, 17.155325, 23.763411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.885784, 16.911425, 23.137253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.709614, 16.576065, 23.265699>,  <18.603912, 16.374849, 23.342768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.709614, 16.576065, 23.265699>,  <18.885784, 16.911425, 23.137253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.709614, 16.576065, 23.265699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116712, -0.301174, -0.946400,
		0.890171, -0.454296, 0.034793,
		-0.440425, -0.838397, 0.321118,
		18.577486, 16.324547, 23.362036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.232447, 16.317133, 22.891352>,  <18.885784, 16.911425, 23.137253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.232447, 16.317133, 22.891352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.854759, 16.212173, 22.970953>,  <18.628147, 16.149197, 23.018713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.854759, 16.212173, 22.970953>,  <19.232447, 16.317133, 22.891352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.854759, 16.212173, 22.970953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069137, -0.432865, -0.898803,
		0.321987, -0.862423, 0.390577,
		-0.944216, -0.262400, 0.199002,
		18.571495, 16.133453, 23.030653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.124922, 15.626931, 22.451588>,  <19.232447, 16.317133, 22.891352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.124922, 15.626931, 22.451588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.771595, 15.784817, 22.552740>,  <18.559599, 15.879548, 22.613432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.771595, 15.784817, 22.552740>,  <19.124922, 15.626931, 22.451588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.771595, 15.784817, 22.552740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342706, -0.175677, -0.922871,
		-0.319845, -0.901853, 0.290450,
		-0.883319, 0.394714, 0.252881,
		18.506599, 15.903231, 22.628605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.667274, 15.189149, 22.126381>,  <19.124922, 15.626931, 22.451588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.667274, 15.189149, 22.126381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.469173, 15.526413, 22.210098>,  <18.350313, 15.728771, 22.260328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.469173, 15.526413, 22.210098>,  <18.667274, 15.189149, 22.126381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.469173, 15.526413, 22.210098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537905, -0.108436, -0.836002,
		-0.682189, -0.526613, 0.507244,
		-0.495253, 0.843161, 0.209294,
		18.320597, 15.779361, 22.272886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.972914, 15.031053, 21.830462>,  <18.667274, 15.189149, 22.126381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.972914, 15.031053, 21.830462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.994762, 15.426113, 21.889198>,  <18.007872, 15.663149, 21.924440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.994762, 15.426113, 21.889198>,  <17.972914, 15.031053, 21.830462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.994762, 15.426113, 21.889198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600395, 0.149996, -0.785511,
		-0.797836, -0.045257, 0.601173,
		0.054624, 0.987650, 0.146844,
		18.011150, 15.722408, 21.933252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.329565, 15.393897, 21.842291>,  <17.972914, 15.031053, 21.830462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.329565, 15.393897, 21.842291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.546692, 15.712673, 21.736280>,  <17.676968, 15.903939, 21.672674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.546692, 15.712673, 21.736280>,  <17.329565, 15.393897, 21.842291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.546692, 15.712673, 21.736280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667829, 0.218228, -0.711605,
		-0.509271, 0.563261, 0.650677,
		0.542815, 0.796940, -0.265025,
		17.709536, 15.951756, 21.656773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.906536, 15.946664, 21.634436>,  <17.329565, 15.393897, 21.842291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.906536, 15.946664, 21.634436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.245117, 16.081295, 21.469398>,  <17.448267, 16.162073, 21.370377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.245117, 16.081295, 21.469398>,  <16.906536, 15.946664, 21.634436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.245117, 16.081295, 21.469398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509482, 0.286779, -0.811287,
		-0.154738, 0.896924, 0.414225,
		0.846454, 0.336577, -0.412591,
		17.499054, 16.182268, 21.345621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.760790, 16.595434, 21.289194>,  <16.906536, 15.946664, 21.634436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.760790, 16.595434, 21.289194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.086746, 16.486874, 21.084337>,  <17.282320, 16.421738, 20.961422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.086746, 16.486874, 21.084337>,  <16.760790, 16.595434, 21.289194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.086746, 16.486874, 21.084337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428661, 0.312541, -0.847684,
		0.390127, 0.910308, 0.138349,
		0.814893, -0.271399, -0.512144,
		17.331215, 16.405455, 20.930695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.910490, 17.166721, 20.822029>,  <16.760790, 16.595434, 21.289194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.910490, 17.166721, 20.822029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.139183, 16.875179, 20.671352>,  <17.276398, 16.700254, 20.580946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.139183, 16.875179, 20.671352>,  <16.910490, 17.166721, 20.822029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.139183, 16.875179, 20.671352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142534, 0.363914, -0.920462,
		0.807965, 0.579948, 0.104174,
		0.571731, -0.728853, -0.376692,
		17.310701, 16.656523, 20.558344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.449869, 17.545673, 20.309425>,  <16.910490, 17.166721, 20.822029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.449869, 17.545673, 20.309425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.436508, 17.160851, 20.201105>,  <17.428492, 16.929956, 20.136112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.436508, 17.160851, 20.201105>,  <17.449869, 17.545673, 20.309425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.436508, 17.160851, 20.201105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078238, 0.272638, -0.958930,
		0.996375, -0.010844, -0.084376,
		-0.033403, -0.962056, -0.270801,
		17.426487, 16.872234, 20.119865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.830786, 17.427708, 19.654169>,  <17.449869, 17.545673, 20.309425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.830786, 17.427708, 19.654169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.595749, 17.104641, 19.673815>,  <17.454727, 16.910801, 19.685602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.595749, 17.104641, 19.673815>,  <17.830786, 17.427708, 19.654169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.595749, 17.104641, 19.673815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172640, 0.065832, -0.982783,
		0.790527, -0.585954, -0.178118,
		-0.587591, -0.807666, 0.049117,
		17.419472, 16.862341, 19.688549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.122162, 17.123102, 19.131266>,  <17.830786, 17.427708, 19.654169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.122162, 17.123102, 19.131266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.762699, 16.958748, 19.192698>,  <17.547022, 16.860136, 19.229557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.762699, 16.958748, 19.192698>,  <18.122162, 17.123102, 19.131266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.762699, 16.958748, 19.192698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223892, 0.128578, -0.966095,
		0.377206, -0.902575, -0.207542,
		-0.898659, -0.410884, 0.153579,
		17.493101, 16.835484, 19.238771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.961502, 16.633099, 18.647123>,  <18.122162, 17.123102, 19.131266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.961502, 16.633099, 18.647123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.593884, 16.742607, 18.760548>,  <17.373312, 16.808313, 18.828602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.593884, 16.742607, 18.760548>,  <17.961502, 16.633099, 18.647123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.593884, 16.742607, 18.760548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250433, 0.149944, -0.956452,
		-0.304370, -0.950034, -0.069243,
		-0.919044, 0.273774, 0.283559,
		17.318171, 16.824739, 18.845615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.491518, 16.314274, 18.122240>,  <17.961502, 16.633099, 18.647123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.491518, 16.314274, 18.122240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.255569, 16.594467, 18.282927>,  <17.114000, 16.762583, 18.379339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.255569, 16.594467, 18.282927>,  <17.491518, 16.314274, 18.122240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.255569, 16.594467, 18.282927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312886, 0.260351, -0.913411,
		-0.744416, -0.664486, 0.065597,
		-0.589871, 0.700482, 0.401718,
		17.078608, 16.804611, 18.403442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.963917, 16.286934, 17.785643>,  <17.491518, 16.314274, 18.122240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.963917, 16.286934, 17.785643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.908768, 16.645100, 17.954983>,  <16.875679, 16.859999, 18.056587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.908768, 16.645100, 17.954983>,  <16.963917, 16.286934, 17.785643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.908768, 16.645100, 17.954983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319919, 0.364262, -0.874623,
		-0.937360, -0.256024, 0.236239,
		-0.137872, 0.895414, 0.423351,
		16.867407, 16.913723, 18.081987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.314228, 16.510286, 17.604506>,  <16.963917, 16.286934, 17.785643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.314228, 16.510286, 17.604506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.500862, 16.846710, 17.713991>,  <16.612843, 17.048565, 17.779682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.500862, 16.846710, 17.713991>,  <16.314228, 16.510286, 17.604506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.500862, 16.846710, 17.713991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334282, 0.454194, -0.825811,
		-0.818875, 0.293813, 0.493070,
		0.466584, 0.841060, 0.273712,
		16.640837, 17.099028, 17.796104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.831838, 17.210117, 17.655993>,  <16.314228, 16.510286, 17.604506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.831838, 17.210117, 17.655993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.208347, 17.324219, 17.583733>,  <16.434254, 17.392679, 17.540377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.208347, 17.324219, 17.583733>,  <15.831838, 17.210117, 17.655993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.208347, 17.324219, 17.583733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316648, 0.560045, -0.765561,
		-0.117206, 0.777805, 0.617481,
		0.941274, 0.285252, -0.180650,
		16.490730, 17.409794, 17.529537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.687785, 17.734579, 17.132860>,  <15.831838, 17.210117, 17.655993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.687785, 17.734579, 17.132860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.087334, 17.737370, 17.151649>,  <16.327063, 17.739044, 17.162924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.087334, 17.737370, 17.151649>,  <15.687785, 17.734579, 17.132860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.087334, 17.737370, 17.151649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037120, 0.502265, -0.863917,
		-0.029622, 0.864686, 0.501439,
		0.998872, 0.006977, 0.046975,
		16.386995, 17.739462, 17.165743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.908507, 18.416786, 16.990829>,  <15.687785, 17.734579, 17.132860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.908507, 18.416786, 16.990829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.210464, 18.165428, 16.915724>,  <16.391640, 18.014612, 16.870661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.210464, 18.165428, 16.915724>,  <15.908507, 18.416786, 16.990829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.210464, 18.165428, 16.915724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081830, 0.374299, -0.923691,
		0.650723, 0.681923, 0.333977,
		0.754893, -0.628396, -0.187763,
		16.436932, 17.976910, 16.859394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.371847, 18.891205, 16.649172>,  <15.908507, 18.416786, 16.990829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.371847, 18.891205, 16.649172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.472645, 18.522694, 16.530682>,  <16.533123, 18.301588, 16.459587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.472645, 18.522694, 16.530682>,  <16.371847, 18.891205, 16.649172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.472645, 18.522694, 16.530682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214853, 0.351726, -0.911113,
		0.943576, 0.165952, 0.286573,
		0.251996, -0.921276, -0.296225,
		16.548244, 18.246311, 16.441814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.009995, 18.933334, 16.256601>,  <16.371847, 18.891205, 16.649172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.009995, 18.933334, 16.256601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.854279, 18.586060, 16.133505>,  <16.760849, 18.377695, 16.059647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.854279, 18.586060, 16.133505>,  <17.009995, 18.933334, 16.256601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.854279, 18.586060, 16.133505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267899, 0.212939, -0.939621,
		0.881298, -0.448227, 0.149692,
		-0.389288, -0.868188, -0.307742,
		16.737492, 18.325603, 16.041182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.495258, 18.654385, 15.848708>,  <17.009995, 18.933334, 16.256601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.495258, 18.654385, 15.848708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.146011, 18.498890, 15.731030>,  <16.936462, 18.405594, 15.660424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.146011, 18.498890, 15.731030>,  <17.495258, 18.654385, 15.848708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.146011, 18.498890, 15.731030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219882, 0.224579, -0.949324,
		0.435107, -0.893559, -0.110608,
		-0.873117, -0.388737, -0.294194,
		16.884075, 18.382269, 15.642773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.646170, 18.417723, 15.249009>,  <17.495258, 18.654385, 15.848708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.646170, 18.417723, 15.249009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.247074, 18.443321, 15.257266>,  <17.007618, 18.458681, 15.262220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.247074, 18.443321, 15.257266>,  <17.646170, 18.417723, 15.249009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.247074, 18.443321, 15.257266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005238, 0.232087, -0.972681,
		-0.067040, -0.970587, -0.231227,
		-0.997736, 0.063998, 0.020643,
		16.947754, 18.462521, 15.263459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.527943, 18.112749, 14.680528>,  <17.646170, 18.417723, 15.249009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.527943, 18.112749, 14.680528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.195927, 18.313034, 14.778769>,  <16.996717, 18.433205, 14.837714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.195927, 18.313034, 14.778769>,  <17.527943, 18.112749, 14.680528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.195927, 18.313034, 14.778769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027727, 0.476888, -0.878527,
		-0.557016, -0.722402, -0.409719,
		-0.830039, 0.500714, 0.245603,
		16.946915, 18.463247, 14.852450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.983902, 17.993092, 14.163845>,  <17.527943, 18.112749, 14.680528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.983902, 17.993092, 14.163845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.884483, 18.329060, 14.356824>,  <16.824831, 18.530642, 14.472611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.884483, 18.329060, 14.356824>,  <16.983902, 17.993092, 14.163845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.884483, 18.329060, 14.356824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222907, 0.435111, -0.872348,
		-0.942622, -0.324362, 0.079079,
		-0.248548, 0.839922, 0.482448,
		16.809919, 18.581036, 14.501558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.323532, 17.818306, 14.163353>,  <16.983902, 17.993092, 14.163845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.323532, 17.818306, 14.163353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.355606, 18.209507, 14.086322>,  <16.374849, 18.444227, 14.040103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.355606, 18.209507, 14.086322>,  <16.323532, 17.818306, 14.163353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.355606, 18.209507, 14.086322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195559, -0.174009, -0.965131,
		-0.977408, 0.115048, 0.177304,
		0.080184, 0.978000, -0.192577,
		16.379662, 18.502907, 14.028549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.838364, 17.935507, 13.685068>,  <16.323532, 17.818306, 14.163353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.838364, 17.935507, 13.685068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.086403, 18.246304, 13.641686>,  <16.235226, 18.432781, 13.615658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.086403, 18.246304, 13.641686>,  <15.838364, 17.935507, 13.685068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.086403, 18.246304, 13.641686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109388, -0.051260, -0.992676,
		-0.776862, 0.627419, 0.053207,
		0.620097, 0.776992, -0.108454,
		16.272432, 18.479401, 13.609150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.513721, 18.471668, 13.309852>,  <15.838364, 17.935507, 13.685068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.513721, 18.471668, 13.309852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.909331, 18.508949, 13.263996>,  <16.146698, 18.531317, 13.236483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.909331, 18.508949, 13.263996>,  <15.513721, 18.471668, 13.309852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.909331, 18.508949, 13.263996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116324, 0.012833, -0.993128,
		-0.091090, 0.995565, 0.023534,
		0.989026, 0.093201, -0.114639,
		16.206039, 18.536909, 13.229605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.589561, 19.003223, 12.719245>,  <15.513721, 18.471668, 13.309852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.589561, 19.003223, 12.719245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.934834, 18.804031, 12.752545>,  <16.141998, 18.684517, 12.772526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.934834, 18.804031, 12.752545>,  <15.589561, 19.003223, 12.719245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.934834, 18.804031, 12.752545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114517, 0.032514, -0.992889,
		0.491733, 0.866579, 0.085092,
		0.863183, -0.497981, 0.083250,
		16.193789, 18.654636, 12.777520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.091684, 19.400372, 12.229626>,  <15.589561, 19.003223, 12.719245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.091684, 19.400372, 12.229626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.248127, 19.035908, 12.281507>,  <16.341993, 18.817230, 12.312635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.248127, 19.035908, 12.281507>,  <16.091684, 19.400372, 12.229626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.248127, 19.035908, 12.281507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137524, -0.081487, -0.987141,
		0.910012, 0.403915, 0.093436,
		0.391107, -0.911160, 0.129702,
		16.365459, 18.762560, 12.320417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.714697, 19.283802, 11.767733>,  <16.091684, 19.400372, 12.229626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.714697, 19.283802, 11.767733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.594452, 18.910557, 11.846657>,  <16.522305, 18.686609, 11.894011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.594452, 18.910557, 11.846657>,  <16.714697, 19.283802, 11.767733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.594452, 18.910557, 11.846657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055480, -0.223636, -0.973092,
		0.952132, -0.281575, 0.118996,
		-0.300610, -0.933115, 0.197309,
		16.504269, 18.630623, 11.905849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.108765, 18.792284, 11.395846>,  <16.714697, 19.283802, 11.767733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.108765, 18.792284, 11.395846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.801167, 18.550091, 11.477861>,  <16.616608, 18.404776, 11.527070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.801167, 18.550091, 11.477861>,  <17.108765, 18.792284, 11.395846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.801167, 18.550091, 11.477861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006854, -0.328533, -0.944468,
		0.639220, -0.724884, 0.256790,
		-0.768993, -0.605483, 0.205037,
		16.570469, 18.368446, 11.539372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.344942, 18.175064, 11.180719>,  <17.108765, 18.792284, 11.395846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.344942, 18.175064, 11.180719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.946552, 18.141216, 11.192571>,  <16.707520, 18.120907, 11.199681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.946552, 18.141216, 11.192571>,  <17.344942, 18.175064, 11.180719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.946552, 18.141216, 11.192571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004155, -0.286529, -0.958063,
		0.089562, -0.954327, 0.285023,
		-0.995972, -0.084622, 0.029628,
		16.647760, 18.115829, 11.201459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.152866, 17.475721, 10.848653>,  <17.344942, 18.175064, 11.180719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.152866, 17.475721, 10.848653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.819332, 17.696472, 10.843724>,  <16.619211, 17.828922, 10.840767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.819332, 17.696472, 10.843724>,  <17.152866, 17.475721, 10.848653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.819332, 17.696472, 10.843724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192185, -0.311154, -0.930725,
		-0.517480, -0.773702, 0.365513,
		-0.833834, 0.551877, -0.012322,
		16.569181, 17.862036, 10.840028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.657019, 17.062185, 10.505816>,  <17.152866, 17.475721, 10.848653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.657019, 17.062185, 10.505816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.535126, 17.441868, 10.474463>,  <16.461990, 17.669678, 10.455650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.535126, 17.441868, 10.474463>,  <16.657019, 17.062185, 10.505816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.535126, 17.441868, 10.474463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365839, -0.192638, -0.910523,
		-0.879375, -0.248790, 0.405960,
		-0.304732, 0.949207, -0.078384,
		16.443707, 17.726629, 10.450948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.038357, 16.968403, 10.074003>,  <16.657019, 17.062185, 10.505816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.038357, 16.968403, 10.074003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.159500, 17.349613, 10.072335>,  <16.232185, 17.578341, 10.071335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.159500, 17.349613, 10.072335>,  <16.038357, 16.968403, 10.074003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.159500, 17.349613, 10.072335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349824, 0.107097, -0.930674,
		-0.886510, 0.283320, 0.365826,
		0.302858, 0.953027, -0.004169,
		16.250357, 17.635521, 10.071084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.677610, 17.372213, 9.599720>,  <16.038357, 16.968403, 10.074003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.677610, 17.372213, 9.599720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.005253, 17.598434, 9.638126>,  <16.201838, 17.734167, 9.661170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.005253, 17.598434, 9.638126>,  <15.677610, 17.372213, 9.599720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.005253, 17.598434, 9.638126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045485, 0.102820, -0.993659,
		-0.571837, 0.818279, 0.058496,
		0.819105, 0.565551, 0.096015,
		16.250984, 17.768099, 9.666931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.433035, 17.938374, 9.211105>,  <15.677610, 17.372213, 9.599720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.433035, 17.938374, 9.211105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.829652, 17.975750, 9.247128>,  <16.067623, 17.998177, 9.268741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.829652, 17.975750, 9.247128>,  <15.433035, 17.938374, 9.211105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.829652, 17.975750, 9.247128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048915, 0.373656, -0.926277,
		-0.120204, 0.922849, 0.365925,
		0.991543, 0.093442, 0.090056,
		16.127115, 18.003782, 9.274144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.539536, 18.471251, 8.837756>,  <15.433035, 17.938374, 9.211105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.539536, 18.471251, 8.837756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.918809, 18.344913, 8.851570>,  <16.146374, 18.269112, 8.859859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.918809, 18.344913, 8.851570>,  <15.539536, 18.471251, 8.837756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.918809, 18.344913, 8.851570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147490, 0.341275, -0.928320,
		0.281418, 0.885310, 0.370175,
		0.948183, -0.315843, 0.034534,
		16.203264, 18.250160, 8.861930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.940484, 18.794537, 8.264032>,  <15.539536, 18.471251, 8.837756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.940484, 18.794537, 8.264032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.245052, 18.562550, 8.379878>,  <16.427794, 18.423357, 8.449386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.245052, 18.562550, 8.379878>,  <15.940484, 18.794537, 8.264032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.245052, 18.562550, 8.379878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433199, 0.122857, -0.892885,
		0.482264, 0.805322, 0.344788,
		0.761420, -0.579968, 0.289615,
		16.473478, 18.388559, 8.466763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.674885, 19.125702, 8.118334>,  <15.940484, 18.794537, 8.264032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.674885, 19.125702, 8.118334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.688927, 18.726173, 8.131769>,  <16.697351, 18.486456, 8.139831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.688927, 18.726173, 8.131769>,  <16.674885, 19.125702, 8.118334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.688927, 18.726173, 8.131769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376784, -0.017901, -0.926128,
		0.925636, 0.045167, 0.375711,
		0.035105, -0.998819, 0.033587,
		16.699457, 18.426527, 8.141846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.354521, 18.967052, 7.905064>,  <16.674885, 19.125702, 8.118334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.354521, 18.967052, 7.905064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.137604, 18.636570, 7.844000>,  <17.007454, 18.438280, 7.807362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.137604, 18.636570, 7.844000>,  <17.354521, 18.967052, 7.905064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.137604, 18.636570, 7.844000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397772, -0.092420, -0.912817,
		0.740066, -0.555736, 0.378760,
		-0.542290, -0.826205, -0.152660,
		16.974916, 18.388708, 7.798202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.863585, 18.388874, 7.680837>,  <17.354521, 18.967052, 7.905064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.863585, 18.388874, 7.680837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.504387, 18.280350, 7.542272>,  <17.288868, 18.215235, 7.459133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.504387, 18.280350, 7.542272>,  <17.863585, 18.388874, 7.680837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.504387, 18.280350, 7.542272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380701, -0.084310, -0.920847,
		0.220629, -0.958792, 0.178998,
		-0.897992, -0.271310, -0.346412,
		17.234989, 18.198957, 7.438348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.927292, 17.788576, 7.206655>,  <17.863585, 18.388874, 7.680837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.927292, 17.788576, 7.206655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.612732, 18.023258, 7.129350>,  <17.423996, 18.164068, 7.082967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.612732, 18.023258, 7.129350>,  <17.927292, 17.788576, 7.206655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.612732, 18.023258, 7.129350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189359, -0.068836, -0.979492,
		-0.587976, -0.806870, -0.056965,
		-0.786401, 0.586705, -0.193262,
		17.376812, 18.199270, 7.071371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.440117, 17.491314, 6.668701>,  <17.927292, 17.788576, 7.206655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.440117, 17.491314, 6.668701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.432190, 17.891232, 6.667015>,  <17.427433, 18.131182, 6.666004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.432190, 17.891232, 6.667015>,  <17.440117, 17.491314, 6.668701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.432190, 17.891232, 6.667015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352022, 0.003032, -0.935987,
		-0.935782, -0.020033, -0.352010,
		-0.019818, 0.999795, -0.004215,
		17.426245, 18.191170, 6.665751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.402430, 17.362019, 5.941973>,  <17.440117, 17.491314, 6.668701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.402430, 17.362019, 5.941973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.291180, 17.729290, 6.054822>,  <17.224430, 17.949654, 6.122531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.291180, 17.729290, 6.054822>,  <17.402430, 17.362019, 5.941973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.291180, 17.729290, 6.054822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216969, 0.346171, -0.912737,
		-0.935719, -0.192644, -0.295496,
		-0.278126, 0.918179, 0.282121,
		17.207743, 18.004744, 6.139458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.860519, 17.738958, 5.592254>,  <17.402430, 17.362019, 5.941973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.860519, 17.738958, 5.592254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.120689, 18.021145, 5.704871>,  <17.276791, 18.190456, 5.772442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.120689, 18.021145, 5.704871>,  <16.860519, 17.738958, 5.592254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.120689, 18.021145, 5.704871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124402, 0.266719, -0.955712,
		-0.749315, 0.656642, 0.085719,
		0.650424, 0.705466, 0.281544,
		17.315817, 18.232784, 5.789334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.587475, 18.424093, 5.226832>,  <16.860519, 17.738958, 5.592254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.587475, 18.424093, 5.226832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.977345, 18.402843, 5.313722>,  <17.211267, 18.390093, 5.365855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.977345, 18.402843, 5.313722>,  <16.587475, 18.424093, 5.226832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.977345, 18.402843, 5.313722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223137, 0.295205, -0.929012,
		-0.014771, 0.953956, 0.299583,
		0.974675, -0.053126, 0.217224,
		17.269747, 18.386906, 5.378889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.973417, 19.100702, 5.141982>,  <16.587475, 18.424093, 5.226832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.973417, 19.100702, 5.141982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.184479, 18.769238, 5.067253>,  <17.311115, 18.570358, 5.022416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.184479, 18.769238, 5.067253>,  <16.973417, 19.100702, 5.141982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.184479, 18.769238, 5.067253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238680, 0.355699, -0.903610,
		0.815240, 0.432200, 0.385470,
		0.527652, -0.828662, -0.186822,
		17.342773, 18.520639, 5.011207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.701048, 19.101437, 4.959867>,  <16.973417, 19.100702, 5.141982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.701048, 19.101437, 4.959867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.501839, 18.810158, 4.771525>,  <17.382313, 18.635391, 4.658520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.501839, 18.810158, 4.771525>,  <17.701048, 19.101437, 4.959867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.501839, 18.810158, 4.771525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171544, 0.449520, -0.876644,
		0.850028, -0.517359, -0.098953,
		-0.498020, -0.728197, -0.470855,
		17.352432, 18.591698, 4.630269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.101189, 18.706715, 4.406401>,  <17.701048, 19.101437, 4.959867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.101189, 18.706715, 4.406401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.708519, 18.752094, 4.345148>,  <17.472918, 18.779322, 4.308396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.708519, 18.752094, 4.345148>,  <18.101189, 18.706715, 4.406401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.708519, 18.752094, 4.345148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183111, 0.338769, -0.922879,
		-0.052823, -0.934005, -0.353333,
		-0.981672, 0.113448, -0.153132,
		17.414017, 18.786129, 4.299209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.954027, 18.382837, 3.818266>,  <18.101189, 18.706715, 4.406401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.954027, 18.382837, 3.818266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.659405, 18.650009, 3.860888>,  <17.482632, 18.810312, 3.886461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.659405, 18.650009, 3.860888>,  <17.954027, 18.382837, 3.818266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.659405, 18.650009, 3.860888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220915, 0.386464, -0.895456,
		-0.639283, -0.636014, -0.432209,
		-0.736556, 0.667931, 0.106555,
		17.438438, 18.850388, 3.892854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.466393, 18.299505, 3.212641>,  <17.954027, 18.382837, 3.818266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.466393, 18.299505, 3.212641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.462517, 18.672985, 3.355814>,  <17.460192, 18.897072, 3.441718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.462517, 18.672985, 3.355814>,  <17.466393, 18.299505, 3.212641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.462517, 18.672985, 3.355814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263659, 0.347667, -0.899784,
		-0.964567, 0.085654, -0.249547,
		-0.009689, 0.933698, 0.357932,
		17.459610, 18.953094, 3.463194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.615261, 18.098644, 3.211508>,  <17.466393, 18.299505, 3.212641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.615261, 18.098644, 3.211508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.216969, 18.073185, 3.238258>,  <15.977994, 18.057909, 3.254308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.216969, 18.073185, 3.238258>,  <16.615261, 18.098644, 3.211508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.216969, 18.073185, 3.238258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082072, 0.941966, -0.325521,
		-0.042277, -0.329619, -0.943167,
		-0.995729, -0.063646, 0.066876,
		15.918250, 18.054090, 3.258321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.204807, 18.345058, 2.564951>,  <16.615261, 18.098644, 3.211508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.204807, 18.345058, 2.564951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.990958, 18.387848, 2.900268>,  <15.862649, 18.413523, 3.101459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.990958, 18.387848, 2.900268>,  <16.204807, 18.345058, 2.564951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.990958, 18.387848, 2.900268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323536, 0.890474, -0.319969,
		-0.780708, -0.442281, -0.441456,
		-0.534621, 0.106975, 0.838294,
		15.830572, 18.419941, 3.151757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.597311, 18.485655, 2.346864>,  <16.204807, 18.345058, 2.564951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.597311, 18.485655, 2.346864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.679338, 18.666000, 2.694350>,  <15.728554, 18.774208, 2.902843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.679338, 18.666000, 2.694350>,  <15.597311, 18.485655, 2.346864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.679338, 18.666000, 2.694350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309227, 0.871962, -0.379554,
		-0.928615, -0.190797, 0.318230,
		0.205067, 0.450865, 0.868717,
		15.740857, 18.801260, 2.954966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.219064, 19.083729, 2.121883>,  <15.597311, 18.485655, 2.346864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.219064, 19.083729, 2.121883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.392503, 19.167999, 2.472336>,  <15.496566, 19.218561, 2.682608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.392503, 19.167999, 2.472336>,  <15.219064, 19.083729, 2.121883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.392503, 19.167999, 2.472336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227651, 0.966356, -0.119709,
		-0.871876, -0.147547, 0.466971,
		0.433598, 0.210678, 0.876132,
		15.522582, 19.231203, 2.735176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.705166, 19.318232, 2.680784>,  <15.219064, 19.083729, 2.121883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.705166, 19.318232, 2.680784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.065183, 19.487377, 2.722948>,  <15.281193, 19.588865, 2.748247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.065183, 19.487377, 2.722948>,  <14.705166, 19.318232, 2.680784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.065183, 19.487377, 2.722948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426755, 0.904217, 0.016465,
		-0.088351, -0.059804, 0.994293,
		0.900041, 0.422864, 0.105410,
		15.335196, 19.614237, 2.754571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.886872, 19.769718, 3.415380>,  <14.705166, 19.318232, 2.680784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.886872, 19.769718, 3.415380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.024730, 19.900600, 3.063436>,  <15.107445, 19.979130, 2.852269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.024730, 19.900600, 3.063436>,  <14.886872, 19.769718, 3.415380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.024730, 19.900600, 3.063436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566886, 0.819629, 0.082757,
		0.748238, 0.470259, 0.467970,
		0.344645, 0.327207, -0.879861,
		15.128123, 19.998762, 2.799478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.280962, 20.482462, 3.297257>,  <14.886872, 19.769718, 3.415380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.280962, 20.482462, 3.297257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.077855, 20.369934, 2.971549>,  <14.955991, 20.302418, 2.776125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.077855, 20.369934, 2.971549>,  <15.280962, 20.482462, 3.297257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.077855, 20.369934, 2.971549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698457, 0.687731, 0.197948,
		0.504311, 0.669243, -0.545695,
		-0.507767, -0.281317, -0.814268,
		14.925525, 20.285540, 2.727269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.182839, 21.151590, 2.887724>,  <15.280962, 20.482462, 3.297257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.182839, 21.151590, 2.887724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.927802, 20.848957, 2.829679>,  <14.774779, 20.667377, 2.794852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.927802, 20.848957, 2.829679>,  <15.182839, 21.151590, 2.887724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.927802, 20.848957, 2.829679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769364, 0.615720, 0.170200,
		-0.039422, 0.220163, -0.974666,
		-0.637593, -0.756583, -0.145113,
		14.736525, 20.621983, 2.786145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.757519, 21.276587, 2.208821>,  <15.182839, 21.151590, 2.887724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.757519, 21.276587, 2.208821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.583896, 21.097870, 2.521735>,  <14.479722, 20.990641, 2.709483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.583896, 21.097870, 2.521735>,  <14.757519, 21.276587, 2.208821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.583896, 21.097870, 2.521735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870286, 0.432351, -0.235955,
		-0.232799, -0.783230, -0.576502,
		-0.434059, -0.446792, 0.782285,
		14.453678, 20.963833, 2.756421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.868790, 21.940182, 2.395259>,  <14.757519, 21.276587, 2.208821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.868790, 21.940182, 2.395259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.687968, 21.703743, 2.662467>,  <14.579475, 21.561880, 2.822792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.687968, 21.703743, 2.662467>,  <14.868790, 21.940182, 2.395259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.687968, 21.703743, 2.662467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614839, 0.749061, 0.246739,
		-0.646235, -0.299186, -0.702045,
		-0.452054, -0.591097, 0.668021,
		14.552352, 21.526415, 2.862874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.635658, 22.255354, 1.734373>,  <14.868790, 21.940182, 2.395259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.635658, 22.255354, 1.734373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.377259, 22.337566, 1.440314>,  <14.222219, 22.386894, 1.263878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.377259, 22.337566, 1.440314>,  <14.635658, 22.255354, 1.734373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.377259, 22.337566, 1.440314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599909, -0.458819, -0.655435,
		-0.472018, -0.864430, 0.173090,
		-0.645994, 0.205539, -0.735150,
		14.183460, 22.399227, 1.219769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.985043, 21.850571, 1.176649>,  <14.635658, 22.255354, 1.734373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.985043, 21.850571, 1.176649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.650111, 21.980076, 1.000441>,  <14.449153, 22.057779, 0.894716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.650111, 21.980076, 1.000441>,  <14.985043, 21.850571, 1.176649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.650111, 21.980076, 1.000441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267283, -0.460479, -0.846475,
		-0.476912, -0.826519, 0.299033,
		-0.837326, 0.323768, -0.440522,
		14.398912, 22.077206, 0.868285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.549516, 21.298208, 0.997639>,  <14.985043, 21.850571, 1.176649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.549516, 21.298208, 0.997639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.505229, 21.605938, 0.745962>,  <14.478657, 21.790575, 0.594956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.505229, 21.605938, 0.745962>,  <14.549516, 21.298208, 0.997639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.505229, 21.605938, 0.745962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339504, -0.565724, -0.751461,
		-0.934066, -0.296812, -0.198553,
		-0.110717, 0.769324, -0.629192,
		14.472013, 21.836735, 0.557204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.977521, 21.170483, 0.573025>,  <14.549516, 21.298208, 0.997639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.977521, 21.170483, 0.573025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.250707, 21.406837, 0.401252>,  <14.414618, 21.548651, 0.298187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.250707, 21.406837, 0.401252>,  <13.977521, 21.170483, 0.573025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.250707, 21.406837, 0.401252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150823, -0.689307, -0.708596,
		-0.714712, 0.419177, -0.559891,
		0.682964, 0.590886, -0.429434,
		14.455596, 21.584103, 0.272421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.821684, 21.106052, -0.155013>,  <13.977521, 21.170483, 0.573025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.821684, 21.106052, -0.155013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.192536, 21.255775, -0.147856>,  <14.415048, 21.345610, -0.143562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.192536, 21.255775, -0.147856>,  <13.821684, 21.106052, -0.155013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.192536, 21.255775, -0.147856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273922, -0.644357, -0.713982,
		-0.255721, 0.666857, -0.699935,
		0.927132, 0.374308, 0.017891,
		14.470676, 21.368069, -0.142489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.071620, 21.370750, -0.845951>,  <13.821684, 21.106052, -0.155013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.071620, 21.370750, -0.845951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.375958, 21.247425, -0.617546>,  <14.558561, 21.173429, -0.480503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.375958, 21.247425, -0.617546>,  <14.071620, 21.370750, -0.845951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.375958, 21.247425, -0.617546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281873, -0.635567, -0.718751,
		0.584516, 0.707812, -0.396664,
		0.760847, -0.308312, 0.571012,
		14.604213, 21.154932, -0.446242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.646206, 21.517101, -1.155974>,  <14.071620, 21.370750, -0.845951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.646206, 21.517101, -1.155974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.683368, 21.193146, -0.924303>,  <14.705665, 20.998772, -0.785301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.683368, 21.193146, -0.924303>,  <14.646206, 21.517101, -1.155974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.683368, 21.193146, -0.924303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171243, -0.560028, -0.810583,
		0.980839, 0.174488, 0.086659,
		0.092905, -0.809891, 0.579177,
		14.711239, 20.950178, -0.750550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.353119, 21.107960, -1.321659>,  <14.646206, 21.517101, -1.155974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.353119, 21.107960, -1.321659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.024880, 20.916248, -1.197137>,  <14.827937, 20.801222, -1.122424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.024880, 20.916248, -1.197137>,  <15.353119, 21.107960, -1.321659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.024880, 20.916248, -1.197137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064388, -0.463710, -0.883644,
		0.567869, -0.745160, 0.349660,
		-0.820597, -0.479280, 0.311306,
		14.778701, 20.772465, -1.103745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.459393, 20.591478, -1.731492>,  <15.353119, 21.107960, -1.321659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.459393, 20.591478, -1.731492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.080266, 20.571968, -1.605467>,  <14.852790, 20.560261, -1.529853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.080266, 20.571968, -1.605467>,  <15.459393, 20.591478, -1.731492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.080266, 20.571968, -1.605467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278127, -0.356568, -0.891911,
		0.155847, -0.932995, 0.324394,
		-0.947817, -0.048778, 0.315061,
		14.795921, 20.557335, -1.510949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.994941, 19.984612, -1.872551>,  <15.459393, 20.591478, -1.731492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.994941, 19.984612, -1.872551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.706040, 20.261242, -1.869114>,  <14.532701, 20.427221, -1.867052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.706040, 20.261242, -1.869114>,  <14.994941, 19.984612, -1.872551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.706040, 20.261242, -1.869114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310436, -0.313054, -0.897567,
		-0.618048, -0.650935, 0.440794,
		-0.722250, 0.691578, 0.008592,
		14.489366, 20.468716, -1.866536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.450508, 19.655251, -2.018956>,  <14.994941, 19.984612, -1.872551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.450508, 19.655251, -2.018956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.396605, 20.034447, -2.134303>,  <14.364264, 20.261965, -2.203511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.396605, 20.034447, -2.134303>,  <14.450508, 19.655251, -2.018956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.396605, 20.034447, -2.134303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358778, -0.317957, -0.877600,
		-0.923644, -0.014802, 0.382965,
		-0.134757, 0.947990, -0.288369,
		14.356178, 20.318844, -2.220814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<22.232002, 16.074858, 16.515827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.211365, 16.473621, 16.539541>,  <22.198982, 16.712879, 16.553770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.211365, 16.473621, 16.539541>,  <22.232002, 16.074858, 16.515827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.211365, 16.473621, 16.539541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039994, 0.057253, -0.997558,
		-0.997867, -0.053839, 0.036916,
		-0.051594, 0.996907, 0.059284,
		22.195887, 16.772694, 16.557327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.525139, 16.250044, 16.216753>,  <22.232002, 16.074858, 16.515827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.525139, 16.250044, 16.216753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.747410, 16.581413, 16.188656>,  <21.880772, 16.780235, 16.171797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.747410, 16.581413, 16.188656>,  <21.525139, 16.250044, 16.216753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.747410, 16.581413, 16.188656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201704, 0.052364, -0.978046,
		-0.806559, 0.557647, 0.196194,
		0.555678, 0.828425, -0.070245,
		21.914114, 16.829941, 16.167582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.082382, 16.708691, 15.933314>,  <21.525139, 16.250044, 16.216753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.082382, 16.708691, 15.933314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.443802, 16.849064, 15.834970>,  <21.660654, 16.933287, 15.775963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.443802, 16.849064, 15.834970>,  <21.082382, 16.708691, 15.933314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.443802, 16.849064, 15.834970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331897, 0.210290, -0.919577,
		-0.271006, 0.912483, 0.306480,
		0.903548, 0.350931, -0.245861,
		21.714867, 16.954344, 15.761211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.912407, 17.276005, 15.593981>,  <21.082382, 16.708691, 15.933314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.912407, 17.276005, 15.593981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.300915, 17.246387, 15.503514>,  <21.534019, 17.228617, 15.449234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.300915, 17.246387, 15.503514>,  <20.912407, 17.276005, 15.593981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.300915, 17.246387, 15.503514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174621, 0.423937, -0.888699,
		0.161683, 0.902660, 0.398828,
		0.971270, -0.074044, -0.226166,
		21.592297, 17.224174, 15.435664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.216059, 17.886059, 15.388537>,  <20.912407, 17.276005, 15.593981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.216059, 17.886059, 15.388537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.470119, 17.625179, 15.223025>,  <21.622557, 17.468651, 15.123718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.470119, 17.625179, 15.223025>,  <21.216059, 17.886059, 15.388537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.470119, 17.625179, 15.223025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230691, 0.351079, -0.907483,
		0.737130, 0.671847, 0.072532,
		0.635154, -0.652200, -0.413780,
		21.660666, 17.429520, 15.098891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.680027, 18.278444, 14.880262>,  <21.216059, 17.886059, 15.388537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.680027, 18.278444, 14.880262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.737301, 17.896984, 14.774392>,  <21.771666, 17.668108, 14.710870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.737301, 17.896984, 14.774392>,  <21.680027, 18.278444, 14.880262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.737301, 17.896984, 14.774392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135598, 0.246006, -0.959737,
		0.980363, 0.173309, -0.094088,
		0.143185, -0.953648, -0.264675,
		21.780256, 17.610889, 14.694989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.176964, 18.261871, 14.380195>,  <21.680027, 18.278444, 14.880262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.176964, 18.261871, 14.380195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.992039, 17.912376, 14.319726>,  <21.881084, 17.702679, 14.283444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.992039, 17.912376, 14.319726>,  <22.176964, 18.261871, 14.380195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.992039, 17.912376, 14.319726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113717, 0.227498, -0.967116,
		0.879396, -0.429917, -0.204533,
		-0.462310, -0.873736, -0.151172,
		21.853346, 17.650255, 14.274375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.418949, 18.040909, 13.748873>,  <22.176964, 18.261871, 14.380195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.418949, 18.040909, 13.748873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.078693, 17.844860, 13.824975>,  <21.874540, 17.727230, 13.870636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.078693, 17.844860, 13.824975>,  <22.418949, 18.040909, 13.748873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.078693, 17.844860, 13.824975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254660, 0.067512, -0.964671,
		0.459962, -0.869035, -0.182243,
		-0.850637, -0.490122, 0.190255,
		21.823502, 17.697824, 13.882051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.345705, 17.454020, 13.257717>,  <22.418949, 18.040909, 13.748873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.345705, 17.454020, 13.257717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.974957, 17.532097, 13.385971>,  <21.752506, 17.578943, 13.462923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.974957, 17.532097, 13.385971>,  <22.345705, 17.454020, 13.257717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.974957, 17.532097, 13.385971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343208, -0.094709, -0.934472,
		-0.152040, -0.976180, 0.154776,
		-0.926872, 0.195198, 0.320634,
		21.696896, 17.590654, 13.482162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.812527, 16.956535, 13.027655>,  <22.345705, 17.454020, 13.257717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.812527, 16.956535, 13.027655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.583149, 17.271160, 13.119293>,  <21.445522, 17.459934, 13.174276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.583149, 17.271160, 13.119293>,  <21.812527, 16.956535, 13.027655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.583149, 17.271160, 13.119293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396879, -0.022079, -0.917605,
		-0.716694, -0.617118, 0.324831,
		-0.573442, 0.786561, 0.229098,
		21.411116, 17.507128, 13.188023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.199675, 16.811329, 12.684508>,  <21.812527, 16.956535, 13.027655>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.199675, 16.811329, 12.684508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.187786, 17.203926, 12.760180>,  <21.180653, 17.439484, 12.805584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.187786, 17.203926, 12.760180>,  <21.199675, 16.811329, 12.684508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.187786, 17.203926, 12.760180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467519, 0.153636, -0.870529,
		-0.883483, -0.114318, 0.454301,
		-0.029720, 0.981492, 0.189181,
		21.178869, 17.498373, 12.816935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.519604, 16.859518, 12.604421>,  <21.199675, 16.811329, 12.684508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.519604, 16.859518, 12.604421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.688557, 17.217834, 12.549068>,  <20.789928, 17.432825, 12.515857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.688557, 17.217834, 12.549068>,  <20.519604, 16.859518, 12.604421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.688557, 17.217834, 12.549068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517850, 0.113187, -0.847950,
		-0.743924, 0.429822, 0.511694,
		0.422385, 0.895791, -0.138381,
		20.815271, 17.486572, 12.507554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.953121, 17.267496, 12.377731>,  <20.519604, 16.859518, 12.604421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.953121, 17.267496, 12.377731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.283226, 17.457420, 12.255419>,  <20.481289, 17.571375, 12.182032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.283226, 17.457420, 12.255419>,  <19.953121, 17.267496, 12.377731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.283226, 17.457420, 12.255419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463320, 0.259618, -0.847309,
		-0.322924, 0.840925, 0.434241,
		0.825260, 0.474809, -0.305781,
		20.530804, 17.599863, 12.163685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.819567, 17.996378, 12.111565>,  <19.953121, 17.267496, 12.377731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.819567, 17.996378, 12.111565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.165138, 17.910259, 11.929456>,  <20.372482, 17.858587, 11.820190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.165138, 17.910259, 11.929456>,  <19.819567, 17.996378, 12.111565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.165138, 17.910259, 11.929456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446157, 0.092129, -0.890200,
		0.233601, 0.972193, -0.016463,
		0.863930, -0.215297, -0.455272,
		20.424316, 17.845671, 11.792874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.888800, 18.554739, 11.758124>,  <19.819567, 17.996378, 12.111565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.888800, 18.554739, 11.758124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.133541, 18.292152, 11.581632>,  <20.280386, 18.134600, 11.475736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.133541, 18.292152, 11.581632>,  <19.888800, 18.554739, 11.758124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.133541, 18.292152, 11.581632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496917, 0.114984, -0.860146,
		0.615393, 0.745539, -0.255857,
		0.611853, -0.656468, -0.441232,
		20.317097, 18.095213, 11.449262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.057169, 18.867155, 11.140677>,  <19.888800, 18.554739, 11.758124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.057169, 18.867155, 11.140677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.097996, 18.473648, 11.081640>,  <20.122492, 18.237543, 11.046218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.097996, 18.473648, 11.081640>,  <20.057169, 18.867155, 11.140677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.097996, 18.473648, 11.081640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366882, 0.100681, -0.924803,
		0.924651, 0.148543, -0.350650,
		0.102069, -0.983767, -0.147593,
		20.128616, 18.178518, 11.037362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.350256, 18.835066, 10.445158>,  <20.057169, 18.867155, 11.140677>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.350256, 18.835066, 10.445158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.217564, 18.464020, 10.513847>,  <20.137949, 18.241392, 10.555060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.217564, 18.464020, 10.513847>,  <20.350256, 18.835066, 10.445158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.217564, 18.464020, 10.513847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420308, -0.017636, -0.907210,
		0.844569, -0.373125, -0.384033,
		-0.331730, -0.927614, 0.171722,
		20.118044, 18.185736, 10.565364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.490883, 18.506031, 9.926309>,  <20.350256, 18.835066, 10.445158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.490883, 18.506031, 9.926309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.204983, 18.277718, 10.087968>,  <20.033442, 18.140730, 10.184963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.204983, 18.277718, 10.087968>,  <20.490883, 18.506031, 9.926309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.204983, 18.277718, 10.087968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316742, -0.251021, -0.914693,
		0.623542, -0.781788, -0.001374,
		-0.714752, -0.570785, 0.404147,
		19.990557, 18.106482, 10.209212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.384089, 17.964880, 9.481024>,  <20.490883, 18.506031, 9.926309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.384089, 17.964880, 9.481024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.046230, 17.943592, 9.694095>,  <19.843515, 17.930820, 9.821937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.046230, 17.943592, 9.694095>,  <20.384089, 17.964880, 9.481024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.046230, 17.943592, 9.694095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510412, -0.219982, -0.831317,
		0.161421, -0.974051, 0.158643,
		-0.844644, -0.053219, 0.532677,
		19.792837, 17.927628, 9.853898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.981474, 17.433268, 9.250134>,  <20.384089, 17.964880, 9.481024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.981474, 17.433268, 9.250134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.691872, 17.638435, 9.434626>,  <19.518110, 17.761536, 9.545321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.691872, 17.638435, 9.434626>,  <19.981474, 17.433268, 9.250134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.691872, 17.638435, 9.434626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670673, -0.367076, -0.644556,
		-0.161296, -0.775997, 0.609764,
		-0.724004, 0.512917, 0.461232,
		19.474670, 17.792311, 9.572995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.455242, 16.949442, 9.382818>,  <19.981474, 17.433268, 9.250134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.455242, 16.949442, 9.382818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.279079, 17.308483, 9.390337>,  <19.173382, 17.523907, 9.394849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.279079, 17.308483, 9.390337>,  <19.455242, 16.949442, 9.382818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.279079, 17.308483, 9.390337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809621, -0.388016, -0.440406,
		-0.388016, -0.209176, 0.897602,
		0.440406, -0.897602, -0.018797,
		19.146957, 17.577765, 9.395976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.736940, 16.834620, 9.583776>,  <19.455242, 16.949442, 9.382818>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.736940, 16.834620, 9.583776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.719856, 17.205193, 9.434162>,  <18.709606, 17.427536, 9.344394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.719856, 17.205193, 9.434162>,  <18.736940, 16.834620, 9.583776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.719856, 17.205193, 9.434162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808449, -0.252011, -0.531884,
		-0.587014, 0.279670, 0.759736,
		-0.042710, 0.926431, -0.374033,
		18.707043, 17.483122, 9.321952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.319836, 17.091118, 10.114230>,  <18.736940, 16.834620, 9.583776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.319836, 17.091118, 10.114230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.163582, 16.779896, 9.917440>,  <18.069830, 16.593163, 9.799367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.163582, 16.779896, 9.917440>,  <18.319836, 17.091118, 10.114230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.163582, 16.779896, 9.917440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191966, -0.453836, 0.870162,
		-0.900308, 0.434356, 0.027924,
		-0.390633, -0.778054, -0.491974,
		18.046392, 16.546480, 9.769848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.577408, 16.916048, 10.268864>,  <18.319836, 17.091118, 10.114230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.577408, 16.916048, 10.268864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.717205, 16.556545, 10.162967>,  <17.801085, 16.340843, 10.099429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.717205, 16.556545, 10.162967>,  <17.577408, 16.916048, 10.268864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.717205, 16.556545, 10.162967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408560, -0.400472, 0.820184,
		-0.843168, -0.178487, -0.507159,
		0.349495, -0.898757, -0.264742,
		17.822054, 16.286919, 10.083544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.061930, 16.439631, 10.509454>,  <17.577408, 16.916048, 10.268864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.061930, 16.439631, 10.509454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.354557, 16.180233, 10.425297>,  <17.530132, 16.024595, 10.374803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.354557, 16.180233, 10.425297>,  <17.061930, 16.439631, 10.509454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.354557, 16.180233, 10.425297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346427, -0.619377, 0.704528,
		-0.587194, -0.442524, -0.677772,
		0.731568, -0.648493, -0.210393,
		17.574026, 15.985684, 10.362179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.671366, 15.821964, 10.572456>,  <17.061930, 16.439631, 10.509454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.671366, 15.821964, 10.572456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.057858, 15.719097, 10.578960>,  <17.289753, 15.657377, 10.582863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.057858, 15.719097, 10.578960>,  <16.671366, 15.821964, 10.572456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.057858, 15.719097, 10.578960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128115, -0.424691, 0.896228,
		-0.223573, -0.868046, -0.443296,
		0.966231, -0.257165, 0.016260,
		17.347727, 15.641947, 10.583838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.818731, 15.058865, 10.713325>,  <16.671366, 15.821964, 10.572456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.818731, 15.058865, 10.713325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.149921, 15.254990, 10.822173>,  <17.348635, 15.372664, 10.887483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.149921, 15.254990, 10.822173>,  <16.818731, 15.058865, 10.713325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.149921, 15.254990, 10.822173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056719, -0.409555, 0.910520,
		0.557889, -0.769323, -0.311291,
		0.827974, 0.490313, 0.272122,
		17.398314, 15.402083, 10.903810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.149935, 14.646231, 11.166847>,  <16.818731, 15.058865, 10.713325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.149935, 14.646231, 11.166847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.308567, 15.005058, 11.244817>,  <17.403746, 15.220355, 11.291598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.308567, 15.005058, 11.244817>,  <17.149935, 14.646231, 11.166847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.308567, 15.005058, 11.244817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159750, -0.276533, 0.947634,
		0.903994, -0.344672, -0.252973,
		0.396578, 0.897068, 0.194923,
		17.427540, 15.274179, 11.303293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.735901, 14.479002, 11.578241>,  <17.149935, 14.646231, 11.166847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.735901, 14.479002, 11.578241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.632076, 14.862518, 11.624460>,  <17.569782, 15.092628, 11.652192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.632076, 14.862518, 11.624460>,  <17.735901, 14.479002, 11.578241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.632076, 14.862518, 11.624460> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146944, -0.079045, 0.985981,
		0.954482, 0.272900, -0.120372,
		-0.259560, 0.958790, 0.115548,
		17.554209, 15.150155, 11.659124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.943487, 14.586656, 12.168485>,  <17.735901, 14.479002, 11.578241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.943487, 14.586656, 12.168485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.736015, 14.927757, 12.143886>,  <17.611532, 15.132419, 12.129127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.736015, 14.927757, 12.143886>,  <17.943487, 14.586656, 12.168485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.736015, 14.927757, 12.143886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052018, 0.103271, 0.993292,
		0.853386, 0.512000, -0.097923,
		-0.518678, 0.852755, -0.061497,
		17.580412, 15.183584, 12.125437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.299135, 15.114100, 12.510102>,  <17.943487, 14.586656, 12.168485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.299135, 15.114100, 12.510102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.921009, 15.244308, 12.501909>,  <17.694134, 15.322433, 12.496994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.921009, 15.244308, 12.501909>,  <18.299135, 15.114100, 12.510102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.921009, 15.244308, 12.501909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056437, 0.225097, 0.972701,
		0.321244, 0.918351, -0.231158,
		-0.945313, 0.325520, -0.020482,
		17.637415, 15.341965, 12.495765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.360174, 15.816222, 12.770255>,  <18.299135, 15.114100, 12.510102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.360174, 15.816222, 12.770255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.975929, 15.717934, 12.822174>,  <17.745382, 15.658960, 12.853326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.975929, 15.717934, 12.822174>,  <18.360174, 15.816222, 12.770255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.975929, 15.717934, 12.822174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061088, 0.268931, 0.961220,
		-0.271099, 0.931288, -0.243328,
		-0.960611, -0.245721, 0.129798,
		17.687746, 15.644217, 12.861114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.086962, 16.383217, 13.215855>,  <18.360174, 15.816222, 12.770255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.086962, 16.383217, 13.215855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.817829, 16.087910, 13.234882>,  <17.656349, 15.910726, 13.246299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.817829, 16.087910, 13.234882>,  <18.086962, 16.383217, 13.215855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.817829, 16.087910, 13.234882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070309, 0.127822, 0.989302,
		-0.736448, 0.662288, -0.137909,
		-0.672830, -0.738266, 0.047569,
		17.615980, 15.866430, 13.249153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.457747, 16.641960, 13.478376>,  <18.086962, 16.383217, 13.215855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.457747, 16.641960, 13.478376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.521725, 16.255501, 13.559346>,  <17.560112, 16.023624, 13.607928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.521725, 16.255501, 13.559346>,  <17.457747, 16.641960, 13.478376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.521725, 16.255501, 13.559346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148678, 0.226305, 0.962643,
		-0.975865, -0.123876, 0.179842,
		0.159947, -0.966148, 0.202425,
		17.569710, 15.965656, 13.620073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.297594, 16.614344, 14.143230>,  <17.457747, 16.641960, 13.478376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.297594, 16.614344, 14.143230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.449810, 16.244656, 14.130546>,  <17.541140, 16.022842, 14.122934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.449810, 16.244656, 14.130546>,  <17.297594, 16.614344, 14.143230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.449810, 16.244656, 14.130546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466891, 0.162412, 0.869273,
		-0.798249, -0.345599, 0.493315,
		0.380540, -0.924220, -0.031712,
		17.563972, 15.967389, 14.121032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.199730, 16.231203, 14.862457>,  <17.297594, 16.614344, 14.143230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.199730, 16.231203, 14.862457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.487080, 16.008850, 14.695159>,  <17.659491, 15.875439, 14.594780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.487080, 16.008850, 14.695159>,  <17.199730, 16.231203, 14.862457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.487080, 16.008850, 14.695159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490132, -0.022209, 0.871365,
		-0.493666, -0.830964, 0.256501,
		0.718376, -0.555883, -0.418246,
		17.702593, 15.842085, 14.569685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.224125, 15.675648, 15.341626>,  <17.199730, 16.231203, 14.862457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.224125, 15.675648, 15.341626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.571911, 15.709862, 15.147014>,  <17.780582, 15.730391, 15.030246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.571911, 15.709862, 15.147014>,  <17.224125, 15.675648, 15.341626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.571911, 15.709862, 15.147014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491902, -0.240440, 0.836792,
		-0.045406, -0.966888, -0.251130,
		0.869466, 0.085536, -0.486532,
		17.832750, 15.735522, 15.001054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.608994, 15.181072, 15.575633>,  <17.224125, 15.675648, 15.341626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.608994, 15.181072, 15.575633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.887108, 15.421188, 15.417531>,  <18.053976, 15.565258, 15.322670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.887108, 15.421188, 15.417531>,  <17.608994, 15.181072, 15.575633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.887108, 15.421188, 15.417531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607425, -0.196806, 0.769612,
		0.384202, -0.775189, -0.501469,
		0.695286, 0.600291, -0.395256,
		18.095694, 15.601275, 15.298954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.309469, 14.898385, 15.723727>,  <17.608994, 15.181072, 15.575633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.309469, 14.898385, 15.723727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.391312, 15.271389, 15.604692>,  <18.440418, 15.495192, 15.533270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.391312, 15.271389, 15.604692>,  <18.309469, 14.898385, 15.723727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.391312, 15.271389, 15.604692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810847, 0.008837, 0.585192,
		0.548327, -0.361034, -0.754315,
		0.204608, 0.932511, -0.297589,
		18.452694, 15.551143, 15.515415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.939386, 14.961742, 15.449986>,  <18.309469, 14.898385, 15.723727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.939386, 14.961742, 15.449986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.861710, 15.336597, 15.565961>,  <18.815104, 15.561510, 15.635546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.861710, 15.336597, 15.565961>,  <18.939386, 14.961742, 15.449986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.861710, 15.336597, 15.565961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778559, -0.032568, 0.626725,
		0.596770, 0.347440, -0.723292,
		-0.194193, 0.937136, 0.289939,
		18.803452, 15.617739, 15.652943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<19.679653, 15.365736, 15.463908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.406414, 15.546112, 15.693700>,  <19.242470, 15.654338, 15.831575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.406414, 15.546112, 15.693700>,  <19.679653, 15.365736, 15.463908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.406414, 15.546112, 15.693700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614957, -0.069165, 0.785522,
		0.393957, 0.889870, -0.230062,
		-0.683100, 0.450940, 0.574480,
		19.201485, 15.681394, 15.866044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.040741, 15.810384, 15.821990>,  <19.679653, 15.365736, 15.463908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.040741, 15.810384, 15.821990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.707752, 15.800270, 16.043386>,  <19.507959, 15.794202, 16.176224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.707752, 15.800270, 16.043386>,  <20.040741, 15.810384, 15.821990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.707752, 15.800270, 16.043386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553669, -0.075935, 0.829268,
		0.021063, 0.996792, 0.077212,
		-0.832470, -0.025283, 0.553492,
		19.458012, 15.792686, 16.209435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.042299, 16.260546, 16.380285>,  <20.040741, 15.810384, 15.821990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.042299, 16.260546, 16.380285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.770111, 16.008591, 16.530062>,  <19.606798, 15.857418, 16.619926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.770111, 16.008591, 16.530062>,  <20.042299, 16.260546, 16.380285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.770111, 16.008591, 16.530062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465735, 0.022740, 0.884632,
		-0.565732, 0.776354, 0.277887,
		-0.680469, -0.629886, 0.374440,
		19.565971, 15.819625, 16.642393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.838280, 16.612207, 17.059444>,  <20.042299, 16.260546, 16.380285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.838280, 16.612207, 17.059444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.729588, 16.227646, 17.076744>,  <19.664373, 15.996909, 17.087124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.729588, 16.227646, 17.076744>,  <19.838280, 16.612207, 17.059444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.729588, 16.227646, 17.076744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275909, -0.034773, 0.960555,
		-0.921975, 0.272943, 0.274709,
		-0.271729, -0.961402, 0.043247,
		19.648069, 15.939225, 17.089718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.380548, 16.408138, 17.654490>,  <19.838280, 16.612207, 17.059444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.380548, 16.408138, 17.654490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.587521, 16.073071, 17.584547>,  <19.711704, 15.872030, 17.542582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.587521, 16.073071, 17.584547>,  <19.380548, 16.408138, 17.654490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.587521, 16.073071, 17.584547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218932, -0.067950, 0.973371,
		-0.827245, -0.541934, 0.148234,
		0.517430, -0.837669, -0.174858,
		19.742750, 15.821770, 17.532089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.501900, 16.274450, 18.332531>,  <19.380548, 16.408138, 17.654490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.501900, 16.274450, 18.332531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.664196, 15.963821, 18.139736>,  <19.761574, 15.777445, 18.024059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.664196, 15.963821, 18.139736>,  <19.501900, 16.274450, 18.332531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.664196, 15.963821, 18.139736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346052, -0.357562, 0.867408,
		-0.845944, -0.518737, 0.123656,
		0.405742, -0.776570, -0.481988,
		19.785919, 15.730850, 17.995140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.291336, 15.700826, 18.621664>,  <19.501900, 16.274450, 18.332531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.291336, 15.700826, 18.621664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.634224, 15.578953, 18.455606>,  <19.839956, 15.505829, 18.355972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.634224, 15.578953, 18.455606>,  <19.291336, 15.700826, 18.621664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.634224, 15.578953, 18.455606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339984, -0.270640, 0.900647,
		-0.386766, -0.913194, -0.128411,
		0.857218, -0.304682, -0.415146,
		19.891390, 15.487549, 18.331062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.348833, 15.033683, 18.830456>,  <19.291336, 15.700826, 18.621664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.348833, 15.033683, 18.830456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.722687, 15.138172, 18.733942>,  <19.946999, 15.200866, 18.676035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.722687, 15.138172, 18.733942>,  <19.348833, 15.033683, 18.830456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.722687, 15.138172, 18.733942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307989, -0.255466, 0.916449,
		0.177759, -0.930859, -0.319222,
		0.934636, 0.261224, -0.241283,
		20.003078, 15.216539, 18.661556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.788210, 14.452003, 19.112904>,  <19.348833, 15.033683, 18.830456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.788210, 14.452003, 19.112904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.006355, 14.783352, 19.061710>,  <20.137243, 14.982162, 19.030994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.006355, 14.783352, 19.061710>,  <19.788210, 14.452003, 19.112904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.006355, 14.783352, 19.061710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309911, -0.057408, 0.949031,
		0.778803, -0.557229, -0.288029,
		0.545363, 0.828372, -0.127981,
		20.169964, 15.031863, 19.023315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.472130, 14.277822, 19.409149>,  <19.788210, 14.452003, 19.112904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.472130, 14.277822, 19.409149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.436996, 14.675812, 19.389904>,  <20.415916, 14.914605, 19.378357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.436996, 14.675812, 19.389904>,  <20.472130, 14.277822, 19.409149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.436996, 14.675812, 19.389904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306278, 0.072934, 0.949144,
		0.947881, 0.068633, -0.311145,
		-0.087836, 0.994972, -0.048112,
		20.410646, 14.974303, 19.375471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.075884, 14.545589, 19.694801>,  <20.472130, 14.277822, 19.409149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.075884, 14.545589, 19.694801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.846840, 14.873520, 19.695349>,  <20.709414, 15.070278, 19.695677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.846840, 14.873520, 19.695349>,  <21.075884, 14.545589, 19.694801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.846840, 14.873520, 19.695349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288061, 0.199636, 0.936572,
		0.767553, 0.536685, -0.350474,
		-0.572611, 0.819826, 0.001367,
		20.675056, 15.119468, 19.695759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.507547, 15.088872, 19.888151>,  <21.075884, 14.545589, 19.694801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.507547, 15.088872, 19.888151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.129528, 15.185776, 19.975962>,  <20.902716, 15.243918, 20.028648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.129528, 15.185776, 19.975962>,  <21.507547, 15.088872, 19.888151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.129528, 15.185776, 19.975962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269380, 0.196551, 0.942763,
		0.185245, 0.950094, -0.251010,
		-0.945050, 0.242259, 0.219526,
		20.846014, 15.258453, 20.041819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.617632, 15.346935, 20.536673>,  <21.507547, 15.088872, 19.888151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.617632, 15.346935, 20.536673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.218624, 15.364178, 20.514425>,  <20.979219, 15.374523, 20.501078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.218624, 15.364178, 20.514425>,  <21.617632, 15.346935, 20.536673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.218624, 15.364178, 20.514425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040020, 0.302588, 0.952281,
		0.057879, 0.952146, -0.300113,
		-0.997521, 0.043106, -0.055618,
		20.919367, 15.377110, 20.497740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.455791, 15.873177, 20.998569>,  <21.617632, 15.346935, 20.536673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.455791, 15.873177, 20.998569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.167629, 15.596760, 20.974981>,  <20.994732, 15.430910, 20.960829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.167629, 15.596760, 20.974981>,  <21.455791, 15.873177, 20.998569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.167629, 15.596760, 20.974981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075812, -0.006053, 0.997104,
		-0.689397, 0.722789, -0.048028,
		-0.720405, -0.691042, -0.058969,
		20.951508, 15.389447, 20.957291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.756014, 16.144297, 21.297014>,  <21.455791, 15.873177, 20.998569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.756014, 16.144297, 21.297014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.786160, 15.746128, 21.320530>,  <20.804247, 15.507227, 21.334639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.786160, 15.746128, 21.320530>,  <20.756014, 16.144297, 21.297014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.786160, 15.746128, 21.320530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065887, 0.053857, 0.996373,
		-0.994977, -0.078964, -0.061526,
		0.075364, -0.995422, 0.058789,
		20.808769, 15.447501, 21.338167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.379114, 16.007650, 21.951723>,  <20.756014, 16.144297, 21.297014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.379114, 16.007650, 21.951723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.530392, 15.650368, 21.854437>,  <20.621159, 15.435999, 21.796064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.530392, 15.650368, 21.854437>,  <20.379114, 16.007650, 21.951723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.530392, 15.650368, 21.854437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135295, -0.313240, 0.939987,
		-0.915787, -0.322591, -0.239311,
		0.378193, -0.893205, -0.243216,
		20.643850, 15.382406, 21.781471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.942791, 15.579511, 22.196407>,  <20.379114, 16.007650, 21.951723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.942791, 15.579511, 22.196407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.271473, 15.352097, 22.180567>,  <20.468681, 15.215648, 22.171062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.271473, 15.352097, 22.180567>,  <19.942791, 15.579511, 22.196407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.271473, 15.352097, 22.180567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079400, -0.183011, 0.979899,
		-0.564356, -0.802043, -0.195523,
		0.821704, -0.568537, -0.039601,
		20.517984, 15.181536, 22.168686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.760687, 14.957253, 22.539522>,  <19.942791, 15.579511, 22.196407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.760687, 14.957253, 22.539522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.158016, 15.003208, 22.543703>,  <20.396414, 15.030782, 22.546211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.158016, 15.003208, 22.543703>,  <19.760687, 14.957253, 22.539522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.158016, 15.003208, 22.543703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004367, -0.127996, 0.991765,
		0.115283, -0.985097, -0.127643,
		0.993323, 0.114891, 0.010454,
		20.456013, 15.037675, 22.546839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.093676, 14.464852, 22.963057>,  <19.760687, 14.957253, 22.539522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.093676, 14.464852, 22.963057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.358089, 14.763790, 22.936192>,  <20.516737, 14.943152, 22.920073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.358089, 14.763790, 22.936192>,  <20.093676, 14.464852, 22.963057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.358089, 14.763790, 22.936192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068647, 0.028900, 0.997222,
		0.747210, -0.663808, -0.032199,
		0.661034, 0.747344, -0.067163,
		20.556400, 14.987993, 22.916042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.645456, 14.329577, 23.433762>,  <20.093676, 14.464852, 22.963057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.645456, 14.329577, 23.433762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.695927, 14.715981, 23.343510>,  <20.726208, 14.947823, 23.289358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.695927, 14.715981, 23.343510>,  <20.645456, 14.329577, 23.433762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.695927, 14.715981, 23.343510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331865, 0.173240, 0.927283,
		0.934851, -0.191878, -0.298726,
		0.126174, 0.966008, -0.225631,
		20.733780, 15.005783, 23.275820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.338095, 14.530504, 23.622459>,  <20.645456, 14.329577, 23.433762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.338095, 14.530504, 23.622459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.104443, 14.854885, 23.636038>,  <20.964252, 15.049514, 23.644184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.104443, 14.854885, 23.636038>,  <21.338095, 14.530504, 23.622459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.104443, 14.854885, 23.636038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334630, 0.202510, 0.920333,
		0.739470, 0.548952, -0.389660,
		-0.584129, 0.810951, 0.033946,
		20.929205, 15.098170, 23.646221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.775736, 15.079050, 23.707224>,  <21.338095, 14.530504, 23.622459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.775736, 15.079050, 23.707224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.409645, 15.190609, 23.823553>,  <21.189991, 15.257545, 23.893351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.409645, 15.190609, 23.823553>,  <21.775736, 15.079050, 23.707224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.409645, 15.190609, 23.823553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374806, 0.324282, 0.868540,
		0.147925, 0.903913, -0.401323,
		-0.915226, 0.278897, 0.290822,
		21.135077, 15.274278, 23.910799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.769381, 15.736382, 23.902840>,  <21.775736, 15.079050, 23.707224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.769381, 15.736382, 23.902840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.493263, 15.523197, 24.098572>,  <21.327593, 15.395287, 24.216011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.493263, 15.523197, 24.098572>,  <21.769381, 15.736382, 23.902840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.493263, 15.523197, 24.098572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330481, 0.369385, 0.868526,
		-0.643643, 0.761253, -0.078851,
		-0.690294, -0.532962, 0.489332,
		21.286175, 15.363309, 24.245371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.809566, 16.028725, 24.624105>,  <21.769381, 15.736382, 23.902840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.809566, 16.028725, 24.624105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.584610, 15.700802, 24.667240>,  <21.449636, 15.504047, 24.693121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.584610, 15.700802, 24.667240>,  <21.809566, 16.028725, 24.624105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.584610, 15.700802, 24.667240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358534, -0.124254, 0.925210,
		-0.745097, 0.558993, 0.363809,
		-0.562391, -0.819809, 0.107837,
		21.415894, 15.454859, 24.699591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.663483, 16.678368, 24.554314>,  <21.809566, 16.028725, 24.624105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.663483, 16.678368, 24.554314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.942402, 16.964699, 24.539541>,  <22.109755, 17.136497, 24.530678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.942402, 16.964699, 24.539541>,  <21.663483, 16.678368, 24.554314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.942402, 16.964699, 24.539541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022647, -0.029496, -0.999308,
		-0.716421, 0.697654, -0.004356,
		0.697300, 0.715827, -0.036931,
		22.151592, 17.179447, 24.528461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.457493, 17.191912, 24.082088>,  <21.663483, 16.678368, 24.554314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.457493, 17.191912, 24.082088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.845161, 17.288094, 24.103592>,  <22.077763, 17.345802, 24.116493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.845161, 17.288094, 24.103592>,  <21.457493, 17.191912, 24.082088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.845161, 17.288094, 24.103592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009662, 0.180923, -0.983450,
		-0.246199, 0.953651, 0.173022,
		0.969171, 0.240452, 0.053757,
		22.135912, 17.360229, 24.119719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.495331, 17.896193, 23.935085>,  <21.457493, 17.191912, 24.082088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.495331, 17.896193, 23.935085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.824268, 17.683792, 23.853321>,  <22.021631, 17.556353, 23.804262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.824268, 17.683792, 23.853321>,  <21.495331, 17.896193, 23.935085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.824268, 17.683792, 23.853321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090855, 0.232101, -0.968439,
		0.561687, 0.814964, 0.142623,
		0.822346, -0.531002, -0.204411,
		22.070972, 17.524492, 23.791998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.856186, 18.309042, 23.580719>,  <21.495331, 17.896193, 23.935085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.856186, 18.309042, 23.580719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.006744, 17.949799, 23.489742>,  <22.097078, 17.734253, 23.435156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.006744, 17.949799, 23.489742>,  <21.856186, 18.309042, 23.580719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.006744, 17.949799, 23.489742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066874, 0.218519, -0.973539,
		0.924043, 0.381644, 0.022189,
		0.376394, -0.898108, -0.227443,
		22.119663, 17.680367, 23.421509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.447723, 18.411020, 23.013510>,  <21.856186, 18.309042, 23.580719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.447723, 18.411020, 23.013510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.324860, 18.030403, 23.007599>,  <22.251141, 17.802032, 23.004051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.324860, 18.030403, 23.007599>,  <22.447723, 18.411020, 23.013510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.324860, 18.030403, 23.007599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029400, 0.025010, -0.999255,
		0.951203, -0.306498, -0.035658,
		-0.307161, -0.951543, -0.014778,
		22.232712, 17.744940, 23.003166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.781532, 18.139503, 22.479067>,  <22.447723, 18.411020, 23.013510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.781532, 18.139503, 22.479067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.510513, 17.850296, 22.532990>,  <22.347902, 17.676771, 22.565344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.510513, 17.850296, 22.532990>,  <22.781532, 18.139503, 22.479067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.510513, 17.850296, 22.532990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008775, -0.191227, -0.981507,
		0.735427, -0.663834, 0.135910,
		-0.677547, -0.723019, 0.134808,
		22.307249, 17.633390, 22.573431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.049026, 17.495337, 22.157814>,  <22.781532, 18.139503, 22.479067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.049026, 17.495337, 22.157814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.653263, 17.440502, 22.176908>,  <22.415806, 17.407600, 22.188366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.653263, 17.440502, 22.176908>,  <23.049026, 17.495337, 22.157814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.653263, 17.440502, 22.176908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025628, -0.158738, -0.986988,
		0.142883, -0.977757, 0.153544,
		-0.989408, -0.137089, 0.047739,
		22.356441, 17.399376, 22.191231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.947311, 16.981880, 21.699625>,  <23.049026, 17.495337, 22.157814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.947311, 16.981880, 21.699625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.580231, 17.129253, 21.759066>,  <22.359983, 17.217678, 21.794729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.580231, 17.129253, 21.759066>,  <22.947311, 16.981880, 21.699625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.580231, 17.129253, 21.759066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214655, -0.145112, -0.965850,
		-0.334289, -0.918258, 0.212255,
		-0.917700, 0.368435, 0.148599,
		22.304920, 17.239784, 21.803646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.557690, 16.580137, 21.319927>,  <22.947311, 16.981880, 21.699625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.557690, 16.580137, 21.319927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.335850, 16.907681, 21.379114>,  <22.202745, 17.104206, 21.414627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.335850, 16.907681, 21.379114>,  <22.557690, 16.580137, 21.319927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.335850, 16.907681, 21.379114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205609, 0.037456, -0.977917,
		-0.806316, -0.572775, 0.147591,
		-0.554598, 0.818857, 0.147969,
		22.169470, 17.153337, 21.423506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.272339, 16.558958, 20.728983>,  <22.557690, 16.580137, 21.319927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.272339, 16.558958, 20.728983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.129307, 16.898155, 20.885466>,  <22.043488, 17.101673, 20.979355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.129307, 16.898155, 20.885466>,  <22.272339, 16.558958, 20.728983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.129307, 16.898155, 20.885466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447179, 0.212282, -0.868888,
		-0.819857, -0.485639, 0.303296,
		-0.357582, 0.847992, 0.391209,
		22.022032, 17.152554, 21.002829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.579767, 16.471750, 20.521124>,  <22.272339, 16.558958, 20.728983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.579767, 16.471750, 20.521124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.669724, 16.859081, 20.564507>,  <21.723698, 17.091480, 20.590536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.669724, 16.859081, 20.564507>,  <21.579767, 16.471750, 20.521124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.669724, 16.859081, 20.564507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258533, 0.166616, -0.951525,
		-0.939460, 0.185949, 0.287816,
		0.224890, 0.968330, 0.108455,
		21.737190, 17.149580, 20.597042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.038177, 16.906700, 20.275688>,  <21.579767, 16.471750, 20.521124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.038177, 16.906700, 20.275688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.365990, 17.134151, 20.247309>,  <21.562677, 17.270622, 20.230282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.365990, 17.134151, 20.247309>,  <21.038177, 16.906700, 20.275688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.365990, 17.134151, 20.247309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121312, 0.051155, -0.991295,
		-0.560050, 0.821002, 0.110904,
		0.819529, 0.568629, -0.070948,
		21.611849, 17.304741, 20.226025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.906872, 17.227236, 19.698265>,  <21.038177, 16.906700, 20.275688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.906872, 17.227236, 19.698265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.297546, 17.295769, 19.750006>,  <21.531950, 17.336889, 19.781050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.297546, 17.295769, 19.750006>,  <20.906872, 17.227236, 19.698265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.297546, 17.295769, 19.750006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128383, 0.016762, -0.991583,
		-0.172060, 0.985071, -0.005625,
		0.976685, 0.171334, 0.129351,
		21.590551, 17.347168, 19.788811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.000357, 17.882969, 19.381609>,  <20.906872, 17.227236, 19.698265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.000357, 17.882969, 19.381609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.342598, 17.677124, 19.403959>,  <21.547943, 17.553617, 19.417370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.342598, 17.677124, 19.403959>,  <21.000357, 17.882969, 19.381609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.342598, 17.677124, 19.403959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099011, 0.056752, -0.993467,
		0.508078, 0.855544, 0.099509,
		0.855602, -0.514611, 0.055874,
		21.599277, 17.522741, 19.420721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.344856, 18.151243, 18.910435>,  <21.000357, 17.882969, 19.381609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.344856, 18.151243, 18.910435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.545803, 17.808266, 18.955006>,  <21.666370, 17.602478, 18.981749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.545803, 17.808266, 18.955006>,  <21.344856, 18.151243, 18.910435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.545803, 17.808266, 18.955006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127996, -0.053701, -0.990320,
		0.855128, 0.511766, 0.082772,
		0.502367, -0.857445, 0.111426,
		21.696514, 17.551033, 18.988434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.018341, 18.210953, 18.557884>,  <21.344856, 18.151243, 18.910435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.018341, 18.210953, 18.557884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.937809, 17.820023, 18.584114>,  <21.889490, 17.585464, 18.599852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.937809, 17.820023, 18.584114>,  <22.018341, 18.210953, 18.557884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.937809, 17.820023, 18.584114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273899, -0.120444, -0.954187,
		0.940450, -0.174145, 0.291937,
		-0.201329, -0.977326, 0.065574,
		21.877411, 17.526825, 18.603786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.354553, 17.955404, 18.038908>,  <22.018341, 18.210953, 18.557884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.354553, 17.955404, 18.038908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.129635, 17.629185, 18.093616>,  <21.994684, 17.433453, 18.126442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.129635, 17.629185, 18.093616>,  <22.354553, 17.955404, 18.038908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.129635, 17.629185, 18.093616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305021, -0.358282, -0.882381,
		0.768626, -0.454441, 0.450219,
		-0.562295, -0.815547, 0.136771,
		21.960947, 17.384520, 18.134647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.877977, 17.357695, 17.914679>,  <22.354553, 17.955404, 18.038908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.877977, 17.357695, 17.914679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.489044, 17.272316, 17.876713>,  <22.255684, 17.221088, 17.853933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.489044, 17.272316, 17.876713>,  <22.877977, 17.357695, 17.914679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.489044, 17.272316, 17.876713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167717, -0.355058, -0.919677,
		0.162603, -0.910150, 0.381033,
		-0.972333, -0.213448, -0.094915,
		22.197344, 17.208282, 17.848238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.943199, 16.730240, 17.579699>,  <22.877977, 17.357695, 17.914679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.943199, 16.730240, 17.579699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.568810, 16.849133, 17.504227>,  <22.344175, 16.920469, 17.458944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.568810, 16.849133, 17.504227>,  <22.943199, 16.730240, 17.579699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.568810, 16.849133, 17.504227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110120, -0.261871, -0.958800,
		-0.334401, -0.918191, 0.212373,
		-0.935975, 0.297237, -0.188681,
		22.288017, 16.938303, 17.447622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.586634, 16.191568, 17.164244>,  <22.943199, 16.730240, 17.579699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.586634, 16.191568, 17.164244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.380066, 16.526138, 17.090803>,  <22.256126, 16.726879, 17.046740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.380066, 16.526138, 17.090803>,  <22.586634, 16.191568, 17.164244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.380066, 16.526138, 17.090803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135970, -0.131591, -0.981935,
		-0.845473, -0.532052, -0.045773,
		-0.516417, 0.836423, -0.183600,
		22.225142, 16.777065, 17.035723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<17.370567, 14.822846, 14.116876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.406590, 15.181004, 13.942445>,  <17.428202, 15.395898, 13.837787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.406590, 15.181004, 13.942445>,  <17.370567, 14.822846, 14.116876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.406590, 15.181004, 13.942445> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494734, -0.339792, -0.799862,
		-0.864366, 0.287773, 0.412381,
		0.090055, 0.895392, -0.436076,
		17.433605, 15.449621, 13.811622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.918528, 14.809350, 13.539338>,  <17.370567, 14.822846, 14.116876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.918528, 14.809350, 13.539338> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.123123, 15.142418, 13.454445>,  <17.245880, 15.342258, 13.403509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.123123, 15.142418, 13.454445>,  <16.918528, 14.809350, 13.539338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.123123, 15.142418, 13.454445> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404191, 0.015181, -0.914548,
		-0.758294, 0.553562, 0.344323,
		0.511487, 0.832669, -0.212234,
		17.276569, 15.392219, 13.390775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.489218, 15.299681, 13.150321>,  <16.918528, 14.809350, 13.539338>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.489218, 15.299681, 13.150321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.863007, 15.406361, 13.055975>,  <17.087280, 15.470368, 12.999368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.863007, 15.406361, 13.055975>,  <16.489218, 15.299681, 13.150321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.863007, 15.406361, 13.055975> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229589, -0.054945, -0.971736,
		-0.272121, 0.962212, 0.009887,
		0.934473, 0.266699, -0.235865,
		17.143349, 15.486370, 12.985215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.437128, 15.717420, 12.543054>,  <16.489218, 15.299681, 13.150321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.437128, 15.717420, 12.543054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.817814, 15.595509, 12.528363>,  <17.046227, 15.522362, 12.519548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.817814, 15.595509, 12.528363>,  <16.437128, 15.717420, 12.543054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.817814, 15.595509, 12.528363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013688, 0.077388, -0.996907,
		0.306676, 0.949274, 0.069480,
		0.951715, -0.304777, -0.036727,
		17.103329, 15.504076, 12.517345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.707808, 16.135685, 12.069618>,  <16.437128, 15.717420, 12.543054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.707808, 16.135685, 12.069618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.985825, 15.848358, 12.081846>,  <17.152636, 15.675961, 12.089183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.985825, 15.848358, 12.081846>,  <16.707808, 16.135685, 12.069618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.985825, 15.848358, 12.081846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285516, 0.236741, -0.928673,
		0.659845, 0.654197, 0.369636,
		0.695043, -0.718318, 0.030571,
		17.194338, 15.632863, 12.091018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.293873, 16.462517, 11.816689>,  <16.707808, 16.135685, 12.069618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.293873, 16.462517, 11.816689> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.357906, 16.071072, 11.765006>,  <17.396326, 15.836205, 11.733996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.357906, 16.071072, 11.765006>,  <17.293873, 16.462517, 11.816689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.357906, 16.071072, 11.765006> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327431, 0.176128, -0.928315,
		0.931216, 0.106301, 0.348623,
		0.160083, -0.978611, -0.129206,
		17.405931, 15.777489, 11.726244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.928146, 16.423801, 11.588423>,  <17.293873, 16.462517, 11.816689>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.928146, 16.423801, 11.588423> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.792915, 16.059879, 11.492126>,  <17.711777, 15.841526, 11.434347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.792915, 16.059879, 11.492126>,  <17.928146, 16.423801, 11.588423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.792915, 16.059879, 11.492126> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253323, 0.158392, -0.954327,
		0.906384, -0.383621, 0.176926,
		-0.338077, -0.909806, -0.240744,
		17.691492, 15.786938, 11.419903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.509060, 16.037954, 11.276369>,  <17.928146, 16.423801, 11.588423>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.509060, 16.037954, 11.276369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.180954, 15.850594, 11.145059>,  <17.984091, 15.738176, 11.066273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.180954, 15.850594, 11.145059>,  <18.509060, 16.037954, 11.276369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.180954, 15.850594, 11.145059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393467, -0.045517, -0.918211,
		0.415152, -0.882341, 0.221637,
		-0.820264, -0.468404, -0.328275,
		17.934875, 15.710073, 11.046576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.687584, 15.523783, 10.719769>,  <18.509060, 16.037954, 11.276369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.687584, 15.523783, 10.719769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.292885, 15.565739, 10.670245>,  <18.056067, 15.590912, 10.640531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.292885, 15.565739, 10.670245>,  <18.687584, 15.523783, 10.719769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.292885, 15.565739, 10.670245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097938, -0.223385, -0.969797,
		-0.129377, -0.969070, 0.210152,
		-0.986747, 0.104888, -0.123810,
		17.996861, 15.597205, 10.633102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.540863, 15.201256, 10.054848>,  <18.687584, 15.523783, 10.719769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.540863, 15.201256, 10.054848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.229305, 15.437336, 10.139688>,  <18.042370, 15.578984, 10.190593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.229305, 15.437336, 10.139688>,  <18.540863, 15.201256, 10.054848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.229305, 15.437336, 10.139688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001541, 0.336394, -0.941720,
		-0.627153, -0.733828, -0.261106,
		-0.778895, 0.590200, 0.212101,
		17.995636, 15.614396, 10.203319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.191212, 15.153844, 9.436381>,  <18.540863, 15.201256, 10.054848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.191212, 15.153844, 9.436381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.081577, 15.490952, 9.621689>,  <18.015797, 15.693216, 9.732873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.081577, 15.490952, 9.621689>,  <18.191212, 15.153844, 9.436381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.081577, 15.490952, 9.621689> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096544, 0.503394, -0.858646,
		-0.956846, -0.190619, -0.219338,
		-0.274088, 0.842768, 0.463268,
		17.999352, 15.743782, 9.760669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.719185, 15.520625, 8.959550>,  <18.191212, 15.153844, 9.436381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.719185, 15.520625, 8.959550> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.847111, 15.809948, 9.204350>,  <17.923866, 15.983541, 9.351231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.847111, 15.809948, 9.204350>,  <17.719185, 15.520625, 8.959550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.847111, 15.809948, 9.204350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333384, 0.518713, -0.787269,
		-0.886890, 0.455810, -0.075248,
		0.319813, 0.723308, 0.612001,
		17.943054, 16.026939, 9.387951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.502312, 16.186686, 8.667352>,  <17.719185, 15.520625, 8.959550>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.502312, 16.186686, 8.667352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.811440, 16.234531, 8.916652>,  <17.996916, 16.263239, 9.066232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.811440, 16.234531, 8.916652>,  <17.502312, 16.186686, 8.667352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.811440, 16.234531, 8.916652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476846, 0.538589, -0.694651,
		-0.418766, 0.834035, 0.359195,
		0.772821, 0.119616, 0.623249,
		18.043285, 16.270416, 9.103626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.600409, 16.850399, 8.919354>,  <17.502312, 16.186686, 8.667352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.600409, 16.850399, 8.919354> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.962242, 16.681561, 8.895471>,  <18.179342, 16.580257, 8.881140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.962242, 16.681561, 8.895471>,  <17.600409, 16.850399, 8.919354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.962242, 16.681561, 8.895471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228911, 0.599110, -0.767246,
		0.359623, 0.680370, 0.638567,
		0.904583, -0.422094, -0.059710,
		18.233618, 16.554932, 8.877558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.314850, 17.538363, 8.852197>,  <17.600409, 16.850399, 8.919354>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.314850, 17.538363, 8.852197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.000278, 17.783600, 8.882266>,  <16.811537, 17.930742, 8.900308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.000278, 17.783600, 8.882266>,  <17.314850, 17.538363, 8.852197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.000278, 17.783600, 8.882266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008753, -0.110630, 0.993823,
		0.617622, 0.782227, 0.081636,
		-0.786426, 0.613092, 0.075174,
		16.764351, 17.967527, 8.904819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.439137, 18.014034, 9.411923>,  <17.314850, 17.538363, 8.852197>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.439137, 18.014034, 9.411923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.041088, 18.014030, 9.372452>,  <16.802259, 18.014029, 9.348768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.041088, 18.014030, 9.372452>,  <17.439137, 18.014034, 9.411923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.041088, 18.014030, 9.372452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098531, 0.054893, 0.993619,
		0.005405, 0.998492, -0.054626,
		-0.995119, -0.000012, -0.098680,
		16.742552, 18.014027, 9.342848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.194080, 18.600082, 9.809503>,  <17.439137, 18.014034, 9.411923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.194080, 18.600082, 9.809503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.897888, 18.336998, 9.754216>,  <16.720173, 18.179148, 9.721045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.897888, 18.336998, 9.754216>,  <17.194080, 18.600082, 9.809503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.897888, 18.336998, 9.754216> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361798, 0.216788, 0.906700,
		-0.566383, 0.721401, -0.398486,
		-0.740481, -0.657711, -0.138217,
		16.675743, 18.139685, 9.712751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.572489, 18.908442, 10.033998>,  <17.194080, 18.600082, 9.809503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.572489, 18.908442, 10.033998> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.464924, 18.523273, 10.042692>,  <16.400385, 18.292173, 10.047909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.464924, 18.523273, 10.042692>,  <16.572489, 18.908442, 10.033998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.464924, 18.523273, 10.042692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414162, 0.135977, 0.899989,
		-0.869572, 0.233015, -0.435371,
		-0.268911, -0.962920, 0.021736,
		16.384251, 18.234398, 10.049212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.935778, 18.906742, 10.343713>,  <16.572489, 18.908442, 10.033998>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.935778, 18.906742, 10.343713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.075558, 18.532955, 10.371011>,  <16.159426, 18.308683, 10.387390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.075558, 18.532955, 10.371011>,  <15.935778, 18.906742, 10.343713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.075558, 18.532955, 10.371011> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229647, -0.014807, 0.973161,
		-0.908376, -0.355744, -0.219772,
		0.349450, -0.934466, 0.068246,
		16.180393, 18.252615, 10.391484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.422588, 18.506741, 10.691796>,  <15.935778, 18.906742, 10.343713>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.422588, 18.506741, 10.691796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.781215, 18.339100, 10.749103>,  <15.996390, 18.238516, 10.783486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.781215, 18.339100, 10.749103>,  <15.422588, 18.506741, 10.691796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.781215, 18.339100, 10.749103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221123, -0.143276, 0.964664,
		-0.383765, -0.896563, -0.221129,
		0.896565, -0.419101, 0.143266,
		16.050184, 18.213369, 10.792083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.356091, 18.033131, 11.287910>,  <15.422588, 18.506741, 10.691796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.356091, 18.033131, 11.287910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.751527, 18.082668, 11.253613>,  <15.988789, 18.112391, 11.233034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.751527, 18.082668, 11.253613>,  <15.356091, 18.033131, 11.287910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.751527, 18.082668, 11.253613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066093, 0.154857, 0.985724,
		0.135343, -0.980145, 0.144906,
		0.988592, 0.123833, -0.085740,
		16.048103, 18.119822, 11.227890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.724340, 17.515921, 11.831266>,  <15.356091, 18.033131, 11.287910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.724340, 17.515921, 11.831266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.960637, 17.822659, 11.730890>,  <16.102415, 18.006702, 11.670665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.960637, 17.822659, 11.730890>,  <15.724340, 17.515921, 11.831266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.960637, 17.822659, 11.730890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139231, 0.209459, 0.967854,
		0.794757, -0.606691, 0.016968,
		0.590742, 0.766846, -0.250939,
		16.137859, 18.052711, 11.655608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.388180, 17.372538, 12.114631>,  <15.724340, 17.515921, 11.831266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.388180, 17.372538, 12.114631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.389965, 17.767803, 12.053296>,  <16.391037, 18.004963, 12.016496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.389965, 17.767803, 12.053296>,  <16.388180, 17.372538, 12.114631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.389965, 17.767803, 12.053296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085400, 0.152401, 0.984622,
		0.996337, -0.017491, -0.083709,
		0.004464, 0.988164, -0.153337,
		16.391304, 18.064253, 12.007295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.822746, 17.528219, 12.622025>,  <16.388180, 17.372538, 12.114631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.822746, 17.528219, 12.622025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.711311, 17.896015, 12.511080>,  <16.644451, 18.116692, 12.444512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.711311, 17.896015, 12.511080>,  <16.822746, 17.528219, 12.622025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.711311, 17.896015, 12.511080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266650, 0.351495, 0.897412,
		0.922652, 0.176048, -0.343104,
		-0.278587, 0.919488, -0.277365,
		16.627735, 18.171862, 12.427871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.317028, 18.000830, 12.808306>,  <16.822746, 17.528219, 12.622025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.317028, 18.000830, 12.808306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.971531, 18.201962, 12.794984>,  <16.764233, 18.322641, 12.786991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.971531, 18.201962, 12.794984>,  <17.317028, 18.000830, 12.808306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.971531, 18.201962, 12.794984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094125, 0.225905, 0.969592,
		0.495063, 0.834344, -0.242453,
		-0.863744, 0.502829, -0.033305,
		16.712408, 18.352810, 12.784992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.484238, 18.639645, 13.123026>,  <17.317028, 18.000830, 12.808306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.484238, 18.639645, 13.123026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.086201, 18.606373, 13.144471>,  <16.847378, 18.586411, 13.157338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.086201, 18.606373, 13.144471>,  <17.484238, 18.639645, 13.123026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.086201, 18.606373, 13.144471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020563, 0.356145, 0.934204,
		-0.096798, 0.930721, -0.352686,
		-0.995092, -0.083177, 0.053612,
		16.787674, 18.581419, 13.160555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.241632, 19.261330, 13.379729>,  <17.484238, 18.639645, 13.123026>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.241632, 19.261330, 13.379729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.978245, 18.973980, 13.469486>,  <16.820211, 18.801569, 13.523340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.978245, 18.973980, 13.469486>,  <17.241632, 19.261330, 13.379729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.978245, 18.973980, 13.469486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116214, 0.197525, 0.973385,
		-0.743579, 0.667023, -0.046580,
		-0.658471, -0.718376, 0.224393,
		16.780703, 18.758467, 13.536804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.689899, 19.495365, 13.928416>,  <17.241632, 19.261330, 13.379729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.689899, 19.495365, 13.928416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.700947, 19.096447, 13.955649>,  <16.707575, 18.857096, 13.971989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.700947, 19.096447, 13.955649>,  <16.689899, 19.495365, 13.928416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.700947, 19.096447, 13.955649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050928, 0.069424, 0.996287,
		-0.998320, -0.024048, 0.052708,
		0.027617, -0.997298, 0.068082,
		16.709232, 18.797258, 13.976074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.104963, 19.963936, 14.161654>,  <16.689899, 19.495365, 13.928416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.104963, 19.963936, 14.161654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.070683, 20.356071, 14.232745>,  <16.050114, 20.591352, 14.275400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.070683, 20.356071, 14.232745>,  <16.104963, 19.963936, 14.161654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.070683, 20.356071, 14.232745> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109514, 0.168036, -0.979679,
		-0.990284, -0.103423, 0.092960,
		-0.085700, 0.980340, 0.177729,
		16.044971, 20.650173, 14.286064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.365886, 20.203289, 13.817046>,  <16.104963, 19.963936, 14.161654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.365886, 20.203289, 13.817046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.606574, 20.521229, 13.848413>,  <15.750987, 20.711992, 13.867232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.606574, 20.521229, 13.848413>,  <15.365886, 20.203289, 13.817046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.606574, 20.521229, 13.848413> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290254, 0.309078, -0.905661,
		-0.744099, 0.522195, 0.416687,
		0.601721, 0.794847, 0.078416,
		15.787090, 20.759684, 13.871937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.963598, 20.697836, 13.319477>,  <15.365886, 20.203289, 13.817046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.963598, 20.697836, 13.319477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.318252, 20.874382, 13.374726>,  <15.531044, 20.980310, 13.407876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.318252, 20.874382, 13.374726>,  <14.963598, 20.697836, 13.319477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.318252, 20.874382, 13.374726> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009970, 0.280351, -0.959846,
		-0.462366, 0.852408, 0.244168,
		0.886633, 0.441365, 0.138123,
		15.584242, 21.006792, 13.416163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.781729, 21.229877, 12.878939>,  <14.963598, 20.697836, 13.319477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.781729, 21.229877, 12.878939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.178216, 21.200855, 12.923159>,  <15.416108, 21.183441, 12.949691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.178216, 21.200855, 12.923159>,  <14.781729, 21.229877, 12.878939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.178216, 21.200855, 12.923159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128866, 0.342596, -0.930603,
		0.029646, 0.936677, 0.348938,
		0.991219, -0.072555, 0.110549,
		15.475581, 21.179089, 12.956324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.042098, 21.871042, 12.642094>,  <14.781729, 21.229877, 12.878939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.042098, 21.871042, 12.642094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.330462, 21.594772, 12.619266>,  <15.503481, 21.429010, 12.605569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.330462, 21.594772, 12.619266>,  <15.042098, 21.871042, 12.642094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.330462, 21.594772, 12.619266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237357, 0.323438, -0.915996,
		0.651114, 0.646805, 0.397106,
		0.720911, -0.690674, -0.057071,
		15.546736, 21.387569, 12.602144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.748471, 22.311214, 12.433374>,  <15.042098, 21.871042, 12.642094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.748471, 22.311214, 12.433374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.776942, 21.925251, 12.332269>,  <15.794024, 21.693674, 12.271605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.776942, 21.925251, 12.332269>,  <15.748471, 22.311214, 12.433374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.776942, 21.925251, 12.332269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416593, 0.259003, -0.871417,
		0.906303, -0.043275, 0.420408,
		0.071177, -0.964907, -0.252763,
		15.798295, 21.635778, 12.256440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.317797, 22.302511, 11.906099>,  <15.748471, 22.311214, 12.433374>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.317797, 22.302511, 11.906099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.171276, 21.931774, 11.873156>,  <16.083363, 21.709332, 11.853390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.171276, 21.931774, 11.873156>,  <16.317797, 22.302511, 11.906099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.171276, 21.931774, 11.873156> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192041, 0.011302, -0.981322,
		0.910462, -0.375278, 0.173852,
		-0.366303, -0.926843, -0.082359,
		16.061384, 21.653721, 11.848448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.885235, 21.870228, 11.590023>,  <16.317797, 22.302511, 11.906099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.885235, 21.870228, 11.590023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.515244, 21.734425, 11.521727>,  <16.293249, 21.652943, 11.480749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.515244, 21.734425, 11.521727>,  <16.885235, 21.870228, 11.590023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.515244, 21.734425, 11.521727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187584, -0.017162, -0.982099,
		0.330501, -0.940446, 0.079561,
		-0.924977, -0.339509, -0.170740,
		16.237751, 21.632572, 11.470505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.969471, 21.334509, 11.151676>,  <16.885235, 21.870228, 11.590023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.969471, 21.334509, 11.151676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.579594, 21.417831, 11.119217>,  <16.345667, 21.467825, 11.099741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.579594, 21.417831, 11.119217>,  <16.969471, 21.334509, 11.151676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.579594, 21.417831, 11.119217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056910, -0.119835, -0.991162,
		-0.216191, -0.970695, 0.104947,
		-0.974691, 0.208307, -0.081149,
		16.287186, 21.480324, 11.094872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.672945, 20.833656, 10.762774>,  <16.969471, 21.334509, 11.151676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.672945, 20.833656, 10.762774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.461956, 21.170731, 10.719584>,  <16.335363, 21.372974, 10.693671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.461956, 21.170731, 10.719584>,  <16.672945, 20.833656, 10.762774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.461956, 21.170731, 10.719584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092161, -0.069584, -0.993310,
		-0.844559, -0.533893, -0.040959,
		-0.527471, 0.842684, -0.107972,
		16.303715, 21.423536, 10.687193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.193645, 20.683184, 10.215982>,  <16.672945, 20.833656, 10.762774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.193645, 20.683184, 10.215982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.170364, 21.081600, 10.242851>,  <16.156395, 21.320650, 10.258973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.170364, 21.081600, 10.242851>,  <16.193645, 20.683184, 10.215982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.170364, 21.081600, 10.242851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103246, 0.072932, -0.991978,
		-0.992952, -0.050800, -0.107082,
		-0.058202, 0.996042, 0.067173,
		16.152905, 21.380413, 10.263003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.694377, 20.910027, 9.659493>,  <16.193645, 20.683184, 10.215982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.694377, 20.910027, 9.659493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.929938, 21.219593, 9.752653>,  <16.071276, 21.405333, 9.808549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.929938, 21.219593, 9.752653>,  <15.694377, 20.910027, 9.659493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.929938, 21.219593, 9.752653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010934, 0.280515, -0.959787,
		-0.808129, 0.567769, 0.156734,
		0.588904, 0.773918, 0.232900,
		16.106609, 21.451769, 9.822523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<16.427898, 19.274134, 17.677616> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.625568, 19.621784, 17.669523>,  <16.744169, 19.830376, 17.664667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.625568, 19.621784, 17.669523>,  <16.427898, 19.274134, 17.677616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.625568, 19.621784, 17.669523> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444383, 0.232532, -0.865132,
		-0.747206, 0.436515, 0.501137,
		0.494173, 0.869128, -0.020230,
		16.773821, 19.882523, 17.663454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.898642, 19.662870, 17.490788>,  <16.427898, 19.274134, 17.677616>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.898642, 19.662870, 17.490788> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.234150, 19.871838, 17.429415>,  <16.435455, 19.997219, 17.392591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.234150, 19.871838, 17.429415>,  <15.898642, 19.662870, 17.490788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.234150, 19.871838, 17.429415> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371610, 0.343300, -0.862584,
		-0.397958, 0.780527, 0.482086,
		0.838770, 0.522420, -0.153433,
		16.485781, 20.028564, 17.383385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.610803, 20.305635, 17.389164>,  <15.898642, 19.662870, 17.490788>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.610803, 20.305635, 17.389164> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.975295, 20.308922, 17.224438>,  <16.193991, 20.310894, 17.125603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.975295, 20.308922, 17.224438>,  <15.610803, 20.305635, 17.389164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.975295, 20.308922, 17.224438> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381994, 0.390843, -0.837450,
		0.154076, 0.920421, 0.359286,
		0.911231, 0.008214, -0.411814,
		16.248665, 20.311386, 17.100893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.711122, 21.003616, 17.083328>,  <15.610803, 20.305635, 17.389164>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.711122, 21.003616, 17.083328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.950866, 20.755238, 16.881262>,  <16.094713, 20.606211, 16.760021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.950866, 20.755238, 16.881262>,  <15.711122, 21.003616, 17.083328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.950866, 20.755238, 16.881262> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282039, 0.426796, -0.859244,
		0.749147, 0.657473, 0.080674,
		0.599361, -0.620946, -0.505166,
		16.130674, 20.568954, 16.729712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.123669, 21.436199, 16.609863>,  <15.711122, 21.003616, 17.083328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.123669, 21.436199, 16.609863> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.190006, 21.075382, 16.450459>,  <16.229809, 20.858892, 16.354816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.190006, 21.075382, 16.450459>,  <16.123669, 21.436199, 16.609863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.190006, 21.075382, 16.450459> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040998, 0.397452, -0.916707,
		0.985299, 0.168370, 0.028934,
		0.165845, -0.902044, -0.398512,
		16.239759, 20.804770, 16.330904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.373455, 21.573502, 15.924298>,  <16.123669, 21.436199, 16.609863>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.373455, 21.573502, 15.924298> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.244484, 21.195572, 15.901147>,  <16.167101, 20.968815, 15.887257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.244484, 21.195572, 15.901147>,  <16.373455, 21.573502, 15.924298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.244484, 21.195572, 15.901147> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113003, 0.022287, -0.993345,
		0.939825, -0.326821, 0.099582,
		-0.322426, -0.944824, -0.057878,
		16.147757, 20.912125, 15.883783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.847038, 21.212074, 15.525582>,  <16.373455, 21.573502, 15.924298>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.847038, 21.212074, 15.525582> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.514080, 20.992359, 15.496181>,  <16.314306, 20.860531, 15.478539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.514080, 20.992359, 15.496181>,  <16.847038, 21.212074, 15.525582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.514080, 20.992359, 15.496181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158994, -0.109642, -0.981172,
		0.530886, -0.828409, 0.178599,
		-0.832395, -0.549287, -0.073504,
		16.264362, 20.827574, 15.474130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.012514, 20.612675, 15.028476>,  <16.847038, 21.212074, 15.525582>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.012514, 20.612675, 15.028476> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.614094, 20.645367, 15.042323>,  <16.375042, 20.664982, 15.050632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.614094, 20.645367, 15.042323>,  <17.012514, 20.612675, 15.028476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.614094, 20.645367, 15.042323> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043719, -0.112305, -0.992712,
		-0.077243, -0.990307, 0.115434,
		-0.996054, 0.081727, 0.034620,
		16.315277, 20.669886, 15.052709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.646832, 20.053534, 14.650485>,  <17.012514, 20.612675, 15.028476>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.646832, 20.053534, 14.650485> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.416477, 20.378883, 14.683404>,  <16.278265, 20.574093, 14.703156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.416477, 20.378883, 14.683404>,  <16.646832, 20.053534, 14.650485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.416477, 20.378883, 14.683404> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213926, -0.052771, -0.975423,
		-0.789044, -0.579339, 0.204393,
		-0.575886, 0.813377, 0.082297,
		16.243711, 20.622896, 14.708093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.277472, 19.573715, 15.020822>,  <16.646832, 20.053534, 14.650485>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.277472, 19.573715, 15.020822> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.430042, 19.240868, 14.859776>,  <16.521584, 19.041159, 14.763149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.430042, 19.240868, 14.859776>,  <16.277472, 19.573715, 15.020822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.430042, 19.240868, 14.859776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193259, -0.497695, 0.845547,
		-0.903973, -0.244704, -0.350647,
		0.381425, -0.832117, -0.402612,
		16.544470, 18.991232, 14.738993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.798697, 19.091949, 15.110183>,  <16.277472, 19.573715, 15.020822>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.798697, 19.091949, 15.110183> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.142815, 18.902180, 15.035546>,  <16.349285, 18.788319, 14.990765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.142815, 18.902180, 15.035546>,  <15.798697, 19.091949, 15.110183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.142815, 18.902180, 15.035546> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191179, -0.639532, 0.744614,
		-0.472592, -0.604915, -0.640886,
		0.860295, -0.474422, -0.186590,
		16.400904, 18.759853, 14.979569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.670898, 18.458063, 15.436955>,  <15.798697, 19.091949, 15.110183>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.670898, 18.458063, 15.436955> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.058533, 18.428703, 15.342732>,  <16.291113, 18.411087, 15.286199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.058533, 18.428703, 15.342732>,  <15.670898, 18.458063, 15.436955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.058533, 18.428703, 15.342732> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149076, -0.586555, 0.796071,
		-0.196598, -0.806577, -0.557479,
		0.969085, -0.073399, -0.235557,
		16.349258, 18.406683, 15.272065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.722754, 17.798243, 15.352959>,  <15.670898, 18.458063, 15.436955>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.722754, 17.798243, 15.352959> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.066345, 17.975273, 15.455939>,  <16.272501, 18.081491, 15.517728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.066345, 17.975273, 15.455939>,  <15.722754, 17.798243, 15.352959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.066345, 17.975273, 15.455939> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022876, -0.469150, 0.882822,
		0.511500, -0.764215, -0.392865,
		0.858979, 0.442576, 0.257452,
		16.324039, 18.108046, 15.533175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.139463, 17.311247, 15.554661>,  <15.722754, 17.798243, 15.352959>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.139463, 17.311247, 15.554661> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.326195, 17.619087, 15.728919>,  <16.438234, 17.803791, 15.833474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.326195, 17.619087, 15.728919>,  <16.139463, 17.311247, 15.554661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.326195, 17.619087, 15.728919> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091395, -0.531965, 0.841820,
		0.879612, -0.353170, -0.318674,
		0.466829, 0.769600, 0.435645,
		16.466244, 17.849968, 15.859612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.659073, 16.984001, 16.112823>,  <16.139463, 17.311247, 15.554661>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.659073, 16.984001, 16.112823> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.648312, 17.371597, 16.211073>,  <16.641855, 17.604155, 16.270021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.648312, 17.371597, 16.211073>,  <16.659073, 16.984001, 16.112823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.648312, 17.371597, 16.211073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250074, -0.231374, 0.940175,
		0.967853, 0.086718, -0.236095,
		-0.026903, 0.968992, 0.245622,
		16.640240, 17.662294, 16.284760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.295675, 17.112785, 16.496571>,  <16.659073, 16.984001, 16.112823>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.295675, 17.112785, 16.496571> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.047215, 17.406254, 16.606771>,  <16.898138, 17.582335, 16.672892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.047215, 17.406254, 16.606771>,  <17.295675, 17.112785, 16.496571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.047215, 17.406254, 16.606771> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285117, -0.115898, 0.951460,
		0.729987, 0.669550, -0.137191,
		-0.621150, 0.733669, 0.275504,
		16.860870, 17.626354, 16.689423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.637129, 17.512705, 16.886396>,  <17.295675, 17.112785, 16.496571>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.637129, 17.512705, 16.886396> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.257717, 17.582848, 16.991879>,  <17.030069, 17.624933, 17.055168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.257717, 17.582848, 16.991879>,  <17.637129, 17.512705, 16.886396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.257717, 17.582848, 16.991879> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197862, -0.322011, 0.925829,
		0.247266, 0.930354, 0.270741,
		-0.948530, 0.175357, 0.263704,
		16.973158, 17.635454, 17.070990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.631376, 17.933653, 17.496641>,  <17.637129, 17.512705, 16.886396>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.631376, 17.933653, 17.496641> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.279720, 17.743313, 17.507095>,  <17.068727, 17.629108, 17.513369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.279720, 17.743313, 17.507095>,  <17.631376, 17.933653, 17.496641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.279720, 17.743313, 17.507095> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125964, -0.179128, 0.975728,
		-0.459617, 0.861093, 0.217419,
		-0.879139, -0.475848, 0.026137,
		17.015978, 17.600557, 17.514936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.327583, 18.169579, 18.164303>,  <17.631376, 17.933653, 17.496641>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.327583, 18.169579, 18.164303> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.133545, 17.842594, 18.040081>,  <17.017122, 17.646404, 17.965548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.133545, 17.842594, 18.040081>,  <17.327583, 18.169579, 18.164303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.133545, 17.842594, 18.040081> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107251, -0.296838, 0.948886,
		-0.867860, 0.493607, 0.056321,
		-0.485095, -0.817459, -0.310553,
		16.988016, 17.597357, 17.946915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.864004, 18.099356, 18.589251>,  <17.327583, 18.169579, 18.164303>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.864004, 18.099356, 18.589251> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.876652, 17.725594, 18.447329>,  <16.884239, 17.501337, 18.362175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.876652, 17.725594, 18.447329>,  <16.864004, 18.099356, 18.589251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.876652, 17.725594, 18.447329> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049527, -0.353084, 0.934280,
		-0.998272, -0.047112, 0.035115,
		0.031618, -0.934405, -0.354807,
		16.886137, 17.445272, 18.340887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.296322, 17.719202, 18.922653>,  <16.864004, 18.099356, 18.589251>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.296322, 17.719202, 18.922653> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.552376, 17.451035, 18.772577>,  <16.706009, 17.290134, 18.682531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.552376, 17.451035, 18.772577>,  <16.296322, 17.719202, 18.922653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.552376, 17.451035, 18.772577> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057987, -0.444804, 0.893749,
		-0.766071, -0.593876, -0.245859,
		0.640135, -0.670418, -0.375189,
		16.744417, 17.249908, 18.660021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.125660, 17.207115, 19.187134>,  <16.296322, 17.719202, 18.922653>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.125660, 17.207115, 19.187134> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.483646, 17.061516, 19.083954>,  <16.698439, 16.974155, 19.022047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.483646, 17.061516, 19.083954>,  <16.125660, 17.207115, 19.187134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.483646, 17.061516, 19.083954> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034724, -0.519603, 0.853702,
		-0.444775, -0.772993, -0.452390,
		0.894969, -0.363997, -0.257948,
		16.752136, 16.952316, 19.006569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.232588, 16.591795, 19.491028>,  <16.125660, 17.207115, 19.187134>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.232588, 16.591795, 19.491028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.619957, 16.654442, 19.413439>,  <16.852379, 16.692030, 19.366886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.619957, 16.654442, 19.413439>,  <16.232588, 16.591795, 19.491028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.619957, 16.654442, 19.413439> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248319, -0.536789, 0.806347,
		0.022165, -0.829053, -0.558730,
		0.968425, 0.156615, -0.193972,
		16.910484, 16.701426, 19.355247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<22.537945, 19.690870, 18.554792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.162342, 19.704990, 18.691626>,  <21.936981, 19.713463, 18.773726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.162342, 19.704990, 18.691626>,  <22.537945, 19.690870, 18.554792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.162342, 19.704990, 18.691626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328832, -0.383401, -0.863060,
		0.100690, -0.922907, 0.371624,
		-0.939005, 0.035301, 0.342085,
		21.880640, 19.715580, 18.794250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.247166, 18.959761, 18.491861>,  <22.537945, 19.690870, 18.554792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.247166, 18.959761, 18.491861> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.959686, 19.237823, 18.485817>,  <21.787199, 19.404661, 18.482191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.959686, 19.237823, 18.485817>,  <22.247166, 18.959761, 18.491861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.959686, 19.237823, 18.485817> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380623, -0.411514, -0.828120,
		-0.581893, -0.589417, 0.560347,
		-0.718699, 0.695158, -0.015112,
		21.744076, 19.446371, 18.481283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.753042, 18.697887, 18.027517>,  <22.247166, 18.959761, 18.491861>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.753042, 18.697887, 18.027517> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.612686, 19.071365, 18.056051>,  <21.528473, 19.295452, 18.073172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.612686, 19.071365, 18.056051>,  <21.753042, 18.697887, 18.027517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.612686, 19.071365, 18.056051> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542980, -0.140807, -0.827856,
		-0.762921, -0.329222, 0.556386,
		-0.350892, 0.933695, 0.071336,
		21.507418, 19.351473, 18.077452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.929449, 18.846941, 17.878275>,  <21.753042, 18.697887, 18.027517>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.929449, 18.846941, 17.878275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.107853, 19.190430, 17.777340>,  <21.214895, 19.396523, 17.716778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.107853, 19.190430, 17.777340>,  <20.929449, 18.846941, 17.878275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.107853, 19.190430, 17.777340> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569519, 0.054796, -0.820150,
		-0.690453, 0.509504, 0.513498,
		0.446007, 0.858722, -0.252338,
		21.241655, 19.448046, 17.701639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.436893, 19.319510, 17.567705>,  <20.929449, 18.846941, 17.878275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.436893, 19.319510, 17.567705> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.781780, 19.476154, 17.439194>,  <20.988712, 19.570141, 17.362087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.781780, 19.476154, 17.439194>,  <20.436893, 19.319510, 17.567705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.781780, 19.476154, 17.439194> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414139, 0.179783, -0.892282,
		-0.291667, 0.902396, 0.317194,
		0.862218, 0.391611, -0.321281,
		21.040445, 19.593637, 17.342810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.181925, 19.675222, 17.052132>,  <20.436893, 19.319510, 17.567705>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.181925, 19.675222, 17.052132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.578804, 19.689629, 17.004393>,  <20.816933, 19.698273, 16.975748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.578804, 19.689629, 17.004393>,  <20.181925, 19.675222, 17.052132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.578804, 19.689629, 17.004393> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123981, 0.184950, -0.974896,
		-0.013037, 0.982088, 0.187973,
		0.992199, 0.036015, -0.119349,
		20.876463, 19.700434, 16.968588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.356640, 20.330109, 16.709612>,  <20.181925, 19.675222, 17.052132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.356640, 20.330109, 16.709612> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.611580, 20.030884, 16.635656>,  <20.764544, 19.851349, 16.591284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.611580, 20.030884, 16.635656>,  <20.356640, 20.330109, 16.709612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.611580, 20.030884, 16.635656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137604, 0.125589, -0.982493,
		0.758188, 0.651634, -0.022893,
		0.637351, -0.748064, -0.184888,
		20.802786, 19.806465, 16.580191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.714495, 20.599409, 16.220503>,  <20.356640, 20.330109, 16.709612>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.714495, 20.599409, 16.220503> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.818192, 20.214390, 16.188761>,  <20.880409, 19.983379, 16.169716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.818192, 20.214390, 16.188761>,  <20.714495, 20.599409, 16.220503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.818192, 20.214390, 16.188761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065605, 0.064422, -0.995764,
		0.963582, 0.263350, -0.046447,
		0.259242, -0.962547, -0.079353,
		20.895964, 19.925625, 16.164955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.234465, 20.671070, 15.850048>,  <20.714495, 20.599409, 16.220503>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.234465, 20.671070, 15.850048> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.138332, 20.285221, 15.806689>,  <21.080654, 20.053713, 15.780674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.138332, 20.285221, 15.806689>,  <21.234465, 20.671070, 15.850048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.138332, 20.285221, 15.806689> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230645, 0.051726, -0.971662,
		0.942892, -0.258520, 0.210053,
		-0.240328, -0.964620, -0.108398,
		21.066235, 19.995834, 15.774170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.781616, 20.364794, 15.482269>,  <21.234465, 20.671070, 15.850048>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.781616, 20.364794, 15.482269> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.478569, 20.111401, 15.419383>,  <21.296741, 19.959364, 15.381651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.478569, 20.111401, 15.419383>,  <21.781616, 20.364794, 15.482269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.478569, 20.111401, 15.419383> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182398, 0.025791, -0.982886,
		0.626697, -0.773327, 0.096007,
		-0.757616, -0.633483, -0.157217,
		21.251284, 19.921356, 15.372218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.056690, 19.884989, 15.084975>,  <21.781616, 20.364794, 15.482269>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.056690, 19.884989, 15.084975> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.665428, 19.835800, 15.017940>,  <21.430670, 19.806288, 14.977718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.665428, 19.835800, 15.017940>,  <22.056690, 19.884989, 15.084975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.665428, 19.835800, 15.017940> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172004, -0.026136, -0.984749,
		0.116716, -0.992066, 0.046716,
		-0.978157, -0.122971, -0.167589,
		21.371981, 19.798908, 14.967663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.063847, 19.469172, 14.657709>,  <22.056690, 19.884989, 15.084975>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.063847, 19.469172, 14.657709> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.693775, 19.615520, 14.617352>,  <21.471731, 19.703329, 14.593139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.693775, 19.615520, 14.617352>,  <22.063847, 19.469172, 14.657709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.693775, 19.615520, 14.617352> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081583, -0.067903, -0.994351,
		-0.370654, -0.928185, 0.032973,
		-0.925181, 0.365870, -0.100893,
		21.416222, 19.725281, 14.587085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.826077, 19.054436, 14.054717>,  <22.063847, 19.469172, 14.657709>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.826077, 19.054436, 14.054717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.576378, 19.364826, 14.090886>,  <21.426559, 19.551060, 14.112587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.576378, 19.364826, 14.090886>,  <21.826077, 19.054436, 14.054717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.576378, 19.364826, 14.090886> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134949, 0.006896, -0.990829,
		-0.769484, -0.630724, 0.100412,
		-0.624246, 0.775977, 0.090422,
		21.389103, 19.597620, 14.118012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.222837, 18.934082, 13.700397>,  <21.826077, 19.054436, 14.054717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.222837, 18.934082, 13.700397> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.258858, 19.332260, 13.712913>,  <21.280470, 19.571167, 13.720422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.258858, 19.332260, 13.712913>,  <21.222837, 18.934082, 13.700397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.258858, 19.332260, 13.712913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214959, 0.050102, -0.975337,
		-0.972463, 0.081102, 0.218492,
		0.090049, 0.995446, 0.031289,
		21.285872, 19.630894, 13.722300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.685991, 18.494591, 13.613735>,  <21.222837, 18.934082, 13.700397>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.685991, 18.494591, 13.613735> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.903442, 18.189384, 13.473865>,  <21.033913, 18.006260, 13.389942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.903442, 18.189384, 13.473865>,  <20.685991, 18.494591, 13.613735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.903442, 18.189384, 13.473865> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209207, -0.280282, 0.936843,
		-0.812834, -0.582450, 0.007259,
		0.543630, -0.763016, -0.349676,
		21.066532, 17.960480, 13.368961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.550852, 17.916349, 14.017338>,  <20.685991, 18.494591, 13.613735>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.550852, 17.916349, 14.017338> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.887741, 17.811199, 13.829059>,  <21.089874, 17.748110, 13.716091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.887741, 17.811199, 13.829059>,  <20.550852, 17.916349, 14.017338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.887741, 17.811199, 13.829059> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361863, -0.371548, 0.854989,
		-0.399647, -0.890419, -0.217799,
		0.842221, -0.262880, -0.470698,
		21.140408, 17.732336, 13.687850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.665573, 17.243423, 14.205840>,  <20.550852, 17.916349, 14.017338>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.665573, 17.243423, 14.205840> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.034714, 17.359425, 14.104453>,  <21.256197, 17.429026, 14.043621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.034714, 17.359425, 14.104453>,  <20.665573, 17.243423, 14.205840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.034714, 17.359425, 14.104453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365009, -0.448434, 0.815890,
		0.122947, -0.845462, -0.519691,
		0.922851, 0.290003, -0.253467,
		21.311569, 17.446426, 14.028413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.059227, 16.642361, 14.312015>,  <20.665573, 17.243423, 14.205840>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.059227, 16.642361, 14.312015> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.323540, 16.941971, 14.292733>,  <21.482128, 17.121737, 14.281164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.323540, 16.941971, 14.292733>,  <21.059227, 16.642361, 14.312015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.323540, 16.941971, 14.292733> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499671, -0.391063, 0.772916,
		0.560085, -0.534816, -0.632675,
		0.660783, 0.749027, -0.048203,
		21.521774, 17.166679, 14.278273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.842278, 16.375988, 14.430711>,  <21.059227, 16.642361, 14.312015>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.842278, 16.375988, 14.430711> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.845284, 16.767002, 14.514966>,  <21.847088, 17.001610, 14.565519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.845284, 16.767002, 14.514966>,  <21.842278, 16.375988, 14.430711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.845284, 16.767002, 14.514966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437317, -0.192646, 0.878431,
		0.899276, 0.085515, -0.428940,
		0.007514, 0.977535, 0.210639,
		21.847538, 17.060263, 14.578157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.499214, 16.554113, 14.647175>,  <21.842278, 16.375988, 14.430711>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.499214, 16.554113, 14.647175> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.236217, 16.821648, 14.785949>,  <22.078419, 16.982168, 14.869213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.236217, 16.821648, 14.785949>,  <22.499214, 16.554113, 14.647175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.236217, 16.821648, 14.785949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279431, -0.211167, 0.936657,
		0.699729, 0.712790, -0.048052,
		-0.657493, 0.668834, 0.346935,
		22.038969, 17.022297, 14.890029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.843758, 16.974646, 15.122588>,  <22.499214, 16.554113, 14.647175>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.843758, 16.974646, 15.122588> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.463848, 17.045174, 15.226001>,  <22.235903, 17.087490, 15.288049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.463848, 17.045174, 15.226001>,  <22.843758, 16.974646, 15.122588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.463848, 17.045174, 15.226001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284603, 0.143193, 0.947891,
		0.130114, 0.973862, -0.186183,
		-0.949774, 0.176322, 0.258533,
		22.178915, 17.098070, 15.303560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.914270, 17.462326, 15.582634>,  <22.843758, 16.974646, 15.122588>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.914270, 17.462326, 15.582634> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.538013, 17.332458, 15.622203>,  <22.312260, 17.254538, 15.645945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.538013, 17.332458, 15.622203>,  <22.914270, 17.462326, 15.582634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.538013, 17.332458, 15.622203> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075641, 0.083593, 0.993625,
		-0.330866, 0.942127, -0.054073,
		-0.940641, -0.324667, 0.098922,
		22.255821, 17.235058, 15.651879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.583099, 17.962254, 16.098759>,  <22.914270, 17.462326, 15.582634>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.583099, 17.962254, 16.098759> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.364853, 17.629230, 16.137035>,  <22.233906, 17.429417, 16.160002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.364853, 17.629230, 16.137035>,  <22.583099, 17.962254, 16.098759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.364853, 17.629230, 16.137035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125172, 0.193864, 0.973010,
		-0.828636, 0.518910, -0.209988,
		-0.545614, -0.832556, 0.095690,
		22.201168, 17.379463, 16.165743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.129601, 18.079840, 16.578583>,  <22.583099, 17.962254, 16.098759>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.129601, 18.079840, 16.578583> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.117111, 17.680275, 16.564749>,  <22.109617, 17.440536, 16.556448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.117111, 17.680275, 16.564749>,  <22.129601, 18.079840, 16.578583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.117111, 17.680275, 16.564749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317799, -0.022884, 0.947882,
		-0.947644, 0.040586, -0.316739,
		-0.031222, -0.998914, -0.034584,
		22.107744, 17.380600, 16.554373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.457613, 17.865973, 16.824831>,  <22.129601, 18.079840, 16.578583>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.457613, 17.865973, 16.824831> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.689667, 17.543468, 16.871120>,  <21.828899, 17.349966, 16.898895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.689667, 17.543468, 16.871120>,  <21.457613, 17.865973, 16.824831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.689667, 17.543468, 16.871120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355644, -0.122915, 0.926504,
		-0.732778, -0.578652, -0.358048,
		0.580133, -0.806259, 0.115725,
		21.863707, 17.301590, 16.905838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.051033, 17.468361, 17.234406>,  <21.457613, 17.865973, 16.824831>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.051033, 17.468361, 17.234406> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.408058, 17.298210, 17.294254>,  <21.622272, 17.196119, 17.330164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.408058, 17.298210, 17.294254>,  <21.051033, 17.468361, 17.234406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.408058, 17.298210, 17.294254> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130497, 0.073945, 0.988687,
		-0.431627, -0.901991, 0.010491,
		0.892563, -0.425375, 0.149623,
		21.675827, 17.170597, 17.339142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.945553, 16.910816, 17.709618>,  <21.051033, 17.468361, 17.234406>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.945553, 16.910816, 17.709618> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.330761, 17.014458, 17.739178>,  <21.561886, 17.076643, 17.756914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.330761, 17.014458, 17.739178>,  <20.945553, 16.910816, 17.709618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.330761, 17.014458, 17.739178> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069428, -0.026377, 0.997238,
		0.260336, -0.965490, -0.007412,
		0.963019, 0.259102, 0.073899,
		21.619667, 17.092188, 17.761347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.147856, 16.410809, 18.142679>,  <20.945553, 16.910816, 17.709618>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.147856, 16.410809, 18.142679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.407948, 16.713917, 18.164520>,  <21.564003, 16.895782, 18.177624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.407948, 16.713917, 18.164520>,  <21.147856, 16.410809, 18.142679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.407948, 16.713917, 18.164520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012565, -0.061133, 0.998051,
		0.759633, -0.649649, -0.030229,
		0.650230, 0.757772, 0.054601,
		21.603016, 16.941248, 18.180901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.193399, 15.600922, 18.329378>,  <21.147856, 16.410809, 18.142679>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.193399, 15.600922, 18.329378> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.824306, 15.484737, 18.430727>,  <20.602850, 15.415027, 18.491535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.824306, 15.484737, 18.430727>,  <21.193399, 15.600922, 18.329378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.824306, 15.484737, 18.430727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268421, 0.012494, -0.963221,
		0.276613, -0.956805, -0.089495,
		-0.922733, -0.290462, 0.253371,
		20.547487, 15.397599, 18.506739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.030596, 15.114679, 17.842903>,  <21.193399, 15.600922, 18.329378>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.030596, 15.114679, 17.842903> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.687420, 15.256599, 17.991528>,  <20.481514, 15.341751, 18.080702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.687420, 15.256599, 17.991528>,  <21.030596, 15.114679, 17.842903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.687420, 15.256599, 17.991528> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423261, -0.078221, -0.902625,
		-0.291187, -0.931665, 0.217281,
		-0.857940, 0.354799, 0.371560,
		20.430038, 15.363039, 18.102995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.528862, 14.934972, 17.261620>,  <21.030596, 15.114679, 17.842903>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.528862, 14.934972, 17.261620> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.321381, 15.175610, 17.504612>,  <20.196892, 15.319992, 17.650408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.321381, 15.175610, 17.504612>,  <20.528862, 14.934972, 17.261620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.321381, 15.175610, 17.504612> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726136, 0.065075, -0.684465,
		-0.451302, -0.796147, 0.403084,
		-0.518704, 0.601594, 0.607479,
		20.165770, 15.356088, 17.686855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.938339, 14.558491, 17.371519>,  <20.528862, 14.934972, 17.261620>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.938339, 14.558491, 17.371519> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.889015, 14.952503, 17.419697>,  <19.859421, 15.188910, 17.448603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.889015, 14.952503, 17.419697>,  <19.938339, 14.558491, 17.371519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.889015, 14.952503, 17.419697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714552, -0.003911, -0.699571,
		-0.688629, -0.172327, 0.704339,
		-0.123310, 0.985032, 0.120443,
		19.852022, 15.248013, 17.455830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.177822, 14.722759, 17.224730>,  <19.938339, 14.558491, 17.371519>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.177822, 14.722759, 17.224730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.322285, 15.090153, 17.160290>,  <19.408962, 15.310589, 17.121626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.322285, 15.090153, 17.160290>,  <19.177822, 14.722759, 17.224730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.322285, 15.090153, 17.160290> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619990, 0.107467, -0.777215,
		-0.696546, 0.380577, 0.608264,
		0.361158, 0.918484, -0.161098,
		19.430632, 15.365698, 17.111961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.654425, 15.070992, 17.130646>,  <19.177822, 14.722759, 17.224730>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.654425, 15.070992, 17.130646> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.933281, 15.301529, 16.960083>,  <19.100595, 15.439851, 16.857744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.933281, 15.301529, 16.960083>,  <18.654425, 15.070992, 17.130646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.933281, 15.301529, 16.960083> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648499, 0.253341, -0.717822,
		-0.305684, 0.776948, 0.550372,
		0.697142, 0.576342, -0.426408,
		19.142424, 15.474431, 16.832161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.287775, 15.670697, 16.881733>,  <18.654425, 15.070992, 17.130646>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.287775, 15.670697, 16.881733> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.638016, 15.701443, 16.690981>,  <18.848160, 15.719891, 16.576530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.638016, 15.701443, 16.690981>,  <18.287775, 15.670697, 16.881733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.638016, 15.701443, 16.690981> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478276, 0.276197, -0.833647,
		0.067635, 0.958022, 0.278601,
		0.875602, 0.076865, -0.476879,
		18.900696, 15.724503, 16.547916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.370399, 16.382942, 16.582994>,  <18.287775, 15.670697, 16.881733>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.370399, 16.382942, 16.582994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.614483, 16.138760, 16.381010>,  <18.760933, 15.992249, 16.259819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.614483, 16.138760, 16.381010>,  <18.370399, 16.382942, 16.582994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.614483, 16.138760, 16.381010> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447549, 0.260314, -0.855533,
		0.653715, 0.748049, -0.114364,
		0.610210, -0.610458, -0.504960,
		18.797546, 15.955622, 16.229523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.442360, 16.819981, 15.942060>,  <18.370399, 16.382942, 16.582994>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.442360, 16.819981, 15.942060> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.582455, 16.458988, 15.841769>,  <18.666512, 16.242393, 15.781595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.582455, 16.458988, 15.841769>,  <18.442360, 16.819981, 15.942060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.582455, 16.458988, 15.841769> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137037, 0.215429, -0.966857,
		0.926583, 0.372986, -0.048222,
		0.350236, -0.902481, -0.250726,
		18.687525, 16.188244, 15.766552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.669338, 16.816515, 15.238250>,  <18.442360, 16.819981, 15.942060>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.669338, 16.816515, 15.238250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.582016, 16.433281, 15.312455>,  <18.529623, 16.203341, 15.356978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.582016, 16.433281, 15.312455>,  <18.669338, 16.816515, 15.238250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.582016, 16.433281, 15.312455> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342203, -0.102871, -0.933978,
		0.913914, -0.267377, -0.305402,
		-0.218308, -0.958085, 0.185513,
		18.516523, 16.145855, 15.368109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.879297, 16.411280, 14.661156>,  <18.669338, 16.816515, 15.238250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.879297, 16.411280, 14.661156> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.614887, 16.193733, 14.867942>,  <18.456242, 16.063206, 14.992014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.614887, 16.193733, 14.867942>,  <18.879297, 16.411280, 14.661156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.614887, 16.193733, 14.867942> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380652, -0.350673, -0.855647,
		0.646645, -0.762389, 0.024779,
		-0.661026, -0.543867, 0.516965,
		18.416580, 16.030573, 15.023031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.913332, 15.806461, 14.290532>,  <18.879297, 16.411280, 14.661156>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.913332, 15.806461, 14.290532> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.578918, 15.759735, 14.504972>,  <18.378271, 15.731699, 14.633636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.578918, 15.759735, 14.504972>,  <18.913332, 15.806461, 14.290532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.578918, 15.759735, 14.504972> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465649, -0.365728, -0.805862,
		0.290205, -0.923362, 0.251366,
		-0.836033, -0.116817, 0.536099,
		18.328108, 15.724690, 14.665801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.621763, 15.131866, 14.063854>,  <18.913332, 15.806461, 14.290532>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.621763, 15.131866, 14.063854> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.333580, 15.352474, 14.232028>,  <18.160669, 15.484838, 14.332932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.333580, 15.352474, 14.232028>,  <18.621763, 15.131866, 14.063854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.333580, 15.352474, 14.232028> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598213, -0.187548, -0.779081,
		-0.350827, -0.812805, 0.465047,
		-0.720459, 0.551520, 0.420434,
		18.117441, 15.517930, 14.358158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.044737, 14.812815, 13.888087>,  <18.621763, 15.131866, 14.063854>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.044737, 14.812815, 13.888087> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.915714, 15.185844, 13.952907>,  <17.838301, 15.409662, 13.991798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.915714, 15.185844, 13.952907>,  <18.044737, 14.812815, 13.888087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.915714, 15.185844, 13.952907> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617471, -0.077556, -0.782761,
		-0.717416, -0.352546, 0.600855,
		-0.322558, 0.932575, 0.162047,
		17.818947, 15.465617, 14.001521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<16.511732, 15.977777, 19.812773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.791958, 16.257839, 19.757647>,  <16.960093, 16.425877, 19.724571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.791958, 16.257839, 19.757647>,  <16.511732, 15.977777, 19.812773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.791958, 16.257839, 19.757647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541831, -0.396248, 0.741220,
		0.464359, -0.593945, -0.656962,
		0.700564, 0.700155, -0.137817,
		17.002127, 16.467886, 19.716301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.172256, 15.607971, 19.728149>,  <16.511732, 15.977777, 19.812773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.172256, 15.607971, 19.728149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.275578, 15.975639, 19.847080>,  <17.337570, 16.196239, 19.918438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.275578, 15.975639, 19.847080>,  <17.172256, 15.607971, 19.728149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.275578, 15.975639, 19.847080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529248, -0.392117, 0.752423,
		0.808193, -0.036994, -0.587755,
		0.258304, 0.919171, 0.297327,
		17.353069, 16.251390, 19.936279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.814211, 15.580225, 20.057838>,  <17.172256, 15.607971, 19.728149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.814211, 15.580225, 20.057838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.671448, 15.925289, 20.201191>,  <17.585791, 16.132328, 20.287203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.671448, 15.925289, 20.201191>,  <17.814211, 15.580225, 20.057838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.671448, 15.925289, 20.201191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526026, -0.131439, 0.840250,
		0.771955, 0.488407, -0.406870,
		-0.356906, 0.862660, 0.358380,
		17.564377, 16.184088, 20.308704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.440624, 15.963047, 20.300810>,  <17.814211, 15.580225, 20.057838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.440624, 15.963047, 20.300810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.118176, 16.090492, 20.500269>,  <17.924706, 16.166960, 20.619944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.118176, 16.090492, 20.500269>,  <18.440624, 15.963047, 20.300810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.118176, 16.090492, 20.500269> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500366, -0.082854, 0.861841,
		0.315908, 0.944257, -0.092633,
		-0.806124, 0.318613, 0.498648,
		17.876339, 16.186075, 20.649864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.600769, 16.589739, 20.754446>,  <18.440624, 15.963047, 20.300810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.600769, 16.589739, 20.754446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.274975, 16.436779, 20.928980>,  <18.079498, 16.345003, 21.033701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.274975, 16.436779, 20.928980>,  <18.600769, 16.589739, 20.754446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.274975, 16.436779, 20.928980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461299, 0.029297, 0.886761,
		-0.351880, 0.923533, 0.152538,
		-0.814484, -0.382399, 0.436334,
		18.030630, 16.322060, 21.059879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.621208, 16.826347, 21.424591>,  <18.600769, 16.589739, 20.754446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.621208, 16.826347, 21.424591> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.335365, 16.554073, 21.489094>,  <18.163860, 16.390709, 21.527796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.335365, 16.554073, 21.489094>,  <18.621208, 16.826347, 21.424591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.335365, 16.554073, 21.489094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209517, 0.011674, 0.977735,
		-0.667415, 0.732481, 0.134273,
		-0.714605, -0.680687, 0.161259,
		18.120983, 16.349867, 21.537472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.259226, 17.033384, 21.977428>,  <18.621208, 16.826347, 21.424591>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.259226, 17.033384, 21.977428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.167843, 16.643967, 21.975588>,  <18.113012, 16.410316, 21.974483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.167843, 16.643967, 21.975588>,  <18.259226, 17.033384, 21.977428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.167843, 16.643967, 21.975588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139308, -0.037369, 0.989544,
		-0.963535, 0.225428, 0.144160,
		-0.228458, -0.973543, -0.004602,
		18.099306, 16.351904, 21.974207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.598482, 16.892382, 22.442017>,  <18.259226, 17.033384, 21.977428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.598482, 16.892382, 22.442017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.813194, 16.556190, 22.412449>,  <17.942022, 16.354477, 22.394709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.813194, 16.556190, 22.412449>,  <17.598482, 16.892382, 22.442017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.813194, 16.556190, 22.412449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042140, -0.060797, 0.997260,
		-0.842668, -0.538426, 0.002783,
		0.536781, -0.840477, -0.073921,
		17.974228, 16.304047, 22.390272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.417227, 16.429075, 22.965746>,  <17.598482, 16.892382, 22.442017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.417227, 16.429075, 22.965746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.755161, 16.244179, 22.857981>,  <17.957922, 16.133242, 22.793322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.755161, 16.244179, 22.857981>,  <17.417227, 16.429075, 22.965746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.755161, 16.244179, 22.857981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220014, -0.158847, 0.962477,
		-0.487693, -0.872410, -0.032500,
		0.844837, -0.462242, -0.269411,
		18.008612, 16.105507, 22.777157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.386351, 15.719091, 23.310049>,  <17.417227, 16.429075, 22.965746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.386351, 15.719091, 23.310049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.749817, 15.854378, 23.212122>,  <17.967897, 15.935550, 23.153366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.749817, 15.854378, 23.212122>,  <17.386351, 15.719091, 23.310049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.749817, 15.854378, 23.212122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242319, 0.050309, 0.968892,
		0.340012, -0.939723, -0.036242,
		0.908666, 0.338217, -0.244818,
		18.022417, 15.955843, 23.138676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.833895, 15.379992, 23.826321>,  <17.386351, 15.719091, 23.310049>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.833895, 15.379992, 23.826321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.069588, 15.672070, 23.687973>,  <18.211002, 15.847316, 23.604963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.069588, 15.672070, 23.687973>,  <17.833895, 15.379992, 23.826321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.069588, 15.672070, 23.687973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447054, 0.061932, 0.892360,
		0.673015, -0.680429, -0.289943,
		0.589231, 0.730192, -0.345870,
		18.246357, 15.891127, 23.584211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.545614, 15.211112, 23.965647>,  <17.833895, 15.379992, 23.826321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.545614, 15.211112, 23.965647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.513840, 15.607170, 23.919514>,  <18.494776, 15.844805, 23.891834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.513840, 15.607170, 23.919514>,  <18.545614, 15.211112, 23.965647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.513840, 15.607170, 23.919514> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450171, 0.138863, 0.882079,
		0.889402, 0.018149, -0.456765,
		-0.079436, 0.990145, -0.115335,
		18.490009, 15.904214, 23.884912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.215744, 15.547282, 24.108671>,  <18.545614, 15.211112, 23.965647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.215744, 15.547282, 24.108671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.906990, 15.784279, 24.200886>,  <18.721737, 15.926476, 24.256214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.906990, 15.784279, 24.200886>,  <19.215744, 15.547282, 24.108671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.906990, 15.784279, 24.200886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365778, 0.117285, 0.923283,
		0.519999, 0.796993, -0.307251,
		-0.771886, 0.592492, 0.230534,
		18.675425, 15.962027, 24.270046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.424030, 16.280737, 24.200916>,  <19.215744, 15.547282, 24.108671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.424030, 16.280737, 24.200916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.111977, 16.157669, 24.418806>,  <18.924744, 16.083828, 24.549540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.111977, 16.157669, 24.418806>,  <19.424030, 16.280737, 24.200916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.111977, 16.157669, 24.418806> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519294, 0.167109, 0.838098,
		-0.348885, 0.936704, 0.029402,
		-0.780137, -0.307669, 0.544727,
		18.877935, 16.065369, 24.582224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.971849, 15.865231, 24.057871>,  <19.424030, 16.280737, 24.200916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.971849, 15.865231, 24.057871> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.327877, 15.685734, 24.025852>,  <20.541494, 15.578035, 24.006641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.327877, 15.685734, 24.025852>,  <19.971849, 15.865231, 24.057871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.327877, 15.685734, 24.025852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054828, 0.068935, -0.996113,
		0.452516, 0.890999, 0.036753,
		0.890069, -0.448742, -0.080046,
		20.594898, 15.551111, 24.001839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.283569, 16.204386, 23.519936>,  <19.971849, 15.865231, 24.057871>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.283569, 16.204386, 23.519936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.495342, 15.867512, 23.560774>,  <20.622406, 15.665387, 23.585278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.495342, 15.867512, 23.560774>,  <20.283569, 16.204386, 23.519936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.495342, 15.867512, 23.560774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224651, 0.023129, -0.974165,
		0.818066, 0.538693, 0.201443,
		0.529435, -0.842185, 0.102097,
		20.654173, 15.614857, 23.591402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.811270, 16.271505, 23.038029>,  <20.283569, 16.204386, 23.519936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.811270, 16.271505, 23.038029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.808811, 15.879417, 23.117151>,  <20.807335, 15.644164, 23.164625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.808811, 15.879417, 23.117151>,  <20.811270, 16.271505, 23.038029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.808811, 15.879417, 23.117151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163334, -0.196140, -0.966877,
		0.986552, 0.026365, 0.161309,
		-0.006147, -0.980221, 0.197809,
		20.806967, 15.585351, 23.176495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.415956, 15.939010, 22.741159>,  <20.811270, 16.271505, 23.038029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.415956, 15.939010, 22.741159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.123600, 15.670414, 22.789984>,  <20.948185, 15.509256, 22.819279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.123600, 15.670414, 22.789984>,  <21.415956, 15.939010, 22.741159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.123600, 15.670414, 22.789984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037155, -0.217726, -0.975302,
		0.681481, -0.708306, 0.184083,
		-0.730892, -0.671490, 0.122059,
		20.904333, 15.468967, 22.826601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.691311, 15.280795, 22.516500>,  <21.415956, 15.939010, 22.741159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.691311, 15.280795, 22.516500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.294106, 15.234539, 22.507145>,  <21.055782, 15.206785, 22.501532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.294106, 15.234539, 22.507145>,  <21.691311, 15.280795, 22.516500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.294106, 15.234539, 22.507145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077164, -0.486625, -0.870196,
		0.089249, -0.865923, 0.492150,
		-0.993016, -0.115641, -0.023387,
		20.996201, 15.199847, 22.500128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.635054, 14.606065, 22.263968>,  <21.691311, 15.280795, 22.516500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.635054, 14.606065, 22.263968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.271339, 14.768005, 22.225401>,  <21.053110, 14.865170, 22.202261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.271339, 14.768005, 22.225401>,  <21.635054, 14.606065, 22.263968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.271339, 14.768005, 22.225401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021416, -0.185851, -0.982344,
		-0.415623, -0.895296, 0.160321,
		-0.909285, 0.404851, -0.096417,
		20.998554, 14.889461, 22.196476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.276014, 14.219395, 21.688602>,  <21.635054, 14.606065, 22.263968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.276014, 14.219395, 21.688602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.103245, 14.578987, 21.717653>,  <20.999584, 14.794743, 21.735085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.103245, 14.578987, 21.717653>,  <21.276014, 14.219395, 21.688602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.103245, 14.578987, 21.717653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006460, 0.083608, -0.996478,
		-0.901888, -0.429931, -0.041920,
		-0.431922, 0.898982, 0.072628,
		20.973669, 14.848681, 21.739441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.750963, 14.155810, 21.245510>,  <21.276014, 14.219395, 21.688602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.750963, 14.155810, 21.245510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.796551, 14.550884, 21.288387>,  <20.823904, 14.787929, 21.314114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.796551, 14.550884, 21.288387>,  <20.750963, 14.155810, 21.245510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.796551, 14.550884, 21.288387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326673, 0.139153, -0.934837,
		-0.938240, 0.071527, 0.338510,
		0.113971, 0.987684, 0.107193,
		20.830742, 14.847190, 21.320545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.097931, 14.482190, 21.002605>,  <20.750963, 14.155810, 21.245510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.097931, 14.482190, 21.002605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.375706, 14.770012, 21.002298>,  <20.542370, 14.942705, 21.002115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.375706, 14.770012, 21.002298>,  <20.097931, 14.482190, 21.002605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.375706, 14.770012, 21.002298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285621, 0.274674, -0.918137,
		-0.660438, 0.637806, 0.396263,
		0.694436, 0.719554, -0.000766,
		20.584036, 14.985878, 21.002069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.754528, 15.052314, 20.808270>,  <20.097931, 14.482190, 21.002605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.754528, 15.052314, 20.808270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.133553, 15.132809, 20.708969>,  <20.360968, 15.181106, 20.649389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.133553, 15.132809, 20.708969>,  <19.754528, 15.052314, 20.808270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.133553, 15.132809, 20.708969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297423, 0.271170, -0.915427,
		-0.116899, 0.941260, 0.316803,
		0.947562, 0.201237, -0.248252,
		20.417822, 15.193180, 20.634493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.595518, 15.637154, 20.357220>,  <19.754528, 15.052314, 20.808270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.595518, 15.637154, 20.357220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.972511, 15.535137, 20.270796>,  <20.198708, 15.473927, 20.218941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.972511, 15.535137, 20.270796>,  <19.595518, 15.637154, 20.357220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.972511, 15.535137, 20.270796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148734, 0.258881, -0.954389,
		0.299342, 0.931630, 0.206057,
		0.942482, -0.255041, -0.216059,
		20.255257, 15.458625, 20.205978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.770473, 16.074442, 19.835712>,  <19.595518, 15.637154, 20.357220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.770473, 16.074442, 19.835712> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.044254, 15.785381, 19.797140>,  <20.208523, 15.611945, 19.773996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.044254, 15.785381, 19.797140>,  <19.770473, 16.074442, 19.835712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.044254, 15.785381, 19.797140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081296, 0.055792, -0.995127,
		0.724511, 0.688957, -0.020561,
		0.684452, -0.722652, -0.096431,
		20.249590, 15.568585, 19.768211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.276529, 16.318087, 19.417156>,  <19.770473, 16.074442, 19.835712>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.276529, 16.318087, 19.417156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.336414, 15.923435, 19.391397>,  <20.372345, 15.686644, 19.375942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.336414, 15.923435, 19.391397>,  <20.276529, 16.318087, 19.417156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.336414, 15.923435, 19.391397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036659, 0.070626, -0.996829,
		0.988049, 0.146877, 0.046743,
		0.149713, -0.986630, -0.064397,
		20.381329, 15.627446, 19.372078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.976238, 16.071600, 19.000589>,  <20.276529, 16.318087, 19.417156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.976238, 16.071600, 19.000589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.729950, 15.756737, 18.986324>,  <20.582178, 15.567819, 18.977766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.729950, 15.756737, 18.986324>,  <20.976238, 16.071600, 19.000589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.729950, 15.756737, 18.986324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037693, 0.074628, -0.996499,
		0.787063, -0.612219, -0.075621,
		-0.615719, -0.787158, -0.035660,
		20.545235, 15.520589, 18.975626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.614576, 16.303236, 18.767962>,  <20.976238, 16.071600, 19.000589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.614576, 16.303236, 18.767962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.706932, 16.690052, 18.725019>,  <21.762346, 16.922142, 18.699255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.706932, 16.690052, 18.725019>,  <21.614576, 16.303236, 18.767962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.706932, 16.690052, 18.725019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162214, 0.070533, 0.984231,
		0.959363, -0.244663, -0.140582,
		0.230889, 0.967039, -0.107355,
		21.776199, 16.980164, 18.692814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.209484, 16.401182, 19.112576>,  <21.614576, 16.303236, 18.767962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.209484, 16.401182, 19.112576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.057606, 16.769901, 19.081285>,  <21.966478, 16.991133, 19.062511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.057606, 16.769901, 19.081285>,  <22.209484, 16.401182, 19.112576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.057606, 16.769901, 19.081285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360214, 0.225198, 0.905280,
		0.852102, 0.315553, -0.417552,
		-0.379696, 0.921798, -0.078225,
		21.943697, 17.046440, 19.057817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.654730, 16.804708, 19.515863>,  <22.209484, 16.401182, 19.112576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.654730, 16.804708, 19.515863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.336346, 17.043652, 19.476650>,  <22.145315, 17.187017, 19.453123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.336346, 17.043652, 19.476650>,  <22.654730, 16.804708, 19.515863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.336346, 17.043652, 19.476650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122332, 0.317330, 0.940392,
		0.592858, 0.736523, -0.325658,
		-0.795961, 0.597357, -0.098032,
		22.097557, 17.222858, 19.447241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.840160, 17.490791, 19.739059>,  <22.654730, 16.804708, 19.515863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.840160, 17.490791, 19.739059> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.447975, 17.420727, 19.774853>,  <22.212664, 17.378689, 19.796329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.447975, 17.420727, 19.774853>,  <22.840160, 17.490791, 19.739059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.447975, 17.420727, 19.774853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052773, 0.204007, 0.977546,
		-0.189483, 0.963172, -0.190778,
		-0.980465, -0.175160, 0.089485,
		22.153835, 17.368179, 19.801699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.647863, 18.064722, 20.161655>,  <22.840160, 17.490791, 19.739059>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.647863, 18.064722, 20.161655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.349407, 17.799679, 20.187653>,  <22.170334, 17.640652, 20.203251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.349407, 17.799679, 20.187653>,  <22.647863, 18.064722, 20.161655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.349407, 17.799679, 20.187653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018913, 0.076483, 0.996892,
		-0.665520, 0.745050, -0.044535,
		-0.746140, -0.662609, 0.064992,
		22.125565, 17.600897, 20.207150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.217880, 18.369642, 20.612125>,  <22.647863, 18.064722, 20.161655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.217880, 18.369642, 20.612125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.099308, 17.987885, 20.626303>,  <22.028164, 17.758829, 20.634809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.099308, 17.987885, 20.626303>,  <22.217880, 18.369642, 20.612125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.099308, 17.987885, 20.626303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154646, 0.084587, 0.984342,
		-0.942450, 0.286310, -0.172668,
		-0.296432, -0.954396, 0.035443,
		22.010378, 17.701565, 20.636936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.558636, 18.337957, 20.989994>,  <22.217880, 18.369642, 20.612125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.558636, 18.337957, 20.989994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.761189, 17.995075, 21.027456>,  <21.882721, 17.789345, 21.049934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.761189, 17.995075, 21.027456>,  <21.558636, 18.337957, 20.989994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.761189, 17.995075, 21.027456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093515, 0.053381, 0.994186,
		-0.857223, -0.512197, -0.053130,
		0.506383, -0.857207, 0.093657,
		21.913103, 17.737913, 21.055553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.479155, 19.014645, 21.364296>,  <21.558636, 18.337957, 20.989994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.479155, 19.014645, 21.364296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.665615, 19.362209, 21.430861>,  <21.777491, 19.570749, 21.470798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.665615, 19.362209, 21.430861>,  <21.479155, 19.014645, 21.364296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.665615, 19.362209, 21.430861> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059574, 0.218501, -0.974017,
		-0.882697, 0.444126, 0.153619,
		0.466152, 0.868913, 0.166411,
		21.805460, 19.622883, 21.480783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.036207, 19.595581, 20.990486>,  <21.479155, 19.014645, 21.364296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.036207, 19.595581, 20.990486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.411488, 19.724209, 21.041660>,  <21.636656, 19.801386, 21.072365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.411488, 19.724209, 21.041660>,  <21.036207, 19.595581, 20.990486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.411488, 19.724209, 21.041660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024491, 0.307044, -0.951380,
		-0.345217, 0.895721, 0.280194,
		0.938203, 0.321571, 0.127934,
		21.692949, 19.820681, 21.080040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.037634, 20.287634, 20.687933>,  <21.036207, 19.595581, 20.990486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.037634, 20.287634, 20.687933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.418064, 20.164177, 20.682327>,  <21.646322, 20.090103, 20.678965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.418064, 20.164177, 20.682327>,  <21.037634, 20.287634, 20.687933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.418064, 20.164177, 20.682327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007200, 0.023202, -0.999705,
		0.308876, 0.950895, 0.019844,
		0.951075, -0.308642, -0.014013,
		21.703386, 20.071585, 20.678123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.470737, 20.727770, 20.228498>,  <21.037634, 20.287634, 20.687933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.470737, 20.727770, 20.228498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.663498, 20.378708, 20.260105>,  <21.779154, 20.169271, 20.279070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.663498, 20.378708, 20.260105>,  <21.470737, 20.727770, 20.228498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.663498, 20.378708, 20.260105> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099893, -0.034875, -0.994387,
		0.870513, 0.487090, 0.070366,
		0.481901, -0.872655, 0.079016,
		21.808069, 20.116911, 20.283810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.056028, 20.856514, 19.840275>,  <21.470737, 20.727770, 20.228498>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.056028, 20.856514, 19.840275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.003811, 20.461094, 19.870556>,  <21.972481, 20.223843, 19.888725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.003811, 20.461094, 19.870556>,  <22.056028, 20.856514, 19.840275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.003811, 20.461094, 19.870556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091724, -0.088073, -0.991882,
		0.987190, -0.122541, 0.102171,
		-0.130545, -0.988548, 0.075705,
		21.964647, 20.164530, 19.893267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.461510, 20.678202, 19.396704>,  <22.056028, 20.856514, 19.840275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.461510, 20.678202, 19.396704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.227966, 20.357903, 19.450233>,  <22.087839, 20.165722, 19.482351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.227966, 20.357903, 19.450233>,  <22.461510, 20.678202, 19.396704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.227966, 20.357903, 19.450233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023647, -0.147994, -0.988705,
		0.811510, -0.580429, 0.067472,
		-0.583859, -0.800749, 0.133824,
		22.052809, 20.117678, 19.490381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.739267, 20.165358, 19.036098>,  <22.461510, 20.678202, 19.396704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.739267, 20.165358, 19.036098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.360558, 20.042217, 19.073730>,  <22.133331, 19.968334, 19.096310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.360558, 20.042217, 19.073730>,  <22.739267, 20.165358, 19.036098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.360558, 20.042217, 19.073730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009494, -0.265434, -0.964082,
		0.321764, -0.913659, 0.248383,
		-0.946772, -0.307849, 0.094081,
		22.076527, 19.949863, 19.101955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<18.837227, 19.616201, 24.546467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.764004, 19.232750, 24.459272>,  <18.720070, 19.002678, 24.406956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.764004, 19.232750, 24.459272>,  <18.837227, 19.616201, 24.546467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.764004, 19.232750, 24.459272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185114, 0.251379, -0.950022,
		0.965517, -0.133556, -0.223472,
		-0.183057, -0.958630, -0.217987,
		18.709087, 18.945162, 24.393877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.094740, 19.670034, 23.998095>,  <18.837227, 19.616201, 24.546467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.094740, 19.670034, 23.998095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.925129, 19.308064, 23.983637>,  <18.823362, 19.090881, 23.974962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.925129, 19.308064, 23.983637>,  <19.094740, 19.670034, 23.998095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.925129, 19.308064, 23.983637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103047, 0.087860, -0.990788,
		0.899767, -0.416398, -0.130505,
		-0.424029, -0.904927, -0.036145,
		18.797920, 19.036585, 23.972794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.445980, 19.351000, 23.516405>,  <19.094740, 19.670034, 23.998095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.445980, 19.351000, 23.516405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.090332, 19.169220, 23.538082>,  <18.876944, 19.060152, 23.551088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.090332, 19.169220, 23.538082>,  <19.445980, 19.351000, 23.516405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.090332, 19.169220, 23.538082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160838, 0.199409, -0.966627,
		0.428479, -0.868164, -0.250392,
		-0.889121, -0.454452, 0.054191,
		18.823595, 19.032885, 23.554340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.435928, 19.082014, 22.895395>,  <19.445980, 19.351000, 23.516405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.435928, 19.082014, 22.895395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.047241, 19.045464, 22.982498>,  <18.814030, 19.023533, 23.034760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.047241, 19.045464, 22.982498>,  <19.435928, 19.082014, 22.895395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.047241, 19.045464, 22.982498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218656, -0.000164, -0.975802,
		0.089203, -0.995816, -0.019822,
		-0.971716, -0.091379, 0.217756,
		18.755726, 19.018051, 23.047825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.115591, 18.510794, 22.527193>,  <19.435928, 19.082014, 22.895395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.115591, 18.510794, 22.527193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.817055, 18.762199, 22.614780>,  <18.637932, 18.913042, 22.667332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.817055, 18.762199, 22.614780>,  <19.115591, 18.510794, 22.527193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.817055, 18.762199, 22.614780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251947, 0.037714, -0.967006,
		-0.616033, -0.776885, 0.130204,
		-0.746342, 0.628512, 0.218966,
		18.593153, 18.950752, 22.680470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.577999, 18.269350, 22.166807>,  <19.115591, 18.510794, 22.527193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.577999, 18.269350, 22.166807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.473343, 18.648685, 22.238588>,  <18.410549, 18.876286, 22.281656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.473343, 18.648685, 22.238588>,  <18.577999, 18.269350, 22.166807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.473343, 18.648685, 22.238588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376087, 0.071058, -0.923855,
		-0.888877, -0.309207, 0.338066,
		-0.261640, 0.948336, 0.179451,
		18.394852, 18.933186, 22.292423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.975658, 18.343975, 21.747318>,  <18.577999, 18.269350, 22.166807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.975658, 18.343975, 21.747318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.054920, 18.726013, 21.835436>,  <18.102478, 18.955236, 21.888306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.054920, 18.726013, 21.835436>,  <17.975658, 18.343975, 21.747318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.054920, 18.726013, 21.835436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419522, 0.285766, -0.861591,
		-0.885853, 0.078311, 0.457310,
		0.198156, 0.955094, 0.220294,
		18.114367, 19.012541, 21.901524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.301888, 18.826260, 21.575399>,  <17.975658, 18.343975, 21.747318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.301888, 18.826260, 21.575399> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.622025, 19.065964, 21.568060>,  <17.814106, 19.209787, 21.563656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.622025, 19.065964, 21.568060>,  <17.301888, 18.826260, 21.575399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.622025, 19.065964, 21.568060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369349, 0.468714, -0.802426,
		-0.472263, 0.648993, 0.596469,
		0.800343, 0.599262, -0.018349,
		17.862127, 19.245743, 21.562555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.051664, 19.501925, 21.395609>,  <17.301888, 18.826260, 21.575399>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.051664, 19.501925, 21.395609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.442245, 19.546658, 21.321819>,  <17.676594, 19.573498, 21.277546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.442245, 19.546658, 21.321819>,  <17.051664, 19.501925, 21.395609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.442245, 19.546658, 21.321819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214195, 0.401056, -0.890659,
		-0.025619, 0.909202, 0.415567,
		0.976455, 0.111830, -0.184472,
		17.735182, 19.580206, 21.266478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.081280, 20.222343, 21.226423>,  <17.051664, 19.501925, 21.395609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.081280, 20.222343, 21.226423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.405010, 20.041954, 21.075897>,  <17.599249, 19.933722, 20.985582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.405010, 20.041954, 21.075897>,  <17.081280, 20.222343, 21.226423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.405010, 20.041954, 21.075897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106718, 0.517124, -0.849232,
		0.577580, 0.727467, 0.370396,
		0.809328, -0.450972, -0.376314,
		17.647808, 19.906662, 20.963003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.494947, 20.748035, 20.814816>,  <17.081280, 20.222343, 21.226423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.494947, 20.748035, 20.814816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.599316, 20.393753, 20.661222>,  <17.661936, 20.181183, 20.569067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.599316, 20.393753, 20.661222>,  <17.494947, 20.748035, 20.814816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.599316, 20.393753, 20.661222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023099, 0.403377, -0.914743,
		0.965084, 0.229806, 0.125708,
		0.260921, -0.885707, -0.383984,
		17.677591, 20.128040, 20.546028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.771084, 20.929745, 20.237452>,  <17.494947, 20.748035, 20.814816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.771084, 20.929745, 20.237452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.740459, 20.543659, 20.137449>,  <17.722084, 20.312008, 20.077448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.740459, 20.543659, 20.137449>,  <17.771084, 20.929745, 20.237452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.740459, 20.543659, 20.137449> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126477, 0.239315, -0.962669,
		0.989011, -0.105323, 0.103755,
		-0.076561, -0.965213, -0.250006,
		17.717491, 20.254095, 20.062447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.396420, 21.306332, 20.213051>,  <17.771084, 20.929745, 20.237452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.396420, 21.306332, 20.213051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.711224, 21.523430, 20.095722>,  <18.900106, 21.653688, 20.025324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.711224, 21.523430, 20.095722>,  <18.396420, 21.306332, 20.213051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.711224, 21.523430, 20.095722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388240, -0.066207, 0.919177,
		0.479461, -0.837282, -0.262823,
		0.787011, 0.542748, -0.293323,
		18.947327, 21.686255, 20.007725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.864208, 20.940008, 20.510628>,  <18.396420, 21.306332, 20.213051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.864208, 20.940008, 20.510628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.991486, 21.308697, 20.421921>,  <19.067852, 21.529909, 20.368696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.991486, 21.308697, 20.421921>,  <18.864208, 20.940008, 20.510628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.991486, 21.308697, 20.421921> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447654, 0.060124, 0.892183,
		0.835678, -0.383165, -0.393481,
		0.318195, 0.921721, -0.221769,
		19.086945, 21.585213, 20.355391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.485439, 21.063223, 20.640797>,  <18.864208, 20.940008, 20.510628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.485439, 21.063223, 20.640797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.385998, 21.449604, 20.669449>,  <19.326332, 21.681433, 20.686640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.385998, 21.449604, 20.669449>,  <19.485439, 21.063223, 20.640797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.385998, 21.449604, 20.669449> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534959, 0.075277, 0.841518,
		0.807474, 0.247524, -0.535460,
		-0.248604, 0.965953, 0.071631,
		19.311417, 21.739389, 20.690939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.060120, 21.216520, 20.812437>,  <19.485439, 21.063223, 20.640797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.060120, 21.216520, 20.812437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.794155, 21.491226, 20.929913>,  <19.634577, 21.656050, 21.000397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.794155, 21.491226, 20.929913>,  <20.060120, 21.216520, 20.812437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.794155, 21.491226, 20.929913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430945, 0.031576, 0.901825,
		0.610067, 0.726195, -0.316953,
		-0.664909, 0.686763, 0.293687,
		19.594683, 21.697254, 21.018019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.498142, 21.602434, 21.151978>,  <20.060120, 21.216520, 20.812437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.498142, 21.602434, 21.151978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.139069, 21.726357, 21.277317>,  <19.923624, 21.800711, 21.352520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.139069, 21.726357, 21.277317>,  <20.498142, 21.602434, 21.151978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.139069, 21.726357, 21.277317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322754, -0.021851, 0.946231,
		0.299994, 0.950549, -0.080375,
		-0.897682, 0.309805, 0.313349,
		19.869764, 21.819298, 21.371323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.680740, 22.185720, 21.596893>,  <20.498142, 21.602434, 21.151978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.680740, 22.185720, 21.596893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.313480, 22.058994, 21.692080>,  <20.093124, 21.982958, 21.749191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.313480, 22.058994, 21.692080>,  <20.680740, 22.185720, 21.596893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.313480, 22.058994, 21.692080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210387, 0.119123, 0.970333,
		-0.335766, 0.940976, -0.042719,
		-0.918150, -0.316818, 0.237966,
		20.038036, 21.963949, 21.763470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.429026, 22.754488, 22.014709>,  <20.680740, 22.185720, 21.596893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.429026, 22.754488, 22.014709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.229977, 22.417206, 22.096075>,  <20.110548, 22.214836, 22.144894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.229977, 22.417206, 22.096075>,  <20.429026, 22.754488, 22.014709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.229977, 22.417206, 22.096075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167417, 0.136731, 0.976359,
		-0.851084, 0.519911, 0.073127,
		-0.497621, -0.843206, 0.203412,
		20.080690, 22.164244, 22.157099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.071186, 22.910999, 22.636930>,  <20.429026, 22.754488, 22.014709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.071186, 22.910999, 22.636930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.079720, 22.511929, 22.611067>,  <20.084841, 22.272486, 22.595549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.079720, 22.511929, 22.611067>,  <20.071186, 22.910999, 22.636930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.079720, 22.511929, 22.611067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210385, -0.058747, 0.975852,
		-0.977386, -0.034423, 0.208643,
		0.021335, -0.997679, -0.064660,
		20.086121, 22.212626, 22.591669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.704803, 22.708221, 23.223824>,  <20.071186, 22.910999, 22.636930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.704803, 22.708221, 23.223824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.897968, 22.375900, 23.113142>,  <20.013866, 22.176508, 23.046734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.897968, 22.375900, 23.113142>,  <19.704803, 22.708221, 23.223824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.897968, 22.375900, 23.113142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263711, -0.163342, 0.950671,
		-0.835018, -0.532058, 0.140212,
		0.482910, -0.830803, -0.276703,
		20.042841, 22.126659, 23.030130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.378851, 21.994781, 23.572697>,  <19.704803, 22.708221, 23.223824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.378851, 21.994781, 23.572697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.770054, 21.949039, 23.502920>,  <20.004776, 21.921595, 23.461054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.770054, 21.949039, 23.502920>,  <19.378851, 21.994781, 23.572697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.770054, 21.949039, 23.502920> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163694, -0.097502, 0.981681,
		-0.129276, -0.988643, -0.076637,
		0.978004, -0.114362, -0.174440,
		20.063456, 21.914732, 23.450588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.580286, 21.531494, 24.082003>,  <19.378851, 21.994781, 23.572697>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.580286, 21.531494, 24.082003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.939888, 21.642815, 23.946751>,  <20.155649, 21.709608, 23.865599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.939888, 21.642815, 23.946751>,  <19.580286, 21.531494, 24.082003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.939888, 21.642815, 23.946751> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375699, -0.093388, 0.922024,
		0.225026, -0.955942, -0.188515,
		0.899007, 0.278304, -0.338132,
		20.209591, 21.726305, 23.845310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.014326, 21.083910, 24.362946>,  <19.580286, 21.531494, 24.082003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.014326, 21.083910, 24.362946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.225945, 21.409912, 24.268394>,  <20.352915, 21.605515, 24.211664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.225945, 21.409912, 24.268394>,  <20.014326, 21.083910, 24.362946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.225945, 21.409912, 24.268394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231122, 0.129635, 0.964250,
		0.816513, -0.564765, -0.119783,
		0.529046, 0.815006, -0.236378,
		20.384659, 21.654413, 24.197481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.726183, 20.888006, 24.632374>,  <20.014326, 21.083910, 24.362946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.726183, 20.888006, 24.632374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.739666, 21.280724, 24.557598>,  <20.747755, 21.516354, 24.512732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.739666, 21.280724, 24.557598>,  <20.726183, 20.888006, 24.632374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.739666, 21.280724, 24.557598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593373, 0.130855, 0.794220,
		0.804222, -0.137695, -0.578159,
		0.033706, 0.981793, -0.186941,
		20.749777, 21.575262, 24.501516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.356930, 21.086407, 24.529240>,  <20.726183, 20.888006, 24.632374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.356930, 21.086407, 24.529240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.190350, 21.429333, 24.650288>,  <21.090403, 21.635088, 24.722918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.190350, 21.429333, 24.650288>,  <21.356930, 21.086407, 24.529240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.190350, 21.429333, 24.650288> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784548, 0.170681, 0.596115,
		0.459407, 0.485672, -0.743685,
		-0.416449, 0.857316, 0.302621,
		21.065414, 21.686527, 24.741074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.064030, 21.412634, 24.346533>,  <21.356930, 21.086407, 24.529240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.064030, 21.412634, 24.346533> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.265926, 21.067600, 24.360294>,  <22.387064, 20.860580, 24.368551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.265926, 21.067600, 24.360294>,  <22.064030, 21.412634, 24.346533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.265926, 21.067600, 24.360294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449451, -0.296603, -0.842627,
		0.737041, 0.409846, -0.537398,
		0.504741, -0.862585, 0.034403,
		22.417349, 20.808825, 24.370615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.290787, 21.256630, 23.658552>,  <22.064030, 21.412634, 24.346533>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.290787, 21.256630, 23.658552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.304054, 20.900806, 23.840797>,  <22.312014, 20.687311, 23.950144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.304054, 20.900806, 23.840797>,  <22.290787, 21.256630, 23.658552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.304054, 20.900806, 23.840797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374610, -0.433695, -0.819497,
		0.926589, -0.143497, -0.347622,
		0.033167, -0.889560, 0.455613,
		22.314005, 20.633938, 23.977482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.728045, 20.848215, 23.268545>,  <22.290787, 21.256630, 23.658552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.728045, 20.848215, 23.268545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.467873, 20.594769, 23.436102>,  <22.311769, 20.442701, 23.536636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.467873, 20.594769, 23.436102>,  <22.728045, 20.848215, 23.268545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.467873, 20.594769, 23.436102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141066, -0.441127, -0.886288,
		0.746351, -0.635561, 0.197541,
		-0.650431, -0.633616, 0.418892,
		22.272743, 20.404684, 23.561769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.945028, 20.289803, 22.975615>,  <22.728045, 20.848215, 23.268545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.945028, 20.289803, 22.975615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.568935, 20.211224, 23.086874>,  <22.343279, 20.164076, 23.153629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.568935, 20.211224, 23.086874>,  <22.945028, 20.289803, 22.975615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.568935, 20.211224, 23.086874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179110, -0.409406, -0.894599,
		0.289620, -0.890952, 0.349751,
		-0.940234, -0.196450, 0.278150,
		22.286865, 20.152288, 23.170319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.911293, 19.566151, 22.915981>,  <22.945028, 20.289803, 22.975615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.911293, 19.566151, 22.915981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.568745, 19.770187, 22.883890>,  <22.363216, 19.892609, 22.864635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.568745, 19.770187, 22.883890>,  <22.911293, 19.566151, 22.915981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.568745, 19.770187, 22.883890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064318, -0.259534, -0.963590,
		-0.512342, -0.820029, 0.255065,
		-0.856370, 0.510093, -0.080227,
		22.311834, 19.923214, 22.859821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.545275, 19.128839, 22.433641>,  <22.911293, 19.566151, 22.915981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.545275, 19.128839, 22.433641> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.329552, 19.461418, 22.380205>,  <22.200119, 19.660965, 22.348143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.329552, 19.461418, 22.380205>,  <22.545275, 19.128839, 22.433641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.329552, 19.461418, 22.380205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070678, -0.202769, -0.976673,
		-0.839138, -0.517284, 0.168120,
		-0.539306, 0.831446, -0.133591,
		22.167759, 19.710852, 22.340128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.903046, 18.944771, 22.139151>,  <22.545275, 19.128839, 22.433641>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.903046, 18.944771, 22.139151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.964218, 19.328037, 22.042379>,  <22.000921, 19.557997, 21.984316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.964218, 19.328037, 22.042379>,  <21.903046, 18.944771, 22.139151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.964218, 19.328037, 22.042379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183173, -0.213083, -0.959710,
		-0.971113, 0.191085, 0.142923,
		0.152932, 0.958166, -0.241929,
		22.010098, 19.615486, 21.969801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.632143, 18.287073, 21.734674>,  <21.903046, 18.944771, 22.139151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.632143, 18.287073, 21.734674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.766705, 17.930183, 21.614161>,  <21.847443, 17.716049, 21.541853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.766705, 17.930183, 21.614161>,  <21.632143, 18.287073, 21.734674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.766705, 17.930183, 21.614161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111962, -0.355553, 0.927926,
		-0.935038, -0.278426, -0.219505,
		0.336405, -0.892222, -0.301283,
		21.867626, 17.662518, 21.523775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.168072, 17.865091, 21.940365>,  <21.632143, 18.287073, 21.734674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.168072, 17.865091, 21.940365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.503365, 17.650681, 21.900270>,  <21.704540, 17.522034, 21.876215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.503365, 17.650681, 21.900270>,  <21.168072, 17.865091, 21.940365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.503365, 17.650681, 21.900270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097841, -0.328660, 0.939366,
		-0.536469, -0.777597, -0.327938,
		0.838229, -0.536027, -0.100235,
		21.754833, 17.489872, 21.870199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.037285, 17.372135, 22.361273>,  <21.168072, 17.865091, 21.940365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.037285, 17.372135, 22.361273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.432404, 17.371082, 22.298985>,  <21.669476, 17.370451, 22.261612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.432404, 17.371082, 22.298985>,  <21.037285, 17.372135, 22.361273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.432404, 17.371082, 22.298985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151967, -0.202545, 0.967410,
		-0.034087, -0.979270, -0.199673,
		0.987797, -0.002632, -0.155720,
		21.728743, 17.370293, 22.252268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.321301, 16.764290, 22.635736>,  <21.037285, 17.372135, 22.361273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.321301, 16.764290, 22.635736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.622131, 17.027866, 22.630470>,  <21.802629, 17.186012, 22.627310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.622131, 17.027866, 22.630470>,  <21.321301, 16.764290, 22.635736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.622131, 17.027866, 22.630470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243933, -0.259742, 0.934361,
		0.612271, -0.705924, -0.356084,
		0.752078, 0.658943, -0.013165,
		21.847755, 17.225550, 22.626520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.909554, 16.462370, 22.969011>,  <21.321301, 16.764290, 22.635736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.909554, 16.462370, 22.969011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.007431, 16.849243, 22.996368>,  <22.066158, 17.081367, 23.012783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.007431, 16.849243, 22.996368>,  <21.909554, 16.462370, 22.969011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.007431, 16.849243, 22.996368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283888, -0.138913, 0.948742,
		0.927109, -0.212737, -0.308563,
		0.244696, 0.967185, 0.068394,
		22.080839, 17.139399, 23.016886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.505093, 16.471054, 23.189274>,  <21.909554, 16.462370, 22.969011>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.505093, 16.471054, 23.189274> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.398567, 16.849220, 23.264395>,  <22.334652, 17.076120, 23.309467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.398567, 16.849220, 23.264395>,  <22.505093, 16.471054, 23.189274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.398567, 16.849220, 23.264395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474444, -0.041030, 0.879329,
		0.839035, 0.323279, -0.437620,
		-0.266313, 0.945414, 0.187803,
		22.318674, 17.132845, 23.320736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.196074, 16.902924, 23.502707>,  <22.505093, 16.471054, 23.189274>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.196074, 16.902924, 23.502707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.854473, 17.085625, 23.602352>,  <22.649513, 17.195246, 23.662140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.854473, 17.085625, 23.602352>,  <23.196074, 16.902924, 23.502707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.854473, 17.085625, 23.602352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302288, 0.045908, 0.952110,
		0.423441, 0.888409, -0.177276,
		-0.854002, 0.456751, 0.249116,
		22.598272, 17.222651, 23.677088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.410471, 17.372240, 24.128399>,  <23.196074, 16.902924, 23.502707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.410471, 17.372240, 24.128399> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.011105, 17.393639, 24.121384>,  <22.771484, 17.406477, 24.117174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.011105, 17.393639, 24.121384>,  <23.410471, 17.372240, 24.128399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.011105, 17.393639, 24.121384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007267, 0.186442, 0.982439,
		0.055827, 0.981008, -0.185758,
		-0.998414, 0.053496, -0.017538,
		22.711580, 17.409687, 24.116123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.147070, 18.033148, 24.454445>,  <23.410471, 17.372240, 24.128399>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.147070, 18.033148, 24.454445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.849861, 17.768749, 24.496391>,  <22.671535, 17.610109, 24.521559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.849861, 17.768749, 24.496391>,  <23.147070, 18.033148, 24.454445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.849861, 17.768749, 24.496391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022790, 0.181590, 0.983110,
		-0.668877, 0.728084, -0.149990,
		-0.743023, -0.660998, 0.104868,
		22.626955, 17.570450, 24.527851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<18.703501, 18.641314, 8.828199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.673229, 18.290565, 9.018094>,  <18.655066, 18.080116, 9.132030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.673229, 18.290565, 9.018094>,  <18.703501, 18.641314, 8.828199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.673229, 18.290565, 9.018094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529926, 0.367932, 0.764071,
		-0.844660, 0.309399, 0.436831,
		-0.075679, -0.876869, 0.474736,
		18.650526, 18.027504, 9.160515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.569468, 18.758745, 9.520652>,  <18.703501, 18.641314, 8.828199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.569468, 18.758745, 9.520652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.725643, 18.391148, 9.498720>,  <18.819349, 18.170589, 9.485561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.725643, 18.391148, 9.498720>,  <18.569468, 18.758745, 9.520652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.725643, 18.391148, 9.498720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668220, 0.241922, 0.703531,
		-0.633276, -0.311324, 0.708546,
		0.390439, -0.918994, -0.054830,
		18.842775, 18.115450, 9.482271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.619856, 18.532190, 10.232557>,  <18.569468, 18.758745, 9.520652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.619856, 18.532190, 10.232557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.869949, 18.282005, 10.045848>,  <19.020006, 18.131895, 9.933822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.869949, 18.282005, 10.045848>,  <18.619856, 18.532190, 10.232557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.869949, 18.282005, 10.045848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649256, 0.084970, 0.755809,
		-0.433068, -0.775614, 0.459212,
		0.625235, -0.625462, -0.466774,
		19.057520, 18.094366, 9.905816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.702049, 17.933218, 10.571176>,  <18.619856, 18.532190, 10.232557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.702049, 17.933218, 10.571176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.028957, 17.928818, 10.340715>,  <19.225101, 17.926178, 10.202439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.028957, 17.928818, 10.340715>,  <18.702049, 17.933218, 10.571176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.028957, 17.928818, 10.340715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565789, -0.174368, 0.805902,
		-0.109328, -0.984619, -0.136282,
		0.817269, -0.011001, -0.576150,
		19.274137, 17.925518, 10.167871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.100725, 17.269619, 10.717869>,  <18.702049, 17.933218, 10.571176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.100725, 17.269619, 10.717869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.364246, 17.521011, 10.552466>,  <19.522360, 17.671846, 10.453225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.364246, 17.521011, 10.552466>,  <19.100725, 17.269619, 10.717869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.364246, 17.521011, 10.552466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621134, -0.144280, 0.770309,
		0.424465, -0.764325, -0.485424,
		0.658803, 0.628482, -0.413507,
		19.561888, 17.709557, 10.428414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.761923, 16.966434, 10.725627>,  <19.100725, 17.269619, 10.717869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.761923, 16.966434, 10.725627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.864613, 17.351940, 10.696631>,  <19.926226, 17.583242, 10.679235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.864613, 17.351940, 10.696631>,  <19.761923, 16.966434, 10.725627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.864613, 17.351940, 10.696631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709797, -0.137106, 0.690935,
		0.655958, -0.228832, -0.719274,
		0.256724, 0.963762, -0.072488,
		19.941629, 17.641069, 10.674885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.472296, 16.970234, 10.837372>,  <19.761923, 16.966434, 10.725627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.472296, 16.970234, 10.837372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.367001, 17.350098, 10.905318>,  <20.303823, 17.578016, 10.946086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.367001, 17.350098, 10.905318>,  <20.472296, 16.970234, 10.837372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.367001, 17.350098, 10.905318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636489, 0.038642, 0.770317,
		0.724975, 0.310894, -0.614619,
		-0.263237, 0.949659, 0.169866,
		20.288029, 17.634995, 10.956278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.126631, 17.301226, 10.905219>,  <20.472296, 16.970234, 10.837372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.126631, 17.301226, 10.905219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.845619, 17.525795, 11.080152>,  <20.677011, 17.660536, 11.185111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.845619, 17.525795, 11.080152>,  <21.126631, 17.301226, 10.905219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.845619, 17.525795, 11.080152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508232, -0.034362, 0.860534,
		0.498150, 0.826816, -0.261192,
		-0.702529, 0.561422, 0.437332,
		20.634861, 17.694221, 11.211351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.552738, 17.606035, 11.347344>,  <21.126631, 17.301226, 10.905219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.552738, 17.606035, 11.347344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.190056, 17.715775, 11.475481>,  <20.972446, 17.781618, 11.552363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.190056, 17.715775, 11.475481>,  <21.552738, 17.606035, 11.347344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.190056, 17.715775, 11.475481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377349, 0.188401, 0.906704,
		0.188401, 0.942993, -0.274350,
		-0.906704, 0.274350, 0.320343,
		20.918045, 17.798080, 11.571584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.600164, 18.238363, 11.839799>,  <21.552738, 17.606035, 11.347344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.600164, 18.238363, 11.839799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.253567, 18.079197, 11.960367>,  <21.045609, 17.983698, 12.032708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.253567, 18.079197, 11.960367>,  <21.600164, 18.238363, 11.839799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.253567, 18.079197, 11.960367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228521, 0.220646, 0.948206,
		-0.443812, 0.890494, -0.100256,
		-0.866492, -0.397915, 0.301422,
		20.993620, 17.959822, 12.050794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.322174, 18.702799, 12.362943>,  <21.600164, 18.238363, 11.839799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.322174, 18.702799, 12.362943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.173279, 18.333958, 12.405213>,  <21.083942, 18.112654, 12.430575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.173279, 18.333958, 12.405213>,  <21.322174, 18.702799, 12.362943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.173279, 18.333958, 12.405213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229077, 0.019059, 0.973222,
		-0.899423, 0.386479, 0.204138,
		-0.372239, -0.922101, 0.105676,
		21.061607, 18.057327, 12.436916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.087124, 18.804630, 13.008076>,  <21.322174, 18.702799, 12.362943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.087124, 18.804630, 13.008076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.094341, 18.408424, 12.953587>,  <21.098671, 18.170700, 12.920894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.094341, 18.408424, 12.953587>,  <21.087124, 18.804630, 13.008076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.094341, 18.408424, 12.953587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348400, -0.121477, 0.929441,
		-0.937172, -0.064228, 0.342904,
		0.018041, -0.990514, -0.136222,
		21.099754, 18.111271, 12.912720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.562262, 19.328287, 13.133103>,  <21.087124, 18.804630, 13.008076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.562262, 19.328287, 13.133103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.828587, 19.615040, 13.215830>,  <20.988382, 19.787092, 13.265466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.828587, 19.615040, 13.215830>,  <20.562262, 19.328287, 13.133103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.828587, 19.615040, 13.215830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057816, 0.325927, -0.943625,
		-0.743876, 0.616320, 0.258454,
		0.665812, 0.716883, 0.206816,
		21.028330, 19.830105, 13.277875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.221088, 19.950529, 12.969756>,  <20.562262, 19.328287, 13.133103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.221088, 19.950529, 12.969756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.613209, 20.026756, 12.948996>,  <20.848480, 20.072493, 12.936540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.613209, 20.026756, 12.948996>,  <20.221088, 19.950529, 12.969756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.613209, 20.026756, 12.948996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145521, 0.519211, -0.842166,
		-0.133542, 0.833129, 0.536714,
		0.980301, 0.190568, -0.051901,
		20.907299, 20.083927, 12.933425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.259411, 20.643473, 12.704951>,  <20.221088, 19.950529, 12.969756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.259411, 20.643473, 12.704951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.619289, 20.486763, 12.627949>,  <20.835217, 20.392736, 12.581747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.619289, 20.486763, 12.627949>,  <20.259411, 20.643473, 12.704951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.619289, 20.486763, 12.627949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043277, 0.518886, -0.853747,
		0.434366, 0.759782, 0.483795,
		0.899696, -0.391776, -0.192505,
		20.889198, 20.369230, 12.570197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.548534, 21.192104, 12.398282>,  <20.259411, 20.643473, 12.704951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.548534, 21.192104, 12.398282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.776672, 20.873882, 12.316503>,  <20.913555, 20.682949, 12.267435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.776672, 20.873882, 12.316503>,  <20.548534, 21.192104, 12.398282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.776672, 20.873882, 12.316503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220284, 0.387924, -0.894980,
		0.791317, 0.465411, 0.396498,
		0.570345, -0.795555, -0.204448,
		20.947775, 20.635216, 12.255168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.060537, 21.496859, 12.108705>,  <20.548534, 21.192104, 12.398282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.060537, 21.496859, 12.108705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.084305, 21.113117, 11.998354>,  <21.098564, 20.882872, 11.932143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.084305, 21.113117, 11.998354>,  <21.060537, 21.496859, 12.108705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.084305, 21.113117, 11.998354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074142, 0.279843, -0.957179,
		0.995476, 0.036418, 0.087756,
		0.059416, -0.959355, -0.275877,
		21.102129, 20.825312, 11.915591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.603415, 21.491982, 11.519692>,  <21.060537, 21.496859, 12.108705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.603415, 21.491982, 11.519692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.361778, 21.175358, 11.482804>,  <21.216797, 20.985384, 11.460671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.361778, 21.175358, 11.482804>,  <21.603415, 21.491982, 11.519692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.361778, 21.175358, 11.482804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103300, 0.192524, -0.975840,
		0.790191, -0.579971, -0.198071,
		-0.604092, -0.791560, -0.092220,
		21.180550, 20.937889, 11.455138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.883451, 20.990505, 11.007005>,  <21.603415, 21.491982, 11.519692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.883451, 20.990505, 11.007005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.496162, 20.898373, 11.045982>,  <21.263790, 20.843094, 11.069368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.496162, 20.898373, 11.045982>,  <21.883451, 20.990505, 11.007005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.496162, 20.898373, 11.045982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106273, 0.026215, -0.993991,
		0.226391, -0.972759, -0.049860,
		-0.968222, -0.230330, 0.097443,
		21.205696, 20.829273, 11.075215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.756693, 20.611090, 10.360389>,  <21.883451, 20.990505, 11.007005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.756693, 20.611090, 10.360389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.391453, 20.682384, 10.507075>,  <21.172310, 20.725161, 10.595087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.391453, 20.682384, 10.507075>,  <21.756693, 20.611090, 10.360389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.391453, 20.682384, 10.507075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358733, 0.076324, -0.930315,
		-0.193808, -0.981023, -0.005752,
		-0.913099, 0.178239, 0.366718,
		21.117523, 20.735855, 10.617090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.292055, 20.313725, 9.940933>,  <21.756693, 20.611090, 10.360389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.292055, 20.313725, 9.940933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.048481, 20.588963, 10.098782>,  <20.902336, 20.754105, 10.193491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.048481, 20.588963, 10.098782>,  <21.292055, 20.313725, 9.940933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.048481, 20.588963, 10.098782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412757, 0.149964, -0.898411,
		-0.677370, -0.709956, 0.192698,
		-0.608934, 0.688094, 0.394621,
		20.865801, 20.795391, 10.217168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.684958, 20.187347, 9.639107>,  <21.292055, 20.313725, 9.940933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.684958, 20.187347, 9.639107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.628307, 20.557747, 9.779089>,  <20.594318, 20.779987, 9.863078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.628307, 20.557747, 9.779089>,  <20.684958, 20.187347, 9.639107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.628307, 20.557747, 9.779089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483077, 0.243918, -0.840916,
		-0.864048, -0.288149, 0.412785,
		-0.141623, 0.925999, 0.349955,
		20.585821, 20.835546, 9.884075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.106848, 20.341503, 9.410195>,  <20.684958, 20.187347, 9.639107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.106848, 20.341503, 9.410195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.249020, 20.705254, 9.496641>,  <20.334322, 20.923504, 9.548509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.249020, 20.705254, 9.496641>,  <20.106848, 20.341503, 9.410195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.249020, 20.705254, 9.496641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522070, 0.384928, -0.761100,
		-0.775315, 0.157690, 0.611573,
		0.355429, 0.909376, 0.216115,
		20.355648, 20.978065, 9.561476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.497128, 20.752983, 9.327278>,  <20.106848, 20.341503, 9.410195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.497128, 20.752983, 9.327278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.817200, 20.989555, 9.287439>,  <20.009243, 21.131498, 9.263535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.817200, 20.989555, 9.287439>,  <19.497128, 20.752983, 9.327278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.817200, 20.989555, 9.287439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461077, 0.500410, -0.732801,
		-0.383562, 0.632295, 0.673114,
		0.800180, 0.591432, -0.099598,
		20.057253, 21.166985, 9.257560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.259453, 21.422010, 9.138033>,  <19.497128, 20.752983, 9.327278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.259453, 21.422010, 9.138033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.645187, 21.446026, 9.034924>,  <19.876629, 21.460434, 8.973058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.645187, 21.446026, 9.034924>,  <19.259453, 21.422010, 9.138033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.645187, 21.446026, 9.034924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258936, 0.415668, -0.871879,
		0.054802, 0.907533, 0.416390,
		0.964338, 0.060038, -0.257773,
		19.934488, 21.464037, 8.957592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.297792, 22.172499, 8.883779>,  <19.259453, 21.422010, 9.138033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.297792, 22.172499, 8.883779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.572502, 21.933044, 8.718863>,  <19.737328, 21.789371, 8.619915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.572502, 21.933044, 8.718863>,  <19.297792, 22.172499, 8.883779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.572502, 21.933044, 8.718863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335309, 0.242332, -0.910408,
		0.644912, 0.763486, -0.034301,
		0.686772, -0.598635, -0.412287,
		19.778534, 21.753454, 8.595178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.677870, 22.438425, 9.065165>,  <19.297792, 22.172499, 8.883779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.677870, 22.438425, 9.065165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.594219, 22.820751, 8.982522>,  <18.544029, 23.050146, 8.932937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.594219, 22.820751, 8.982522>,  <18.677870, 22.438425, 9.065165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.594219, 22.820751, 8.982522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142636, 0.179204, 0.973417,
		0.967431, 0.233035, 0.098858,
		-0.209125, 0.955814, -0.206607,
		18.531483, 23.107496, 8.920540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.188616, 23.011232, 9.429174>,  <18.677870, 22.438425, 9.065165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.188616, 23.011232, 9.429174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.801544, 23.095524, 9.373760>,  <18.569302, 23.146099, 9.340511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.801544, 23.095524, 9.373760>,  <19.188616, 23.011232, 9.429174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.801544, 23.095524, 9.373760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137173, 0.021140, 0.990322,
		0.211616, 0.977316, 0.008449,
		-0.967679, 0.210727, -0.138535,
		18.511240, 23.158743, 9.332200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.159061, 23.642153, 9.711831>,  <19.188616, 23.011232, 9.429174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.159061, 23.642153, 9.711831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.810558, 23.446751, 9.730904>,  <18.601456, 23.329510, 9.742347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.810558, 23.446751, 9.730904>,  <19.159061, 23.642153, 9.711831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.810558, 23.446751, 9.730904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033846, 0.156710, 0.987065,
		-0.489657, 0.858374, -0.153068,
		-0.871258, -0.488504, 0.047681,
		18.549181, 23.300200, 9.745208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.882389, 23.931602, 10.309031>,  <19.159061, 23.642153, 9.711831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.882389, 23.931602, 10.309031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.666901, 23.601227, 10.242575>,  <18.537607, 23.403002, 10.202702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.666901, 23.601227, 10.242575>,  <18.882389, 23.931602, 10.309031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.666901, 23.601227, 10.242575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143008, -0.104690, 0.984169,
		-0.830259, 0.553951, -0.061718,
		-0.538720, -0.825941, -0.166139,
		18.505285, 23.353445, 10.192733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.178400, 23.951633, 10.785534>,  <18.882389, 23.931602, 10.309031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.178400, 23.951633, 10.785534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.294983, 23.579681, 10.695756>,  <18.364933, 23.356510, 10.641890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.294983, 23.579681, 10.695756>,  <18.178400, 23.951633, 10.785534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.294983, 23.579681, 10.695756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025386, -0.242068, 0.969927,
		-0.956247, -0.276993, -0.094159,
		0.291456, -0.929880, -0.224445,
		18.382420, 23.300716, 10.628423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.691315, 23.708870, 11.160585>,  <18.178400, 23.951633, 10.785534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.691315, 23.708870, 11.160585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.949055, 23.414284, 11.078186>,  <18.103699, 23.237532, 11.028747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.949055, 23.414284, 11.078186>,  <17.691315, 23.708870, 11.160585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.949055, 23.414284, 11.078186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026450, -0.247749, 0.968463,
		-0.764274, -0.629477, -0.140157,
		0.644349, -0.736464, -0.205998,
		18.142359, 23.193344, 11.016387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.475620, 23.004230, 11.593870>,  <17.691315, 23.708870, 11.160585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.475620, 23.004230, 11.593870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.864365, 22.980145, 11.502775>,  <18.097610, 22.965693, 11.448118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.864365, 22.980145, 11.502775>,  <17.475620, 23.004230, 11.593870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.864365, 22.980145, 11.502775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171095, -0.484074, 0.858137,
		-0.161915, -0.872953, -0.460149,
		0.971859, -0.060216, -0.227737,
		18.155922, 22.962080, 11.434454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.554440, 22.360844, 11.802033>,  <17.475620, 23.004230, 11.593870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.554440, 22.360844, 11.802033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.919609, 22.517250, 11.755245>,  <18.138710, 22.611094, 11.727172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.919609, 22.517250, 11.755245>,  <17.554440, 22.360844, 11.802033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.919609, 22.517250, 11.755245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304615, -0.462042, 0.832903,
		0.271632, -0.796006, -0.540917,
		0.912922, 0.391014, -0.116970,
		18.193485, 22.634554, 11.720154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.034801, 21.763168, 11.888263>,  <17.554440, 22.360844, 11.802033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.034801, 21.763168, 11.888263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.224464, 22.108318, 11.958259>,  <18.338263, 22.315409, 12.000257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.224464, 22.108318, 11.958259>,  <18.034801, 21.763168, 11.888263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.224464, 22.108318, 11.958259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431777, -0.401105, 0.807888,
		0.767296, -0.307510, -0.562756,
		0.474158, 0.862875, 0.174990,
		18.366713, 22.367180, 12.010756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.700665, 21.587698, 12.004721>,  <18.034801, 21.763168, 11.888263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.700665, 21.587698, 12.004721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.620979, 21.930088, 12.195560>,  <18.573168, 22.135521, 12.310062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.620979, 21.930088, 12.195560>,  <18.700665, 21.587698, 12.004721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.620979, 21.930088, 12.195560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441069, -0.356434, 0.823659,
		0.875084, 0.374517, -0.306537,
		-0.199214, 0.855974, 0.477097,
		18.561214, 22.186880, 12.338689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.146107, 21.574280, 12.645795>,  <18.700665, 21.587698, 12.004721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.146107, 21.574280, 12.645795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.961658, 21.918308, 12.733102>,  <18.850988, 22.124725, 12.785486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.961658, 21.918308, 12.733102>,  <19.146107, 21.574280, 12.645795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.961658, 21.918308, 12.733102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319514, -0.068540, 0.945100,
		0.827815, 0.505545, -0.243200,
		-0.461122, 0.860074, 0.218267,
		18.823322, 22.176331, 12.798582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.654472, 21.966311, 12.993966>,  <19.146107, 21.574280, 12.645795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.654472, 21.966311, 12.993966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.286903, 22.085052, 13.097857>,  <19.066362, 22.156298, 13.160192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.286903, 22.085052, 13.097857>,  <19.654472, 21.966311, 12.993966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.286903, 22.085052, 13.097857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241322, -0.097737, 0.965511,
		0.312000, 0.949908, 0.018176,
		-0.918923, 0.296853, 0.259728,
		19.011227, 22.174109, 13.175776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.751598, 22.486189, 13.449035>,  <19.654472, 21.966311, 12.993966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.751598, 22.486189, 13.449035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.386486, 22.337906, 13.517627>,  <19.167418, 22.248936, 13.558783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.386486, 22.337906, 13.517627>,  <19.751598, 22.486189, 13.449035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.386486, 22.337906, 13.517627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235487, -0.134597, 0.962512,
		-0.333728, 0.918946, 0.210154,
		-0.912782, -0.370706, 0.171481,
		19.112652, 22.226694, 13.569071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.620455, 22.800814, 14.013121>,  <19.751598, 22.486189, 13.449035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.620455, 22.800814, 14.013121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.366528, 22.491756, 14.015429>,  <19.214172, 22.306322, 14.016814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.366528, 22.491756, 14.015429>,  <19.620455, 22.800814, 14.013121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.366528, 22.491756, 14.015429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034377, -0.020781, 0.999193,
		-0.771897, 0.634503, 0.039753,
		-0.634817, -0.772641, 0.005771,
		19.176083, 22.259964, 14.017161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.969261, 23.059267, 14.492673>,  <19.620455, 22.800814, 14.013121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.969261, 23.059267, 14.492673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.965355, 22.659550, 14.478171>,  <18.963011, 22.419720, 14.469471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.965355, 22.659550, 14.478171>,  <18.969261, 23.059267, 14.492673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.965355, 22.659550, 14.478171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152008, -0.034350, 0.987782,
		-0.988331, 0.015157, -0.151565,
		-0.009765, -0.999295, -0.036253,
		18.962425, 22.359760, 14.467296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.433546, 22.825926, 14.948586>,  <18.969261, 23.059267, 14.492673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.433546, 22.825926, 14.948586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.643600, 22.487972, 14.907792>,  <18.769632, 22.285200, 14.883316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.643600, 22.487972, 14.907792>,  <18.433546, 22.825926, 14.948586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.643600, 22.487972, 14.907792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012631, -0.127561, 0.991750,
		-0.850925, -0.519515, -0.077658,
		0.525136, -0.844886, -0.101983,
		18.801142, 22.234507, 14.877197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.070784, 22.326691, 15.330809>,  <18.433546, 22.825926, 14.948586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.070784, 22.326691, 15.330809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.430843, 22.157688, 15.288434>,  <18.646879, 22.056286, 15.263009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.430843, 22.157688, 15.288434>,  <18.070784, 22.326691, 15.330809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.430843, 22.157688, 15.288434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028499, -0.185558, 0.982220,
		-0.434652, -0.887162, -0.154988,
		0.900147, -0.422507, -0.105936,
		18.700888, 22.030935, 15.256653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.985180, 21.680647, 15.526063>,  <18.070784, 22.326691, 15.330809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.985180, 21.680647, 15.526063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.378891, 21.746960, 15.550439>,  <18.615118, 21.786747, 15.565064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.378891, 21.746960, 15.550439>,  <17.985180, 21.680647, 15.526063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.378891, 21.746960, 15.550439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014262, -0.269297, 0.962951,
		0.176053, -0.948681, -0.262699,
		0.984278, 0.165783, 0.060941,
		18.674173, 21.796694, 15.568721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.281330, 21.115070, 15.887769>,  <17.985180, 21.680647, 15.526063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.281330, 21.115070, 15.887769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.551197, 21.407169, 15.930785>,  <18.713118, 21.582428, 15.956595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.551197, 21.407169, 15.930785>,  <18.281330, 21.115070, 15.887769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.551197, 21.407169, 15.930785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027494, -0.170457, 0.984982,
		0.737610, -0.661578, -0.135079,
		0.674667, 0.730246, 0.107541,
		18.753597, 21.626244, 15.963047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.921602, 20.793346, 16.194733>,  <18.281330, 21.115070, 15.887769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.921602, 20.793346, 16.194733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.930939, 21.188549, 16.255795>,  <18.936541, 21.425671, 16.292431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.930939, 21.188549, 16.255795>,  <18.921602, 20.793346, 16.194733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.930939, 21.188549, 16.255795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145507, -0.154425, 0.977231,
		0.989082, -0.000596, -0.147365,
		0.023339, 0.988004, 0.152652,
		18.937941, 21.484951, 16.301590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.296425, 20.808289, 16.668882>,  <18.921602, 20.793346, 16.194733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.296425, 20.808289, 16.668882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.152771, 21.180691, 16.694954>,  <19.066578, 21.404133, 16.710598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.152771, 21.180691, 16.694954>,  <19.296425, 20.808289, 16.668882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.152771, 21.180691, 16.694954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160051, -0.007368, 0.987081,
		0.919460, 0.364928, -0.146362,
		-0.359135, 0.931007, 0.065181,
		19.045031, 21.459993, 16.714508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.725918, 21.189642, 17.095387>,  <19.296425, 20.808289, 16.668882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.725918, 21.189642, 17.095387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.378105, 21.387184, 17.097094>,  <19.169416, 21.505709, 17.098118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.378105, 21.387184, 17.097094>,  <19.725918, 21.189642, 17.095387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.378105, 21.387184, 17.097094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040840, 0.063288, 0.997159,
		0.492183, 0.867238, -0.075200,
		-0.869533, 0.493856, 0.004269,
		19.117245, 21.535341, 17.098373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.902390, 21.778351, 17.431597>,  <19.725918, 21.189642, 17.095387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.902390, 21.778351, 17.431597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.503662, 21.746475, 17.430689>,  <19.264425, 21.727350, 17.430143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.503662, 21.746475, 17.430689>,  <19.902390, 21.778351, 17.431597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.503662, 21.746475, 17.430689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011538, 0.116019, 0.993180,
		-0.078880, 0.990045, -0.116569,
		-0.996817, -0.079687, -0.002272,
		19.204617, 21.722569, 17.430008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.602196, 22.475388, 17.810066>,  <19.902390, 21.778351, 17.431597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.602196, 22.475388, 17.810066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.324116, 22.188633, 17.831127>,  <19.157269, 22.016581, 17.843763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.324116, 22.188633, 17.831127>,  <19.602196, 22.475388, 17.810066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.324116, 22.188633, 17.831127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150747, 0.217023, 0.964456,
		-0.702832, 0.662553, -0.258943,
		-0.695200, -0.716885, 0.052653,
		19.115555, 21.973568, 17.846924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.976974, 22.735676, 18.195820>,  <19.602196, 22.475388, 17.810066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.976974, 22.735676, 18.195820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.970642, 22.337402, 18.232405>,  <18.966843, 22.098438, 18.254354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.970642, 22.337402, 18.232405>,  <18.976974, 22.735676, 18.195820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.970642, 22.337402, 18.232405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179444, 0.092816, 0.979380,
		-0.983641, -0.000906, -0.180139,
		-0.015833, -0.995683, 0.091460,
		18.965893, 22.038698, 18.259842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.472858, 22.632713, 18.747396>,  <18.976974, 22.735676, 18.195820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.472858, 22.632713, 18.747396> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.655094, 22.277122, 18.728813>,  <18.764435, 22.063768, 18.717663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.655094, 22.277122, 18.728813>,  <18.472858, 22.632713, 18.747396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.655094, 22.277122, 18.728813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019067, -0.042429, 0.998917,
		-0.889986, -0.455981, -0.002380,
		0.455588, -0.888978, -0.046456,
		18.791771, 22.010429, 18.714876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.086393, 22.195360, 19.136057>,  <18.472858, 22.632713, 18.747396>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.086393, 22.195360, 19.136057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.445080, 22.018585, 19.126284>,  <18.660292, 21.912521, 19.120420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.445080, 22.018585, 19.126284>,  <18.086393, 22.195360, 19.136057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.445080, 22.018585, 19.126284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026134, -0.107974, 0.993810,
		-0.441839, -0.890525, -0.108371,
		0.896714, -0.441936, -0.024434,
		18.714094, 21.886005, 19.118954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.034935, 21.559820, 19.516703>,  <18.086393, 22.195360, 19.136057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.034935, 21.559820, 19.516703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.421566, 21.662369, 19.516666>,  <18.653545, 21.723898, 19.516645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.421566, 21.662369, 19.516666>,  <18.034935, 21.559820, 19.516703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.421566, 21.662369, 19.516666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027924, -0.104932, 0.994087,
		0.254846, -0.960866, -0.108584,
		0.966579, 0.256371, -0.000090,
		18.711540, 21.739281, 19.516640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.172842, 20.782536, 19.606123>,  <18.034935, 21.559820, 19.516703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.172842, 20.782536, 19.606123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.924271, 20.469658, 19.624023>,  <17.775127, 20.281931, 19.634764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.924271, 20.469658, 19.624023>,  <18.172842, 20.782536, 19.606123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.924271, 20.469658, 19.624023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012237, -0.066803, -0.997691,
		0.783376, -0.619445, 0.051085,
		-0.621427, -0.782193, 0.044752,
		17.737843, 20.235001, 19.637449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.413704, 20.237749, 19.107533>,  <18.172842, 20.782536, 19.606123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.413704, 20.237749, 19.107533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.023014, 20.170582, 19.160923>,  <17.788601, 20.130281, 19.192957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.023014, 20.170582, 19.160923>,  <18.413704, 20.237749, 19.107533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.023014, 20.170582, 19.160923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132659, -0.016122, -0.991031,
		0.168566, -0.985669, -0.006530,
		-0.976723, -0.167921, 0.133475,
		17.729998, 20.120205, 19.200966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.165684, 19.815641, 18.505524>,  <18.413704, 20.237749, 19.107533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.165684, 19.815641, 18.505524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.803905, 19.939693, 18.622686>,  <17.586838, 20.014124, 18.692984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.803905, 19.939693, 18.622686>,  <18.165684, 19.815641, 18.505524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.803905, 19.939693, 18.622686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311835, -0.012128, -0.950059,
		-0.291091, -0.950616, 0.107679,
		-0.904447, 0.310132, 0.292905,
		17.532572, 20.032732, 18.710558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.727179, 19.356647, 18.116453>,  <18.165684, 19.815641, 18.505524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.727179, 19.356647, 18.116453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.498386, 19.666691, 18.223818>,  <17.361111, 19.852716, 18.288237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.498386, 19.666691, 18.223818>,  <17.727179, 19.356647, 18.116453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.498386, 19.666691, 18.223818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423391, 0.001284, -0.905946,
		-0.702551, -0.631827, 0.327439,
		-0.571981, 0.775108, 0.268413,
		17.326792, 19.899223, 18.304342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.087669, 19.141575, 18.038836>,  <17.727179, 19.356647, 18.116453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.087669, 19.141575, 18.038836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.090633, 19.540905, 18.015884>,  <17.092413, 19.780502, 18.002113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.090633, 19.540905, 18.015884>,  <17.087669, 19.141575, 18.038836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.090633, 19.540905, 18.015884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375274, -0.050408, -0.925542,
		-0.926884, 0.028392, 0.374272,
		0.007412, 0.998325, -0.057377,
		17.092857, 19.840403, 17.998671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
