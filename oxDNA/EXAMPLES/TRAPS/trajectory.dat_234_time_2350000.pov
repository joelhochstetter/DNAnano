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
	right 1.6 * <0.99995, 0, 0.00999983>
	location <54.4867, 55, 106.329>
	look_at <55, 55, 55.0001>
	direction <0.513302, 0, -51.3289>
	angle 67.0682
}


# declare cpy_camera_pos = <54.4867, 55, 106.329>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 88
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.98995, -1, 1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.98995, 1, -1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<36.422035, 52.873142, 49.174698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.280293, 52.628780, 49.457886>,  <36.195248, 52.482162, 49.627800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.280293, 52.628780, 49.457886>,  <36.422035, 52.873142, 49.174698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280293, 52.628780, 49.457886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747921, 0.269284, 0.606713,
		-0.561290, 0.744500, 0.361487,
		-0.354355, -0.610906, 0.707974,
		36.173985, 52.445507, 49.670277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483517, 53.225807, 49.757156>,  <36.422035, 52.873142, 49.174698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483517, 53.225807, 49.757156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448006, 52.849274, 49.887398>,  <36.426701, 52.623356, 49.965542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448006, 52.849274, 49.887398>,  <36.483517, 53.225807, 49.757156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448006, 52.849274, 49.887398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708613, 0.170040, 0.684802,
		-0.699990, 0.291522, 0.651943,
		-0.088778, -0.941330, 0.325603,
		36.421371, 52.566875, 49.985077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759819, 53.853424, 49.897804>,  <36.483517, 53.225807, 49.757156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759819, 53.853424, 49.897804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.110279, 53.915840, 50.080238>,  <37.320553, 53.953289, 50.189701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.110279, 53.915840, 50.080238>,  <36.759819, 53.853424, 49.897804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110279, 53.915840, 50.080238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267550, 0.629625, -0.729376,
		-0.400979, 0.761067, 0.509894,
		0.876147, 0.156042, 0.456089,
		37.373123, 53.962654, 50.217064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928371, 54.619404, 50.053337>,  <36.759819, 53.853424, 49.897804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928371, 54.619404, 50.053337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249310, 54.385368, 50.006165>,  <37.441872, 54.244946, 49.977859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249310, 54.385368, 50.006165>,  <36.928371, 54.619404, 50.053337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249310, 54.385368, 50.006165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249053, 0.507759, -0.824714,
		0.542414, 0.632335, 0.553117,
		0.802346, -0.585093, -0.117930,
		37.490013, 54.209839, 49.970787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616653, 55.051697, 49.867653>,  <36.928371, 54.619404, 50.053337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616653, 55.051697, 49.867653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.620312, 54.674480, 49.734638>,  <37.622505, 54.448151, 49.654827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.620312, 54.674480, 49.734638>,  <37.616653, 55.051697, 49.867653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.620312, 54.674480, 49.734638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400321, 0.308191, -0.862995,
		0.916329, -0.125234, 0.380338,
		0.009141, -0.943045, -0.332538,
		37.623055, 54.391567, 49.634876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317490, 54.755352, 49.671421>,  <37.616653, 55.051697, 49.867653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317490, 54.755352, 49.671421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.011459, 54.627129, 49.448029>,  <37.827843, 54.550194, 49.313992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.011459, 54.627129, 49.448029>,  <38.317490, 54.755352, 49.671421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.011459, 54.627129, 49.448029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446207, 0.361408, -0.818709,
		0.464287, -0.875571, -0.133467,
		-0.765073, -0.320562, -0.558483,
		37.781937, 54.530960, 49.280483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619148, 55.389221, 49.323494>,  <38.317490, 54.755352, 49.671421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619148, 55.389221, 49.323494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880852, 55.099655, 49.235958>,  <39.037876, 54.925915, 49.183437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880852, 55.099655, 49.235958>,  <38.619148, 55.389221, 49.323494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880852, 55.099655, 49.235958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731803, 0.533000, 0.424706,
		-0.190808, -0.438017, 0.878483,
		0.654260, -0.723914, -0.218842,
		39.077129, 54.882481, 49.170307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048336, 55.111973, 49.846836>,  <38.619148, 55.389221, 49.323494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048336, 55.111973, 49.846836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.230461, 55.125191, 49.490948>,  <39.339737, 55.133121, 49.277416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.230461, 55.125191, 49.490948>,  <39.048336, 55.111973, 49.846836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.230461, 55.125191, 49.490948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795220, 0.434305, 0.423088,
		0.400389, -0.900160, 0.171468,
		0.455316, 0.033045, -0.889716,
		39.367054, 55.135105, 49.224033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675522, 55.106003, 50.033562>,  <39.048336, 55.111973, 49.846836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.675522, 55.106003, 50.033562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.725098, 55.234547, 49.658039>,  <39.754845, 55.311672, 49.432724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.725098, 55.234547, 49.658039>,  <39.675522, 55.106003, 50.033562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.725098, 55.234547, 49.658039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765040, 0.571583, 0.296659,
		0.631943, -0.754996, -0.175013,
		0.123942, 0.321364, -0.938810,
		39.762280, 55.330956, 49.376396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398655, 54.930851, 49.829330>,  <39.675522, 55.106003, 50.033562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.398655, 54.930851, 49.829330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.273705, 55.274658, 49.667511>,  <40.198734, 55.480942, 49.570419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.273705, 55.274658, 49.667511>,  <40.398655, 54.930851, 49.829330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273705, 55.274658, 49.667511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781899, 0.474482, 0.404351,
		0.539496, -0.190006, -0.820269,
		-0.312374, 0.859514, -0.404547,
		40.179993, 55.532513, 49.546146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.985207, 55.183475, 49.476803>,  <40.398655, 54.930851, 49.829330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.985207, 55.183475, 49.476803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.745995, 55.440792, 49.668026>,  <40.602467, 55.595181, 49.782761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.745995, 55.440792, 49.668026>,  <40.985207, 55.183475, 49.476803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.745995, 55.440792, 49.668026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789642, 0.370802, 0.488847,
		0.137206, 0.669840, -0.729719,
		-0.598030, 0.643289, 0.478057,
		40.566586, 55.633778, 49.811443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.439861, 55.639675, 49.679947>,  <40.985207, 55.183475, 49.476803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.439861, 55.639675, 49.679947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.098999, 55.733997, 49.866806>,  <40.894482, 55.790592, 49.978924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.098999, 55.733997, 49.866806>,  <41.439861, 55.639675, 49.679947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.098999, 55.733997, 49.866806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523261, 0.393751, 0.755750,
		-0.005732, 0.888457, -0.458924,
		-0.852153, 0.235805, 0.467152,
		40.843353, 55.804737, 50.006950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.397568, 56.357018, 49.895882>,  <41.439861, 55.639675, 49.679947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.397568, 56.357018, 49.895882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.179367, 56.129936, 50.142502>,  <41.048447, 55.993687, 50.290474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.179367, 56.129936, 50.142502>,  <41.397568, 56.357018, 49.895882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.179367, 56.129936, 50.142502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387408, 0.481537, 0.786154,
		-0.743196, 0.667707, -0.042747,
		-0.545505, -0.567705, 0.616551,
		41.015717, 55.959625, 50.327469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.069851, 56.848331, 50.326134>,  <41.397568, 56.357018, 49.895882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.069851, 56.848331, 50.326134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.108723, 56.491978, 50.503616>,  <41.132046, 56.278164, 50.610107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.108723, 56.491978, 50.503616>,  <41.069851, 56.848331, 50.326134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.108723, 56.491978, 50.503616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538785, 0.421931, 0.729167,
		-0.836819, 0.168202, 0.521000,
		0.097179, -0.890888, 0.443705,
		41.137875, 56.224712, 50.636726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938335, 56.845585, 51.128242>,  <41.069851, 56.848331, 50.326134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.938335, 56.845585, 51.128242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.187439, 56.535793, 51.083778>,  <41.336903, 56.349918, 51.057098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.187439, 56.535793, 51.083778>,  <40.938335, 56.845585, 51.128242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.187439, 56.535793, 51.083778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555147, 0.337263, 0.760307,
		-0.551348, -0.535200, 0.639982,
		0.622758, -0.774477, -0.111165,
		41.374268, 56.303452, 51.050430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.042870, 56.371288, 51.772884>,  <40.938335, 56.845585, 51.128242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.042870, 56.371288, 51.772884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.370167, 56.383869, 51.543278>,  <41.566544, 56.391418, 51.405514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.370167, 56.383869, 51.543278>,  <41.042870, 56.371288, 51.772884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.370167, 56.383869, 51.543278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493552, 0.473553, 0.729488,
		0.294771, -0.880203, 0.371957,
		0.818240, 0.031452, -0.574016,
		41.615639, 56.393307, 51.371071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.551392, 55.774879, 52.014771>,  <41.042870, 56.371288, 51.772884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.551392, 55.774879, 52.014771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.605087, 56.156147, 51.906361>,  <41.637306, 56.384907, 51.841312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.605087, 56.156147, 51.906361>,  <41.551392, 55.774879, 52.014771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.605087, 56.156147, 51.906361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318545, 0.217481, 0.922622,
		0.938354, -0.210190, -0.274431,
		0.134242, 0.953165, -0.271029,
		41.645359, 56.442097, 51.825050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.200130, 55.950222, 52.245781>,  <41.551392, 55.774879, 52.014771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.200130, 55.950222, 52.245781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.995251, 56.290958, 52.201920>,  <41.872322, 56.495399, 52.175602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.995251, 56.290958, 52.201920>,  <42.200130, 55.950222, 52.245781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.995251, 56.290958, 52.201920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321246, 0.308421, 0.895364,
		0.796526, 0.423377, -0.431623,
		-0.512198, 0.851838, -0.109657,
		41.841591, 56.546509, 52.169022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.647907, 56.695053, 52.410431>,  <42.200130, 55.950222, 52.245781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.647907, 56.695053, 52.410431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.252975, 56.714127, 52.470970>,  <42.016018, 56.725571, 52.507294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.252975, 56.714127, 52.470970>,  <42.647907, 56.695053, 52.410431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.252975, 56.714127, 52.470970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158236, 0.367284, 0.916550,
		-0.011888, 0.928886, -0.370175,
		-0.987330, 0.047679, 0.151350,
		41.956776, 56.728432, 52.516376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.563126, 56.470707, 53.145351>,  <42.647907, 56.695053, 52.410431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.563126, 56.470707, 53.145351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.857311, 56.702290, 53.286148>,  <43.033825, 56.841240, 53.370625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.857311, 56.702290, 53.286148>,  <42.563126, 56.470707, 53.145351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.857311, 56.702290, 53.286148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627432, -0.778044, -0.031254,
		0.255767, 0.243835, -0.935483,
		0.735467, 0.578958, 0.351988,
		43.077953, 56.875977, 53.391743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.019936, 55.809769, 53.360722>,  <42.563126, 56.470707, 53.145351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.019936, 55.809769, 53.360722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.802502, 55.730640, 53.687004>,  <42.672043, 55.683163, 53.882774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.802502, 55.730640, 53.687004>,  <43.019936, 55.809769, 53.360722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.802502, 55.730640, 53.687004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766342, 0.279472, 0.578460,
		-0.342400, 0.939554, -0.000318,
		-0.543583, -0.197821, 0.815711,
		42.639427, 55.671295, 53.931717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.559216, 56.197338, 53.765514>,  <43.019936, 55.809769, 53.360722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.559216, 56.197338, 53.765514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.550953, 55.848770, 53.569477>,  <43.545994, 55.639629, 53.451855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.550953, 55.848770, 53.569477>,  <43.559216, 56.197338, 53.765514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.550953, 55.848770, 53.569477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988528, 0.055558, -0.140449,
		0.149620, -0.487375, 0.860279,
		-0.020656, -0.871424, -0.490096,
		43.544758, 55.587341, 53.422447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.879696, 55.654926, 54.174511>,  <43.559216, 56.197338, 53.765514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.879696, 55.654926, 54.174511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.917530, 55.612911, 53.778526>,  <43.940231, 55.587704, 53.540936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.917530, 55.612911, 53.778526>,  <43.879696, 55.654926, 54.174511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.917530, 55.612911, 53.778526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928577, 0.367796, 0.049701,
		0.358883, -0.923956, 0.132323,
		0.094589, -0.105035, -0.989960,
		43.945908, 55.581402, 53.481537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.531784, 55.430283, 54.029079>,  <43.879696, 55.654926, 54.174511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.531784, 55.430283, 54.029079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.390057, 55.651882, 53.727737>,  <44.305019, 55.784843, 53.546932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.390057, 55.651882, 53.727737>,  <44.531784, 55.430283, 54.029079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.390057, 55.651882, 53.727737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921905, 0.341923, -0.182155,
		0.156674, -0.759059, -0.631888,
		-0.354323, 0.554002, -0.753351,
		44.283760, 55.818081, 53.501732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.888912, 55.230347, 53.452320>,  <44.531784, 55.430283, 54.029079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.888912, 55.230347, 53.452320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.757137, 55.604774, 53.402935>,  <44.678074, 55.829433, 53.373306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.757137, 55.604774, 53.402935>,  <44.888912, 55.230347, 53.452320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.757137, 55.604774, 53.402935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912156, 0.281763, -0.297624,
		-0.243811, -0.210662, -0.946667,
		-0.329434, 0.936072, -0.123459,
		44.658306, 55.885597, 53.365898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.587723, 55.017647, 54.017204>,  <44.888912, 55.230347, 53.452320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.587723, 55.017647, 54.017204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.835327, 54.775253, 54.217049>,  <45.983891, 54.629818, 54.336956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.835327, 54.775253, 54.217049>,  <45.587723, 55.017647, 54.017204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.835327, 54.775253, 54.217049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719088, 0.693099, -0.050270,
		-0.315814, 0.390379, 0.864792,
		0.619011, -0.605985, 0.499607,
		46.021030, 54.593456, 54.366932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.867710, 55.246796, 54.592548>,  <45.587723, 55.017647, 54.017204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.867710, 55.246796, 54.592548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.184929, 55.044853, 54.456200>,  <46.375259, 54.923687, 54.374390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.184929, 55.044853, 54.456200>,  <45.867710, 55.246796, 54.592548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.184929, 55.044853, 54.456200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557431, 0.827107, 0.071863,
		0.245655, -0.247002, 0.937360,
		0.793047, -0.504860, -0.340870,
		46.422844, 54.893394, 54.353939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.374603, 55.621937, 54.969524>,  <45.867710, 55.246796, 54.592548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.374603, 55.621937, 54.969524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.550156, 55.401505, 54.685638>,  <46.655487, 55.269245, 54.515308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.550156, 55.401505, 54.685638>,  <46.374603, 55.621937, 54.969524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.550156, 55.401505, 54.685638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795040, 0.606195, 0.020947,
		0.418680, -0.573443, 0.704180,
		0.438882, -0.551082, -0.709712,
		46.681820, 55.236179, 54.472725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.040733, 55.240444, 55.125950>,  <46.374603, 55.621937, 54.969524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.040733, 55.240444, 55.125950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.047245, 55.327953, 54.735695>,  <47.051151, 55.380459, 54.501541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.047245, 55.327953, 54.735695>,  <47.040733, 55.240444, 55.125950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.047245, 55.327953, 54.735695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896595, 0.428691, 0.111088,
		0.442551, -0.876562, -0.189176,
		0.016278, 0.218777, -0.975639,
		47.052128, 55.393585, 54.443005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.051102, 54.980785, 55.922375>,  <47.040733, 55.240444, 55.125950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.051102, 54.980785, 55.922375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.001892, 54.960941, 56.318840>,  <46.972366, 54.949036, 56.556721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.001892, 54.960941, 56.318840>,  <47.051102, 54.980785, 55.922375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.001892, 54.960941, 56.318840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969167, 0.208855, 0.130750,
		-0.213496, 0.976687, 0.022389,
		-0.123026, -0.049613, 0.991162,
		46.964985, 54.946056, 56.616188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.034962, 55.656349, 56.276539>,  <47.051102, 54.980785, 55.922375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.034962, 55.656349, 56.276539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.162807, 55.388855, 56.545059>,  <47.239517, 55.228359, 56.706169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.162807, 55.388855, 56.545059>,  <47.034962, 55.656349, 56.276539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.162807, 55.388855, 56.545059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783413, 0.585023, 0.209790,
		-0.533018, 0.458852, 0.710877,
		0.319617, -0.668733, 0.671299,
		47.258694, 55.188236, 56.746449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.109676, 55.949528, 56.966602>,  <47.034962, 55.656349, 56.276539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.109676, 55.949528, 56.966602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.364170, 55.641911, 56.942017>,  <47.516865, 55.457340, 56.927265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.364170, 55.641911, 56.942017>,  <47.109676, 55.949528, 56.966602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.364170, 55.641911, 56.942017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752318, 0.600788, 0.270319,
		-0.170959, -0.218229, 0.960807,
		0.636232, -0.769045, -0.061468,
		47.555038, 55.411198, 56.923576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.480858, 55.781361, 57.602089>,  <47.109676, 55.949528, 56.966602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.480858, 55.781361, 57.602089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.701862, 55.727608, 57.273048>,  <47.834465, 55.695354, 57.075623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.701862, 55.727608, 57.273048>,  <47.480858, 55.781361, 57.602089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.701862, 55.727608, 57.273048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624338, 0.720571, 0.301628,
		0.552211, -0.680235, 0.482021,
		0.552508, -0.134382, -0.822603,
		47.867615, 55.687294, 57.026268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.071133, 55.745392, 57.888721>,  <47.480858, 55.781361, 57.602089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.071133, 55.745392, 57.888721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.183792, 55.814117, 57.511116>,  <48.251389, 55.855350, 57.284554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.183792, 55.814117, 57.511116>,  <48.071133, 55.745392, 57.888721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.183792, 55.814117, 57.511116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843495, 0.424630, 0.328946,
		0.457371, -0.888916, -0.025324,
		0.281652, 0.171811, -0.944009,
		48.268288, 55.865662, 57.227913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.761559, 55.418327, 57.769909>,  <48.071133, 55.745392, 57.888721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.761559, 55.418327, 57.769909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.687691, 55.753445, 57.564384>,  <48.643372, 55.954514, 57.441071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.687691, 55.753445, 57.564384>,  <48.761559, 55.418327, 57.769909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.687691, 55.753445, 57.564384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714045, 0.473604, 0.515597,
		0.675306, -0.271672, -0.685679,
		-0.184667, 0.837791, -0.513813,
		48.632290, 56.004784, 57.410240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.204571, 54.711227, 57.492573>,  <48.761559, 55.418327, 57.769909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.204571, 54.711227, 57.492573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.043194, 54.808937, 57.139854>,  <48.946369, 54.867561, 56.928223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.043194, 54.808937, 57.139854>,  <49.204571, 54.711227, 57.492573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.043194, 54.808937, 57.139854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912313, 0.181259, -0.367193,
		0.070138, -0.952615, -0.295983,
		-0.403443, 0.244274, -0.881796,
		48.922161, 54.882217, 56.875317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.686081, 54.096745, 57.291069>,  <49.204571, 54.711227, 57.492573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.686081, 54.096745, 57.291069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.913860, 54.311119, 57.041748>,  <50.050526, 54.439743, 56.892155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.913860, 54.311119, 57.041748>,  <49.686081, 54.096745, 57.291069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.913860, 54.311119, 57.041748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535741, 0.333135, 0.775889,
		0.623470, -0.775754, -0.097421,
		0.569444, 0.535936, -0.623302,
		50.084694, 54.471901, 56.854759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.431316, 53.966621, 57.456226>,  <49.686081, 54.096745, 57.291069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.431316, 53.966621, 57.456226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.399746, 54.318813, 57.269241>,  <50.380806, 54.530128, 57.157051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.399746, 54.318813, 57.269241>,  <50.431316, 53.966621, 57.456226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.399746, 54.318813, 57.269241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532239, 0.433714, 0.727058,
		0.842908, -0.191421, -0.502857,
		-0.078922, 0.880483, -0.467462,
		50.376068, 54.582958, 57.129002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.117531, 53.980160, 57.416332>,  <50.431316, 53.966621, 57.456226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.117531, 53.980160, 57.416332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.958763, 54.339882, 57.489769>,  <50.863503, 54.555714, 57.533833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.958763, 54.339882, 57.489769>,  <51.117531, 53.980160, 57.416332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.958763, 54.339882, 57.489769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598291, 0.101810, 0.794785,
		0.696062, 0.425308, -0.578456,
		-0.396921, 0.899304, 0.183592,
		50.839687, 54.609673, 57.544846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.685459, 54.492416, 57.342171>,  <51.117531, 53.980160, 57.416332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.685459, 54.492416, 57.342171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.389706, 54.614922, 57.582008>,  <51.212254, 54.688423, 57.725910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.389706, 54.614922, 57.582008>,  <51.685459, 54.492416, 57.342171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.389706, 54.614922, 57.582008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606579, -0.083453, 0.790631,
		0.292177, 0.948282, -0.124068,
		-0.739388, 0.306261, 0.599591,
		51.167889, 54.706799, 57.761887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.306728, 54.659527, 56.708729>,  <51.685459, 54.492416, 57.342171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.306728, 54.659527, 56.708729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.255955, 55.056271, 56.704567>,  <51.225491, 55.294315, 56.702068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.255955, 55.056271, 56.704567>,  <51.306728, 54.659527, 56.708729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.255955, 55.056271, 56.704567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378777, 0.058166, 0.923658,
		0.916742, 0.113301, -0.383076,
		-0.126933, 0.991857, -0.010407,
		51.217876, 55.353828, 56.701447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.855862, 55.202450, 56.717628>,  <51.306728, 54.659527, 56.708729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.855862, 55.202450, 56.717628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.553459, 55.383762, 56.906517>,  <51.372017, 55.492550, 57.019848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.553459, 55.383762, 56.906517>,  <51.855862, 55.202450, 56.717628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.553459, 55.383762, 56.906517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585668, 0.146260, 0.797246,
		0.292307, 0.879288, -0.376044,
		-0.756009, 0.453278, 0.472219,
		51.326656, 55.519745, 57.048183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.033882, 55.904224, 56.630787>,  <51.855862, 55.202450, 56.717628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.033882, 55.904224, 56.630787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.859917, 55.757450, 56.301857>,  <51.755539, 55.669384, 56.104500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.859917, 55.757450, 56.301857>,  <52.033882, 55.904224, 56.630787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.859917, 55.757450, 56.301857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670858, 0.477132, -0.567709,
		0.600668, -0.798563, 0.038651,
		-0.434910, -0.366935, -0.822321,
		51.729443, 55.647369, 56.055161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.390049, 55.419273, 56.184147>,  <52.033882, 55.904224, 56.630787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.390049, 55.419273, 56.184147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.128120, 55.628384, 55.965820>,  <51.970963, 55.753849, 55.834824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.128120, 55.628384, 55.965820>,  <52.390049, 55.419273, 56.184147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.128120, 55.628384, 55.965820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739025, 0.291664, -0.607268,
		-0.158271, -0.801023, -0.577332,
		-0.654822, 0.522776, -0.545814,
		51.931675, 55.785217, 55.802074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.518291, 55.379353, 55.417686>,  <52.390049, 55.419273, 56.184147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.518291, 55.379353, 55.417686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.360718, 55.736137, 55.506432>,  <52.266174, 55.950207, 55.559681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.360718, 55.736137, 55.506432>,  <52.518291, 55.379353, 55.417686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.360718, 55.736137, 55.506432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720536, 0.449549, -0.527952,
		-0.570652, -0.048115, -0.819781,
		-0.393935, 0.891959, 0.221867,
		52.242538, 56.003723, 55.572990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.322971, 55.793144, 54.778706>,  <52.518291, 55.379353, 55.417686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.322971, 55.793144, 54.778706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.487484, 55.933319, 55.115288>,  <52.586189, 56.017426, 55.317238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.487484, 55.933319, 55.115288>,  <52.322971, 55.793144, 54.778706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.487484, 55.933319, 55.115288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840199, 0.212197, -0.499038,
		-0.353435, 0.912232, -0.207163,
		0.411279, 0.350436, 0.841454,
		52.610867, 56.038448, 55.367725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.626396, 56.414772, 54.551987>,  <52.322971, 55.793144, 54.778706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.626396, 56.414772, 54.551987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.800293, 56.319374, 54.899345>,  <52.904633, 56.262135, 55.107761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.800293, 56.319374, 54.899345>,  <52.626396, 56.414772, 54.551987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.800293, 56.319374, 54.899345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770138, 0.598283, -0.221236,
		-0.466785, 0.764969, 0.443773,
		0.434741, -0.238496, 0.868401,
		52.930714, 56.247826, 55.159866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.966774, 56.977985, 54.812401>,  <52.626396, 56.414772, 54.551987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.966774, 56.977985, 54.812401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.142956, 56.654823, 54.969009>,  <53.248665, 56.460926, 55.062977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.142956, 56.654823, 54.969009>,  <52.966774, 56.977985, 54.812401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.142956, 56.654823, 54.969009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874119, 0.286474, -0.392236,
		0.204727, 0.515001, 0.832382,
		0.440458, -0.807902, 0.391524,
		53.275093, 56.412453, 55.086468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.582825, 57.203388, 55.207878>,  <52.966774, 56.977985, 54.812401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.582825, 57.203388, 55.207878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.654770, 56.818104, 55.127998>,  <53.697937, 56.586933, 55.080070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.654770, 56.818104, 55.127998>,  <53.582825, 57.203388, 55.207878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.654770, 56.818104, 55.127998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957485, 0.217975, -0.188970,
		0.225547, -0.157221, 0.961463,
		0.179865, -0.963207, -0.199700,
		53.708729, 56.529140, 55.068089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.088676, 56.805405, 55.657032>,  <53.582825, 57.203388, 55.207878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.088676, 56.805405, 55.657032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.121895, 56.633724, 55.297279>,  <54.141827, 56.530716, 55.081429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.121895, 56.633724, 55.297279>,  <54.088676, 56.805405, 55.657032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.121895, 56.633724, 55.297279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937203, 0.340421, -0.075919,
		0.338753, -0.836600, 0.430519,
		0.083044, -0.429202, -0.899383,
		54.146809, 56.504963, 55.027466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.751041, 56.415565, 55.548050>,  <54.088676, 56.805405, 55.657032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.751041, 56.415565, 55.548050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.657745, 56.532997, 55.177231>,  <54.601768, 56.603455, 54.954739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.657745, 56.532997, 55.177231>,  <54.751041, 56.415565, 55.548050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.657745, 56.532997, 55.177231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967605, 0.164803, -0.191259,
		0.096631, -0.941623, -0.322504,
		-0.233244, 0.293575, -0.927044,
		54.587772, 56.621071, 54.899117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.076809, 56.076660, 54.982464>,  <54.751041, 56.415565, 55.548050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.076809, 56.076660, 54.982464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.021629, 56.466988, 54.914646>,  <54.988522, 56.701183, 54.873955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.021629, 56.466988, 54.914646>,  <55.076809, 56.076660, 54.982464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.021629, 56.466988, 54.914646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963112, 0.172096, 0.206878,
		0.231054, -0.134755, -0.963564,
		-0.137948, 0.975820, -0.169548,
		54.980244, 56.759735, 54.863781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.606915, 56.251026, 54.562531>,  <55.076809, 56.076660, 54.982464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.606915, 56.251026, 54.562531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.471375, 56.612232, 54.668167>,  <55.390049, 56.828957, 54.731548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.471375, 56.612232, 54.668167>,  <55.606915, 56.251026, 54.562531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.471375, 56.612232, 54.668167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910749, 0.244404, 0.332870,
		0.236043, 0.353310, -0.905238,
		-0.338850, 0.903017, 0.264087,
		55.369720, 56.883137, 54.747395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.969536, 56.755341, 54.205467>,  <55.606915, 56.251026, 54.562531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.969536, 56.755341, 54.205467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.843193, 56.876266, 54.565208>,  <55.767387, 56.948822, 54.781052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.843193, 56.876266, 54.565208>,  <55.969536, 56.755341, 54.205467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.843193, 56.876266, 54.565208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948484, 0.125315, 0.290989,
		-0.024731, 0.944934, -0.326325,
		-0.315859, 0.302318, 0.899354,
		55.748436, 56.966961, 54.835014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.535717, 57.287113, 54.470638>,  <55.969536, 56.755341, 54.205467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.535717, 57.287113, 54.470638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.313660, 57.212559, 54.794880>,  <56.180428, 57.167828, 54.989426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.313660, 57.212559, 54.794880>,  <56.535717, 57.287113, 54.470638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.313660, 57.212559, 54.794880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738658, 0.337542, 0.583480,
		-0.382366, 0.922673, -0.049708,
		-0.555140, -0.186386, 0.810605,
		56.147118, 57.156643, 55.038063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.422718, 57.886364, 54.910435>,  <56.535717, 57.287113, 54.470638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.422718, 57.886364, 54.910435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.450287, 57.546078, 55.118874>,  <56.466827, 57.341908, 55.243935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.450287, 57.546078, 55.118874>,  <56.422718, 57.886364, 54.910435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.450287, 57.546078, 55.118874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946201, 0.221275, 0.236095,
		-0.316154, 0.476786, 0.820196,
		0.068922, -0.850713, 0.521093,
		56.470963, 57.290863, 55.275200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.075283, 57.950043, 55.220490>,  <56.422718, 57.886364, 54.910435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.075283, 57.950043, 55.220490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.967499, 57.592087, 55.362793>,  <56.902828, 57.377312, 55.448174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.967499, 57.592087, 55.362793>,  <57.075283, 57.950043, 55.220490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.967499, 57.592087, 55.362793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889104, -0.089259, 0.448919,
		-0.369979, 0.437270, 0.819702,
		-0.269464, -0.894890, 0.355755,
		56.886658, 57.323620, 55.469521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.117886, 57.849625, 55.930923>,  <57.075283, 57.950043, 55.220490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.117886, 57.849625, 55.930923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.185173, 57.507111, 55.735588>,  <57.225544, 57.301601, 55.618389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.185173, 57.507111, 55.735588>,  <57.117886, 57.849625, 55.930923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.185173, 57.507111, 55.735588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871430, -0.102385, 0.479716,
		-0.460774, -0.506246, 0.728973,
		0.168218, -0.856290, -0.488335,
		57.235638, 57.250225, 55.589088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.265221, 57.321415, 56.464275>,  <57.117886, 57.849625, 55.930923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.265221, 57.321415, 56.464275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.441093, 57.323326, 56.105019>,  <57.546619, 57.324471, 55.889465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.441093, 57.323326, 56.105019>,  <57.265221, 57.321415, 56.464275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.441093, 57.323326, 56.105019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897916, 0.020613, 0.439684,
		0.020613, -0.999776, 0.004775,
		-0.439684, -0.004775, 0.898140,
		57.572998, 57.324760, 55.835575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.953831, 57.072750, 56.681721>,  <57.265221, 57.321415, 56.464275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.953831, 57.072750, 56.681721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.975334, 57.260262, 56.329048>,  <57.988235, 57.372768, 56.117447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.975334, 57.260262, 56.329048>,  <57.953831, 57.072750, 56.681721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.975334, 57.260262, 56.329048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966170, 0.198619, 0.164517,
		0.252240, -0.860697, -0.442240,
		0.053762, 0.468777, -0.881679,
		57.991463, 57.400894, 56.064545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.315285, 56.482109, 57.149456>,  <57.953831, 57.072750, 56.681721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.315285, 56.482109, 57.149456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.708580, 56.553989, 57.161758>,  <58.944557, 56.597118, 57.169140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.708580, 56.553989, 57.161758>,  <58.315285, 56.482109, 57.149456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.708580, 56.553989, 57.161758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114438, -0.739658, 0.663182,
		0.141924, -0.648548, -0.747826,
		0.983240, 0.179702, 0.030757,
		59.003551, 56.607899, 57.170986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.690216, 55.720158, 57.059891>,  <58.315285, 56.482109, 57.149456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.690216, 55.720158, 57.059891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.888809, 55.995235, 57.271774>,  <59.007965, 56.160282, 57.398903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.888809, 55.995235, 57.271774>,  <58.690216, 55.720158, 57.059891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.888809, 55.995235, 57.271774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037878, -0.626809, 0.778252,
		0.867220, -0.366324, -0.337247,
		0.496482, 0.687690, 0.529706,
		59.037754, 56.201542, 57.430687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.597588, 55.097679, 56.652172>,  <58.690216, 55.720158, 57.059891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.597588, 55.097679, 56.652172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.726097, 54.986351, 57.014236>,  <58.803204, 54.919556, 57.231476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.726097, 54.986351, 57.014236>,  <58.597588, 55.097679, 56.652172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.726097, 54.986351, 57.014236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610539, 0.669788, 0.422643,
		-0.723897, -0.688422, 0.045262,
		0.321272, -0.278316, 0.905165,
		58.822479, 54.902855, 57.285786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.062725, 55.015823, 57.141041>,  <58.597588, 55.097679, 56.652172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.062725, 55.015823, 57.141041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.378807, 55.109356, 57.367630>,  <58.568459, 55.165474, 57.503582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.378807, 55.109356, 57.367630>,  <58.062725, 55.015823, 57.141041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.378807, 55.109356, 57.367630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532009, 0.720564, 0.444696,
		-0.304198, -0.652772, 0.693796,
		0.790209, 0.233830, 0.566475,
		58.615871, 55.179504, 57.537571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.934418, 54.934322, 57.905529>,  <58.062725, 55.015823, 57.141041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.934418, 54.934322, 57.905529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.211464, 55.212143, 57.827667>,  <58.377689, 55.378834, 57.780949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.211464, 55.212143, 57.827667>,  <57.934418, 54.934322, 57.905529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.211464, 55.212143, 57.827667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573254, 0.693818, 0.435886,
		0.437801, -0.190311, 0.878699,
		0.692611, 0.694549, -0.194658,
		58.419247, 55.420509, 57.769268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.903625, 55.498337, 58.331715>,  <57.934418, 54.934322, 57.905529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.903625, 55.498337, 58.331715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.093941, 55.709343, 58.050186>,  <58.208130, 55.835945, 57.881271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.093941, 55.709343, 58.050186>,  <57.903625, 55.498337, 58.331715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.093941, 55.709343, 58.050186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433217, 0.836945, 0.334433,
		0.765473, 0.145786, 0.626735,
		0.475787, 0.527512, -0.703817,
		58.236675, 55.867596, 57.839043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.501015, 55.992435, 58.553867>,  <57.903625, 55.498337, 58.331715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.501015, 55.992435, 58.553867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.296593, 56.105656, 58.229225>,  <58.173939, 56.173588, 58.034439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.296593, 56.105656, 58.229225>,  <58.501015, 55.992435, 58.553867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.296593, 56.105656, 58.229225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355680, 0.789955, 0.499463,
		0.782505, 0.543925, -0.303036,
		-0.511055, 0.283049, -0.811607,
		58.143276, 56.190571, 57.985744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.912975, 56.156086, 59.174217>,  <58.501015, 55.992435, 58.553867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.912975, 56.156086, 59.174217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.888550, 55.783985, 59.029495>,  <58.873894, 55.560726, 58.942661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.888550, 55.783985, 59.029495>,  <58.912975, 56.156086, 59.174217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.888550, 55.783985, 59.029495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390391, 0.355862, -0.849092,
		0.918622, 0.089399, -0.384891,
		-0.061060, -0.930252, -0.361804,
		58.870232, 55.504910, 58.920956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.632111, 55.914036, 59.199345>,  <58.912975, 56.156086, 59.174217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.632111, 55.914036, 59.199345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.380447, 55.861427, 58.892914>,  <59.229450, 55.829861, 58.709057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.380447, 55.861427, 58.892914>,  <59.632111, 55.914036, 59.199345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.380447, 55.861427, 58.892914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743711, 0.184658, -0.642492,
		0.225965, -0.973962, -0.018361,
		-0.629153, -0.131525, -0.766073,
		59.191700, 55.821972, 58.663094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.912727, 56.348904, 59.762165>,  <59.632111, 55.914036, 59.199345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.912727, 56.348904, 59.762165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.932442, 56.734970, 59.659378>,  <59.944271, 56.966610, 59.597706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.932442, 56.734970, 59.659378>,  <59.912727, 56.348904, 59.762165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.932442, 56.734970, 59.659378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366486, 0.221855, 0.903586,
		0.929117, -0.138709, -0.342784,
		0.049288, 0.965163, -0.256964,
		59.947227, 57.024521, 59.582291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.270504, 56.517143, 59.193535>,  <59.912727, 56.348904, 59.762165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.270504, 56.517143, 59.193535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.560982, 56.257286, 59.103546>,  <60.735268, 56.101372, 59.049553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.560982, 56.257286, 59.103546>,  <60.270504, 56.517143, 59.193535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.560982, 56.257286, 59.103546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096964, 0.420747, -0.901981,
		0.680621, 0.633196, 0.368535,
		0.726191, -0.649642, -0.224972,
		60.778839, 56.062393, 59.036053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.811302, 56.830597, 58.835251>,  <60.270504, 56.517143, 59.193535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.811302, 56.830597, 58.835251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.841255, 56.443535, 58.738884>,  <60.859226, 56.211300, 58.681065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.841255, 56.443535, 58.738884>,  <60.811302, 56.830597, 58.835251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.841255, 56.443535, 58.738884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068701, 0.246027, -0.966825,
		0.994823, 0.055846, 0.084902,
		0.074881, -0.967653, -0.240917,
		60.863720, 56.153240, 58.666611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.437607, 56.790077, 58.393505>,  <60.811302, 56.830597, 58.835251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.437607, 56.790077, 58.393505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.187645, 56.489468, 58.308929>,  <61.037666, 56.309101, 58.258183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.187645, 56.489468, 58.308929>,  <61.437607, 56.790077, 58.393505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.187645, 56.489468, 58.308929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273509, 0.042923, -0.960911,
		0.731222, -0.658310, 0.178725,
		-0.624906, -0.751522, -0.211440,
		61.000172, 56.264011, 58.245499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.295238, 56.611691, 58.339851>,  <61.437607, 56.790077, 58.393505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.295238, 56.611691, 58.339851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.642998, 56.576992, 58.534424>,  <62.851654, 56.556175, 58.651169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.642998, 56.576992, 58.534424>,  <62.295238, 56.611691, 58.339851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.642998, 56.576992, 58.534424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483558, 0.351697, -0.801549,
		-0.101547, 0.932086, 0.347712,
		0.869402, -0.086743, 0.486431,
		62.903820, 56.550968, 58.680355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.873360, 57.211723, 58.206841>,  <62.295238, 56.611691, 58.339851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.873360, 57.211723, 58.206841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.040649, 56.860157, 58.298569>,  <63.141022, 56.649216, 58.353603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.040649, 56.860157, 58.298569>,  <62.873360, 57.211723, 58.206841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.040649, 56.860157, 58.298569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467797, -0.007993, -0.883800,
		0.778623, 0.476901, 0.407813,
		0.418226, -0.878920, 0.229317,
		63.166119, 56.596481, 58.367363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.634201, 57.160213, 58.395119>,  <62.873360, 57.211723, 58.206841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.634201, 57.160213, 58.395119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.492676, 56.839409, 58.202621>,  <63.407761, 56.646927, 58.087124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.492676, 56.839409, 58.202621>,  <63.634201, 57.160213, 58.395119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.492676, 56.839409, 58.202621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603798, 0.197103, -0.772385,
		0.714316, -0.563853, 0.414516,
		-0.353809, -0.802010, -0.481247,
		63.386532, 56.598804, 58.058247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.110329, 56.559544, 58.323238>,  <63.634201, 57.160213, 58.395119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.110329, 56.559544, 58.323238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.857147, 56.633865, 58.022614>,  <63.705238, 56.678459, 57.842239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.857147, 56.633865, 58.022614>,  <64.110329, 56.559544, 58.323238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.857147, 56.633865, 58.022614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771586, 0.230926, -0.592729,
		0.063422, -0.955065, -0.289531,
		-0.632955, 0.185806, -0.751561,
		63.667259, 56.689606, 57.797146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.336945, 56.165020, 57.842834>,  <64.110329, 56.559544, 58.323238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.336945, 56.165020, 57.842834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.156479, 56.484665, 57.683907>,  <64.048195, 56.676453, 57.588551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.156479, 56.484665, 57.683907>,  <64.336945, 56.165020, 57.842834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.156479, 56.484665, 57.683907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715431, 0.057724, -0.696294,
		-0.533484, -0.598400, -0.597755,
		-0.451168, 0.799115, -0.397320,
		64.021126, 56.724400, 57.564713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.513206, 55.670784, 57.293587>,  <64.336945, 56.165020, 57.842834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.513206, 55.670784, 57.293587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.745972, 55.402054, 57.110275>,  <64.885635, 55.240818, 57.000286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.745972, 55.402054, 57.110275>,  <64.513206, 55.670784, 57.293587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.745972, 55.402054, 57.110275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798594, 0.365584, 0.478117,
		-0.153669, -0.644207, 0.749255,
		0.581922, -0.671822, -0.458281,
		64.920547, 55.200508, 56.972790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.966599, 55.372108, 57.886105>,  <64.513206, 55.670784, 57.293587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.966599, 55.372108, 57.886105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.117790, 55.351784, 57.516335>,  <65.208504, 55.339588, 57.294472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.117790, 55.351784, 57.516335>,  <64.966599, 55.372108, 57.886105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.117790, 55.351784, 57.516335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758314, 0.589814, 0.277632,
		0.531129, -0.805939, 0.261467,
		0.377971, -0.050815, -0.924422,
		65.231178, 55.336540, 57.239010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.783760, 55.216938, 57.989418>,  <64.966599, 55.372108, 57.886105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.783760, 55.216938, 57.989418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.670830, 55.406639, 57.655861>,  <65.603073, 55.520458, 57.455727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.670830, 55.406639, 57.655861>,  <65.783760, 55.216938, 57.989418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.670830, 55.406639, 57.655861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609657, 0.759843, 0.225734,
		0.740683, -0.444659, -0.503654,
		-0.282323, 0.474254, -0.833893,
		65.586136, 55.548916, 57.405693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.344963, 55.477676, 57.662296>,  <65.783760, 55.216938, 57.989418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.344963, 55.477676, 57.662296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.056290, 55.721947, 57.531914>,  <65.883087, 55.868507, 57.453686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.056290, 55.721947, 57.531914>,  <66.344963, 55.477676, 57.662296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.056290, 55.721947, 57.531914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564744, 0.791718, 0.232909,
		0.400296, -0.015994, -0.916246,
		-0.721684, 0.610677, -0.325954,
		65.839783, 55.905151, 57.434128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.561577, 56.077686, 57.419800>,  <66.344963, 55.477676, 57.662296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.561577, 56.077686, 57.419800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.200966, 56.231133, 57.499878>,  <65.984596, 56.323200, 57.547924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.200966, 56.231133, 57.499878>,  <66.561577, 56.077686, 57.419800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.200966, 56.231133, 57.499878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408035, 0.907667, 0.098227,
		-0.144026, 0.170240, -0.974820,
		-0.901534, 0.383614, 0.200192,
		65.930504, 56.346218, 57.559937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.404381, 56.693333, 57.063808>,  <66.561577, 56.077686, 57.419800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.404381, 56.693333, 57.063808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.242340, 56.678490, 57.429214>,  <66.145111, 56.669586, 57.648457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.242340, 56.678490, 57.429214>,  <66.404381, 56.693333, 57.063808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.242340, 56.678490, 57.429214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410095, 0.885647, 0.217835,
		-0.817134, 0.462875, -0.343567,
		-0.405110, -0.037106, 0.913515,
		66.120804, 56.667358, 57.703270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.905914, 57.205414, 57.036198>,  <66.404381, 56.693333, 57.063808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.905914, 57.205414, 57.036198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.732613, 57.177849, 57.395653>,  <66.628632, 57.161308, 57.611324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.732613, 57.177849, 57.395653>,  <66.905914, 57.205414, 57.036198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.732613, 57.177849, 57.395653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870297, 0.227165, 0.437013,
		-0.234255, 0.971415, -0.038444,
		-0.433254, -0.068915, 0.898633,
		66.602638, 57.157173, 57.665241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.029610, 57.845604, 57.505997>,  <66.905914, 57.205414, 57.036198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.029610, 57.845604, 57.505997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.977432, 57.523426, 57.737251>,  <66.946129, 57.330120, 57.876003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.977432, 57.523426, 57.737251>,  <67.029610, 57.845604, 57.505997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.977432, 57.523426, 57.737251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788492, 0.269234, 0.552986,
		-0.601055, 0.527986, 0.599970,
		-0.130436, -0.805447, 0.578137,
		66.938301, 57.281792, 57.910694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.864693, 57.940304, 58.295815>,  <67.029610, 57.845604, 57.505997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.864693, 57.940304, 58.295815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.077621, 57.612198, 58.212105>,  <67.205376, 57.415333, 58.161877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.077621, 57.612198, 58.212105>,  <66.864693, 57.940304, 58.295815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.077621, 57.612198, 58.212105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833584, 0.464815, 0.298470,
		-0.147550, -0.333333, 0.931192,
		0.532322, -0.820266, -0.209278,
		67.237320, 57.366119, 58.149323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.653801, 57.803257, 58.482140>,  <66.864693, 57.940304, 58.295815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.653801, 57.803257, 58.482140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.588821, 57.418701, 58.393288>,  <67.549835, 57.187969, 58.339977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.588821, 57.418701, 58.393288>,  <67.653801, 57.803257, 58.482140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.588821, 57.418701, 58.393288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830898, -0.254700, 0.494709,
		-0.532185, -0.104203, 0.840191,
		-0.162446, -0.961389, -0.222129,
		67.540085, 57.130283, 58.326649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.758858, 57.432095, 59.118301>,  <67.653801, 57.803257, 58.482140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.758858, 57.432095, 59.118301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.837379, 57.201023, 58.801376>,  <67.884491, 57.062382, 58.611221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.837379, 57.201023, 58.801376>,  <67.758858, 57.432095, 59.118301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.837379, 57.201023, 58.801376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895675, -0.223193, 0.384645,
		-0.399038, -0.785160, 0.473596,
		0.196305, -0.577676, -0.792310,
		67.896271, 57.027721, 58.563683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.033829, 56.722748, 59.353737>,  <67.758858, 57.432095, 59.118301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.033829, 56.722748, 59.353737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.136948, 56.812782, 58.977890>,  <68.198822, 56.866802, 58.752384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.136948, 56.812782, 58.977890>,  <68.033829, 56.722748, 59.353737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.136948, 56.812782, 58.977890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940772, -0.280102, 0.191024,
		-0.220192, -0.933210, -0.283962,
		0.257804, 0.225082, -0.939614,
		68.214287, 56.880306, 58.696007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.259148, 56.084759, 59.026577>,  <68.033829, 56.722748, 59.353737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.259148, 56.084759, 59.026577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.417206, 56.420738, 58.877800>,  <68.512039, 56.622326, 58.788536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.417206, 56.420738, 58.877800>,  <68.259148, 56.084759, 59.026577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.417206, 56.420738, 58.877800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901949, -0.277977, 0.330480,
		0.174197, -0.466058, -0.867436,
		0.395150, 0.839952, -0.371938,
		68.535751, 56.672722, 58.766220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.803856, 55.862118, 58.583256>,  <68.259148, 56.084759, 59.026577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.803856, 55.862118, 58.583256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.864975, 56.232048, 58.722595>,  <68.901642, 56.454006, 58.806198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.864975, 56.232048, 58.722595>,  <68.803856, 55.862118, 58.583256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.864975, 56.232048, 58.722595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770506, -0.332209, 0.544021,
		0.618850, 0.185280, -0.763345,
		0.152794, 0.924829, 0.348346,
		68.910812, 56.509499, 58.827099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.529869, 56.115986, 58.319984>,  <68.803856, 55.862118, 58.583256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.529869, 56.115986, 58.319984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.387909, 56.224590, 58.677826>,  <69.302734, 56.289753, 58.892532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.387909, 56.224590, 58.677826>,  <69.529869, 56.115986, 58.319984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.387909, 56.224590, 58.677826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762583, -0.469492, 0.445022,
		0.540840, 0.840154, -0.040424,
		-0.354908, 0.271512, 0.894607,
		69.281433, 56.306046, 58.946209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.046318, 56.551926, 58.654324>,  <69.529869, 56.115986, 58.319984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.046318, 56.551926, 58.654324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.807121, 56.335880, 58.891197>,  <69.663605, 56.206253, 59.033321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.807121, 56.335880, 58.891197>,  <70.046318, 56.551926, 58.654324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.807121, 56.335880, 58.891197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780606, -0.560064, 0.277459,
		0.181800, 0.628179, 0.756532,
		-0.598000, -0.540111, 0.592179,
		69.627724, 56.173847, 59.068851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.001671, 57.099556, 59.131062>,  <70.046318, 56.551926, 58.654324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.001671, 57.099556, 59.131062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.817833, 56.902340, 59.426544>,  <69.707527, 56.784012, 59.603832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.817833, 56.902340, 59.426544>,  <70.001671, 57.099556, 59.131062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.817833, 56.902340, 59.426544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343104, -0.668613, -0.659724,
		0.819176, -0.556661, 0.138131,
		-0.459599, -0.493037, 0.738704,
		69.679955, 56.754429, 59.648155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.245407, 57.875107, 59.124897>,  <70.001671, 57.099556, 59.131062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.245407, 57.875107, 59.124897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.329079, 57.878666, 58.733765>,  <70.379280, 57.880802, 58.499084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.329079, 57.878666, 58.733765>,  <70.245407, 57.875107, 59.124897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.329079, 57.878666, 58.733765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737518, 0.658048, -0.151790,
		0.642112, 0.752923, 0.144217,
		0.209188, 0.008896, -0.977835,
		70.391838, 57.881336, 58.440414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.715721, 58.230549, 59.631355>,  <70.245407, 57.875107, 59.124897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.715721, 58.230549, 59.631355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.579361, 58.053780, 59.963257>,  <70.497543, 57.947720, 60.162399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.579361, 58.053780, 59.963257>,  <70.715721, 58.230549, 59.631355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.579361, 58.053780, 59.963257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742304, -0.668129, -0.050873,
		0.576865, 0.598588, 0.555805,
		-0.340898, -0.441923, 0.829755,
		70.477089, 57.921204, 60.212185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.417442, 58.239231, 59.855438>,  <70.715721, 58.230549, 59.631355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.417442, 58.239231, 59.855438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.639076, 58.036098, 59.591591>,  <71.772057, 57.914219, 59.433281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.639076, 58.036098, 59.591591>,  <71.417442, 58.239231, 59.855438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.639076, 58.036098, 59.591591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578783, -0.334506, 0.743718,
		-0.598328, -0.793861, 0.108577,
		0.554089, -0.507829, -0.659617,
		71.805305, 57.883751, 59.393707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.579689, 57.524628, 60.146458>,  <71.417442, 58.239231, 59.855438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.579689, 57.524628, 60.146458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.864082, 57.690666, 59.919403>,  <72.034714, 57.790287, 59.783173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.864082, 57.690666, 59.919403>,  <71.579689, 57.524628, 60.146458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.864082, 57.690666, 59.919403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659731, -0.114285, 0.742761,
		0.243442, -0.902573, -0.355104,
		0.710979, 0.415092, -0.567633,
		72.077377, 57.815193, 59.749111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.181129, 57.144920, 60.117870>,  <71.579689, 57.524628, 60.146458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.181129, 57.144920, 60.117870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.261032, 57.536659, 60.105392>,  <72.308975, 57.771702, 60.097904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.261032, 57.536659, 60.105392>,  <72.181129, 57.144920, 60.117870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.261032, 57.536659, 60.105392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553964, -0.086613, 0.828023,
		0.808221, -0.182686, -0.559826,
		0.199756, 0.979349, -0.031199,
		72.320961, 57.830463, 60.096031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
