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
	location <35, 92.5046, 58.4545>
	look_at <35, 26.874, 46.4577>
	direction <0, -65.6306, -11.9968>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 92.5046, 58.4545>;
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
	<40.922421, 38.206532, 49.377254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.915249, 37.825096, 49.257027>,  <40.910946, 37.596233, 49.184891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.915249, 37.825096, 49.257027>,  <40.922421, 38.206532, 49.377254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.915249, 37.825096, 49.257027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737894, -0.215469, 0.639597,
		-0.674678, -0.210321, 0.707513,
		-0.017926, -0.953592, -0.300567,
		40.909870, 37.539017, 49.166855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.003239, 37.718727, 49.986641>,  <40.922421, 38.206532, 49.377254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.003239, 37.718727, 49.986641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.098694, 37.475182, 49.684029>,  <41.155968, 37.329056, 49.502460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.098694, 37.475182, 49.684029>,  <41.003239, 37.718727, 49.986641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.098694, 37.475182, 49.684029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695984, -0.436060, 0.570489,
		-0.677241, -0.662675, 0.319697,
		0.238642, -0.608863, -0.756529,
		41.170288, 37.292522, 49.457069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933468, 37.045391, 50.258427>,  <41.003239, 37.718727, 49.986641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.933468, 37.045391, 50.258427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.153835, 37.021584, 49.925453>,  <41.286057, 37.007298, 49.725670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.153835, 37.021584, 49.925453>,  <40.933468, 37.045391, 50.258427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.153835, 37.021584, 49.925453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664961, -0.571423, 0.480939,
		-0.504296, -0.818495, -0.275231,
		0.550920, -0.059518, -0.832433,
		41.319111, 37.003727, 49.675724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074112, 36.280296, 50.104446>,  <40.933468, 37.045391, 50.258427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.074112, 36.280296, 50.104446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.358829, 36.475178, 49.902069>,  <41.529659, 36.592106, 49.780643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.358829, 36.475178, 49.902069>,  <41.074112, 36.280296, 50.104446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.358829, 36.475178, 49.902069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680777, -0.655834, 0.326227,
		-0.172874, -0.576640, -0.798499,
		0.711798, 0.487204, -0.505941,
		41.572369, 36.621338, 49.750286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.567490, 35.750061, 49.896057>,  <41.074112, 36.280296, 50.104446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.567490, 35.750061, 49.896057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.802895, 36.063114, 49.814934>,  <41.944138, 36.250946, 49.766258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.802895, 36.063114, 49.814934>,  <41.567490, 35.750061, 49.896057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.802895, 36.063114, 49.814934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808392, -0.565763, 0.162526,
		0.012457, -0.259597, -0.965636,
		0.588513, 0.782637, -0.202809,
		41.979450, 36.297905, 49.754089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.155708, 35.496338, 49.547764>,  <41.567490, 35.750061, 49.896057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.155708, 35.496338, 49.547764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.274410, 35.837761, 49.719055>,  <42.345631, 36.042614, 49.821831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.274410, 35.837761, 49.719055>,  <42.155708, 35.496338, 49.547764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.274410, 35.837761, 49.719055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928749, -0.362297, 0.078527,
		0.222174, 0.374417, -0.900250,
		0.296756, 0.853553, 0.428233,
		42.363438, 36.093826, 49.847527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.753494, 35.406155, 49.539165>,  <42.155708, 35.496338, 49.547764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.753494, 35.406155, 49.539165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.781776, 35.763481, 49.716694>,  <42.798748, 35.977879, 49.823212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.781776, 35.763481, 49.716694>,  <42.753494, 35.406155, 49.539165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.781776, 35.763481, 49.716694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982510, -0.139212, 0.123670,
		0.172262, 0.427317, -0.887539,
		0.070710, 0.893320, 0.443824,
		42.802990, 36.031479, 49.849842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.194878, 35.820816, 49.116196>,  <42.753494, 35.406155, 49.539165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.194878, 35.820816, 49.116196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.186676, 35.931828, 49.500397>,  <43.181755, 35.998432, 49.730915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.186676, 35.931828, 49.500397>,  <43.194878, 35.820816, 49.116196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.186676, 35.931828, 49.500397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948146, -0.299374, 0.106745,
		0.317173, 0.912883, -0.256994,
		-0.020508, 0.277525, 0.960500,
		43.180523, 36.015083, 49.788548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.782993, 36.200710, 49.224785>,  <43.194878, 35.820816, 49.116196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.782993, 36.200710, 49.224785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.656998, 36.073143, 49.582348>,  <43.581402, 35.996601, 49.796886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.656998, 36.073143, 49.582348>,  <43.782993, 36.200710, 49.224785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.656998, 36.073143, 49.582348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932405, -0.279840, 0.228714,
		0.177209, 0.905527, 0.385510,
		-0.314988, -0.318921, 0.893908,
		43.562500, 35.977467, 49.850521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.291256, 36.455048, 49.712681>,  <43.782993, 36.200710, 49.224785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.291256, 36.455048, 49.712681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.086563, 36.164238, 49.895798>,  <43.963749, 35.989754, 50.005669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.086563, 36.164238, 49.895798>,  <44.291256, 36.455048, 49.712681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.086563, 36.164238, 49.895798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856345, -0.388626, 0.340063,
		-0.069324, 0.566046, 0.821454,
		-0.511729, -0.727023, 0.457789,
		43.933044, 35.946133, 50.033134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.718403, 36.490765, 50.303219>,  <44.291256, 36.455048, 49.712681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.718403, 36.490765, 50.303219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.508331, 36.151100, 50.280914>,  <44.382290, 35.947300, 50.267532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.508331, 36.151100, 50.280914>,  <44.718403, 36.490765, 50.303219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.508331, 36.151100, 50.280914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710583, -0.473638, 0.520325,
		-0.468251, 0.233640, 0.852146,
		-0.525178, -0.849164, -0.055761,
		44.350777, 35.896351, 50.264187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.543552, 36.369301, 51.046070>,  <44.718403, 36.490765, 50.303219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.543552, 36.369301, 51.046070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.551945, 36.046814, 50.809574>,  <44.556980, 35.853321, 50.667675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.551945, 36.046814, 50.809574>,  <44.543552, 36.369301, 51.046070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.551945, 36.046814, 50.809574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794018, -0.345921, 0.499874,
		-0.607533, -0.479946, 0.632895,
		0.020980, -0.806220, -0.591244,
		44.558239, 35.804947, 50.632202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.660877, 35.843994, 51.500546>,  <44.543552, 36.369301, 51.046070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.660877, 35.843994, 51.500546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.730953, 35.650600, 51.157490>,  <44.772999, 35.534565, 50.951656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.730953, 35.650600, 51.157490>,  <44.660877, 35.843994, 51.500546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.730953, 35.650600, 51.157490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524377, -0.691453, 0.496911,
		-0.833270, -0.536780, 0.132397,
		0.175185, -0.483487, -0.857642,
		44.783508, 35.505554, 50.900196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.659561, 35.131649, 51.697601>,  <44.660877, 35.843994, 51.500546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.659561, 35.131649, 51.697601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.857700, 35.156944, 51.351044>,  <44.976582, 35.172123, 51.143108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.857700, 35.156944, 51.351044>,  <44.659561, 35.131649, 51.697601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.857700, 35.156944, 51.351044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664722, -0.669682, 0.331165,
		-0.559264, -0.739951, -0.373759,
		0.495346, 0.063237, -0.866391,
		45.006306, 35.175915, 51.091125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.816933, 34.434799, 51.581585>,  <44.659561, 35.131649, 51.697601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.816933, 34.434799, 51.581585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.079086, 34.673141, 51.395927>,  <45.236378, 34.816147, 51.284534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.079086, 34.673141, 51.395927>,  <44.816933, 34.434799, 51.581585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.079086, 34.673141, 51.395927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743214, -0.618237, 0.255768,
		-0.134551, -0.512585, -0.848029,
		0.655385, 0.595852, -0.464145,
		45.275703, 34.851898, 51.256683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.352215, 33.999039, 51.465958>,  <44.816933, 34.434799, 51.581585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.352215, 33.999039, 51.465958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.509430, 34.366653, 51.454041>,  <45.603760, 34.587223, 51.446888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.509430, 34.366653, 51.454041>,  <45.352215, 33.999039, 51.465958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.509430, 34.366653, 51.454041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874210, -0.363429, 0.321988,
		0.285090, -0.152603, -0.946275,
		0.393040, 0.919039, -0.029797,
		45.627342, 34.642365, 51.445103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.030979, 34.063549, 51.106758>,  <45.352215, 33.999039, 51.465958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.030979, 34.063549, 51.106758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.052738, 34.414314, 51.297783>,  <46.065796, 34.624771, 51.412399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.052738, 34.414314, 51.297783>,  <46.030979, 34.063549, 51.106758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.052738, 34.414314, 51.297783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908540, -0.241885, 0.340657,
		0.414241, 0.415353, -0.809868,
		0.054402, 0.876911, 0.477564,
		46.069057, 34.677387, 51.441051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.714645, 34.331459, 51.044704>,  <46.030979, 34.063549, 51.106758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.714645, 34.331459, 51.044704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.575592, 34.525585, 51.365608>,  <46.492161, 34.642059, 51.558151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.575592, 34.525585, 51.365608>,  <46.714645, 34.331459, 51.044704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.575592, 34.525585, 51.365608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927085, 0.049955, 0.371508,
		0.140221, 0.872912, -0.467293,
		-0.347637, 0.485314, 0.802259,
		46.471302, 34.671181, 51.606285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.337643, 34.789444, 51.199566>,  <46.714645, 34.331459, 51.044704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.337643, 34.789444, 51.199566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.102467, 34.840435, 51.519085>,  <46.961361, 34.871029, 51.710796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.102467, 34.840435, 51.519085>,  <47.337643, 34.789444, 51.199566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.102467, 34.840435, 51.519085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808123, 0.049081, 0.586966,
		0.035617, 0.990627, -0.131871,
		-0.587936, 0.127474, 0.798800,
		46.926086, 34.878677, 51.758724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.513786, 35.338352, 51.487968>,  <47.337643, 34.789444, 51.199566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.513786, 35.338352, 51.487968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.354912, 35.099300, 51.766560>,  <47.259586, 34.955868, 51.933716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.354912, 35.099300, 51.766560>,  <47.513786, 35.338352, 51.487968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.354912, 35.099300, 51.766560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856382, 0.031478, 0.515382,
		-0.329931, 0.801155, 0.499296,
		-0.397184, -0.597628, 0.696481,
		47.235756, 34.920013, 51.975502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.998081, 35.384491, 51.912128>,  <47.513786, 35.338352, 51.487968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.998081, 35.384491, 51.912128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.800930, 35.066456, 52.053501>,  <47.682640, 34.875637, 52.138325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.800930, 35.066456, 52.053501>,  <47.998081, 35.384491, 51.912128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.800930, 35.066456, 52.053501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734431, -0.162345, 0.658981,
		-0.466568, 0.584365, 0.663951,
		-0.492874, -0.795086, 0.353431,
		47.653069, 34.827930, 52.159531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<23.964771, 35.202019, 52.159237> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.267845, 34.954388, 52.076630>,  <24.449690, 34.805809, 52.027065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.267845, 34.954388, 52.076630>,  <23.964771, 35.202019, 52.159237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.267845, 34.954388, 52.076630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584999, 0.784549, -0.205570,
		0.289288, 0.034945, 0.956604,
		0.757687, -0.619081, -0.206518,
		24.495152, 34.768661, 52.014675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.658798, 35.398308, 52.396751>,  <23.964771, 35.202019, 52.159237>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.658798, 35.398308, 52.396751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.738131, 35.140129, 52.101707>,  <24.785730, 34.985222, 51.924683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.738131, 35.140129, 52.101707>,  <24.658798, 35.398308, 52.396751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.738131, 35.140129, 52.101707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856850, 0.479573, -0.189257,
		0.475892, -0.594485, 0.648162,
		0.198331, -0.645444, -0.737609,
		24.797630, 34.946495, 51.880424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.375292, 35.170433, 52.514320>,  <24.658798, 35.398308, 52.396751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.375292, 35.170433, 52.514320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.316427, 35.018456, 52.149029>,  <25.281109, 34.927269, 51.929855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.316427, 35.018456, 52.149029>,  <25.375292, 35.170433, 52.514320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.316427, 35.018456, 52.149029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889234, 0.353485, -0.290363,
		0.433135, -0.854804, 0.285840,
		-0.147163, -0.379945, -0.913228,
		25.272278, 34.904472, 51.875061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.957176, 34.737873, 52.329124>,  <25.375292, 35.170433, 52.514320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.957176, 34.737873, 52.329124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.781548, 34.852379, 51.988476>,  <25.676170, 34.921082, 51.784084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.781548, 34.852379, 51.988476>,  <25.957176, 34.737873, 52.329124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.781548, 34.852379, 51.988476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882469, 0.315400, -0.348957,
		0.168708, -0.904751, -0.391104,
		-0.439073, 0.286265, -0.851626,
		25.649826, 34.938259, 51.732986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.405514, 34.449039, 51.783726>,  <25.957176, 34.737873, 52.329124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.405514, 34.449039, 51.783726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.206509, 34.707237, 51.551926>,  <26.087107, 34.862156, 51.412846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.206509, 34.707237, 51.551926>,  <26.405514, 34.449039, 51.783726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.206509, 34.707237, 51.551926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838503, 0.186696, -0.511916,
		-0.222250, -0.740593, -0.634134,
		-0.497512, 0.645497, -0.579497,
		26.057255, 34.900887, 51.378078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.509377, 34.296810, 51.051350>,  <26.405514, 34.449039, 51.783726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.509377, 34.296810, 51.051350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.411865, 34.684189, 51.072090>,  <26.353357, 34.916615, 51.084534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.411865, 34.684189, 51.072090>,  <26.509377, 34.296810, 51.051350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.411865, 34.684189, 51.072090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765909, 0.225043, -0.602278,
		-0.594941, -0.107110, -0.796600,
		-0.243780, 0.968444, 0.051851,
		26.338732, 34.974724, 51.087646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.385714, 34.483288, 50.360901>,  <26.509377, 34.296810, 51.051350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.385714, 34.483288, 50.360901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.462397, 34.808716, 50.580482>,  <26.508408, 35.003971, 50.712231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.462397, 34.808716, 50.580482>,  <26.385714, 34.483288, 50.360901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.462397, 34.808716, 50.580482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769146, 0.222894, -0.598942,
		-0.609640, 0.537050, -0.583023,
		0.191710, 0.813569, 0.548956,
		26.519909, 35.052788, 50.745171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.392792, 35.049561, 49.913311>,  <26.385714, 34.483288, 50.360901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.392792, 35.049561, 49.913311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.629589, 35.151489, 50.219151>,  <26.771667, 35.212646, 50.402653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.629589, 35.151489, 50.219151>,  <26.392792, 35.049561, 49.913311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.629589, 35.151489, 50.219151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697871, 0.312467, -0.644468,
		-0.403138, 0.915111, 0.007144,
		0.591993, 0.254824, 0.764597,
		26.807186, 35.227936, 50.448528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.643696, 35.708092, 49.701828>,  <26.392792, 35.049561, 49.913311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.643696, 35.708092, 49.701828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.887985, 35.581257, 49.992062>,  <27.034559, 35.505154, 50.166203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.887985, 35.581257, 49.992062>,  <26.643696, 35.708092, 49.701828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.887985, 35.581257, 49.992062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786504, 0.349148, -0.509418,
		-0.091803, 0.881787, 0.462627,
		0.610724, -0.317092, 0.725582,
		27.071203, 35.486130, 50.209736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.042284, 36.268032, 49.763550>,  <26.643696, 35.708092, 49.701828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.042284, 36.268032, 49.763550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.258501, 35.974846, 49.928753>,  <27.388231, 35.798935, 50.027874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.258501, 35.974846, 49.928753>,  <27.042284, 36.268032, 49.763550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.258501, 35.974846, 49.928753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837060, 0.419227, -0.351537,
		0.084520, 0.535734, 0.840146,
		0.540543, -0.732965, 0.413009,
		27.420664, 35.754955, 50.052654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.669840, 36.557083, 50.015095>,  <27.042284, 36.268032, 49.763550>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.669840, 36.557083, 50.015095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.771753, 36.170288, 50.017292>,  <27.832901, 35.938213, 50.018608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.771753, 36.170288, 50.017292>,  <27.669840, 36.557083, 50.015095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.771753, 36.170288, 50.017292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946009, 0.248071, -0.208634,
		0.200384, 0.058351, 0.977978,
		0.254782, -0.966983, 0.005492,
		27.848188, 35.880192, 50.018940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.250729, 36.487450, 50.405212>,  <27.669840, 36.557083, 50.015095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.250729, 36.487450, 50.405212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.234772, 36.183468, 50.145714>,  <28.225197, 36.001080, 49.990013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.234772, 36.183468, 50.145714>,  <28.250729, 36.487450, 50.405212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.234772, 36.183468, 50.145714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961583, 0.147281, -0.231660,
		0.271600, -0.633065, 0.724888,
		-0.039894, -0.759959, -0.648746,
		28.222803, 35.955479, 49.951092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.001736, 36.337288, 50.469425>,  <28.250729, 36.487450, 50.405212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.001736, 36.337288, 50.469425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.872496, 36.103188, 50.171944>,  <28.794952, 35.962727, 49.993454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.872496, 36.103188, 50.171944>,  <29.001736, 36.337288, 50.469425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.872496, 36.103188, 50.171944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946310, -0.208308, -0.247196,
		-0.010247, -0.783639, 0.621131,
		-0.323100, -0.585249, -0.743700,
		28.775566, 35.927612, 49.948833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.363190, 35.623692, 50.470047>,  <29.001736, 36.337288, 50.469425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.363190, 35.623692, 50.470047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.233683, 35.690865, 50.097603>,  <29.155979, 35.731171, 49.874134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.233683, 35.690865, 50.097603>,  <29.363190, 35.623692, 50.470047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.233683, 35.690865, 50.097603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946135, 0.055401, -0.318998,
		-0.001987, -0.984239, -0.176828,
		-0.323766, 0.167937, -0.931113,
		29.136553, 35.741245, 49.818268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.732391, 35.098701, 49.986034>,  <29.363190, 35.623692, 50.470047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.732391, 35.098701, 49.986034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.609919, 35.403858, 49.758263>,  <29.536434, 35.586952, 49.621597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.609919, 35.403858, 49.758263>,  <29.732391, 35.098701, 49.986034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.609919, 35.403858, 49.758263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928007, 0.105819, -0.357218,
		-0.212260, -0.637812, -0.740366,
		-0.306183, 0.762888, -0.569433,
		29.518064, 35.632725, 49.587433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.185013, 35.131313, 49.385307>,  <29.732391, 35.098701, 49.986034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.185013, 35.131313, 49.385307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.000059, 35.484512, 49.353035>,  <29.889086, 35.696434, 49.333672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.000059, 35.484512, 49.353035>,  <30.185013, 35.131313, 49.385307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.000059, 35.484512, 49.353035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771278, 0.355650, -0.527867,
		-0.437412, -0.306307, -0.845486,
		-0.462386, 0.883000, -0.080682,
		29.861343, 35.749413, 49.328831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.195459, 35.332191, 48.650280>,  <30.185013, 35.131313, 49.385307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.195459, 35.332191, 48.650280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.184107, 35.645222, 48.899044>,  <30.177296, 35.833038, 49.048302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.184107, 35.645222, 48.899044>,  <30.195459, 35.332191, 48.650280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.184107, 35.645222, 48.899044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813647, 0.379501, -0.440406,
		-0.580666, 0.493518, -0.647508,
		-0.028382, 0.782572, 0.621913,
		30.175592, 35.879993, 49.085617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.367838, 35.961937, 48.220673>,  <30.195459, 35.332191, 48.650280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.367838, 35.961937, 48.220673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.460920, 36.053631, 48.598732>,  <30.516769, 36.108646, 48.825565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.460920, 36.053631, 48.598732>,  <30.367838, 35.961937, 48.220673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.460920, 36.053631, 48.598732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864460, 0.396512, -0.309009,
		-0.445597, 0.888949, -0.105894,
		0.232705, 0.229235, 0.945145,
		30.530731, 36.122402, 48.882275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.621122, 36.596142, 48.189785>,  <30.367838, 35.961937, 48.220673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.621122, 36.596142, 48.189785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.738661, 36.508160, 48.561867>,  <30.809183, 36.455372, 48.785114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.738661, 36.508160, 48.561867>,  <30.621122, 36.596142, 48.189785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.738661, 36.508160, 48.561867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726363, 0.683967, -0.067723,
		-0.621330, 0.695564, 0.360749,
		0.293846, -0.219956, 0.930201,
		30.826815, 36.442173, 48.840927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.741091, 37.219467, 48.540924>,  <30.621122, 36.596142, 48.189785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.741091, 37.219467, 48.540924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.937199, 36.958088, 48.771626>,  <31.054863, 36.801262, 48.910046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.937199, 36.958088, 48.771626>,  <30.741091, 37.219467, 48.540924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.937199, 36.958088, 48.771626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719212, 0.677103, 0.155775,
		-0.492311, 0.338434, 0.801930,
		0.490270, -0.653448, 0.576751,
		31.084280, 36.762054, 48.944653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.783199, 37.406601, 49.292614>,  <30.741091, 37.219467, 48.540924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.783199, 37.406601, 49.292614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.119753, 37.212933, 49.196575>,  <31.321686, 37.096733, 49.138950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.119753, 37.212933, 49.196575>,  <30.783199, 37.406601, 49.292614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.119753, 37.212933, 49.196575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538755, 0.786452, 0.302052,
		0.042582, -0.383498, 0.922559,
		0.841385, -0.484172, -0.240101,
		31.372168, 37.067680, 49.124546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<24.310629, 34.579578, 34.613438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.177689, 34.859970, 34.865841>,  <24.097925, 35.028206, 35.017284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.177689, 34.859970, 34.865841>,  <24.310629, 34.579578, 34.613438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.177689, 34.859970, 34.865841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939262, 0.185262, 0.288901,
		0.085612, 0.688699, -0.719975,
		-0.332350, 0.700979, 0.631009,
		24.077984, 35.070263, 35.055145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.761003, 35.166576, 34.494751>,  <24.310629, 34.579578, 34.613438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.761003, 35.166576, 34.494751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.608679, 35.153332, 34.864376>,  <24.517284, 35.145386, 35.086151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.608679, 35.153332, 34.864376>,  <24.761003, 35.166576, 34.494751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.608679, 35.153332, 34.864376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850752, 0.378938, 0.364179,
		-0.362219, 0.924829, -0.116138,
		-0.380813, -0.033108, 0.924059,
		24.494434, 35.143398, 35.141594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.182022, 35.391113, 35.031044>,  <24.761003, 35.166576, 34.494751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.182022, 35.391113, 35.031044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.922201, 35.260952, 35.305908>,  <24.766308, 35.182854, 35.470829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.922201, 35.260952, 35.305908>,  <25.182022, 35.391113, 35.031044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.922201, 35.260952, 35.305908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725848, 0.003644, 0.687846,
		-0.226334, 0.945567, 0.233829,
		-0.649552, -0.325407, 0.687163,
		24.727335, 35.163330, 35.512058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.105803, 35.780743, 35.769554>,  <25.182022, 35.391113, 35.031044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.105803, 35.780743, 35.769554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.065676, 35.382763, 35.770683>,  <25.041599, 35.143974, 35.771362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.065676, 35.382763, 35.770683>,  <25.105803, 35.780743, 35.769554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.065676, 35.382763, 35.770683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856263, -0.084889, 0.509517,
		-0.506705, 0.053533, 0.860456,
		-0.100319, -0.994951, 0.002825,
		25.035580, 35.084278, 35.771530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.244246, 35.534313, 36.436958>,  <25.105803, 35.780743, 35.769554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.244246, 35.534313, 36.436958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.320299, 35.258270, 36.157642>,  <25.365931, 35.092644, 35.990055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.320299, 35.258270, 36.157642>,  <25.244246, 35.534313, 36.436958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.320299, 35.258270, 36.157642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901509, -0.158921, 0.402524,
		-0.388756, -0.706045, 0.591920,
		0.190132, -0.690105, -0.698287,
		25.377338, 35.051239, 35.948154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.648869, 34.989647, 36.733150>,  <25.244246, 35.534313, 36.436958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.648869, 34.989647, 36.733150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.732492, 35.017113, 36.342957>,  <25.782667, 35.033592, 36.108841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.732492, 35.017113, 36.342957>,  <25.648869, 34.989647, 36.733150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.732492, 35.017113, 36.342957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977752, -0.032159, 0.207283,
		-0.017138, -0.997121, -0.073861,
		0.209061, 0.068666, -0.975489,
		25.795212, 35.037712, 36.050308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.336512, 34.676800, 36.603916>,  <25.648869, 34.989647, 36.733150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.336512, 34.676800, 36.603916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.287527, 34.902733, 36.277489>,  <26.258137, 35.038292, 36.081631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.287527, 34.902733, 36.277489>,  <26.336512, 34.676800, 36.603916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.287527, 34.902733, 36.277489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990714, 0.118504, -0.066649,
		0.059062, -0.816655, -0.574096,
		-0.122462, 0.564829, -0.816071,
		26.250788, 35.072182, 36.032669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.952606, 34.725235, 36.475487>,  <26.336512, 34.676800, 36.603916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.952606, 34.725235, 36.475487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.812067, 34.960033, 36.183739>,  <26.727743, 35.100914, 36.008690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.812067, 34.960033, 36.183739>,  <26.952606, 34.725235, 36.475487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.812067, 34.960033, 36.183739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933865, 0.275230, -0.228350,
		0.066704, -0.761368, -0.644880,
		-0.351349, 0.586999, -0.729374,
		26.706663, 35.136131, 35.964928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.403193, 34.571941, 37.010376>,  <26.952606, 34.725235, 36.475487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.403193, 34.571941, 37.010376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.555527, 34.866833, 37.233612>,  <27.646927, 35.043766, 37.367554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.555527, 34.866833, 37.233612>,  <27.403193, 34.571941, 37.010376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.555527, 34.866833, 37.233612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779420, -0.580678, 0.235194,
		0.497460, 0.345413, -0.795753,
		0.380838, 0.737226, 0.558086,
		27.669779, 35.088001, 37.401039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.082569, 34.752335, 36.834328>,  <27.403193, 34.571941, 37.010376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.082569, 34.752335, 36.834328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.026758, 34.843891, 37.219688>,  <27.993271, 34.898827, 37.450905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.026758, 34.843891, 37.219688>,  <28.082569, 34.752335, 36.834328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.026758, 34.843891, 37.219688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766941, -0.590442, 0.251356,
		0.626365, 0.773942, -0.093164,
		-0.139527, 0.228892, 0.963400,
		27.984900, 34.912560, 37.508709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.760595, 34.975971, 37.162270>,  <28.082569, 34.752335, 36.834328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.760595, 34.975971, 37.162270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.500523, 34.794971, 37.406403>,  <28.344479, 34.686371, 37.552883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.500523, 34.794971, 37.406403>,  <28.760595, 34.975971, 37.162270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.500523, 34.794971, 37.406403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620931, -0.779391, 0.083634,
		0.437845, 0.433354, 0.787716,
		-0.650182, -0.452498, 0.610336,
		28.305468, 34.659222, 37.589504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.129980, 34.947063, 37.807751>,  <28.760595, 34.975971, 37.162270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.129980, 34.947063, 37.807751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.846281, 34.672169, 37.744923>,  <28.676062, 34.507233, 37.707226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.846281, 34.672169, 37.744923>,  <29.129980, 34.947063, 37.807751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.846281, 34.672169, 37.744923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624291, -0.715795, 0.312886,
		-0.327459, 0.123855, 0.936713,
		-0.709247, -0.687239, -0.157072,
		28.633507, 34.465996, 37.697800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.935438, 34.593636, 38.390789>,  <29.129980, 34.947063, 37.807751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.935438, 34.593636, 38.390789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.687708, 34.880592, 38.518398>,  <28.539070, 35.052769, 38.594963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.687708, 34.880592, 38.518398>,  <28.935438, 34.593636, 38.390789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.687708, 34.880592, 38.518398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417391, -0.043321, 0.907694,
		0.664996, 0.695318, -0.272605,
		-0.619326, 0.717395, 0.319028,
		28.501909, 35.095810, 38.614105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.235716, 35.114117, 38.721203>,  <28.935438, 34.593636, 38.390789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.235716, 35.114117, 38.721203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.869215, 35.131443, 38.880501>,  <28.649315, 35.141838, 38.976082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.869215, 35.131443, 38.880501>,  <29.235716, 35.114117, 38.721203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.869215, 35.131443, 38.880501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399036, 0.186382, 0.897793,
		-0.035341, 0.981522, -0.188057,
		-0.916254, 0.043313, 0.398249,
		28.594339, 35.144436, 38.999977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.259024, 35.716599, 39.210278>,  <29.235716, 35.114117, 38.721203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.259024, 35.716599, 39.210278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.972486, 35.451881, 39.298717>,  <28.800564, 35.293053, 39.351784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.972486, 35.451881, 39.298717>,  <29.259024, 35.716599, 39.210278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.972486, 35.451881, 39.298717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314219, -0.023036, 0.949071,
		-0.622994, 0.749334, 0.224449,
		-0.716342, -0.661791, 0.221103,
		28.757584, 35.253345, 39.365047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.048441, 35.923523, 39.907337>,  <29.259024, 35.716599, 39.210278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.048441, 35.923523, 39.907337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.948259, 35.539993, 39.853783>,  <28.888151, 35.309875, 39.821651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.948259, 35.539993, 39.853783>,  <29.048441, 35.923523, 39.907337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.948259, 35.539993, 39.853783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310359, -0.210510, 0.927018,
		-0.917033, 0.190624, 0.350303,
		-0.250455, -0.958826, -0.133883,
		28.873123, 35.252346, 39.813618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.768002, 35.663239, 40.052933>,  <29.048441, 35.923523, 39.907337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.768002, 35.663239, 40.052933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.546101, 35.829628, 40.341160>,  <29.412960, 35.929462, 40.514095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.546101, 35.829628, 40.341160>,  <29.768002, 35.663239, 40.052933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.546101, 35.829628, 40.341160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831740, 0.254962, 0.493156,
		0.021424, 0.872902, -0.487425,
		-0.554752, 0.415976, 0.720565,
		29.379675, 35.954422, 40.557331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.038658, 36.258102, 40.202843>,  <29.768002, 35.663239, 40.052933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.038658, 36.258102, 40.202843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.850880, 36.138165, 40.535038>,  <29.738213, 36.066200, 40.734356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.850880, 36.138165, 40.535038>,  <30.038658, 36.258102, 40.202843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.850880, 36.138165, 40.535038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822620, 0.193218, 0.534756,
		-0.320809, 0.934216, 0.155953,
		-0.469445, -0.299845, 0.830491,
		29.710047, 36.048210, 40.784184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.151276, 36.842155, 40.725708>,  <30.038658, 36.258102, 40.202843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.151276, 36.842155, 40.725708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.070282, 36.493172, 40.903610>,  <30.021687, 36.283779, 41.010353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.070282, 36.493172, 40.903610>,  <30.151276, 36.842155, 40.725708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.070282, 36.493172, 40.903610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796460, 0.117531, 0.593159,
		-0.569783, 0.474335, 0.671084,
		-0.202483, -0.872464, 0.444756,
		30.009537, 36.231434, 41.037037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.020466, 36.933228, 41.470047>,  <30.151276, 36.842155, 40.725708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.020466, 36.933228, 41.470047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.179464, 36.568451, 41.429321>,  <30.274864, 36.349586, 41.404888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.179464, 36.568451, 41.429321>,  <30.020466, 36.933228, 41.470047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.179464, 36.568451, 41.429321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681258, 0.218962, 0.698530,
		-0.614723, -0.347023, 0.708301,
		0.397496, -0.911938, -0.101811,
		30.298714, 36.294868, 41.398777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.967363, 36.280510, 42.092697>,  <30.020466, 36.933228, 41.470047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.967363, 36.280510, 42.092697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.293791, 36.304298, 41.862740>,  <30.489647, 36.318569, 41.724766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.293791, 36.304298, 41.862740>,  <29.967363, 36.280510, 42.092697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.293791, 36.304298, 41.862740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575871, 0.000790, 0.817540,
		0.049068, -0.998230, -0.033599,
		0.816067, 0.059464, -0.574891,
		30.538610, 36.322140, 41.690273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.395418, 35.806099, 42.281963>,  <29.967363, 36.280510, 42.092697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.395418, 35.806099, 42.281963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.601357, 36.114674, 42.132397>,  <30.724920, 36.299820, 42.042656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.601357, 36.114674, 42.132397>,  <30.395418, 35.806099, 42.281963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.601357, 36.114674, 42.132397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492484, 0.090861, 0.865566,
		0.701707, -0.629781, -0.333143,
		0.514847, 0.771441, -0.373915,
		30.755810, 36.346107, 42.020222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.103928, 35.559280, 42.378319>,  <30.395418, 35.806099, 42.281963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.103928, 35.559280, 42.378319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.053144, 35.954414, 42.414215>,  <31.022675, 36.191494, 42.435753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.053144, 35.954414, 42.414215>,  <31.103928, 35.559280, 42.378319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.053144, 35.954414, 42.414215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727728, 0.031284, 0.685152,
		0.674013, 0.152296, -0.722850,
		-0.126960, 0.987840, 0.089745,
		31.015057, 36.250767, 42.441139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.742247, 35.952492, 42.186546>,  <31.103928, 35.559280, 42.378319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.742247, 35.952492, 42.186546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.501682, 36.113277, 42.462727>,  <31.357344, 36.209751, 42.628437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.501682, 36.113277, 42.462727>,  <31.742247, 35.952492, 42.186546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.501682, 36.113277, 42.462727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697086, -0.158237, 0.699308,
		0.390355, 0.901878, -0.185041,
		-0.601410, 0.401968, 0.690455,
		31.321259, 36.233868, 42.669865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106007, 36.493279, 42.593590>,  <31.742247, 35.952492, 42.186546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.106007, 36.493279, 42.593590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.810114, 36.321217, 42.800571>,  <31.632578, 36.217979, 42.924759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.810114, 36.321217, 42.800571>,  <32.106007, 36.493279, 42.593590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810114, 36.321217, 42.800571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593958, -0.056000, 0.802545,
		-0.316243, 0.901016, 0.296920,
		-0.739733, -0.430157, 0.517456,
		31.588194, 36.192169, 42.955807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.255440, 36.776196, 43.339607>,  <32.106007, 36.493279, 42.593590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.255440, 36.776196, 43.339607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.032616, 37.077526, 43.479431>,  <31.898922, 37.258324, 43.563324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.032616, 37.077526, 43.479431>,  <32.255440, 36.776196, 43.339607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.032616, 37.077526, 43.479431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752357, 0.635997, -0.171657,
		-0.351631, 0.167368, -0.921056,
		-0.557059, 0.753323, 0.349557,
		31.865498, 37.303524, 43.584297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.367882, 37.396614, 42.981201>,  <32.255440, 36.776196, 43.339607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.367882, 37.396614, 42.981201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.258160, 37.517441, 43.346390>,  <32.192326, 37.589939, 43.565502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.258160, 37.517441, 43.346390>,  <32.367882, 37.396614, 42.981201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.258160, 37.517441, 43.346390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785964, 0.617451, 0.031852,
		-0.554093, 0.726298, -0.406784,
		-0.274303, 0.302069, 0.912969,
		32.175869, 37.608063, 43.620281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.788109, 37.965343, 43.215858>,  <32.367882, 37.396614, 42.981201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.788109, 37.965343, 43.215858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.565346, 37.999653, 43.546310>,  <32.431686, 38.020237, 43.744583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.565346, 37.999653, 43.546310>,  <32.788109, 37.965343, 43.215858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565346, 37.999653, 43.546310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615196, 0.710856, 0.340908,
		-0.558022, 0.698088, -0.448647,
		-0.556907, 0.085771, 0.826134,
		32.398273, 38.025383, 43.794151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682053, 38.803257, 43.387405>,  <32.788109, 37.965343, 43.215858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682053, 38.803257, 43.387405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.623825, 38.552162, 43.693283>,  <32.588886, 38.401505, 43.876808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.623825, 38.552162, 43.693283>,  <32.682053, 38.803257, 43.387405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623825, 38.552162, 43.693283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583510, 0.569703, 0.578753,
		-0.798953, 0.530454, 0.283360,
		-0.145571, -0.627739, 0.764691,
		32.580154, 38.363842, 43.922691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423115, 39.244614, 43.874844>,  <32.682053, 38.803257, 43.387405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423115, 39.244614, 43.874844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.602192, 38.921299, 44.027813>,  <32.709641, 38.727310, 44.119595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.602192, 38.921299, 44.027813>,  <32.423115, 39.244614, 43.874844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.602192, 38.921299, 44.027813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489551, 0.579444, 0.651601,
		-0.748270, -0.104505, 0.655111,
		0.447696, -0.808284, 0.382420,
		32.736500, 38.678814, 44.142540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.317055, 39.273342, 44.646404>,  <32.423115, 39.244614, 43.874844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.317055, 39.273342, 44.646404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.640633, 39.055447, 44.557976>,  <32.834778, 38.924709, 44.504917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.640633, 39.055447, 44.557976>,  <32.317055, 39.273342, 44.646404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.640633, 39.055447, 44.557976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479519, 0.393846, 0.784186,
		-0.340104, -0.740371, 0.579810,
		0.808944, -0.544734, -0.221073,
		32.883316, 38.892025, 44.491653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.533218, 38.797501, 45.201756>,  <32.317055, 39.273342, 44.646404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.533218, 38.797501, 45.201756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.832096, 38.928913, 44.970665>,  <33.011421, 39.007759, 44.832008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.832096, 38.928913, 44.970665>,  <32.533218, 38.797501, 45.201756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832096, 38.928913, 44.970665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555441, 0.168655, 0.814273,
		0.364949, -0.929314, -0.056460,
		0.747193, 0.328529, -0.577729,
		33.056255, 39.027473, 44.797348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171696, 38.452175, 45.366779>,  <32.533218, 38.797501, 45.201756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171696, 38.452175, 45.366779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.252708, 38.821045, 45.234974>,  <33.301315, 39.042366, 45.155891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.252708, 38.821045, 45.234974>,  <33.171696, 38.452175, 45.366779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252708, 38.821045, 45.234974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516339, 0.185351, 0.836086,
		0.832090, -0.339477, -0.438613,
		0.202534, 0.922172, -0.329514,
		33.313469, 39.097698, 45.136120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.874882, 38.689560, 45.260437>,  <33.171696, 38.452175, 45.366779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.874882, 38.689560, 45.260437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.644173, 38.994900, 45.376801>,  <33.505749, 39.178104, 45.446617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.644173, 38.994900, 45.376801>,  <33.874882, 38.689560, 45.260437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644173, 38.994900, 45.376801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456360, 0.005732, 0.889777,
		0.677547, 0.645956, -0.351670,
		-0.576772, 0.763354, 0.290905,
		33.471142, 39.223907, 45.464073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231697, 39.167770, 45.567608>,  <33.874882, 38.689560, 45.260437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231697, 39.167770, 45.567608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.879261, 39.256168, 45.734863>,  <33.667797, 39.309208, 45.835217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.879261, 39.256168, 45.734863>,  <34.231697, 39.167770, 45.567608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.879261, 39.256168, 45.734863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413529, -0.069040, 0.907870,
		0.229500, 0.972829, -0.030556,
		-0.881092, 0.220992, 0.418138,
		33.614933, 39.322468, 45.860306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323013, 39.752178, 46.097866>,  <34.231697, 39.167770, 45.567608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323013, 39.752178, 46.097866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.015129, 39.508854, 46.175335>,  <33.830399, 39.362858, 46.221817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.015129, 39.508854, 46.175335>,  <34.323013, 39.752178, 46.097866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015129, 39.508854, 46.175335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301952, -0.079612, 0.949993,
		-0.562472, 0.789697, 0.244959,
		-0.769708, -0.608310, 0.193671,
		33.784218, 39.326363, 46.233437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980541, 39.906876, 46.757885>,  <34.323013, 39.752178, 46.097866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.980541, 39.906876, 46.757885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.801987, 39.551445, 46.715591>,  <33.694855, 39.338188, 46.690216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.801987, 39.551445, 46.715591>,  <33.980541, 39.906876, 46.757885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801987, 39.551445, 46.715591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179146, -0.204501, 0.962334,
		-0.876726, 0.410628, 0.250470,
		-0.446383, -0.888574, -0.105729,
		33.668072, 39.284874, 46.683872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403648, 39.901169, 47.244480>,  <33.980541, 39.906876, 46.757885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.403648, 39.901169, 47.244480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.531567, 39.534508, 47.148579>,  <33.608318, 39.314510, 47.091038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.531567, 39.534508, 47.148579>,  <33.403648, 39.901169, 47.244480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531567, 39.534508, 47.148579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169544, -0.193592, 0.966321,
		-0.932193, -0.349676, 0.093502,
		0.319798, -0.916651, -0.239751,
		33.627506, 39.259514, 47.076653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991444, 39.283157, 47.560699>,  <33.403648, 39.901169, 47.244480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991444, 39.283157, 47.560699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.378452, 39.192295, 47.516342>,  <33.610657, 39.137775, 47.489727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.378452, 39.192295, 47.516342>,  <32.991444, 39.283157, 47.560699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378452, 39.192295, 47.516342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109475, -0.018853, 0.993811,
		-0.227846, -0.973675, 0.006628,
		0.967524, -0.227162, -0.110889,
		33.668709, 39.124146, 47.483074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064411, 38.551640, 47.710384>,  <32.991444, 39.283157, 47.560699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.064411, 38.551640, 47.710384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.392178, 38.774284, 47.765156>,  <33.588837, 38.907871, 47.798019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.392178, 38.774284, 47.765156>,  <33.064411, 38.551640, 47.710384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392178, 38.774284, 47.765156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086148, -0.355756, 0.930600,
		0.566694, -0.750749, -0.339462,
		0.819412, 0.556609, 0.136929,
		33.638000, 38.941269, 47.806236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704311, 38.157852, 47.915131>,  <33.064411, 38.551640, 47.710384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704311, 38.157852, 47.915131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.745716, 38.523422, 48.072117>,  <33.770561, 38.742764, 48.166309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.745716, 38.523422, 48.072117>,  <33.704311, 38.157852, 47.915131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745716, 38.523422, 48.072117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016073, -0.392999, 0.919398,
		0.994498, -0.101481, -0.025992,
		0.103516, 0.913922, 0.392468,
		33.776772, 38.797600, 48.189857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123108, 37.692795, 48.311661>,  <33.704311, 38.157852, 47.915131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123108, 37.692795, 48.311661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.105423, 37.316841, 48.447109>,  <34.094810, 37.091270, 48.528378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.105423, 37.316841, 48.447109>,  <34.123108, 37.692795, 48.311661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105423, 37.316841, 48.447109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932680, 0.082625, 0.351113,
		-0.357984, 0.331345, 0.872959,
		-0.044211, -0.939885, 0.338618,
		34.092159, 37.034874, 48.548695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453926, 37.713078, 48.983006>,  <34.123108, 37.692795, 48.311661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453926, 37.713078, 48.983006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.458961, 37.337269, 48.846100>,  <34.461983, 37.111786, 48.763954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.458961, 37.337269, 48.846100>,  <34.453926, 37.713078, 48.983006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458961, 37.337269, 48.846100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995889, -0.018925, 0.088582,
		-0.089701, -0.341977, 0.935417,
		0.012590, -0.939518, -0.342268,
		34.462738, 37.055412, 48.743420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811886, 37.308041, 49.478470>,  <34.453926, 37.713078, 48.983006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811886, 37.308041, 49.478470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.830826, 37.098644, 49.138184>,  <34.842190, 36.973007, 48.934013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.830826, 37.098644, 49.138184>,  <34.811886, 37.308041, 49.478470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830826, 37.098644, 49.138184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978357, -0.147440, 0.145186,
		-0.201433, -0.839179, 0.505177,
		0.047354, -0.523488, -0.850716,
		34.845032, 36.941597, 48.882969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245903, 36.729004, 49.559814>,  <34.811886, 37.308041, 49.478470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245903, 36.729004, 49.559814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.245106, 36.776257, 49.162617>,  <35.244629, 36.804607, 48.924297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.245106, 36.776257, 49.162617>,  <35.245903, 36.729004, 49.559814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245106, 36.776257, 49.162617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994485, -0.103890, -0.014357,
		-0.104858, -0.987549, -0.117271,
		-0.001994, 0.118130, -0.992996,
		35.244507, 36.811695, 48.864719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915638, 36.270069, 49.356445>,  <35.245903, 36.729004, 49.559814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915638, 36.270069, 49.356445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.862049, 36.503792, 49.036285>,  <35.829895, 36.644024, 48.844189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.862049, 36.503792, 49.036285>,  <35.915638, 36.270069, 49.356445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862049, 36.503792, 49.036285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987061, 0.006868, -0.160199,
		-0.088107, -0.811507, -0.577663,
		-0.133970, 0.584303, -0.800401,
		35.821857, 36.679081, 48.796165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155277, 35.945267, 48.773430>,  <35.915638, 36.270069, 49.356445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155277, 35.945267, 48.773430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.152767, 36.329304, 48.661579>,  <36.151260, 36.559727, 48.594467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.152767, 36.329304, 48.661579>,  <36.155277, 35.945267, 48.773430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152767, 36.329304, 48.661579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928577, -0.098173, -0.357919,
		-0.371086, -0.261901, -0.890900,
		-0.006277, 0.960088, -0.279626,
		36.150883, 36.617329, 48.577690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509422, 35.861122, 48.221867>,  <36.155277, 35.945267, 48.773430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509422, 35.861122, 48.221867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.533531, 36.251034, 48.307812>,  <36.547997, 36.484982, 48.359379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.533531, 36.251034, 48.307812>,  <36.509422, 35.861122, 48.221867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533531, 36.251034, 48.307812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920337, 0.029069, -0.390045,
		-0.386455, 0.221260, -0.895375,
		0.060274, 0.974782, 0.214867,
		36.551613, 36.543468, 48.372272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799129, 36.206108, 47.519726>,  <36.509422, 35.861122, 48.221867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799129, 36.206108, 47.519726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.857059, 36.445507, 47.834896>,  <36.891819, 36.589146, 48.023998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.857059, 36.445507, 47.834896>,  <36.799129, 36.206108, 47.519726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857059, 36.445507, 47.834896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911448, 0.229222, -0.341643,
		-0.385083, 0.767629, -0.512306,
		0.144824, 0.598501, 0.787923,
		36.900505, 36.625057, 48.071274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205608, 36.718098, 47.158630>,  <36.799129, 36.206108, 47.519726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205608, 36.718098, 47.158630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.250805, 36.759808, 47.553875>,  <37.277924, 36.784836, 47.791019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.250805, 36.759808, 47.553875>,  <37.205608, 36.718098, 47.158630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250805, 36.759808, 47.553875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935047, 0.325175, -0.141241,
		-0.336036, 0.939887, -0.060761,
		0.112993, 0.104277, 0.988109,
		37.284702, 36.791092, 47.850307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475269, 37.385780, 47.305061>,  <37.205608, 36.718098, 47.158630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.475269, 37.385780, 47.305061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.571411, 37.171913, 47.629124>,  <37.629097, 37.043594, 47.823563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.571411, 37.171913, 47.629124>,  <37.475269, 37.385780, 47.305061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571411, 37.171913, 47.629124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882708, 0.467595, 0.046711,
		-0.403802, 0.703907, 0.584345,
		0.240357, -0.534668, 0.810160,
		37.643517, 37.011513, 47.872173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795681, 37.812656, 47.751324>,  <37.475269, 37.385780, 47.305061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795681, 37.812656, 47.751324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.934410, 37.457870, 47.873314>,  <38.017647, 37.244999, 47.946507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.934410, 37.457870, 47.873314>,  <37.795681, 37.812656, 47.751324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934410, 37.457870, 47.873314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924049, 0.378860, 0.050984,
		-0.160764, 0.264130, 0.950994,
		0.346827, -0.886961, 0.304976,
		38.038460, 37.191784, 47.964806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075626, 37.801575, 48.410522>,  <37.795681, 37.812656, 47.751324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075626, 37.801575, 48.410522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.274601, 37.517834, 48.210773>,  <38.393986, 37.347588, 48.090923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.274601, 37.517834, 48.210773>,  <38.075626, 37.801575, 48.410522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274601, 37.517834, 48.210773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861597, 0.471025, 0.189171,
		0.101029, -0.524361, 0.845482,
		0.497437, -0.709352, -0.499375,
		38.423832, 37.305027, 48.060963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670132, 37.494247, 48.819630>,  <38.075626, 37.801575, 48.410522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.670132, 37.494247, 48.819630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.747204, 37.455246, 48.429066>,  <38.793446, 37.431847, 48.194729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.747204, 37.455246, 48.429066>,  <38.670132, 37.494247, 48.819630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747204, 37.455246, 48.429066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907672, 0.395785, 0.139590,
		0.372837, -0.913153, 0.164758,
		0.192676, -0.097502, -0.976407,
		38.805008, 37.425995, 48.136143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239899, 36.877594, 48.669868>,  <38.670132, 37.494247, 48.819630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239899, 36.877594, 48.669868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.236759, 37.230293, 48.481205>,  <39.234875, 37.441914, 48.368008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.236759, 37.230293, 48.481205>,  <39.239899, 36.877594, 48.669868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236759, 37.230293, 48.481205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927565, 0.182637, 0.325985,
		0.373579, -0.434936, -0.819311,
		-0.007853, 0.881745, -0.471660,
		39.234402, 37.494816, 48.339706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.899441, 37.017479, 48.321774>,  <39.239899, 36.877594, 48.669868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.899441, 37.017479, 48.321774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.825413, 37.405800, 48.382828>,  <39.780998, 37.638790, 48.419460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.825413, 37.405800, 48.382828>,  <39.899441, 37.017479, 48.321774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825413, 37.405800, 48.382828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964949, 0.150105, 0.215270,
		0.186072, 0.187124, -0.964553,
		-0.185067, 0.970800, 0.152635,
		39.769894, 37.697041, 48.428619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.558853, 36.993618, 47.860203>,  <39.899441, 37.017479, 48.321774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.558853, 36.993618, 47.860203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.178516, 36.945286, 47.746151>,  <39.950314, 36.916286, 47.677719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.178516, 36.945286, 47.746151>,  <40.558853, 36.993618, 47.860203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178516, 36.945286, 47.746151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284636, -0.703704, -0.650987,
		-0.121984, -0.700143, 0.703505,
		-0.950843, -0.120833, -0.285127,
		39.893265, 36.909035, 47.660614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566887, 36.310528, 47.869232>,  <40.558853, 36.993618, 47.860203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.566887, 36.310528, 47.869232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.257507, 36.438107, 47.650124>,  <40.071880, 36.514652, 47.518658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.257507, 36.438107, 47.650124>,  <40.566887, 36.310528, 47.869232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.257507, 36.438107, 47.650124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195400, -0.702124, -0.684719,
		-0.602987, -0.636630, 0.480737,
		-0.773450, 0.318941, -0.547769,
		40.025475, 36.533791, 47.485794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.756725, 35.655525, 48.407684>,  <40.566887, 36.310528, 47.869232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.756725, 35.655525, 48.407684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.834469, 35.832996, 48.757629>,  <40.881115, 35.939480, 48.967594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.834469, 35.832996, 48.757629>,  <40.756725, 35.655525, 48.407684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.834469, 35.832996, 48.757629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909777, -0.251953, 0.329887,
		0.366786, -0.860042, 0.354676,
		0.194355, 0.443674, 0.874860,
		40.892776, 35.966099, 49.020088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379753, 35.309116, 48.941769>,  <40.756725, 35.655525, 48.407684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.379753, 35.309116, 48.941769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.433537, 35.648449, 49.146610>,  <40.465805, 35.852051, 49.269516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.433537, 35.648449, 49.146610>,  <40.379753, 35.309116, 48.941769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433537, 35.648449, 49.146610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762235, -0.241678, 0.600491,
		0.633181, -0.471082, 0.614136,
		0.134457, 0.848336, 0.512101,
		40.473873, 35.902950, 49.300240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.493755, 35.147308, 49.628426>,  <40.379753, 35.309116, 48.941769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.493755, 35.147308, 49.628426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.358795, 35.523422, 49.610394>,  <40.277821, 35.749088, 49.599575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.358795, 35.523422, 49.610394>,  <40.493755, 35.147308, 49.628426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.358795, 35.523422, 49.610394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651371, -0.198622, 0.732302,
		0.679617, 0.276438, 0.679487,
		-0.337397, 0.940282, -0.045076,
		40.257576, 35.805508, 49.596870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.572937, 35.533504, 50.319454>,  <40.493755, 35.147308, 49.628426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.572937, 35.533504, 50.319454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.298481, 35.752842, 50.128231>,  <40.133808, 35.884445, 50.013496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.298481, 35.752842, 50.128231>,  <40.572937, 35.533504, 50.319454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.298481, 35.752842, 50.128231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633632, -0.127628, 0.763034,
		0.357391, 0.826457, 0.435017,
		-0.686136, 0.548342, -0.478057,
		40.092640, 35.917343, 49.984814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.332081, 35.955711, 50.888546>,  <40.572937, 35.533504, 50.319454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.332081, 35.955711, 50.888546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.071587, 35.976444, 50.585705>,  <39.915291, 35.988884, 50.403999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.071587, 35.976444, 50.585705>,  <40.332081, 35.955711, 50.888546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.071587, 35.976444, 50.585705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758226, -0.003281, 0.651984,
		0.031308, 0.998651, 0.041436,
		-0.651240, 0.051830, -0.757100,
		39.876213, 35.991993, 50.358574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878323, 36.477306, 50.954975>,  <40.332081, 35.955711, 50.888546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.878323, 36.477306, 50.954975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.666107, 36.227829, 50.725353>,  <39.538776, 36.078144, 50.587582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.666107, 36.227829, 50.725353>,  <39.878323, 36.477306, 50.954975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.666107, 36.227829, 50.725353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725057, -0.016919, 0.688481,
		-0.439114, 0.781487, -0.443236,
		-0.530540, -0.623693, -0.574051,
		39.506947, 36.040722, 50.553139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208416, 36.807327, 50.996719>,  <39.878323, 36.477306, 50.954975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208416, 36.807327, 50.996719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.129135, 36.442642, 50.852779>,  <39.081566, 36.223831, 50.766415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.129135, 36.442642, 50.852779>,  <39.208416, 36.807327, 50.996719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129135, 36.442642, 50.852779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809780, -0.054536, 0.584193,
		-0.552243, 0.407187, -0.727480,
		-0.198202, -0.911715, -0.359850,
		39.069675, 36.169128, 50.744823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545002, 36.869408, 50.893135>,  <39.208416, 36.807327, 50.996719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545002, 36.869408, 50.893135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.592411, 36.472336, 50.883778>,  <38.620857, 36.234093, 50.878162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.592411, 36.472336, 50.883778>,  <38.545002, 36.869408, 50.893135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592411, 36.472336, 50.883778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876268, -0.115645, 0.467740,
		-0.467020, -0.034940, -0.883556,
		0.118522, -0.992676, -0.023392,
		38.627968, 36.174534, 50.876759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929626, 36.540600, 50.598164>,  <38.545002, 36.869408, 50.893135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929626, 36.540600, 50.598164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.133705, 36.292160, 50.836136>,  <38.256153, 36.143097, 50.978920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.133705, 36.292160, 50.836136>,  <37.929626, 36.540600, 50.598164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.133705, 36.292160, 50.836136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838152, -0.203924, 0.505881,
		-0.192876, -0.756745, -0.624609,
		0.510196, -0.621089, 0.594935,
		38.286762, 36.105831, 51.014614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360138, 36.146488, 50.744267>,  <37.929626, 36.540600, 50.598164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360138, 36.146488, 50.744267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.647472, 36.041241, 51.001877>,  <37.819874, 35.978092, 51.156441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.647472, 36.041241, 51.001877>,  <37.360138, 36.146488, 50.744267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.647472, 36.041241, 51.001877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684428, -0.101335, 0.722004,
		-0.124719, -0.959424, -0.252885,
		0.718334, -0.263129, 0.644018,
		37.862972, 35.962303, 51.195084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072056, 35.570534, 51.077263>,  <37.360138, 36.146488, 50.744267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072056, 35.570534, 51.077263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.349018, 35.714703, 51.327278>,  <37.515194, 35.801205, 51.477287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.349018, 35.714703, 51.327278>,  <37.072056, 35.570534, 51.077263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349018, 35.714703, 51.327278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682337, 0.045533, 0.729618,
		0.234508, -0.931678, 0.277455,
		0.692403, 0.360419, 0.625041,
		37.556740, 35.822826, 51.514790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992905, 35.115982, 51.760696>,  <37.072056, 35.570534, 51.077263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992905, 35.115982, 51.760696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.210487, 35.437222, 51.857975>,  <37.341038, 35.629963, 51.916344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.210487, 35.437222, 51.857975>,  <36.992905, 35.115982, 51.760696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210487, 35.437222, 51.857975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500446, 0.077854, 0.862260,
		0.673543, -0.590743, 0.444255,
		0.543961, 0.803095, 0.243197,
		37.373676, 35.678150, 51.930935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186348, 35.106392, 52.394199>,  <36.992905, 35.115982, 51.760696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186348, 35.106392, 52.394199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.243805, 35.499866, 52.350868>,  <37.278278, 35.735950, 52.324867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.243805, 35.499866, 52.350868>,  <37.186348, 35.106392, 52.394199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243805, 35.499866, 52.350868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428267, 0.160474, 0.889289,
		0.892162, -0.081346, 0.444330,
		0.143643, 0.983682, -0.108331,
		37.286900, 35.794971, 52.318371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496002, 35.352089, 53.076256>,  <37.186348, 35.106392, 52.394199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496002, 35.352089, 53.076256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.291039, 35.620956, 52.862484>,  <37.168060, 35.782276, 52.734219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.291039, 35.620956, 52.862484>,  <37.496002, 35.352089, 53.076256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.291039, 35.620956, 52.862484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501690, 0.270772, 0.821577,
		0.696951, 0.689107, 0.198474,
		-0.512413, 0.672171, -0.534433,
		37.137314, 35.822609, 52.702152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445621, 35.976208, 53.440243>,  <37.496002, 35.352089, 53.076256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.445621, 35.976208, 53.440243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.144760, 36.023430, 53.180912>,  <36.964241, 36.051762, 53.025314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.144760, 36.023430, 53.180912>,  <37.445621, 35.976208, 53.440243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144760, 36.023430, 53.180912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455620, 0.617625, 0.641054,
		0.476100, 0.777562, -0.410763,
		-0.752157, 0.118054, -0.648324,
		36.919113, 36.058846, 52.986416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316311, 36.758358, 53.398746>,  <37.445621, 35.976208, 53.440243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316311, 36.758358, 53.398746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.980904, 36.578987, 53.274937>,  <36.779659, 36.471367, 53.200649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.980904, 36.578987, 53.274937>,  <37.316311, 36.758358, 53.398746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980904, 36.578987, 53.274937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528099, 0.528941, 0.664329,
		-0.134179, 0.720511, -0.680338,
		-0.838515, -0.448424, -0.309528,
		36.729347, 36.444458, 53.182079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828026, 37.294956, 53.263065>,  <37.316311, 36.758358, 53.398746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828026, 37.294956, 53.263065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.587643, 36.976299, 53.289013>,  <36.443413, 36.785107, 53.304581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.587643, 36.976299, 53.289013>,  <36.828026, 37.294956, 53.263065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587643, 36.976299, 53.289013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642770, 0.529931, 0.553190,
		-0.475072, 0.290747, -0.830525,
		-0.600960, -0.796642, 0.064872,
		36.407356, 36.737305, 53.308475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138367, 37.498131, 53.177303>,  <36.828026, 37.294956, 53.263065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138367, 37.498131, 53.177303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.086475, 37.157131, 53.379856>,  <36.055340, 36.952530, 53.501389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.086475, 37.157131, 53.379856>,  <36.138367, 37.498131, 53.177303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086475, 37.157131, 53.379856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731632, 0.426987, 0.531410,
		-0.669242, -0.301545, -0.679106,
		-0.129725, -0.852498, 0.506377,
		36.047558, 36.901382, 53.531769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407482, 37.432343, 53.312782>,  <36.138367, 37.498131, 53.177303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.407482, 37.432343, 53.312782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.574848, 37.166756, 53.560680>,  <35.675266, 37.007404, 53.709419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.574848, 37.166756, 53.560680>,  <35.407482, 37.432343, 53.312782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574848, 37.166756, 53.560680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645833, 0.262277, 0.717015,
		-0.638616, -0.700260, -0.319070,
		0.418412, -0.663964, 0.619745,
		35.700371, 36.967567, 53.746605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826378, 37.203079, 53.635963>,  <35.407482, 37.432343, 53.312782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826378, 37.203079, 53.635963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.129307, 37.091885, 53.872330>,  <35.311066, 37.025169, 54.014149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.129307, 37.091885, 53.872330>,  <34.826378, 37.203079, 53.635963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129307, 37.091885, 53.872330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590033, 0.096499, 0.801592,
		-0.279854, -0.955726, -0.090939,
		0.757326, -0.277986, 0.590915,
		35.356506, 37.008488, 54.049603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585892, 36.652168, 54.019321>,  <34.826378, 37.203079, 53.635963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585892, 36.652168, 54.019321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.883949, 36.830925, 54.217327>,  <35.062786, 36.938179, 54.336132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.883949, 36.830925, 54.217327>,  <34.585892, 36.652168, 54.019321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883949, 36.830925, 54.217327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603644, 0.136432, 0.785493,
		0.283498, -0.884121, 0.371428,
		0.745146, 0.446896, 0.495016,
		35.107494, 36.964993, 54.365833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528793, 36.359760, 54.687027>,  <34.585892, 36.652168, 54.019321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528793, 36.359760, 54.687027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.742901, 36.694786, 54.730801>,  <34.871365, 36.895802, 54.757065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.742901, 36.694786, 54.730801>,  <34.528793, 36.359760, 54.687027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.742901, 36.694786, 54.730801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551271, 0.248226, 0.796545,
		0.639993, -0.486693, 0.594592,
		0.535266, 0.837564, 0.109437,
		34.903481, 36.946056, 54.763630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587067, 36.457748, 55.426151>,  <34.528793, 36.359760, 54.687027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.587067, 36.457748, 55.426151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.659996, 36.809517, 55.250252>,  <34.703754, 37.020576, 55.144711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.659996, 36.809517, 55.250252>,  <34.587067, 36.457748, 55.426151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659996, 36.809517, 55.250252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407778, 0.474599, 0.780047,
		0.894694, 0.037104, 0.445136,
		0.182319, 0.879420, -0.439751,
		34.714691, 37.073341, 55.118328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822514, 36.857491, 55.998661>,  <34.587067, 36.457748, 55.426151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822514, 36.857491, 55.998661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.694801, 37.116936, 55.722294>,  <34.618176, 37.272602, 55.556473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.694801, 37.116936, 55.722294>,  <34.822514, 36.857491, 55.998661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694801, 37.116936, 55.722294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494921, 0.507619, 0.705249,
		0.808154, 0.567120, 0.158940,
		-0.319280, 0.648612, -0.690914,
		34.599018, 37.311520, 55.515018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941792, 37.537529, 56.298691>,  <34.822514, 36.857491, 55.998661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.941792, 37.537529, 56.298691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.671978, 37.578358, 56.006229>,  <34.510090, 37.602856, 55.830753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.671978, 37.578358, 56.006229>,  <34.941792, 37.537529, 56.298691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671978, 37.578358, 56.006229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620584, 0.458024, 0.636466,
		0.399852, 0.883060, -0.245607,
		-0.674532, 0.102072, -0.731155,
		34.469620, 37.608978, 55.786884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744255, 38.227657, 56.312859>,  <34.941792, 37.537529, 56.298691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744255, 38.227657, 56.312859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.435074, 38.052490, 56.129219>,  <34.249565, 37.947388, 56.019035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.435074, 38.052490, 56.129219>,  <34.744255, 38.227657, 56.312859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435074, 38.052490, 56.129219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627725, 0.633010, 0.453055,
		0.092210, 0.638376, -0.764181,
		-0.772954, -0.437920, -0.459095,
		34.203186, 37.921116, 55.991489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394070, 38.773773, 55.961784>,  <34.744255, 38.227657, 56.312859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.394070, 38.773773, 55.961784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.129063, 38.476311, 55.997688>,  <33.970058, 38.297832, 56.019230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.129063, 38.476311, 55.997688>,  <34.394070, 38.773773, 55.961784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.129063, 38.476311, 55.997688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654285, 0.632866, 0.413995,
		-0.364673, 0.215550, -0.905843,
		-0.662514, -0.743652, 0.089758,
		33.930309, 38.253216, 56.024616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.795719, 39.075748, 55.850685>,  <34.394070, 38.773773, 55.961784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.795719, 39.075748, 55.850685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.661880, 38.728996, 55.998505>,  <33.581577, 38.520947, 56.087196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.661880, 38.728996, 55.998505>,  <33.795719, 39.075748, 55.850685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661880, 38.728996, 55.998505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762135, 0.479573, 0.434926,
		-0.554255, -0.136124, -0.821140,
		-0.334592, -0.866880, 0.369551,
		33.561504, 38.468933, 56.109371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024227, 39.132767, 55.802540>,  <33.795719, 39.075748, 55.850685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024227, 39.132767, 55.802540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.063412, 38.831829, 56.063118>,  <33.086922, 38.651268, 56.219463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.063412, 38.831829, 56.063118>,  <33.024227, 39.132767, 55.802540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063412, 38.831829, 56.063118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829258, 0.300198, 0.471394,
		-0.550214, -0.586394, -0.594480,
		0.097961, -0.752345, 0.651446,
		33.092800, 38.606125, 56.258553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418270, 38.821110, 55.759609>,  <33.024227, 39.132767, 55.802540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418270, 38.821110, 55.759609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.561729, 38.693989, 56.110695>,  <32.647804, 38.617714, 56.321346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.561729, 38.693989, 56.110695>,  <32.418270, 38.821110, 55.759609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561729, 38.693989, 56.110695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896900, 0.143300, 0.418372,
		-0.258736, -0.937265, -0.233646,
		0.358644, -0.317805, 0.877710,
		32.669323, 38.598648, 56.374008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.962828, 38.397743, 56.035282>,  <32.418270, 38.821110, 55.759609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.962828, 38.397743, 56.035282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.173401, 38.474110, 56.366684>,  <32.299744, 38.519928, 56.565525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.173401, 38.474110, 56.366684>,  <31.962828, 38.397743, 56.035282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.173401, 38.474110, 56.366684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846207, 0.023129, 0.532352,
		0.082471, -0.981334, 0.173728,
		0.526434, 0.190913, 0.828504,
		32.331329, 38.531384, 56.615234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.788095, 37.976807, 56.649220>,  <31.962828, 38.397743, 56.035282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.788095, 37.976807, 56.649220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.963287, 38.287674, 56.829967>,  <32.068401, 38.474194, 56.938416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.963287, 38.287674, 56.829967>,  <31.788095, 37.976807, 56.649220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.963287, 38.287674, 56.829967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759728, 0.051257, 0.648217,
		0.480612, -0.627203, 0.612886,
		0.437978, 0.777168, 0.451869,
		32.094681, 38.520824, 56.965527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843943, 37.821426, 57.407936>,  <31.788095, 37.976807, 56.649220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843943, 37.821426, 57.407936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.838511, 38.212471, 57.323952>,  <31.835251, 38.447098, 57.273560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.838511, 38.212471, 57.323952>,  <31.843943, 37.821426, 57.407936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.838511, 38.212471, 57.323952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823825, 0.108061, 0.556449,
		0.566682, 0.180528, 0.803916,
		-0.013583, 0.977616, -0.209960,
		31.834436, 38.505756, 57.260963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.688799, 38.118294, 58.074757>,  <31.843943, 37.821426, 57.407936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.688799, 38.118294, 58.074757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.592756, 38.391659, 57.798988>,  <31.535131, 38.555679, 57.633530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.592756, 38.391659, 57.798988>,  <31.688799, 38.118294, 58.074757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.592756, 38.391659, 57.798988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767247, 0.301487, 0.566072,
		0.594711, 0.664871, 0.451957,
		-0.240106, 0.683412, -0.689418,
		31.520725, 38.596684, 57.592163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.472733, 38.648071, 58.438591>,  <31.688799, 38.118294, 58.074757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.472733, 38.648071, 58.438591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.334032, 38.775314, 58.085644>,  <31.250813, 38.851662, 57.873875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.334032, 38.775314, 58.085644>,  <31.472733, 38.648071, 58.438591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.334032, 38.775314, 58.085644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747906, 0.473943, 0.464774,
		0.566039, 0.821089, 0.073573,
		-0.346752, 0.318106, -0.882367,
		31.230007, 38.870747, 57.820934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.243967, 39.350346, 58.568062>,  <31.472733, 38.648071, 58.438591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.243967, 39.350346, 58.568062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.047363, 39.204578, 58.251678>,  <30.929401, 39.117119, 58.061848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.047363, 39.204578, 58.251678>,  <31.243967, 39.350346, 58.568062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.047363, 39.204578, 58.251678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815025, 0.512495, 0.270339,
		0.306845, 0.777526, -0.548908,
		-0.491508, -0.364421, -0.790960,
		30.899912, 39.095253, 58.014389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.840746, 39.881866, 58.272217>,  <31.243967, 39.350346, 58.568062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.840746, 39.881866, 58.272217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.672556, 39.550686, 58.123787>,  <30.571642, 39.351978, 58.034729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.672556, 39.550686, 58.123787>,  <30.840746, 39.881866, 58.272217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.672556, 39.550686, 58.123787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906492, 0.366056, 0.210418,
		-0.038383, 0.424850, -0.904450,
		-0.420475, -0.827953, -0.371072,
		30.546413, 39.302299, 58.012466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.532351, 40.026314, 57.654041>,  <30.840746, 39.881866, 58.272217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.532351, 40.026314, 57.654041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.358698, 39.717033, 57.838951>,  <30.254507, 39.531467, 57.949898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.358698, 39.717033, 57.838951>,  <30.532351, 40.026314, 57.654041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.358698, 39.717033, 57.838951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817297, 0.553881, 0.158877,
		-0.378888, -0.308841, -0.872388,
		-0.434131, -0.773196, 0.462274,
		30.228458, 39.485073, 57.977634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.891853, 39.986931, 57.458569>,  <30.532351, 40.026314, 57.654041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.891853, 39.986931, 57.458569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.824215, 39.769753, 57.787594>,  <29.783632, 39.639446, 57.985008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.824215, 39.769753, 57.787594>,  <29.891853, 39.986931, 57.458569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.824215, 39.769753, 57.787594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726062, 0.633012, 0.268571,
		-0.666514, -0.551819, -0.501254,
		-0.169097, -0.542947, 0.822566,
		29.773485, 39.606869, 58.034363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.174953, 39.845150, 57.501682>,  <29.891853, 39.986931, 57.458569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.174953, 39.845150, 57.501682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.301926, 39.794052, 57.877537>,  <29.378109, 39.763393, 58.103050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.301926, 39.794052, 57.877537>,  <29.174953, 39.845150, 57.501682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.301926, 39.794052, 57.877537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755074, 0.565398, 0.331946,
		-0.573673, -0.814866, 0.083021,
		0.317432, -0.127742, 0.939638,
		29.397156, 39.755730, 58.159428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.549892, 39.871124, 57.837692>,  <29.174953, 39.845150, 57.501682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.549892, 39.871124, 57.837692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.811466, 39.917088, 58.136803>,  <28.968410, 39.944668, 58.316269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.811466, 39.917088, 58.136803>,  <28.549892, 39.871124, 57.837692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.811466, 39.917088, 58.136803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637441, 0.616038, 0.462781,
		-0.407477, -0.779289, 0.476099,
		0.653936, 0.114912, 0.747772,
		29.007647, 39.951561, 58.361134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.188072, 39.934780, 58.449650>,  <28.549892, 39.871124, 57.837692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.188072, 39.934780, 58.449650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.538149, 40.096043, 58.556614>,  <28.748196, 40.192799, 58.620792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.538149, 40.096043, 58.556614>,  <28.188072, 39.934780, 58.449650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.538149, 40.096043, 58.556614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483773, 0.731608, 0.480326,
		-0.001995, -0.549743, 0.835331,
		0.875191, 0.403153, 0.267410,
		28.800707, 40.216988, 58.636837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.022125, 40.224052, 59.089638>,  <28.188072, 39.934780, 58.449650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.022125, 40.224052, 59.089638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.361433, 40.396790, 58.967030>,  <28.565018, 40.500431, 58.893463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.361433, 40.396790, 58.967030>,  <28.022125, 40.224052, 59.089638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.361433, 40.396790, 58.967030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253988, 0.839659, 0.480066,
		0.464683, -0.329373, 0.821939,
		0.848269, 0.431841, -0.306519,
		28.615913, 40.526340, 58.875072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.359846, 40.538612, 59.706074>,  <28.022125, 40.224052, 59.089638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.359846, 40.538612, 59.706074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.513815, 40.739212, 59.396149>,  <28.606195, 40.859570, 59.210194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.513815, 40.739212, 59.396149>,  <28.359846, 40.538612, 59.706074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.513815, 40.739212, 59.396149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099809, 0.857194, 0.505229,
		0.917536, -0.117140, 0.380007,
		0.384922, 0.501495, -0.774815,
		28.629292, 40.889660, 59.163704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.900450, 40.908245, 59.937840>,  <28.359846, 40.538612, 59.706074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.900450, 40.908245, 59.937840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.737883, 41.074806, 59.612526>,  <28.640343, 41.174744, 59.417339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.737883, 41.074806, 59.612526>,  <28.900450, 40.908245, 59.937840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.737883, 41.074806, 59.612526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266975, 0.797147, 0.541554,
		0.873812, 0.437225, -0.212808,
		-0.406420, 0.416402, -0.813285,
		28.615957, 41.199726, 59.368542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.368776, 41.402302, 59.615715>,  <28.900450, 40.908245, 59.937840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.368776, 41.402302, 59.615715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.985142, 41.485851, 59.539268>,  <28.754961, 41.535980, 59.493401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.985142, 41.485851, 59.539268>,  <29.368776, 41.402302, 59.615715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.985142, 41.485851, 59.539268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064185, 0.817898, 0.571772,
		0.275740, 0.536113, -0.797841,
		-0.959087, 0.208870, -0.191117,
		28.697416, 41.548512, 59.481934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.179935, 41.885265, 59.141762>,  <29.368776, 41.402302, 59.615715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.179935, 41.885265, 59.141762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.936117, 41.860554, 59.457897>,  <28.789825, 41.845726, 59.647579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.936117, 41.860554, 59.457897>,  <29.179935, 41.885265, 59.141762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.936117, 41.860554, 59.457897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407827, 0.830477, 0.379452,
		-0.679801, 0.553616, -0.481019,
		-0.609547, -0.061779, 0.790339,
		28.753254, 41.842018, 59.695000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.998238, 42.529083, 58.731388>,  <29.179935, 41.885265, 59.141762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.998238, 42.529083, 58.731388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.739683, 42.799358, 58.589611>,  <28.584551, 42.961525, 58.504547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.739683, 42.799358, 58.589611>,  <28.998238, 42.529083, 58.731388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.739683, 42.799358, 58.589611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300046, 0.202009, 0.932290,
		0.701540, 0.708967, 0.072163,
		-0.646385, 0.675691, -0.354440,
		28.545767, 43.002064, 58.483280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.076986, 43.166447, 59.063934>,  <28.998238, 42.529083, 58.731388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.076986, 43.166447, 59.063934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.700796, 43.161270, 58.928089>,  <28.475082, 43.158165, 58.846581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.700796, 43.161270, 58.928089>,  <29.076986, 43.166447, 59.063934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.700796, 43.161270, 58.928089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339559, -0.006182, 0.940565,
		-0.014269, 0.999897, 0.001420,
		-0.940477, -0.012938, -0.339612,
		28.418653, 43.157387, 58.826206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.685942, 42.962421, 59.664230>,  <29.076986, 43.166447, 59.063934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.685942, 42.962421, 59.664230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.958681, 43.254189, 59.642181>,  <29.122324, 43.429249, 59.628952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.958681, 43.254189, 59.642181>,  <28.685942, 42.962421, 59.664230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.958681, 43.254189, 59.642181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274663, 0.185453, -0.943487,
		-0.677971, 0.658454, 0.326793,
		0.681847, 0.729414, -0.055122,
		29.163235, 43.473015, 59.625645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.964268, 43.056141, 59.757946>,  <28.685942, 42.962421, 59.664230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.964268, 43.056141, 59.757946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.085930, 43.397045, 59.587700>,  <28.158928, 43.601585, 59.485554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.085930, 43.397045, 59.587700>,  <27.964268, 43.056141, 59.757946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.085930, 43.397045, 59.587700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156000, -0.396188, -0.904820,
		-0.939762, 0.341603, 0.012448,
		0.304158, 0.852257, -0.425613,
		28.177177, 43.652721, 59.460014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.480339, 43.402676, 59.284157>,  <27.964268, 43.056141, 59.757946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.480339, 43.402676, 59.284157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.852228, 43.480206, 59.158909>,  <28.075361, 43.526722, 59.083759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.852228, 43.480206, 59.158909>,  <27.480339, 43.402676, 59.284157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.852228, 43.480206, 59.158909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244873, -0.309682, -0.918768,
		-0.275045, 0.930876, -0.240458,
		0.929724, 0.193821, -0.313123,
		28.131145, 43.538353, 59.064972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.517141, 43.299973, 58.494354>,  <27.480339, 43.402676, 59.284157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.517141, 43.299973, 58.494354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.892014, 43.398262, 58.593403>,  <28.116936, 43.457233, 58.652832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.892014, 43.398262, 58.593403>,  <27.517141, 43.299973, 58.494354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.892014, 43.398262, 58.593403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296015, -0.184580, -0.937179,
		-0.184580, 0.951604, -0.245722,
		0.937179, 0.245722, 0.247620,
		28.173168, 43.471977, 58.667690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.690903, 43.879955, 58.021797>,  <27.517141, 43.299973, 58.494354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.690903, 43.879955, 58.021797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.994890, 43.656826, 58.155231>,  <28.177284, 43.522949, 58.235291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.994890, 43.656826, 58.155231>,  <27.690903, 43.879955, 58.021797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.994890, 43.656826, 58.155231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392209, -0.015677, -0.919743,
		0.518282, 0.829813, 0.206868,
		0.759971, -0.557822, 0.333585,
		28.222881, 43.489479, 58.255306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.319304, 44.163670, 57.951015>,  <27.690903, 43.879955, 58.021797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.319304, 44.163670, 57.951015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.415884, 43.776089, 57.972298>,  <28.473833, 43.543541, 57.985069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.415884, 43.776089, 57.972298>,  <28.319304, 44.163670, 57.951015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.415884, 43.776089, 57.972298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445878, 0.062073, -0.892939,
		0.861912, 0.239329, 0.447023,
		0.241454, -0.968952, 0.053210,
		28.488319, 43.485401, 57.988262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.118864, 44.155716, 57.824619>,  <28.319304, 44.163670, 57.951015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.118864, 44.155716, 57.824619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.980539, 43.789162, 57.743969>,  <28.897545, 43.569229, 57.695580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.980539, 43.789162, 57.743969>,  <29.118864, 44.155716, 57.824619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.980539, 43.789162, 57.743969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775541, -0.158197, -0.611155,
		0.528157, -0.367712, 0.765401,
		-0.345813, -0.916385, -0.201623,
		28.876795, 43.514248, 57.683483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.769583, 43.875351, 57.646488>,  <29.118864, 44.155716, 57.824619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.769583, 43.875351, 57.646488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.475637, 43.628807, 57.533295>,  <29.299271, 43.480881, 57.465378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.475637, 43.628807, 57.533295>,  <29.769583, 43.875351, 57.646488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.475637, 43.628807, 57.533295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604433, -0.405928, -0.685480,
		0.307631, -0.674778, 0.670849,
		-0.734863, -0.616358, -0.282982,
		29.255178, 43.443901, 57.448399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.096367, 43.262112, 57.733292>,  <29.769583, 43.875351, 57.646488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.096367, 43.262112, 57.733292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.807474, 43.230076, 57.458492>,  <29.634138, 43.210854, 57.293613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.807474, 43.230076, 57.458492>,  <30.096367, 43.262112, 57.733292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.807474, 43.230076, 57.458492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664384, -0.356479, -0.656899,
		-0.192290, -0.930864, 0.310671,
		-0.722231, -0.080090, -0.686999,
		29.590805, 43.206051, 57.252392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.186218, 42.695076, 57.299778>,  <30.096367, 43.262112, 57.733292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.186218, 42.695076, 57.299778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.941097, 42.899727, 57.058876>,  <29.794024, 43.022518, 56.914333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.941097, 42.899727, 57.058876>,  <30.186218, 42.695076, 57.299778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.941097, 42.899727, 57.058876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605420, -0.185844, -0.773905,
		-0.507876, -0.838868, -0.195864,
		-0.612803, 0.511628, -0.602253,
		29.757256, 43.053215, 56.878201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.286352, 42.368740, 56.648186>,  <30.186218, 42.695076, 57.299778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.286352, 42.368740, 56.648186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.132166, 42.731739, 56.581409>,  <30.039654, 42.949539, 56.541344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.132166, 42.731739, 56.581409>,  <30.286352, 42.368740, 56.648186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.132166, 42.731739, 56.581409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526354, 0.067660, -0.847569,
		-0.757870, -0.414579, -0.503744,
		-0.385467, 0.907495, -0.166938,
		30.016525, 43.003986, 56.531326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.232172, 42.362385, 55.904560>,  <30.286352, 42.368740, 56.648186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.232172, 42.362385, 55.904560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.192934, 42.745712, 56.011890>,  <30.169392, 42.975708, 56.076290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.192934, 42.745712, 56.011890>,  <30.232172, 42.362385, 55.904560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.192934, 42.745712, 56.011890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542062, 0.277573, -0.793172,
		-0.834594, 0.067647, -0.546696,
		-0.098093, 0.958320, 0.268329,
		30.163506, 43.033207, 56.092388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.923882, 42.759754, 55.327457>,  <30.232172, 42.362385, 55.904560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.923882, 42.759754, 55.327457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.092922, 43.032578, 55.566189>,  <30.194347, 43.196270, 55.709427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.092922, 43.032578, 55.566189>,  <29.923882, 42.759754, 55.327457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.092922, 43.032578, 55.566189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553044, 0.327638, -0.766026,
		-0.718018, 0.653796, -0.238749,
		0.422601, 0.682059, 0.596828,
		30.219702, 43.237194, 55.745235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.904148, 43.487686, 55.014858>,  <29.923882, 42.759754, 55.327457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.904148, 43.487686, 55.014858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.196709, 43.500137, 55.287354>,  <30.372244, 43.507607, 55.450851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.196709, 43.500137, 55.287354>,  <29.904148, 43.487686, 55.014858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.196709, 43.500137, 55.287354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600213, 0.444834, -0.664730,
		-0.323727, 0.895072, 0.306671,
		0.731399, 0.031123, 0.681239,
		30.416128, 43.509476, 55.491726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.202259, 44.129345, 54.993912>,  <29.904148, 43.487686, 55.014858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.202259, 44.129345, 54.993912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.483526, 43.893204, 55.152428>,  <30.652287, 43.751518, 55.247536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.483526, 43.893204, 55.152428>,  <30.202259, 44.129345, 54.993912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.483526, 43.893204, 55.152428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681689, 0.401295, -0.611770,
		0.202129, 0.700322, 0.684612,
		0.703167, -0.590349, 0.396288,
		30.694477, 43.716099, 55.271313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.759264, 44.489254, 54.863171>,  <30.202259, 44.129345, 54.993912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.759264, 44.489254, 54.863171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.899456, 44.124832, 54.950020>,  <30.983572, 43.906178, 55.002129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.899456, 44.124832, 54.950020>,  <30.759264, 44.489254, 54.863171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.899456, 44.124832, 54.950020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635830, 0.061235, -0.769396,
		0.687666, 0.407714, 0.600737,
		0.350480, -0.911054, 0.217127,
		31.004601, 43.851517, 55.015160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.589939, 44.497780, 54.901646>,  <30.759264, 44.489254, 54.863171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.589939, 44.497780, 54.901646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.501389, 44.112553, 54.840340>,  <31.448259, 43.881416, 54.803555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.501389, 44.112553, 54.840340>,  <31.589939, 44.497780, 54.901646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.501389, 44.112553, 54.840340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697385, -0.046489, -0.715187,
		0.681650, -0.265209, 0.681922,
		-0.221375, -0.963070, -0.153264,
		31.434977, 43.823631, 54.794361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.145432, 44.177692, 54.694893>,  <31.589939, 44.497780, 54.901646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.145432, 44.177692, 54.694893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.886730, 43.902481, 54.563244>,  <31.731510, 43.737354, 54.484253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.886730, 43.902481, 54.563244>,  <32.145432, 44.177692, 54.694893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.886730, 43.902481, 54.563244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699541, -0.363176, -0.615423,
		0.303900, -0.628263, 0.716191,
		-0.646751, -0.688032, -0.329127,
		31.692705, 43.696072, 54.464504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488907, 43.529606, 54.750324>,  <32.145432, 44.177692, 54.694893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488907, 43.529606, 54.750324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.201698, 43.478275, 54.476688>,  <32.029373, 43.447479, 54.312508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.201698, 43.478275, 54.476688>,  <32.488907, 43.529606, 54.750324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.201698, 43.478275, 54.476688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686978, -0.288618, -0.666904,
		-0.111863, -0.948806, 0.295387,
		-0.718017, -0.128323, -0.684094,
		31.986294, 43.439777, 54.271461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557018, 42.838394, 54.503120>,  <32.488907, 43.529606, 54.750324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557018, 42.838394, 54.503120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.400166, 43.071751, 54.218616>,  <32.306053, 43.211765, 54.047916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.400166, 43.071751, 54.218616>,  <32.557018, 42.838394, 54.503120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400166, 43.071751, 54.218616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608856, -0.414999, -0.676069,
		-0.689586, -0.698159, -0.192471,
		-0.392129, 0.583395, -0.711256,
		32.282528, 43.246769, 54.005241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.407547, 42.346439, 54.011147>,  <32.557018, 42.838394, 54.503120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.407547, 42.346439, 54.011147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.432091, 42.708725, 53.843372>,  <32.446815, 42.926094, 53.742706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.432091, 42.708725, 53.843372>,  <32.407547, 42.346439, 54.011147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.432091, 42.708725, 53.843372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609772, -0.366705, -0.702642,
		-0.790198, -0.212644, -0.574777,
		0.061361, 0.905710, -0.419434,
		32.450500, 42.980438, 53.717541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404617, 42.230896, 53.251328>,  <32.407547, 42.346439, 54.011147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404617, 42.230896, 53.251328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.537155, 42.605537, 53.296906>,  <32.616676, 42.830322, 53.324253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.537155, 42.605537, 53.296906>,  <32.404617, 42.230896, 53.251328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537155, 42.605537, 53.296906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770939, -0.199137, -0.604977,
		-0.543933, 0.288303, -0.788047,
		0.331346, 0.936603, 0.113946,
		32.636559, 42.886517, 53.331089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446430, 42.440479, 52.628063>,  <32.404617, 42.230896, 53.251328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446430, 42.440479, 52.628063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.698685, 42.667191, 52.840126>,  <32.850037, 42.803215, 52.967361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.698685, 42.667191, 52.840126>,  <32.446430, 42.440479, 52.628063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698685, 42.667191, 52.840126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725581, -0.188205, -0.661899,
		-0.275370, 0.802088, -0.529931,
		0.630637, 0.566775, 0.530154,
		32.887875, 42.837223, 52.999172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867451, 42.794563, 52.085224>,  <32.446430, 42.440479, 52.628063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867451, 42.794563, 52.085224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.047886, 42.825859, 52.440842>,  <33.156147, 42.844639, 52.654213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.047886, 42.825859, 52.440842>,  <32.867451, 42.794563, 52.085224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.047886, 42.825859, 52.440842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877208, -0.222372, -0.425508,
		0.164406, 0.971817, -0.168942,
		0.451084, 0.078241, 0.889045,
		33.183212, 42.849331, 52.707554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349033, 43.459591, 52.130878>,  <32.867451, 42.794563, 52.085224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349033, 43.459591, 52.130878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.452435, 43.139309, 52.347046>,  <33.514477, 42.947140, 52.476746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.452435, 43.139309, 52.347046>,  <33.349033, 43.459591, 52.130878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452435, 43.139309, 52.347046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850443, -0.076704, -0.520445,
		0.458173, 0.594133, 0.661123,
		0.258503, -0.800701, 0.540421,
		33.529984, 42.899097, 52.509171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045868, 43.468029, 52.116642>,  <33.349033, 43.459591, 52.130878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.045868, 43.468029, 52.116642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.016396, 43.103149, 52.277866>,  <33.998711, 42.884220, 52.374599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.016396, 43.103149, 52.277866>,  <34.045868, 43.468029, 52.116642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016396, 43.103149, 52.277866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871482, -0.255391, -0.418682,
		0.484860, 0.320411, 0.813786,
		-0.073684, -0.912202, 0.403061,
		33.994289, 42.829491, 52.398785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719410, 43.327713, 52.356274>,  <34.045868, 43.468029, 52.116642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719410, 43.327713, 52.356274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.575790, 42.954453, 52.349117>,  <34.489620, 42.730495, 52.344822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.575790, 42.954453, 52.349117>,  <34.719410, 43.327713, 52.356274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575790, 42.954453, 52.349117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898795, -0.340538, -0.276047,
		0.251500, -0.115196, 0.960977,
		-0.359049, -0.933147, -0.017893,
		34.468075, 42.674507, 52.343750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298431, 42.869049, 52.610497>,  <34.719410, 43.327713, 52.356274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298431, 42.869049, 52.610497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.040939, 42.634876, 52.413364>,  <34.886444, 42.494373, 52.295086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.040939, 42.634876, 52.413364>,  <35.298431, 42.869049, 52.610497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040939, 42.634876, 52.413364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765253, -0.492131, -0.414964,
		0.000396, -0.644264, 0.764803,
		-0.643730, -0.585432, -0.492830,
		34.847820, 42.459248, 52.265514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387730, 42.128666, 52.731831>,  <35.298431, 42.869049, 52.610497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.387730, 42.128666, 52.731831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.181408, 42.126366, 52.389156>,  <35.057613, 42.124985, 52.183552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.181408, 42.126366, 52.389156>,  <35.387730, 42.128666, 52.731831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181408, 42.126366, 52.389156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755628, -0.474265, -0.451772,
		-0.403699, -0.880363, 0.248974,
		-0.515803, -0.005752, -0.856688,
		35.026669, 42.124641, 52.132149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609238, 41.521118, 52.482037>,  <35.387730, 42.128666, 52.731831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609238, 41.521118, 52.482037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.465900, 41.718487, 52.165020>,  <35.379898, 41.836910, 51.974812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.465900, 41.718487, 52.165020>,  <35.609238, 41.521118, 52.482037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465900, 41.718487, 52.165020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715762, -0.399826, -0.572558,
		-0.599393, -0.772444, -0.209899,
		-0.358346, 0.493426, -0.792540,
		35.358398, 41.866516, 51.927258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345310, 41.012947, 51.959892>,  <35.609238, 41.521118, 52.482037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345310, 41.012947, 51.959892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.440022, 41.363514, 51.792164>,  <35.496849, 41.573853, 51.691525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.440022, 41.363514, 51.792164>,  <35.345310, 41.012947, 51.959892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440022, 41.363514, 51.792164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635263, -0.466212, -0.615700,
		-0.735103, -0.120595, -0.667144,
		0.236780, 0.876415, -0.419323,
		35.511055, 41.626438, 51.666367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517658, 40.874134, 51.249088>,  <35.345310, 41.012947, 51.959892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517658, 40.874134, 51.249088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.668953, 41.244106, 51.264271>,  <35.759731, 41.466091, 51.273380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.668953, 41.244106, 51.264271>,  <35.517658, 40.874134, 51.249088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668953, 41.244106, 51.264271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779114, -0.295932, -0.552636,
		-0.499918, 0.238598, -0.832558,
		0.378238, 0.924930, 0.037953,
		35.782425, 41.521584, 51.275658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642136, 41.016132, 50.535465>,  <35.517658, 40.874134, 51.249088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642136, 41.016132, 50.535465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.876179, 41.261330, 50.747833>,  <36.016605, 41.408447, 50.875256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.876179, 41.261330, 50.747833>,  <35.642136, 41.016132, 50.535465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876179, 41.261330, 50.747833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773210, -0.224297, -0.593159,
		-0.244521, 0.757578, -0.605214,
		0.585112, 0.612998, 0.530922,
		36.051712, 41.445229, 50.907108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000233, 41.418903, 50.070862>,  <35.642136, 41.016132, 50.535465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000233, 41.418903, 50.070862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.220032, 41.444843, 50.404053>,  <36.351910, 41.460407, 50.603966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.220032, 41.444843, 50.404053>,  <36.000233, 41.418903, 50.070862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220032, 41.444843, 50.404053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783647, -0.385746, -0.486927,
		0.289741, 0.920323, -0.262782,
		0.549498, 0.064846, 0.832975,
		36.384880, 41.464298, 50.653946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618340, 41.665287, 49.919140>,  <36.000233, 41.418903, 50.070862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618340, 41.665287, 49.919140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.689693, 41.470585, 50.261192>,  <36.732506, 41.353764, 50.466423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.689693, 41.470585, 50.261192>,  <36.618340, 41.665287, 49.919140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.689693, 41.470585, 50.261192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848990, -0.363169, -0.383828,
		0.497386, 0.794468, 0.348465,
		0.178387, -0.486754, 0.855130,
		36.743210, 41.324558, 50.517731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316635, 41.621452, 49.885746>,  <36.618340, 41.665287, 49.919140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316635, 41.621452, 49.885746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.234001, 41.352512, 50.170074>,  <37.184422, 41.191151, 50.340672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.234001, 41.352512, 50.170074>,  <37.316635, 41.621452, 49.885746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234001, 41.352512, 50.170074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842412, -0.491743, -0.220296,
		0.497659, 0.553297, 0.667980,
		-0.206585, -0.672347, 0.710825,
		37.172024, 41.150806, 50.383324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964584, 41.538193, 50.287647>,  <37.316635, 41.621452, 49.885746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964584, 41.538193, 50.287647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.746426, 41.206390, 50.335758>,  <37.615528, 41.007309, 50.364624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.746426, 41.206390, 50.335758>,  <37.964584, 41.538193, 50.287647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746426, 41.206390, 50.335758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775550, -0.553851, -0.302936,
		0.317902, -0.071940, 0.945390,
		-0.545399, -0.829502, 0.120277,
		37.582806, 40.957539, 50.371841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322102, 41.143044, 50.649143>,  <37.964584, 41.538193, 50.287647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322102, 41.143044, 50.649143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.073971, 40.895958, 50.455807>,  <37.925091, 40.747707, 50.339806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.073971, 40.895958, 50.455807>,  <38.322102, 41.143044, 50.649143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073971, 40.895958, 50.455807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774940, -0.577810, -0.256129,
		-0.121066, -0.533447, 0.837125,
		-0.620331, -0.617714, -0.483343,
		37.887871, 40.710644, 50.310802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472385, 40.550724, 50.924717>,  <38.322102, 41.143044, 50.649143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.472385, 40.550724, 50.924717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.300350, 40.469299, 50.572903>,  <38.197128, 40.420444, 50.361813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.300350, 40.469299, 50.572903>,  <38.472385, 40.550724, 50.924717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300350, 40.469299, 50.572903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724792, -0.658700, -0.201969,
		-0.538239, -0.724347, 0.430837,
		-0.430088, -0.203560, -0.879538,
		38.171326, 40.408230, 50.309040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511837, 39.845676, 50.926674>,  <38.472385, 40.550724, 50.924717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511837, 39.845676, 50.926674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.439526, 39.916042, 50.539608>,  <38.396137, 39.958263, 50.307369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.439526, 39.916042, 50.539608>,  <38.511837, 39.845676, 50.926674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439526, 39.916042, 50.539608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668124, -0.700046, -0.252083,
		-0.721754, -0.692091, 0.009022,
		-0.180780, 0.175914, -0.967664,
		38.385292, 39.968815, 50.249310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489079, 39.163883, 50.709782>,  <38.511837, 39.845676, 50.926674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489079, 39.163883, 50.709782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.548035, 39.387775, 50.383598>,  <38.583408, 39.522110, 50.187889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.548035, 39.387775, 50.383598>,  <38.489079, 39.163883, 50.709782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.548035, 39.387775, 50.383598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535530, -0.738319, -0.409992,
		-0.831555, -0.376274, -0.408575,
		0.147389, 0.559735, -0.815459,
		38.592251, 39.555695, 50.138962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406391, 38.740131, 50.084599>,  <38.489079, 39.163883, 50.709782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406391, 38.740131, 50.084599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.608196, 39.035927, 49.906326>,  <38.729279, 39.213402, 49.799362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.608196, 39.035927, 49.906326>,  <38.406391, 38.740131, 50.084599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608196, 39.035927, 49.906326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478458, -0.669131, -0.568631,
		-0.718713, 0.073642, -0.691397,
		0.504510, 0.739487, -0.445678,
		38.759548, 39.257774, 49.772621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378414, 38.714973, 49.308784>,  <38.406391, 38.740131, 50.084599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378414, 38.714973, 49.308784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.721340, 38.899349, 49.400486>,  <38.927094, 39.009975, 49.455505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.721340, 38.899349, 49.400486>,  <38.378414, 38.714973, 49.308784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721340, 38.899349, 49.400486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508380, -0.687948, -0.517954,
		-0.081031, 0.560594, -0.824117,
		0.857312, 0.460935, 0.229250,
		38.978535, 39.037628, 49.469261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773903, 38.815182, 48.633152>,  <38.378414, 38.714973, 49.308784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773903, 38.815182, 48.633152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.014156, 38.805527, 48.952816>,  <39.158310, 38.799736, 49.144615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.014156, 38.805527, 48.952816>,  <38.773903, 38.815182, 48.633152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014156, 38.805527, 48.952816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426734, -0.835589, -0.345959,
		0.676118, 0.548824, -0.491586,
		0.600635, -0.024133, 0.799159,
		39.194347, 38.798286, 49.192562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131733, 38.792877, 48.239582>,  <38.773903, 38.815182, 48.633152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131733, 38.792877, 48.239582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.299259, 39.084068, 48.456707>,  <38.399773, 39.258781, 48.586983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.299259, 39.084068, 48.456707>,  <38.131733, 38.792877, 48.239582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299259, 39.084068, 48.456707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701367, -0.639007, 0.315839,
		0.576784, 0.248433, -0.778204,
		0.418813, 0.727977, 0.542812,
		38.424904, 39.302460, 48.619549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747414, 39.301132, 48.518360>,  <38.131733, 38.792877, 48.239582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747414, 39.301132, 48.518360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.514317, 39.261032, 48.195782>,  <37.374458, 39.236973, 48.002235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.514317, 39.261032, 48.195782>,  <37.747414, 39.301132, 48.518360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.514317, 39.261032, 48.195782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654867, 0.645546, 0.392963,
		0.481208, 0.757114, -0.441835,
		-0.582742, -0.100246, -0.806450,
		37.339493, 39.230957, 47.953846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443726, 39.928993, 48.460716>,  <37.747414, 39.301132, 48.518360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.443726, 39.928993, 48.460716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.223286, 39.660797, 48.262024>,  <37.091022, 39.499882, 48.142811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.223286, 39.660797, 48.262024>,  <37.443726, 39.928993, 48.460716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223286, 39.660797, 48.262024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832547, 0.481885, 0.273223,
		0.056174, 0.564123, -0.823778,
		-0.551098, -0.670486, -0.496729,
		37.057957, 39.459652, 48.113007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958874, 40.378967, 48.149357>,  <37.443726, 39.928993, 48.460716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958874, 40.378967, 48.149357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.815006, 40.006832, 48.120754>,  <36.728683, 39.783550, 48.103592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.815006, 40.006832, 48.120754>,  <36.958874, 40.378967, 48.149357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815006, 40.006832, 48.120754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895721, 0.322788, 0.305764,
		-0.261382, 0.174022, -0.949419,
		-0.359671, -0.930335, -0.071504,
		36.707104, 39.727730, 48.099304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331921, 40.337620, 47.619347>,  <36.958874, 40.378967, 48.149357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331921, 40.337620, 47.619347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.284035, 40.019352, 47.856857>,  <36.255302, 39.828392, 47.999363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.284035, 40.019352, 47.856857>,  <36.331921, 40.337620, 47.619347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284035, 40.019352, 47.856857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981776, 0.183792, 0.048337,
		-0.147592, -0.577173, -0.803173,
		-0.119718, -0.795671, 0.593781,
		36.248119, 39.780651, 48.034992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706467, 39.956917, 47.382145>,  <36.331921, 40.337620, 47.619347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706467, 39.956917, 47.382145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.762245, 39.829582, 47.757210>,  <35.795712, 39.753181, 47.982250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.762245, 39.829582, 47.757210>,  <35.706467, 39.956917, 47.382145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762245, 39.829582, 47.757210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988901, 0.004254, 0.148512,
		-0.051265, -0.947969, -0.314210,
		0.139448, -0.318336, 0.937666,
		35.804081, 39.734081, 48.038509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178379, 39.362949, 47.513222>,  <35.706467, 39.956917, 47.382145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178379, 39.362949, 47.513222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.284874, 39.496414, 47.874947>,  <35.348770, 39.576492, 48.091984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.284874, 39.496414, 47.874947>,  <35.178379, 39.362949, 47.513222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284874, 39.496414, 47.874947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952287, -0.054194, 0.300355,
		0.149226, -0.941133, 0.303316,
		0.266236, 0.333664, 0.904316,
		35.364746, 39.596512, 48.146240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612747, 39.175983, 47.860199>,  <35.178379, 39.362949, 47.513222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612747, 39.175983, 47.860199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.800438, 39.416435, 48.118958>,  <34.913052, 39.560707, 48.274212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.800438, 39.416435, 48.118958>,  <34.612747, 39.175983, 47.860199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.800438, 39.416435, 48.118958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866310, 0.171271, 0.469227,
		0.171271, -0.780586, 0.601126,
		-0.469227, -0.601126, -0.646895,
		34.941208, 39.596771, 48.313026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328190, 38.940422, 48.478031>,  <34.612747, 39.175983, 47.860199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328190, 38.940422, 48.478031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.489895, 39.299095, 48.550171>,  <34.586918, 39.514301, 48.593452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.489895, 39.299095, 48.550171>,  <34.328190, 38.940422, 48.478031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489895, 39.299095, 48.550171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864655, 0.310377, 0.395017,
		0.298231, -0.315629, 0.900798,
		0.404266, 0.896686, 0.180346,
		34.611176, 39.568100, 48.604275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126816, 39.081043, 49.217007>,  <34.328190, 38.940422, 48.478031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126816, 39.081043, 49.217007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.200439, 39.426929, 49.030083>,  <34.244614, 39.634460, 48.917927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.200439, 39.426929, 49.030083>,  <34.126816, 39.081043, 49.217007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200439, 39.426929, 49.030083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837784, 0.386662, 0.385500,
		0.514041, 0.320550, 0.795619,
		0.184063, 0.864719, -0.467312,
		34.255657, 39.686344, 48.889889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997662, 39.544628, 49.791199>,  <34.126816, 39.081043, 49.217007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997662, 39.544628, 49.791199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.995232, 39.765545, 49.457745>,  <33.993774, 39.898094, 49.257671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.995232, 39.765545, 49.457745>,  <33.997662, 39.544628, 49.791199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995232, 39.765545, 49.457745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804858, 0.492024, 0.331836,
		0.593436, 0.672970, 0.441526,
		-0.006074, 0.552289, -0.833631,
		33.993408, 39.931232, 49.207657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039738, 40.324276, 49.987000>,  <33.997662, 39.544628, 49.791199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039738, 40.324276, 49.987000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.884899, 40.325077, 49.618183>,  <33.791996, 40.325558, 49.396893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.884899, 40.325077, 49.618183>,  <34.039738, 40.324276, 49.987000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884899, 40.325077, 49.618183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697424, 0.653480, 0.294217,
		0.603122, 0.756941, -0.251562,
		-0.387096, 0.002003, -0.922037,
		33.768772, 40.325680, 49.341572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034058, 41.043789, 49.663788>,  <34.039738, 40.324276, 49.987000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034058, 41.043789, 49.663788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.761780, 40.847263, 49.446434>,  <33.598415, 40.729347, 49.316021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.761780, 40.847263, 49.446434>,  <34.034058, 41.043789, 49.663788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761780, 40.847263, 49.446434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691606, 0.675557, 0.255545,
		0.241536, 0.549757, -0.799642,
		-0.680691, -0.491315, -0.543386,
		33.557571, 40.699867, 49.283417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704166, 41.568966, 49.223774>,  <34.034058, 41.043789, 49.663788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704166, 41.568966, 49.223774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.461254, 41.255138, 49.273842>,  <33.315506, 41.066841, 49.303883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.461254, 41.255138, 49.273842>,  <33.704166, 41.568966, 49.223774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461254, 41.255138, 49.273842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766502, 0.620019, 0.167488,
		-0.209014, 0.005768, -0.977896,
		-0.607280, -0.784566, 0.125171,
		33.279072, 41.019768, 49.311394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131245, 41.551849, 48.699669>,  <33.704166, 41.568966, 49.223774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.131245, 41.551849, 48.699669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.989067, 41.362194, 49.021873>,  <32.903759, 41.248402, 49.215199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.989067, 41.362194, 49.021873>,  <33.131245, 41.551849, 48.699669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.989067, 41.362194, 49.021873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743031, 0.666167, 0.064244,
		-0.567067, -0.575687, -0.589084,
		-0.355444, -0.474138, 0.805514,
		32.882435, 41.219952, 49.263527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.452278, 41.649395, 48.625843>,  <33.131245, 41.551849, 48.699669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.452278, 41.649395, 48.625843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.463287, 41.503647, 48.998180>,  <32.469891, 41.416199, 49.221584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.463287, 41.503647, 48.998180>,  <32.452278, 41.649395, 48.625843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463287, 41.503647, 48.998180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822233, 0.521323, 0.228376,
		-0.568485, -0.771657, -0.285253,
		0.027519, -0.364372, 0.930847,
		32.471542, 41.394337, 49.277435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.778748, 41.561497, 48.755650>,  <32.452278, 41.649395, 48.625843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.778748, 41.561497, 48.755650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.933071, 41.539581, 49.124031>,  <32.025665, 41.526432, 49.345058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.933071, 41.539581, 49.124031>,  <31.778748, 41.561497, 48.755650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.933071, 41.539581, 49.124031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825347, 0.425566, 0.371074,
		-0.412256, -0.903267, 0.118969,
		0.385808, -0.054787, 0.920951,
		32.048813, 41.523144, 49.400318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.154482, 41.552505, 49.253353>,  <31.778748, 41.561497, 48.755650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.154482, 41.552505, 49.253353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.460739, 41.649990, 49.491478>,  <31.644493, 41.708481, 49.634354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.460739, 41.649990, 49.491478>,  <31.154482, 41.552505, 49.253353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.460739, 41.649990, 49.491478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638199, 0.403727, 0.655520,
		-0.080582, -0.881821, 0.464649,
		0.765642, 0.243715, 0.595310,
		31.690432, 41.723106, 49.670071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.867325, 41.507404, 49.947266>,  <31.154482, 41.552505, 49.253353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.867325, 41.507404, 49.947266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.198282, 41.731419, 49.964149>,  <31.396856, 41.865826, 49.974277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.198282, 41.731419, 49.964149>,  <30.867325, 41.507404, 49.947266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.198282, 41.731419, 49.964149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458307, 0.629838, 0.627103,
		0.324616, -0.538205, 0.777792,
		0.827393, 0.560035, 0.042207,
		31.446501, 41.899429, 49.976810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.046692, 41.566555, 50.710640>,  <30.867325, 41.507404, 49.947266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.046692, 41.566555, 50.710640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.183088, 41.878086, 50.500061>,  <31.264925, 42.065006, 50.373714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.183088, 41.878086, 50.500061>,  <31.046692, 41.566555, 50.710640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.183088, 41.878086, 50.500061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290600, 0.619914, 0.728875,
		0.894024, -0.095552, 0.437712,
		0.340989, 0.778831, -0.526450,
		31.285385, 42.111736, 50.342125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.551497, 41.732311, 51.130318>,  <31.046692, 41.566555, 50.710640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.551497, 41.732311, 51.130318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.456770, 42.040779, 50.893940>,  <31.399933, 42.225861, 50.752113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.456770, 42.040779, 50.893940>,  <31.551497, 41.732311, 51.130318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.456770, 42.040779, 50.893940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367234, 0.492072, 0.789306,
		0.899476, 0.403937, 0.166667,
		-0.236818, 0.771168, -0.590947,
		31.385725, 42.272129, 50.716656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.628027, 42.291557, 51.555622>,  <31.551497, 41.732311, 51.130318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.628027, 42.291557, 51.555622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.412462, 42.465324, 51.266941>,  <31.283123, 42.569584, 51.093731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.412462, 42.465324, 51.266941>,  <31.628027, 42.291557, 51.555622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.412462, 42.465324, 51.266941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493791, 0.531202, 0.688473,
		0.682456, 0.727396, -0.071758,
		-0.538910, 0.434419, -0.721704,
		31.250790, 42.595650, 51.050430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.686752, 43.005287, 51.675957>,  <31.628027, 42.291557, 51.555622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.686752, 43.005287, 51.675957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.347521, 42.961502, 51.468582>,  <31.143982, 42.935230, 51.344158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.347521, 42.961502, 51.468582>,  <31.686752, 43.005287, 51.675957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.347521, 42.961502, 51.468582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505232, 0.461935, 0.728942,
		0.159693, 0.880133, -0.447062,
		-0.848080, -0.109463, -0.518439,
		31.093098, 42.928661, 51.313049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.270567, 43.674992, 51.562462>,  <31.686752, 43.005287, 51.675957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.270567, 43.674992, 51.562462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.013437, 43.369034, 51.545879>,  <30.859159, 43.185459, 51.535931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.013437, 43.369034, 51.545879>,  <31.270567, 43.674992, 51.562462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.013437, 43.369034, 51.545879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534618, 0.409220, 0.739407,
		-0.548601, 0.497471, -0.671982,
		-0.642822, -0.764893, -0.041459,
		30.820591, 43.139565, 51.533443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.576824, 44.018147, 51.743122>,  <31.270567, 43.674992, 51.562462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.576824, 44.018147, 51.743122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.518896, 43.631733, 51.828739>,  <30.484140, 43.399887, 51.880108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.518896, 43.631733, 51.828739>,  <30.576824, 44.018147, 51.743122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.518896, 43.631733, 51.828739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765241, 0.246481, 0.594687,
		-0.627243, -0.077670, -0.774941,
		-0.144819, -0.966030, 0.214039,
		30.475451, 43.341923, 51.892952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.888790, 43.918980, 51.782349>,  <30.576824, 44.018147, 51.743122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.888790, 43.918980, 51.782349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.993948, 43.568027, 51.942890>,  <30.057043, 43.357456, 52.039215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.993948, 43.568027, 51.942890>,  <29.888790, 43.918980, 51.782349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.993948, 43.568027, 51.942890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848921, -0.012669, 0.528367,
		-0.458496, -0.479622, -0.748160,
		0.262895, -0.877384, 0.401353,
		30.072817, 43.304813, 52.063297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.260983, 43.552013, 51.813900>,  <29.888790, 43.918980, 51.782349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.260983, 43.552013, 51.813900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.509472, 43.400970, 52.088562>,  <29.658566, 43.310345, 52.253361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.509472, 43.400970, 52.088562>,  <29.260983, 43.552013, 51.813900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.509472, 43.400970, 52.088562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764199, -0.097972, 0.637496,
		-0.173451, -0.920768, -0.349430,
		0.621221, -0.377609, 0.686656,
		29.695839, 43.287689, 52.294559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.802654, 43.072071, 52.095070>,  <29.260983, 43.552013, 51.813900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.802654, 43.072071, 52.095070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.091124, 43.110916, 52.369438>,  <29.264204, 43.134224, 52.534058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.091124, 43.110916, 52.369438>,  <28.802654, 43.072071, 52.095070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.091124, 43.110916, 52.369438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636403, -0.298294, 0.711345,
		0.273683, -0.949521, -0.153321,
		0.721171, 0.097109, 0.685917,
		29.307474, 43.140049, 52.575214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.631470, 42.571201, 52.675285>,  <28.802654, 43.072071, 52.095070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.631470, 42.571201, 52.675285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.864046, 42.852619, 52.838726>,  <29.003592, 43.021469, 52.936790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.864046, 42.852619, 52.838726>,  <28.631470, 42.571201, 52.675285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.864046, 42.852619, 52.838726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487731, -0.100554, 0.867184,
		0.651188, -0.703502, 0.284674,
		0.581440, 0.703544, 0.408599,
		29.038479, 43.063683, 52.961308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.832897, 42.316864, 53.364269>,  <28.631470, 42.571201, 52.675285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.832897, 42.316864, 53.364269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.887365, 42.712929, 53.377121>,  <28.920046, 42.950569, 53.384830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.887365, 42.712929, 53.377121>,  <28.832897, 42.316864, 53.364269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.887365, 42.712929, 53.377121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462609, 0.034877, 0.885876,
		0.876043, -0.135490, 0.462808,
		0.136169, 0.990165, 0.032125,
		28.928217, 43.009979, 53.386757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.160044, 42.448753, 54.024593>,  <28.832897, 42.316864, 53.364269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.160044, 42.448753, 54.024593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.015579, 42.804020, 53.910946>,  <28.928900, 43.017178, 53.842758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.015579, 42.804020, 53.910946>,  <29.160044, 42.448753, 54.024593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.015579, 42.804020, 53.910946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439718, 0.106479, 0.891802,
		0.822320, 0.447019, 0.352086,
		-0.361163, 0.888165, -0.284122,
		28.907230, 43.070469, 53.825710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.272547, 42.980869, 54.578506>,  <29.160044, 42.448753, 54.024593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.272547, 42.980869, 54.578506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.973892, 43.162651, 54.384186>,  <28.794699, 43.271721, 54.267593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.973892, 43.162651, 54.384186>,  <29.272547, 42.980869, 54.578506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.973892, 43.162651, 54.384186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503061, 0.092107, 0.859329,
		0.435271, 0.885996, 0.159847,
		-0.746639, 0.454453, -0.485801,
		28.749901, 43.298988, 54.238445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.101027, 43.632923, 54.994633>,  <29.272547, 42.980869, 54.578506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.101027, 43.632923, 54.994633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.799578, 43.514072, 54.760105>,  <28.618708, 43.442760, 54.619389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.799578, 43.514072, 54.760105>,  <29.101027, 43.632923, 54.994633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.799578, 43.514072, 54.760105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636715, 0.108475, 0.763431,
		-0.163235, 0.948657, -0.270934,
		-0.753624, -0.297126, -0.586317,
		28.573490, 43.424934, 54.584209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.569284, 44.010880, 55.263260>,  <29.101027, 43.632923, 54.994633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.569284, 44.010880, 55.263260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.347534, 43.770859, 55.032574>,  <28.214483, 43.626846, 54.894161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.347534, 43.770859, 55.032574>,  <28.569284, 44.010880, 55.263260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.347534, 43.770859, 55.032574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802776, 0.202711, 0.560766,
		-0.219584, 0.773849, -0.594088,
		-0.554376, -0.600055, -0.576715,
		28.181221, 43.590843, 54.859558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.981045, 44.388084, 55.093822>,  <28.569284, 44.010880, 55.263260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.981045, 44.388084, 55.093822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.891293, 44.002018, 55.039993>,  <27.837440, 43.770378, 55.007698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.891293, 44.002018, 55.039993>,  <27.981045, 44.388084, 55.093822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.891293, 44.002018, 55.039993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806394, 0.106360, 0.581736,
		-0.547158, 0.239047, -0.802169,
		-0.224381, -0.965166, -0.134570,
		27.823978, 43.712467, 54.999622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.273783, 44.403931, 54.977127>,  <27.981045, 44.388084, 55.093822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.273783, 44.403931, 54.977127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.369989, 44.036350, 55.102142>,  <27.427713, 43.815804, 55.177151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.369989, 44.036350, 55.102142>,  <27.273783, 44.403931, 54.977127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.369989, 44.036350, 55.102142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698197, 0.059889, 0.713396,
		-0.674294, -0.389796, -0.627205,
		0.240516, -0.918952, 0.312537,
		27.442144, 43.760666, 55.195904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.708687, 44.161308, 55.156700>,  <27.273783, 44.403931, 54.977127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.708687, 44.161308, 55.156700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.975573, 43.934971, 55.350460>,  <27.135704, 43.799168, 55.466717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.975573, 43.934971, 55.350460>,  <26.708687, 44.161308, 55.156700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.975573, 43.934971, 55.350460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640258, -0.103349, 0.761176,
		-0.380646, -0.818009, -0.431243,
		0.667217, -0.565845, 0.484397,
		27.175737, 43.765217, 55.495781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.275272, 43.610622, 55.596222>,  <26.708687, 44.161308, 55.156700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.275272, 43.610622, 55.596222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.648184, 43.603058, 55.740719>,  <26.871931, 43.598518, 55.827415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.648184, 43.603058, 55.740719>,  <26.275272, 43.610622, 55.596222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.648184, 43.603058, 55.740719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350025, -0.299193, 0.887674,
		0.091297, -0.954005, -0.285550,
		0.932280, -0.018908, 0.361241,
		26.927868, 43.597385, 55.849091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.335855, 42.949551, 55.904579>,  <26.275272, 43.610622, 55.596222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.335855, 42.949551, 55.904579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.583773, 43.218147, 56.067036>,  <26.732523, 43.379307, 56.164509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.583773, 43.218147, 56.067036>,  <26.335855, 42.949551, 55.904579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.583773, 43.218147, 56.067036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483711, -0.080641, 0.871505,
		0.617963, -0.736608, 0.274828,
		0.619795, 0.671495, 0.406139,
		26.769711, 43.419598, 56.188877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.393097, 42.607197, 55.305756>,  <26.335855, 42.949551, 55.904579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.393097, 42.607197, 55.305756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.182911, 42.341209, 55.518059>,  <26.056799, 42.181618, 55.645439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.182911, 42.341209, 55.518059>,  <26.393097, 42.607197, 55.305756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.182911, 42.341209, 55.518059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781618, -0.623711, -0.007603,
		0.336095, 0.410855, 0.847489,
		-0.525464, -0.664968, 0.530758,
		26.025272, 42.141720, 55.677288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.809570, 42.294735, 55.739445>,  <26.393097, 42.607197, 55.305756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.809570, 42.294735, 55.739445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.528635, 42.012169, 55.704357>,  <26.360073, 41.842628, 55.683304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.528635, 42.012169, 55.704357>,  <26.809570, 42.294735, 55.739445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.528635, 42.012169, 55.704357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709256, -0.704949, -0.001686,
		-0.060646, -0.063399, 0.996144,
		-0.702338, -0.706419, -0.087718,
		26.317934, 41.800243, 55.678043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.003761, 41.700512, 56.125633>,  <26.809570, 42.294735, 55.739445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.003761, 41.700512, 56.125633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.748320, 41.569901, 55.846905>,  <26.595055, 41.491531, 55.679668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.748320, 41.569901, 55.846905>,  <27.003761, 41.700512, 56.125633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.748320, 41.569901, 55.846905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674022, -0.674273, -0.301745,
		-0.371320, -0.662370, 0.650682,
		-0.638604, -0.326530, -0.696823,
		26.556738, 41.471943, 55.637859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.234928, 41.020992, 56.146038>,  <27.003761, 41.700512, 56.125633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.234928, 41.020992, 56.146038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.043062, 41.119976, 55.809303>,  <26.927942, 41.179367, 55.607262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.043062, 41.119976, 55.809303>,  <27.234928, 41.020992, 56.146038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.043062, 41.119976, 55.809303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638201, -0.560035, -0.528261,
		-0.602180, -0.790648, 0.110701,
		-0.479665, 0.247459, -0.841834,
		26.899162, 41.194214, 55.556751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.151096, 40.384399, 55.849644>,  <27.234928, 41.020992, 56.146038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.151096, 40.384399, 55.849644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.086740, 40.631367, 55.541641>,  <27.048126, 40.779545, 55.356838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.086740, 40.631367, 55.541641>,  <27.151096, 40.384399, 55.849644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.086740, 40.631367, 55.541641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346727, -0.695087, -0.629789,
		-0.924064, -0.368310, -0.102242,
		-0.160890, 0.617416, -0.770008,
		27.038473, 40.816593, 55.310638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.838896, 40.012486, 55.306961>,  <27.151096, 40.384399, 55.849644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.838896, 40.012486, 55.306961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.980970, 40.337551, 55.122169>,  <27.066216, 40.532589, 55.011295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.980970, 40.337551, 55.122169>,  <26.838896, 40.012486, 55.306961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.980970, 40.337551, 55.122169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505916, -0.582682, -0.636028,
		-0.786061, -0.007812, -0.618100,
		0.355187, 0.812663, -0.461976,
		27.087526, 40.581348, 54.983578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.007395, 39.774620, 54.644894>,  <26.838896, 40.012486, 55.306961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.007395, 39.774620, 54.644894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.200922, 40.124683, 54.643154>,  <27.317038, 40.334721, 54.642109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.200922, 40.124683, 54.643154>,  <27.007395, 39.774620, 54.644894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.200922, 40.124683, 54.643154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557299, -0.311918, -0.769497,
		-0.674788, 0.369871, -0.638636,
		0.483817, 0.875159, -0.004350,
		27.346067, 40.387230, 54.641850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.112976, 39.936592, 53.849396>,  <27.007395, 39.774620, 54.644894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.112976, 39.936592, 53.849396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.362930, 40.151211, 54.076248>,  <27.512903, 40.279984, 54.212360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.362930, 40.151211, 54.076248>,  <27.112976, 39.936592, 53.849396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.362930, 40.151211, 54.076248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776103, -0.348062, -0.525849,
		-0.084748, 0.768745, -0.633916,
		0.624885, 0.536549, 0.567128,
		27.550396, 40.312176, 54.246387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.537674, 40.201851, 53.426140>,  <27.112976, 39.936592, 53.849396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.537674, 40.201851, 53.426140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.736078, 40.227402, 53.772526>,  <27.855120, 40.242733, 53.980358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.736078, 40.227402, 53.772526>,  <27.537674, 40.201851, 53.426140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.736078, 40.227402, 53.772526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809900, -0.393648, -0.434860,
		0.313109, 0.917039, -0.246985,
		0.496009, 0.063874, 0.865965,
		27.884882, 40.246563, 54.032314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.267477, 40.440948, 53.315434>,  <27.537674, 40.201851, 53.426140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.267477, 40.440948, 53.315434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.271036, 40.238064, 53.660145>,  <28.273172, 40.116333, 53.866970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.271036, 40.238064, 53.660145>,  <28.267477, 40.440948, 53.315434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.271036, 40.238064, 53.660145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895216, -0.379949, -0.232865,
		0.445543, 0.773550, 0.450679,
		0.008897, -0.507207, 0.861778,
		28.273705, 40.085903, 53.918678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.916145, 40.554901, 53.554447>,  <28.267477, 40.440948, 53.315434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.916145, 40.554901, 53.554447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.799587, 40.232639, 53.760750>,  <28.729652, 40.039280, 53.884533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.799587, 40.232639, 53.760750>,  <28.916145, 40.554901, 53.554447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.799587, 40.232639, 53.760750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848753, -0.466443, -0.249096,
		0.441257, 0.365164, 0.819724,
		-0.291394, -0.805659, 0.515756,
		28.712170, 39.990940, 53.915478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.434702, 40.459873, 54.052132>,  <28.916145, 40.554901, 53.554447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.434702, 40.459873, 54.052132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.248917, 40.110191, 53.995514>,  <29.137445, 39.900383, 53.961544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.248917, 40.110191, 53.995514>,  <29.434702, 40.459873, 54.052132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.248917, 40.110191, 53.995514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877959, -0.433603, -0.202922,
		0.116022, -0.218518, 0.968911,
		-0.464464, -0.874207, -0.141542,
		29.109577, 39.847931, 53.953053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.894510, 39.880516, 54.316071>,  <29.434702, 40.459873, 54.052132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.894510, 39.880516, 54.316071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.644032, 39.679314, 54.077789>,  <29.493744, 39.558594, 53.934818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.644032, 39.679314, 54.077789>,  <29.894510, 39.880516, 54.316071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.644032, 39.679314, 54.077789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770274, -0.517364, -0.372844,
		-0.120655, -0.692330, 0.711422,
		-0.626195, -0.503005, -0.595706,
		29.456173, 39.528412, 53.899078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.163990, 39.164749, 54.335487>,  <29.894510, 39.880516, 54.316071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.163990, 39.164749, 54.335487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.917576, 39.189960, 54.021408>,  <29.769728, 39.205086, 53.832962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.917576, 39.189960, 54.021408>,  <30.163990, 39.164749, 54.335487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.917576, 39.189960, 54.021408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658293, -0.506241, -0.557109,
		-0.432610, -0.860086, 0.270372,
		-0.616035, 0.063026, -0.785194,
		29.732765, 39.208870, 53.785851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.333496, 38.585522, 53.979347>,  <30.163990, 39.164749, 54.335487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.333496, 38.585522, 53.979347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.117691, 38.775768, 53.701435>,  <29.988209, 38.889915, 53.534687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.117691, 38.775768, 53.701435>,  <30.333496, 38.585522, 53.979347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.117691, 38.775768, 53.701435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594953, -0.368548, -0.714285,
		-0.595783, -0.798727, -0.084131,
		-0.539513, 0.475613, -0.694780,
		29.955837, 38.918453, 53.493000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.043203, 38.150513, 53.379883>,  <30.333496, 38.585522, 53.979347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.043203, 38.150513, 53.379883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.016569, 38.493416, 53.175655>,  <30.000589, 38.699158, 53.053120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.016569, 38.493416, 53.175655>,  <30.043203, 38.150513, 53.379883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.016569, 38.493416, 53.175655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467143, -0.425372, -0.775136,
		-0.881671, -0.290118, -0.372139,
		-0.066584, 0.857257, -0.510565,
		29.996593, 38.750591, 53.022488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.840384, 38.003292, 52.708344>,  <30.043203, 38.150513, 53.379883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.840384, 38.003292, 52.708344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.997271, 38.369713, 52.674843>,  <30.091404, 38.589565, 52.654743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.997271, 38.369713, 52.674843>,  <29.840384, 38.003292, 52.708344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.997271, 38.369713, 52.674843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491917, -0.285812, -0.822392,
		-0.777291, 0.281358, -0.562722,
		0.392219, 0.916051, -0.083754,
		30.114937, 38.644527, 52.649715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.795830, 38.258430, 51.971714>,  <29.840384, 38.003292, 52.708344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.795830, 38.258430, 51.971714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.086996, 38.484589, 52.126873>,  <30.261696, 38.620285, 52.219967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.086996, 38.484589, 52.126873>,  <29.795830, 38.258430, 51.971714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.086996, 38.484589, 52.126873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552562, -0.148761, -0.820089,
		-0.405970, 0.811295, -0.420701,
		0.727917, 0.565395, 0.387898,
		30.305372, 38.654205, 52.243244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.986423, 38.783348, 51.421986>,  <29.795830, 38.258430, 51.971714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.986423, 38.783348, 51.421986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.302023, 38.806774, 51.666626>,  <30.491383, 38.820831, 51.813408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.302023, 38.806774, 51.666626>,  <29.986423, 38.783348, 51.421986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.302023, 38.806774, 51.666626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593910, 0.182208, -0.783627,
		-0.157334, 0.981514, 0.108977,
		0.788998, 0.058569, 0.611598,
		30.538723, 38.824345, 51.850105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.402363, 39.480579, 51.347134>,  <29.986423, 38.783348, 51.421986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.402363, 39.480579, 51.347134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.664425, 39.227375, 51.512093>,  <30.821663, 39.075451, 51.611069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.664425, 39.227375, 51.512093>,  <30.402363, 39.480579, 51.347134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.664425, 39.227375, 51.512093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654914, 0.203730, -0.727724,
		0.376639, 0.746855, 0.548042,
		0.655157, -0.633009, 0.412393,
		30.860971, 39.037472, 51.635811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.116337, 39.781986, 51.462925>,  <30.402363, 39.480579, 51.347134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.116337, 39.781986, 51.462925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.193335, 39.390015, 51.442181>,  <31.239532, 39.154831, 51.429733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.193335, 39.390015, 51.442181>,  <31.116337, 39.781986, 51.462925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.193335, 39.390015, 51.442181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589540, 0.157729, -0.792190,
		0.784467, 0.121921, 0.608068,
		0.192495, -0.979927, -0.051856,
		31.251083, 39.096035, 51.426624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.834328, 39.698009, 51.220200>,  <31.116337, 39.781986, 51.462925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.834328, 39.698009, 51.220200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.681051, 39.333393, 51.160534>,  <31.589085, 39.114624, 51.124733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.681051, 39.333393, 51.160534>,  <31.834328, 39.698009, 51.220200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.681051, 39.333393, 51.160534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487154, -0.062240, -0.871096,
		0.784759, -0.406462, 0.467912,
		-0.383190, -0.911545, -0.149166,
		31.566093, 39.059929, 51.115784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.399117, 39.187481, 50.979267>,  <31.834328, 39.698009, 51.220200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.399117, 39.187481, 50.979267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.048462, 39.037716, 50.858387>,  <31.838070, 38.947857, 50.785858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.048462, 39.037716, 50.858387>,  <32.399117, 39.187481, 50.979267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.048462, 39.037716, 50.858387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358117, -0.088240, -0.929498,
		0.321349, -0.923054, 0.211438,
		-0.876634, -0.374412, -0.302205,
		31.785471, 38.925392, 50.767727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.635395, 38.819725, 50.394863>,  <32.399117, 39.187481, 50.979267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.635395, 38.819725, 50.394863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.238083, 38.783192, 50.366459>,  <31.999695, 38.761272, 50.349415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.238083, 38.783192, 50.366459>,  <32.635395, 38.819725, 50.394863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.238083, 38.783192, 50.366459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077855, -0.073636, -0.994242,
		0.085581, -0.993094, 0.080253,
		-0.993285, -0.091336, -0.071015,
		31.940098, 38.755791, 50.345154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.495060, 38.104767, 50.191307>,  <32.635395, 38.819725, 50.394863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.495060, 38.104767, 50.191307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.206799, 38.357212, 50.076515>,  <32.033844, 38.508678, 50.007641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.206799, 38.357212, 50.076515>,  <32.495060, 38.104767, 50.191307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.206799, 38.357212, 50.076515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219930, -0.184452, -0.957919,
		-0.657492, -0.753439, -0.005876,
		-0.720649, 0.631116, -0.286979,
		31.990604, 38.546547, 49.990421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074821, 37.738998, 49.744244>,  <32.495060, 38.104767, 50.191307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.074821, 37.738998, 49.744244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.026379, 38.131161, 49.682098>,  <31.997314, 38.366459, 49.644810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.026379, 38.131161, 49.682098>,  <32.074821, 37.738998, 49.744244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026379, 38.131161, 49.682098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026830, -0.159695, -0.986802,
		-0.992277, -0.115336, 0.045644,
		-0.121103, 0.980406, -0.155367,
		31.990047, 38.425282, 49.635487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.465755, 37.825089, 49.418892>,  <32.074821, 37.738998, 49.744244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.465755, 37.825089, 49.418892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.678114, 38.153805, 49.336121>,  <31.805529, 38.351032, 49.286457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.678114, 38.153805, 49.336121>,  <31.465755, 37.825089, 49.418892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.678114, 38.153805, 49.336121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119864, -0.168908, -0.978316,
		-0.838919, 0.544185, 0.008830,
		0.530894, 0.821786, -0.206928,
		31.837381, 38.400341, 49.274044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.089607, 38.248108, 48.894135>,  <31.465755, 37.825089, 49.418892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.089607, 38.248108, 48.894135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.477009, 38.340786, 48.857662>,  <31.709450, 38.396393, 48.835777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.477009, 38.340786, 48.857662>,  <31.089607, 38.248108, 48.894135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.477009, 38.340786, 48.857662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041018, -0.212736, -0.976248,
		-0.245594, 0.949241, -0.196532,
		0.968505, 0.231700, -0.091183,
		31.767561, 38.410297, 48.830307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.136389, 38.478912, 48.182465>,  <31.089607, 38.248108, 48.894135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.136389, 38.478912, 48.182465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.503325, 38.385933, 48.311745>,  <31.723486, 38.330147, 48.389313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.503325, 38.385933, 48.311745>,  <31.136389, 38.478912, 48.182465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.503325, 38.385933, 48.311745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182075, -0.476989, -0.859843,
		0.354027, 0.847615, -0.395239,
		0.917341, -0.232444, 0.323196,
		31.778526, 38.316200, 48.408703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.442829, 38.338547, 47.532581>,  <31.136389, 38.478912, 48.182465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.442829, 38.338547, 47.532581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.676220, 38.187553, 47.820210>,  <31.816254, 38.096958, 47.992786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.676220, 38.187553, 47.820210>,  <31.442829, 38.338547, 47.532581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.676220, 38.187553, 47.820210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341375, -0.689395, -0.638904,
		0.736899, 0.618258, -0.273383,
		0.583476, -0.377481, 0.719072,
		31.851263, 38.074310, 48.035931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.161877, 38.192196, 47.233521>,  <31.442829, 38.338547, 47.532581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.161877, 38.192196, 47.233521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.120808, 37.972790, 47.565445>,  <32.096169, 37.841148, 47.764599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.120808, 37.972790, 47.565445>,  <32.161877, 38.192196, 47.233521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.120808, 37.972790, 47.565445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358093, -0.798673, -0.483622,
		0.928024, 0.247497, 0.278419,
		-0.102671, -0.548513, 0.829815,
		32.090008, 37.808235, 47.814388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.863781, 37.905201, 47.333199>,  <32.161877, 38.192196, 47.233521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.863781, 37.905201, 47.333199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.598598, 37.673157, 47.522495>,  <32.439487, 37.533932, 47.636074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.598598, 37.673157, 47.522495>,  <32.863781, 37.905201, 47.333199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598598, 37.673157, 47.522495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383382, -0.806017, -0.450949,
		0.643041, -0.117528, 0.756760,
		-0.662960, -0.580107, 0.473244,
		32.399712, 37.499126, 47.664467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139378, 37.334518, 47.250839>,  <32.863781, 37.905201, 47.333199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139378, 37.334518, 47.250839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.803658, 37.199028, 47.420944>,  <32.602226, 37.117733, 47.523006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.803658, 37.199028, 47.420944>,  <33.139378, 37.334518, 47.250839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.803658, 37.199028, 47.420944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237347, -0.932006, -0.273917,
		0.489132, -0.128962, 0.862623,
		-0.839295, -0.338722, 0.425265,
		32.551868, 37.097412, 47.548523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341011, 36.890522, 47.782776>,  <33.139378, 37.334518, 47.250839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341011, 36.890522, 47.782776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.981541, 36.776993, 47.649017>,  <32.765858, 36.708874, 47.568764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.981541, 36.776993, 47.649017>,  <33.341011, 36.890522, 47.782776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981541, 36.776993, 47.649017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386342, -0.873177, -0.297157,
		-0.207646, -0.396239, 0.894359,
		-0.898679, -0.283824, -0.334396,
		32.711937, 36.691845, 47.548698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266319, 36.265022, 48.094627>,  <33.341011, 36.890522, 47.782776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.266319, 36.265022, 48.094627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.018211, 36.286766, 47.781628>,  <32.869347, 36.299812, 47.593826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.018211, 36.286766, 47.781628>,  <33.266319, 36.265022, 48.094627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018211, 36.286766, 47.781628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471828, -0.771078, -0.427572,
		-0.626610, -0.634417, 0.452631,
		-0.620273, 0.054357, -0.782501,
		32.832130, 36.303074, 47.546879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.078094, 35.530212, 47.916187>,  <33.266319, 36.265022, 48.094627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.078094, 35.530212, 47.916187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.023415, 35.759232, 47.592831>,  <32.990608, 35.896641, 47.398815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.023415, 35.759232, 47.592831>,  <33.078094, 35.530212, 47.916187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023415, 35.759232, 47.592831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498862, -0.665239, -0.555512,
		-0.855833, -0.479217, -0.194684,
		-0.136699, 0.572546, -0.808396,
		32.982407, 35.930996, 47.350311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018452, 34.949314, 47.352768>,  <33.078094, 35.530212, 47.916187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018452, 34.949314, 47.352768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.090237, 35.288654, 47.153526>,  <33.133308, 35.492256, 47.033981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.090237, 35.288654, 47.153526>,  <33.018452, 34.949314, 47.352768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.090237, 35.288654, 47.153526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529394, -0.510037, -0.677941,
		-0.829177, -0.142027, -0.540641,
		0.179461, 0.848346, -0.498099,
		33.144073, 35.543159, 47.004097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.885094, 34.742565, 46.706615>,  <33.018452, 34.949314, 47.352768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.885094, 34.742565, 46.706615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.122711, 35.064243, 46.698780>,  <33.265282, 35.257248, 46.694080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.122711, 35.064243, 46.698780>,  <32.885094, 34.742565, 46.706615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122711, 35.064243, 46.698780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590365, -0.452375, -0.668450,
		-0.546422, 0.385529, -0.743499,
		0.594047, 0.804192, -0.019585,
		33.300926, 35.305500, 46.692905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.957264, 34.769562, 46.061062>,  <32.885094, 34.742565, 46.706615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.957264, 34.769562, 46.061062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.272480, 34.966316, 46.209145>,  <33.461609, 35.084370, 46.297993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.272480, 34.966316, 46.209145>,  <32.957264, 34.769562, 46.061062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.272480, 34.966316, 46.209145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567355, -0.346833, -0.746871,
		-0.238973, 0.798598, -0.552388,
		0.788036, 0.491882, 0.370205,
		33.508892, 35.113880, 46.320206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267120, 35.073666, 45.490261>,  <32.957264, 34.769562, 46.061062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267120, 35.073666, 45.490261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.548267, 35.049961, 45.773800>,  <33.716953, 35.035740, 45.943924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.548267, 35.049961, 45.773800>,  <33.267120, 35.073666, 45.490261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548267, 35.049961, 45.773800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652618, -0.342700, -0.675757,
		0.282969, 0.937574, -0.202197,
		0.702865, -0.059261, 0.708851,
		33.759129, 35.032185, 45.986454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827427, 35.395615, 45.113029>,  <33.267120, 35.073666, 45.490261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827427, 35.395615, 45.113029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.912849, 35.150394, 45.417286>,  <33.964104, 35.003262, 45.599838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.912849, 35.150394, 45.417286>,  <33.827427, 35.395615, 45.113029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.912849, 35.150394, 45.417286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584102, -0.543980, -0.602420,
		0.783083, 0.572939, 0.241912,
		0.213555, -0.613047, 0.760637,
		33.976917, 34.966480, 45.645477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597004, 35.365845, 45.143280>,  <33.827427, 35.395615, 45.113029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597004, 35.365845, 45.143280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.433311, 35.042725, 45.312981>,  <34.335094, 34.848854, 45.414803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.433311, 35.042725, 45.312981>,  <34.597004, 35.365845, 45.143280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.433311, 35.042725, 45.312981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709853, -0.574003, -0.408203,
		0.573268, 0.134107, 0.808319,
		-0.409235, -0.807797, 0.424253,
		34.310539, 34.800385, 45.440258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023289, 34.960411, 45.399185>,  <34.597004, 35.365845, 45.143280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023289, 34.960411, 45.399185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.739464, 34.683468, 45.346783>,  <34.569168, 34.517303, 45.315342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.739464, 34.683468, 45.346783>,  <35.023289, 34.960411, 45.399185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739464, 34.683468, 45.346783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632111, -0.543275, -0.552529,
		0.311373, -0.474866, 0.823134,
		-0.709565, -0.692355, -0.131007,
		34.526596, 34.475761, 45.307480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723297, 34.505238, 44.850395>,  <35.023289, 34.960411, 45.399185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723297, 34.505238, 44.850395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.673443, 34.719757, 44.516483>,  <34.643528, 34.848469, 44.316135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.673443, 34.719757, 44.516483>,  <34.723297, 34.505238, 44.850395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673443, 34.719757, 44.516483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957429, -0.155777, -0.243029,
		-0.260375, -0.829529, -0.494051,
		-0.124638, 0.536298, -0.834776,
		34.636051, 34.880646, 44.266052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035107, 33.792294, 44.631111>,  <34.723297, 34.505238, 44.850395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035107, 33.792294, 44.631111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.083336, 33.975227, 44.278679>,  <35.112274, 34.084988, 44.067219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.083336, 33.975227, 44.278679>,  <35.035107, 33.792294, 44.631111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.083336, 33.975227, 44.278679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845850, 0.417244, 0.332332,
		0.519614, -0.785333, -0.336531,
		0.120576, 0.457339, -0.881080,
		35.119507, 34.112431, 44.014355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.585201, 33.530537, 44.086140>,  <35.035107, 33.792294, 44.631111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.585201, 33.530537, 44.086140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.512653, 33.922199, 44.122688>,  <35.469124, 34.157196, 44.144619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.512653, 33.922199, 44.122688>,  <35.585201, 33.530537, 44.086140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512653, 33.922199, 44.122688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801290, 0.093281, 0.590960,
		0.570121, 0.180399, -0.801510,
		-0.181374, 0.979160, 0.091371,
		35.458241, 34.215946, 44.150101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223866, 33.823429, 43.896999>,  <35.585201, 33.530537, 44.086140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223866, 33.823429, 43.896999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.006210, 34.085522, 44.106602>,  <35.875618, 34.242779, 44.232365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.006210, 34.085522, 44.106602>,  <36.223866, 33.823429, 43.896999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006210, 34.085522, 44.106602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809572, 0.246091, 0.532947,
		0.220250, 0.714219, -0.664365,
		-0.544135, 0.655233, 0.524010,
		35.842968, 34.282093, 44.263805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510113, 34.467491, 43.795822>,  <36.223866, 33.823429, 43.896999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510113, 34.467491, 43.795822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.342659, 34.448605, 44.158592>,  <36.242188, 34.437275, 44.376255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.342659, 34.448605, 44.158592>,  <36.510113, 34.467491, 43.795822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342659, 34.448605, 44.158592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879981, 0.225736, 0.417943,
		-0.224459, 0.973044, -0.052955,
		-0.418630, -0.047212, 0.906929,
		36.217072, 34.434441, 44.430672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752514, 35.095322, 44.128460>,  <36.510113, 34.467491, 43.795822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752514, 35.095322, 44.128460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.634178, 34.875183, 44.440765>,  <36.563175, 34.743099, 44.628151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.634178, 34.875183, 44.440765>,  <36.752514, 35.095322, 44.128460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634178, 34.875183, 44.440765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790944, 0.317174, 0.523268,
		-0.535617, 0.772347, 0.341459,
		-0.295842, -0.550346, 0.780767,
		36.545425, 34.710079, 44.674995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836632, 35.528763, 44.727818>,  <36.752514, 35.095322, 44.128460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836632, 35.528763, 44.727818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.815678, 35.158379, 44.877411>,  <36.803104, 34.936150, 44.967167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.815678, 35.158379, 44.877411>,  <36.836632, 35.528763, 44.727818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815678, 35.158379, 44.877411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759526, 0.206197, 0.616931,
		-0.648364, 0.316366, 0.692485,
		-0.052387, -0.925956, 0.373979,
		36.799961, 34.880592, 44.989605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870140, 35.649521, 45.445343>,  <36.836632, 35.528763, 44.727818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870140, 35.649521, 45.445343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.980797, 35.274113, 45.362728>,  <37.047192, 35.048870, 45.313160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.980797, 35.274113, 45.362728>,  <36.870140, 35.649521, 45.445343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980797, 35.274113, 45.362728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761288, 0.082879, 0.643096,
		-0.586438, -0.335140, 0.737409,
		0.276643, -0.938516, -0.206535,
		37.063789, 34.992558, 45.300766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884853, 35.404667, 46.024010>,  <36.870140, 35.649521, 45.445343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884853, 35.404667, 46.024010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.111584, 35.164909, 45.797935>,  <37.247620, 35.021053, 45.662289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.111584, 35.164909, 45.797935>,  <36.884853, 35.404667, 46.024010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111584, 35.164909, 45.797935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756114, 0.106097, 0.645783,
		-0.327113, -0.793392, 0.513348,
		0.566824, -0.599393, -0.565189,
		37.281631, 34.985092, 45.628380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353519, 35.154865, 46.461475>,  <36.884853, 35.404667, 46.024010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353519, 35.154865, 46.461475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.546455, 35.052784, 46.126282>,  <37.662216, 34.991535, 45.925167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.546455, 35.052784, 46.126282>,  <37.353519, 35.154865, 46.461475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546455, 35.052784, 46.126282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873175, 0.063530, 0.483249,
		-0.070092, -0.964797, 0.253485,
		0.482341, -0.255209, -0.837984,
		37.691158, 34.976223, 45.874886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901119, 34.746948, 46.671577>,  <37.353519, 35.154865, 46.461475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901119, 34.746948, 46.671577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.000225, 34.896137, 46.313915>,  <38.059689, 34.985649, 46.099319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.000225, 34.896137, 46.313915>,  <37.901119, 34.746948, 46.671577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000225, 34.896137, 46.313915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952813, 0.073274, 0.294582,
		0.175389, -0.924945, -0.337217,
		0.247763, 0.372971, -0.894151,
		38.074554, 35.008030, 46.045670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508488, 34.446095, 46.410973>,  <37.901119, 34.746948, 46.671577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508488, 34.446095, 46.410973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.486328, 34.797726, 46.221592>,  <38.473034, 35.008705, 46.107964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.486328, 34.797726, 46.221592>,  <38.508488, 34.446095, 46.410973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.486328, 34.797726, 46.221592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927514, 0.220861, 0.301559,
		0.369660, -0.422429, -0.827590,
		-0.055394, 0.879076, -0.473452,
		38.469711, 35.061447, 46.079556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150520, 34.514221, 46.115719>,  <38.508488, 34.446095, 46.410973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150520, 34.514221, 46.115719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.988144, 34.879452, 46.100159>,  <38.890720, 35.098591, 46.090824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.988144, 34.879452, 46.100159>,  <39.150520, 34.514221, 46.115719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988144, 34.879452, 46.100159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857736, 0.395336, 0.328631,
		0.315443, 0.100039, -0.943657,
		-0.405938, 0.913073, -0.038899,
		38.866364, 35.153374, 46.088490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654476, 34.851162, 45.746078>,  <39.150520, 34.514221, 46.115719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654476, 34.851162, 45.746078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.446609, 35.142601, 45.924561>,  <39.321892, 35.317463, 46.031651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.446609, 35.142601, 45.924561>,  <39.654476, 34.851162, 45.746078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.446609, 35.142601, 45.924561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854277, 0.435337, 0.284064,
		0.012716, 0.528803, -0.848649,
		-0.519662, 0.728594, 0.446209,
		39.290710, 35.361179, 46.058422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.994164, 35.427841, 45.411118>,  <39.654476, 34.851162, 45.746078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.994164, 35.427841, 45.411118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.829178, 35.525539, 45.762165>,  <39.730186, 35.584160, 45.972794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.829178, 35.525539, 45.762165>,  <39.994164, 35.427841, 45.411118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829178, 35.525539, 45.762165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823838, 0.511176, 0.244927,
		-0.388794, 0.824040, -0.412065,
		-0.412468, 0.244249, 0.877618,
		39.705437, 35.598816, 46.025452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037338, 36.178822, 45.406906>,  <39.994164, 35.427841, 45.411118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.037338, 36.178822, 45.406906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.003132, 36.093960, 45.796303>,  <39.982609, 36.043041, 46.029942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.003132, 36.093960, 45.796303>,  <40.037338, 36.178822, 45.406906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.003132, 36.093960, 45.796303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716713, 0.665619, 0.208022,
		-0.692104, 0.715501, 0.095130,
		-0.085520, -0.212153, 0.973487,
		39.977474, 36.030315, 46.088348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.731766, 35.715908, 45.590096>,  <40.037338, 36.178822, 45.406906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.731766, 35.715908, 45.590096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.819370, 35.456757, 45.881927>,  <40.871933, 35.301266, 46.057026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.819370, 35.456757, 45.881927>,  <40.731766, 35.715908, 45.590096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.819370, 35.456757, 45.881927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003043, -0.748181, -0.663488,
		0.975718, 0.143089, -0.165828,
		0.219007, -0.647882, 0.729578,
		40.885071, 35.262390, 46.100800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.096870, 35.119305, 45.229774>,  <40.731766, 35.715908, 45.590096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.096870, 35.119305, 45.229774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.003368, 34.978733, 45.592400>,  <40.947266, 34.894390, 45.809975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.003368, 34.978733, 45.592400>,  <41.096870, 35.119305, 45.229774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.003368, 34.978733, 45.592400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206190, -0.929105, -0.307002,
		0.950181, 0.115160, 0.289646,
		-0.233758, -0.351429, 0.906562,
		40.933243, 34.873302, 45.864368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403645, 35.022926, 44.851513>,  <41.096870, 35.119305, 45.229774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.403645, 35.022926, 44.851513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.125114, 35.030457, 44.564522>,  <39.957996, 35.034973, 44.392326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.125114, 35.030457, 44.564522>,  <40.403645, 35.022926, 44.851513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.125114, 35.030457, 44.564522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699064, 0.244243, -0.672053,
		0.162587, -0.969531, -0.183234,
		-0.696330, 0.018825, -0.717475,
		39.916214, 35.036102, 44.349277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.859009, 34.806255, 44.411175>,  <40.403645, 35.022926, 44.851513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.859009, 34.806255, 44.411175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.539177, 34.969257, 44.234715>,  <40.347279, 35.067059, 44.128838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.539177, 34.969257, 44.234715>,  <40.859009, 34.806255, 44.411175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.539177, 34.969257, 44.234715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572883, 0.297097, -0.763897,
		-0.180228, -0.863523, -0.471005,
		-0.799577, 0.407507, -0.441152,
		40.299305, 35.091511, 44.102367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.057369, 34.715130, 43.613285>,  <40.859009, 34.806255, 44.411175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.057369, 34.715130, 43.613285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.763523, 34.985973, 43.630562>,  <40.587215, 35.148479, 43.640926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.763523, 34.985973, 43.630562>,  <41.057369, 34.715130, 43.613285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.763523, 34.985973, 43.630562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275061, 0.355401, -0.893326,
		-0.620227, -0.644372, -0.447329,
		-0.734615, 0.677108, 0.043188,
		40.543137, 35.189106, 43.643517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514389, 34.596951, 43.102837>,  <41.057369, 34.715130, 43.613285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.514389, 34.596951, 43.102837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.590553, 34.981438, 43.182636>,  <40.636250, 35.212132, 43.230515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.590553, 34.981438, 43.182636>,  <40.514389, 34.596951, 43.102837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.590553, 34.981438, 43.182636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344150, 0.124964, -0.930562,
		-0.919405, 0.245842, -0.307010,
		0.190406, 0.961221, 0.199499,
		40.647675, 35.269806, 43.242485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.802803, 34.806873, 42.467068>,  <40.514389, 34.596951, 43.102837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.802803, 34.806873, 42.467068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.866310, 35.121185, 42.706181>,  <40.904415, 35.309772, 42.849648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.866310, 35.121185, 42.706181>,  <40.802803, 34.806873, 42.467068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.866310, 35.121185, 42.706181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506585, 0.454854, -0.732447,
		-0.847446, 0.419117, -0.325848,
		0.158767, 0.785779, 0.597782,
		40.913940, 35.356918, 42.885517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.716774, 35.551682, 42.387363>,  <40.802803, 34.806873, 42.467068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.716774, 35.551682, 42.387363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.941177, 35.579720, 42.057430>,  <41.075821, 35.596542, 41.859470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.941177, 35.579720, 42.057430>,  <40.716774, 35.551682, 42.387363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.941177, 35.579720, 42.057430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774423, -0.307597, -0.552859,
		-0.292469, 0.948931, -0.118283,
		0.561009, 0.070093, -0.824837,
		41.109482, 35.600746, 41.809978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304741, 35.729557, 41.842339>,  <40.716774, 35.551682, 42.387363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.304741, 35.729557, 41.842339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.624271, 35.576134, 41.656967>,  <40.815990, 35.484081, 41.545746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.624271, 35.576134, 41.656967>,  <40.304741, 35.729557, 41.842339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.624271, 35.576134, 41.656967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598683, -0.431574, -0.674776,
		0.058813, 0.816472, -0.574381,
		0.798824, -0.383558, -0.463426,
		40.863918, 35.461067, 41.517941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.178497, 35.866001, 41.094040>,  <40.304741, 35.729557, 41.842339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.178497, 35.866001, 41.094040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.428146, 35.556263, 41.135738>,  <40.577934, 35.370422, 41.160759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.428146, 35.556263, 41.135738>,  <40.178497, 35.866001, 41.094040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.428146, 35.556263, 41.135738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529998, -0.517610, -0.671700,
		0.574088, 0.363968, -0.733451,
		0.624120, -0.774343, 0.104251,
		40.615383, 35.323959, 41.167015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.484417, 35.652554, 40.445484>,  <40.178497, 35.866001, 41.094040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.484417, 35.652554, 40.445484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.447212, 35.353378, 40.708370>,  <40.424889, 35.173874, 40.866100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.447212, 35.353378, 40.708370>,  <40.484417, 35.652554, 40.445484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447212, 35.353378, 40.708370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462032, -0.552280, -0.693911,
		0.881972, -0.368198, -0.294204,
		-0.093014, -0.747941, 0.657215,
		40.419308, 35.128994, 40.905537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.538612, 34.932579, 40.297367>,  <40.484417, 35.652554, 40.445484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.538612, 34.932579, 40.297367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.244110, 34.980759, 40.563725>,  <40.067410, 35.009666, 40.723537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.244110, 34.980759, 40.563725>,  <40.538612, 34.932579, 40.297367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.244110, 34.980759, 40.563725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657986, -0.357244, -0.662896,
		0.158042, -0.926212, 0.342278,
		-0.736259, 0.120449, 0.665895,
		40.023232, 35.016895, 40.763493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.063805, 35.221718, 39.866753>,  <40.538612, 34.932579, 40.297367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.063805, 35.221718, 39.866753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.228867, 34.881737, 39.997780>,  <41.327904, 34.677750, 40.076397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.228867, 34.881737, 39.997780>,  <41.063805, 35.221718, 39.866753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.228867, 34.881737, 39.997780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865086, 0.253090, -0.433095,
		0.285206, 0.462093, 0.839719,
		0.412654, -0.849951, 0.327567,
		41.352661, 34.626751, 40.096050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.648930, 35.366646, 40.227047>,  <41.063805, 35.221718, 39.866753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.648930, 35.366646, 40.227047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.694481, 35.009773, 40.052212>,  <41.721809, 34.795650, 39.947311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.694481, 35.009773, 40.052212>,  <41.648930, 35.366646, 40.227047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.694481, 35.009773, 40.052212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750015, 0.365727, -0.551109,
		0.651544, -0.265068, 0.710795,
		0.113876, -0.892178, -0.437092,
		41.728645, 34.742119, 39.921085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.389450, 35.033947, 40.418243>,  <41.648930, 35.366646, 40.227047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.389450, 35.033947, 40.418243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.215149, 34.972042, 40.063580>,  <42.110569, 34.934898, 39.850780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.215149, 34.972042, 40.063580>,  <42.389450, 35.033947, 40.418243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.215149, 34.972042, 40.063580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686170, 0.580402, -0.438525,
		0.582494, -0.799486, -0.146706,
		-0.435743, -0.154773, -0.886664,
		42.084423, 34.925613, 39.797581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.930782, 34.971886, 39.962769>,  <42.389450, 35.033947, 40.418243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.930782, 34.971886, 39.962769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.594425, 35.084003, 39.777584>,  <42.392612, 35.151276, 39.666473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.594425, 35.084003, 39.777584>,  <42.930782, 34.971886, 39.962769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.594425, 35.084003, 39.777584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514771, 0.678303, -0.524325,
		0.167060, -0.679219, -0.714669,
		-0.840894, 0.280297, -0.462959,
		42.342155, 35.168091, 39.638695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.121254, 35.051876, 39.198235>,  <42.930782, 34.971886, 39.962769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.121254, 35.051876, 39.198235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.791737, 35.252621, 39.303688>,  <42.594028, 35.373070, 39.366959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.791737, 35.252621, 39.303688>,  <43.121254, 35.051876, 39.198235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.791737, 35.252621, 39.303688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298132, 0.779076, -0.551505,
		-0.482169, -0.375728, -0.791417,
		-0.823790, 0.501865, 0.263630,
		42.544598, 35.403179, 39.382778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.741268, 35.160240, 38.546253>,  <43.121254, 35.051876, 39.198235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.741268, 35.160240, 38.546253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.699726, 35.420589, 38.847073>,  <42.674801, 35.576797, 39.027565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.699726, 35.420589, 38.847073>,  <42.741268, 35.160240, 38.546253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.699726, 35.420589, 38.847073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446490, 0.706175, -0.549512,
		-0.888742, 0.278716, -0.363944,
		-0.103851, 0.650872, 0.752051,
		42.668571, 35.615852, 39.072689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.533161, 35.716457, 38.215424>,  <42.741268, 35.160240, 38.546253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.533161, 35.716457, 38.215424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.707230, 35.833260, 38.556095>,  <42.811672, 35.903339, 38.760498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.707230, 35.833260, 38.556095>,  <42.533161, 35.716457, 38.215424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.707230, 35.833260, 38.556095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260743, 0.864535, -0.429641,
		-0.861763, 0.409039, 0.300087,
		0.435176, 0.292003, 0.851678,
		42.837784, 35.920860, 38.811600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.301418, 36.447601, 38.419800>,  <42.533161, 35.716457, 38.215424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.301418, 36.447601, 38.419800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.655231, 36.351109, 38.579506>,  <42.867519, 36.293213, 38.675331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.655231, 36.351109, 38.579506>,  <42.301418, 36.447601, 38.419800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.655231, 36.351109, 38.579506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349754, 0.909311, -0.225444,
		-0.308673, 0.339057, 0.888685,
		0.884530, -0.241233, 0.399266,
		42.920589, 36.278740, 38.699287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.516174, 37.105930, 38.399712>,  <42.301418, 36.447601, 38.419800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.516174, 37.105930, 38.399712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.829418, 36.890152, 38.523479>,  <43.017365, 36.760685, 38.597740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.829418, 36.890152, 38.523479>,  <42.516174, 37.105930, 38.399712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.829418, 36.890152, 38.523479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576893, 0.815959, -0.037495,
		-0.232251, 0.207867, 0.950185,
		0.783105, -0.539447, 0.309424,
		43.064350, 36.728317, 38.616306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.888050, 37.503544, 38.960243>,  <42.516174, 37.105930, 38.399712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.888050, 37.503544, 38.960243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.127113, 37.252811, 38.760292>,  <43.270554, 37.102371, 38.640320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.127113, 37.252811, 38.760292>,  <42.888050, 37.503544, 38.960243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.127113, 37.252811, 38.760292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591083, 0.765738, -0.253509,
		0.541684, -0.143958, 0.828163,
		0.597661, -0.626834, -0.499879,
		43.306412, 37.064762, 38.610329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.520744, 37.817822, 38.716782>,  <42.888050, 37.503544, 38.960243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.520744, 37.817822, 38.716782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.593342, 37.472595, 38.528236>,  <43.636902, 37.265461, 38.415108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.593342, 37.472595, 38.528236>,  <43.520744, 37.817822, 38.716782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.593342, 37.472595, 38.528236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794059, 0.411378, -0.447480,
		0.580111, -0.293072, 0.759987,
		0.181498, -0.863062, -0.471362,
		43.647793, 37.213676, 38.386829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.271046, 37.737526, 38.484562>,  <43.520744, 37.817822, 38.716782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.271046, 37.737526, 38.484562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.076813, 37.506241, 38.222301>,  <43.960274, 37.367470, 38.064945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.076813, 37.506241, 38.222301>,  <44.271046, 37.737526, 38.484562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.076813, 37.506241, 38.222301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554483, 0.376117, -0.742351,
		0.675837, -0.724022, 0.137972,
		-0.485584, -0.578212, -0.655652,
		43.931137, 37.332779, 38.025604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.562927, 37.946388, 37.894726>,  <44.271046, 37.737526, 38.484562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.562927, 37.946388, 37.894726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.381126, 37.629662, 37.731533>,  <44.272045, 37.439625, 37.633617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.381126, 37.629662, 37.731533>,  <44.562927, 37.946388, 37.894726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.381126, 37.629662, 37.731533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431830, 0.204730, -0.878413,
		0.779071, -0.575419, 0.248882,
		-0.454502, -0.791820, -0.407982,
		44.244778, 37.392117, 37.609138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.930862, 37.705212, 37.218933>,  <44.562927, 37.946388, 37.894726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.930862, 37.705212, 37.218933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.569263, 37.534534, 37.208157>,  <44.352306, 37.432129, 37.201691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.569263, 37.534534, 37.208157>,  <44.930862, 37.705212, 37.218933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.569263, 37.534534, 37.208157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113740, -0.179276, -0.977202,
		0.412140, -0.886448, 0.210597,
		-0.903993, -0.426697, -0.026938,
		44.298065, 37.406525, 37.200077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.000919, 37.099491, 36.924339>,  <44.930862, 37.705212, 37.218933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.000919, 37.099491, 36.924339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.615707, 37.184380, 36.857956>,  <44.384583, 37.235313, 36.818127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.615707, 37.184380, 36.857956>,  <45.000919, 37.099491, 36.924339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.615707, 37.184380, 36.857956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076439, -0.375470, -0.923677,
		-0.258333, -0.902212, 0.345366,
		-0.963027, 0.212217, -0.165960,
		44.326797, 37.248043, 36.808167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.548527, 36.602810, 36.870502>,  <45.000919, 37.099491, 36.924339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.548527, 36.602810, 36.870502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.416397, 36.897911, 36.635010>,  <44.337120, 37.074970, 36.493713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.416397, 36.897911, 36.635010>,  <44.548527, 36.602810, 36.870502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.416397, 36.897911, 36.635010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168407, -0.567672, -0.805846,
		-0.928721, -0.365340, 0.063275,
		-0.330328, 0.737750, -0.588735,
		44.317299, 37.119236, 36.458389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.075401, 36.269493, 36.394718>,  <44.548527, 36.602810, 36.870502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.075401, 36.269493, 36.394718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.202278, 36.618484, 36.246033>,  <44.278404, 36.827881, 36.156822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.202278, 36.618484, 36.246033>,  <44.075401, 36.269493, 36.394718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.202278, 36.618484, 36.246033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099655, -0.420450, -0.901826,
		-0.943112, 0.249005, -0.220309,
		0.317188, 0.872478, -0.371717,
		44.297436, 36.880226, 36.134518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.181084, 35.875179, 35.645958>,  <44.075401, 36.269493, 36.394718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.181084, 35.875179, 35.645958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.475800, 35.668110, 35.471992>,  <44.652630, 35.543869, 35.367611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.475800, 35.668110, 35.471992>,  <44.181084, 35.875179, 35.645958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.475800, 35.668110, 35.471992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397797, 0.188235, -0.897956,
		0.546715, 0.834615, -0.067239,
		0.736791, -0.517673, -0.434918,
		44.696838, 35.512810, 35.341518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.532227, 36.236382, 35.095181>,  <44.181084, 35.875179, 35.645958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.532227, 36.236382, 35.095181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.515461, 35.842106, 35.029877>,  <44.505402, 35.605541, 34.990696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.515461, 35.842106, 35.029877>,  <44.532227, 36.236382, 35.095181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.515461, 35.842106, 35.029877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607938, 0.154832, -0.778741,
		0.792877, 0.066607, -0.605731,
		-0.041917, -0.985693, -0.163256,
		44.502888, 35.546398, 34.980900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.003922, 36.064297, 34.635857>,  <44.532227, 36.236382, 35.095181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.003922, 36.064297, 34.635857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.667233, 35.852097, 34.676006>,  <44.465221, 35.724777, 34.700096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.667233, 35.852097, 34.676006>,  <45.003922, 36.064297, 34.635857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.667233, 35.852097, 34.676006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323724, 0.347093, -0.880187,
		0.432103, -0.773364, -0.463891,
		-0.841718, -0.530504, 0.100376,
		44.414719, 35.692944, 34.706120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.670914, 35.703640, 34.715794>,  <45.003922, 36.064297, 34.635857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.670914, 35.703640, 34.715794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.003365, 35.542271, 34.868885>,  <46.202835, 35.445450, 34.960739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.003365, 35.542271, 34.868885>,  <45.670914, 35.703640, 34.715794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.003365, 35.542271, 34.868885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244245, 0.353491, 0.902989,
		-0.499575, -0.843977, 0.195262,
		0.831125, -0.403419, 0.382732,
		46.252701, 35.421246, 34.983704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.406197, 35.929802, 34.006569>,  <45.670914, 35.703640, 34.715794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.406197, 35.929802, 34.006569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.572369, 36.128342, 33.701660>,  <45.672073, 36.247463, 33.518715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.572369, 36.128342, 33.701660>,  <45.406197, 35.929802, 34.006569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.572369, 36.128342, 33.701660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870300, -0.460621, 0.174376,
		-0.264567, -0.735845, -0.623326,
		0.415431, 0.496347, -0.762271,
		45.696999, 36.277245, 33.472980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.746410, 35.480343, 33.582359>,  <45.406197, 35.929802, 34.006569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.746410, 35.480343, 33.582359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.923717, 35.832882, 33.516945>,  <46.030102, 36.044403, 33.477695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.923717, 35.832882, 33.516945>,  <45.746410, 35.480343, 33.582359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.923717, 35.832882, 33.516945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892291, -0.416406, 0.174420,
		0.085625, -0.223240, -0.970996,
		0.443266, 0.881346, -0.163540,
		46.056698, 36.097286, 33.467884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.337444, 35.332962, 33.136856>,  <45.746410, 35.480343, 33.582359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.337444, 35.332962, 33.136856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.413036, 35.644890, 33.375576>,  <46.458389, 35.832047, 33.518806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.413036, 35.644890, 33.375576>,  <46.337444, 35.332962, 33.136856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.413036, 35.644890, 33.375576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894039, -0.388017, 0.223913,
		0.406180, 0.491249, -0.770515,
		0.188976, 0.779819, 0.596800,
		46.469730, 35.878834, 33.554615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.100651, 35.477394, 33.132420>,  <46.337444, 35.332962, 33.136856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.100651, 35.477394, 33.132420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.921158, 35.580795, 33.474606>,  <46.813461, 35.642834, 33.679916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.921158, 35.580795, 33.474606>,  <47.100651, 35.477394, 33.132420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.921158, 35.580795, 33.474606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627521, -0.590408, 0.507578,
		0.636280, 0.764588, 0.102723,
		-0.448737, 0.258501, 0.855460,
		46.786537, 35.658344, 33.731243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.615345, 35.734200, 33.600746>,  <47.100651, 35.477394, 33.132420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.615345, 35.734200, 33.600746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.294914, 35.604801, 33.802193>,  <47.102657, 35.527161, 33.923061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.294914, 35.604801, 33.802193>,  <47.615345, 35.734200, 33.600746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.294914, 35.604801, 33.802193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577502, -0.638927, 0.508196,
		0.157372, 0.697942, 0.698650,
		-0.801078, -0.323496, 0.503612,
		47.054592, 35.507751, 33.953278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.750660, 35.844501, 34.315346>,  <47.615345, 35.734200, 33.600746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.750660, 35.844501, 34.315346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.522278, 35.520157, 34.263931>,  <47.385250, 35.325550, 34.233082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.522278, 35.520157, 34.263931>,  <47.750660, 35.844501, 34.315346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.522278, 35.520157, 34.263931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668328, -0.549988, 0.500849,
		-0.476812, 0.200056, 0.855937,
		-0.570953, -0.810858, -0.128538,
		47.350990, 35.276901, 34.225368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.833385, 35.471111, 35.012421>,  <47.750660, 35.844501, 34.315346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.833385, 35.471111, 35.012421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.720623, 35.225708, 34.717358>,  <47.652966, 35.078468, 34.540321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.720623, 35.225708, 34.717358>,  <47.833385, 35.471111, 35.012421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.720623, 35.225708, 34.717358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688815, -0.664617, 0.289514,
		-0.667877, -0.426491, 0.609955,
		-0.281911, -0.613506, -0.737656,
		47.636051, 35.041656, 34.496059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.571896, 34.933250, 35.297230>,  <47.833385, 35.471111, 35.012421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.571896, 34.933250, 35.297230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.744637, 34.876400, 34.940960>,  <47.848282, 34.842289, 34.727200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.744637, 34.876400, 34.940960>,  <47.571896, 34.933250, 35.297230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.744637, 34.876400, 34.940960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476585, -0.802431, 0.359125,
		-0.765746, -0.579573, -0.278799,
		0.431856, -0.142127, -0.890674,
		47.874195, 34.833763, 34.673759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<31.232054, 35.430748, 53.630966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.400225, 35.420132, 53.993740>,  <31.501127, 35.413761, 54.211407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.400225, 35.420132, 53.993740>,  <31.232054, 35.430748, 53.630966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.400225, 35.420132, 53.993740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865633, -0.287789, -0.409704,
		0.271881, 0.957326, -0.098018,
		0.420429, -0.026544, 0.906937,
		31.526354, 35.412170, 54.265820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.757809, 35.917496, 53.650299>,  <31.232054, 35.430748, 53.630966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.757809, 35.917496, 53.650299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.886402, 35.691032, 53.953907>,  <31.963558, 35.555157, 54.136074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.886402, 35.691032, 53.953907>,  <31.757809, 35.917496, 53.650299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.886402, 35.691032, 53.953907> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889063, -0.095413, -0.447731,
		0.325906, 0.818759, 0.472673,
		0.321484, -0.566154, 0.759024,
		31.982847, 35.521187, 54.181614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.410957, 36.168770, 53.746559>,  <31.757809, 35.917496, 53.650299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.410957, 36.168770, 53.746559> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.410442, 35.806568, 53.916294>,  <32.410133, 35.589249, 54.018135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.410442, 35.806568, 53.916294>,  <32.410957, 36.168770, 53.746559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.410442, 35.806568, 53.916294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857392, -0.219392, -0.465561,
		0.514663, 0.363219, 0.776656,
		-0.001291, -0.905505, 0.424334,
		32.410053, 35.534916, 54.043594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202217, 36.095657, 53.972767>,  <32.410957, 36.168770, 53.746559>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202217, 36.095657, 53.972767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.018097, 35.742275, 54.007710>,  <32.907623, 35.530247, 54.028675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.018097, 35.742275, 54.007710>,  <33.202217, 36.095657, 53.972767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018097, 35.742275, 54.007710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777086, -0.448543, -0.441528,
		0.429253, -0.135352, 0.892984,
		-0.460303, -0.883453, 0.087358,
		32.880005, 35.477238, 54.033916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661186, 35.702927, 54.340919>,  <33.202217, 36.095657, 53.972767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661186, 35.702927, 54.340919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.419319, 35.489948, 54.103981>,  <33.274197, 35.362164, 53.961819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.419319, 35.489948, 54.103981>,  <33.661186, 35.702927, 54.340919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419319, 35.489948, 54.103981> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795129, -0.446772, -0.410080,
		-0.046300, -0.718957, 0.693511,
		-0.604671, -0.532444, -0.592349,
		33.237919, 35.330215, 53.926277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077309, 35.107662, 54.267040>,  <33.661186, 35.702927, 54.340919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.077309, 35.107662, 54.267040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.810234, 35.104259, 53.969284>,  <33.649990, 35.102219, 53.790630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.810234, 35.104259, 53.969284>,  <34.077309, 35.107662, 54.267040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810234, 35.104259, 53.969284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710499, -0.305768, -0.633796,
		-0.222220, -0.952068, 0.210201,
		-0.667690, -0.008506, -0.744391,
		33.609928, 35.101707, 53.745968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225349, 34.499012, 53.801273>,  <34.077309, 35.107662, 54.267040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225349, 34.499012, 53.801273> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.975044, 34.694107, 53.557789>,  <33.824860, 34.811165, 53.411697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.975044, 34.694107, 53.557789>,  <34.225349, 34.499012, 53.801273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975044, 34.694107, 53.557789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550903, -0.276111, -0.787571,
		-0.552199, -0.828176, -0.095915,
		-0.625765, 0.487736, -0.608713,
		33.787315, 34.840427, 53.375175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063854, 34.047886, 53.230530>,  <34.225349, 34.499012, 53.801273>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063854, 34.047886, 53.230530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.021919, 34.428688, 53.115505>,  <33.996758, 34.657169, 53.046490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.021919, 34.428688, 53.115505>,  <34.063854, 34.047886, 53.230530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021919, 34.428688, 53.115505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672337, -0.145214, -0.725862,
		-0.732785, -0.269430, -0.624847,
		-0.104833, 0.952008, -0.287559,
		33.990471, 34.714291, 53.029236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347107, 33.904385, 52.665897>,  <34.063854, 34.047886, 53.230530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.347107, 33.904385, 52.665897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.323616, 34.302639, 52.694912>,  <34.309521, 34.541592, 52.712322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.323616, 34.302639, 52.694912>,  <34.347107, 33.904385, 52.665897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323616, 34.302639, 52.694912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613190, 0.093319, -0.784404,
		-0.787750, -0.001587, -0.615994,
		-0.058728, 0.995635, 0.072539,
		34.305996, 34.601330, 52.716675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528866, 34.091568, 51.985329>,  <34.347107, 33.904385, 52.665897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528866, 34.091568, 51.985329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.513863, 34.456184, 52.149132>,  <34.504860, 34.674953, 52.247414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.513863, 34.456184, 52.149132>,  <34.528866, 34.091568, 51.985329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513863, 34.456184, 52.149132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354353, 0.395295, -0.847452,
		-0.934359, 0.113325, -0.337831,
		-0.037506, 0.911537, 0.409505,
		34.502609, 34.729645, 52.271984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033596, 34.692188, 51.578339>,  <34.528866, 34.091568, 51.985329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033596, 34.692188, 51.578339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.350773, 34.826172, 51.781925>,  <34.541077, 34.906563, 51.904076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.350773, 34.826172, 51.781925>,  <34.033596, 34.692188, 51.578339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350773, 34.826172, 51.781925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432360, 0.279251, -0.857370,
		-0.429317, 0.899900, 0.076605,
		0.792939, 0.334962, 0.508968,
		34.588654, 34.926662, 51.934616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228115, 35.409275, 51.325073>,  <34.033596, 34.692188, 51.578339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228115, 35.409275, 51.325073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.541965, 35.251743, 51.516598>,  <34.730274, 35.157223, 51.631512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.541965, 35.251743, 51.516598>,  <34.228115, 35.409275, 51.325073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541965, 35.251743, 51.516598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583696, 0.208958, -0.784624,
		0.208958, 0.895116, 0.393831,
		0.784624, -0.393831, 0.478812,
		34.777351, 35.133595, 51.660240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891537, 35.819500, 51.182220>,  <34.228115, 35.409275, 51.325073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891537, 35.819500, 51.182220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.011742, 35.448673, 51.271870>,  <35.083866, 35.226177, 51.325657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.011742, 35.448673, 51.271870>,  <34.891537, 35.819500, 51.182220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011742, 35.448673, 51.271870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608973, 0.005653, -0.793171,
		0.734058, 0.374844, 0.566260,
		0.300517, -0.927070, 0.224121,
		35.101898, 35.170551, 51.339108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428188, 35.758415, 50.695156>,  <34.891537, 35.819500, 51.182220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428188, 35.758415, 50.695156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.430168, 35.393093, 50.858059>,  <35.431355, 35.173901, 50.955799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.430168, 35.393093, 50.858059>,  <35.428188, 35.758415, 50.695156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430168, 35.393093, 50.858059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514152, -0.346981, -0.784380,
		0.857685, 0.213270, 0.467859,
		0.004946, -0.913302, 0.407254,
		35.431652, 35.119102, 50.980236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137135, 35.496971, 50.709000>,  <35.428188, 35.758415, 50.695156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137135, 35.496971, 50.709000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.876488, 35.193645, 50.701447>,  <35.720100, 35.011650, 50.696915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.876488, 35.193645, 50.701447>,  <36.137135, 35.496971, 50.709000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876488, 35.193645, 50.701447> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441789, -0.359165, -0.822084,
		0.616615, -0.544027, 0.569052,
		-0.651619, -0.758311, -0.018879,
		35.681004, 34.966152, 50.695782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552925, 34.871239, 50.562538>,  <36.137135, 35.496971, 50.709000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.552925, 34.871239, 50.562538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.174503, 34.772305, 50.478825>,  <35.947449, 34.712944, 50.428596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.174503, 34.772305, 50.478825>,  <36.552925, 34.871239, 50.562538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174503, 34.772305, 50.478825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285356, -0.330136, -0.899768,
		0.153449, -0.910954, 0.382906,
		-0.946058, -0.247332, -0.209287,
		35.890686, 34.698105, 50.416039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544296, 34.111038, 50.537766>,  <36.552925, 34.871239, 50.562538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544296, 34.111038, 50.537766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.223660, 34.231251, 50.331028>,  <36.031277, 34.303379, 50.206985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.223660, 34.231251, 50.331028>,  <36.544296, 34.111038, 50.537766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223660, 34.231251, 50.331028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448401, -0.269593, -0.852206,
		-0.395452, -0.914877, 0.081346,
		-0.801595, 0.300531, -0.516843,
		35.983181, 34.321411, 50.175976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358582, 33.505180, 49.988873>,  <36.544296, 34.111038, 50.537766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358582, 33.505180, 49.988873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.186348, 33.848297, 49.876598>,  <36.083008, 34.054169, 49.809235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.186348, 33.848297, 49.876598>,  <36.358582, 33.505180, 49.988873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186348, 33.848297, 49.876598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236977, -0.192632, -0.952226,
		-0.870884, -0.476530, -0.120333,
		-0.430584, 0.857795, -0.280687,
		36.057171, 34.105637, 49.792393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747280, 33.257519, 49.642151>,  <36.358582, 33.505180, 49.988873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747280, 33.257519, 49.642151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.840836, 33.621365, 49.504803>,  <35.896969, 33.839672, 49.422394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.840836, 33.621365, 49.504803>,  <35.747280, 33.257519, 49.642151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840836, 33.621365, 49.504803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191362, -0.389324, -0.901003,
		-0.953245, 0.145027, -0.265124,
		0.233888, 0.909612, -0.343369,
		35.911003, 33.894249, 49.401791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558987, 33.205845, 48.969692>,  <35.747280, 33.257519, 49.642151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558987, 33.205845, 48.969692> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.766445, 33.547764, 48.962448>,  <35.890923, 33.752914, 48.958103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.766445, 33.547764, 48.962448>,  <35.558987, 33.205845, 48.969692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766445, 33.547764, 48.962448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370226, -0.243625, -0.896426,
		-0.770672, 0.458227, -0.442824,
		0.518649, 0.854795, -0.018107,
		35.922039, 33.804203, 48.957016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459152, 33.612045, 48.364185>,  <35.558987, 33.205845, 48.969692>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459152, 33.612045, 48.364185> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.808540, 33.759480, 48.491432>,  <36.018173, 33.847939, 48.567780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.808540, 33.759480, 48.491432>,  <35.459152, 33.612045, 48.364185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808540, 33.759480, 48.491432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404995, -0.187373, -0.894914,
		-0.270245, 0.910514, -0.312939,
		0.873468, 0.368585, 0.318117,
		36.070580, 33.870056, 48.586868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661934, 34.185173, 47.928795>,  <35.459152, 33.612045, 48.364185>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661934, 34.185173, 47.928795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.981506, 34.021221, 48.104843>,  <36.173248, 33.922848, 48.210472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.981506, 34.021221, 48.104843>,  <35.661934, 34.185173, 47.928795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981506, 34.021221, 48.104843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232612, -0.464258, -0.854609,
		0.554621, 0.785149, -0.275565,
		0.798929, -0.409884, 0.440123,
		36.221184, 33.898254, 48.236881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480103, 33.638077, 47.449219>,  <35.661934, 34.185173, 47.928795>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480103, 33.638077, 47.449219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.166595, 33.587288, 47.206043>,  <34.978493, 33.556816, 47.060139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.166595, 33.587288, 47.206043>,  <35.480103, 33.638077, 47.449219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166595, 33.587288, 47.206043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610528, 0.337021, 0.716709,
		0.113888, 0.932896, -0.341664,
		-0.783763, -0.126970, -0.607942,
		34.931465, 33.549198, 47.023659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018330, 34.176926, 47.642471>,  <35.480103, 33.638077, 47.449219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018330, 34.176926, 47.642471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.795696, 33.897293, 47.462917>,  <34.662117, 33.729515, 47.355183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.795696, 33.897293, 47.462917>,  <35.018330, 34.176926, 47.642471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795696, 33.897293, 47.462917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683755, 0.078552, 0.725472,
		-0.471901, 0.710717, -0.521720,
		-0.556587, -0.699079, -0.448887,
		34.628719, 33.687569, 47.328251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.410328, 34.390751, 47.696709>,  <35.018330, 34.176926, 47.642471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.410328, 34.390751, 47.696709> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.310951, 34.012478, 47.612843>,  <34.251328, 33.785515, 47.562523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.310951, 34.012478, 47.612843>,  <34.410328, 34.390751, 47.696709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310951, 34.012478, 47.612843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745631, 0.048538, 0.664589,
		-0.618314, 0.321444, -0.717190,
		-0.248439, -0.945684, -0.209667,
		34.236420, 33.728771, 47.549942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702049, 34.403980, 47.719955>,  <34.410328, 34.390751, 47.696709>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702049, 34.403980, 47.719955> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.813877, 34.021133, 47.750336>,  <33.880974, 33.791424, 47.768562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.813877, 34.021133, 47.750336>,  <33.702049, 34.403980, 47.719955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813877, 34.021133, 47.750336> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653093, -0.131584, 0.745759,
		-0.703785, -0.258091, -0.661873,
		0.279565, -0.957118, 0.075951,
		33.897747, 33.733997, 47.773121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224667, 33.896343, 47.484955>,  <33.702049, 34.403980, 47.719955>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224667, 33.896343, 47.484955> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.439571, 33.727428, 47.776989>,  <33.568516, 33.626080, 47.952209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.439571, 33.727428, 47.776989>,  <33.224667, 33.896343, 47.484955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439571, 33.727428, 47.776989> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841632, -0.212183, 0.496623,
		-0.054803, -0.881282, -0.469403,
		0.537264, -0.422281, 0.730087,
		33.600750, 33.600742, 47.996014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.711166, 33.498703, 47.850845>,  <33.224667, 33.896343, 47.484955>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.711166, 33.498703, 47.850845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.034649, 33.465427, 48.083763>,  <33.228741, 33.445461, 48.223515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.034649, 33.465427, 48.083763>,  <32.711166, 33.498703, 47.850845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034649, 33.465427, 48.083763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587903, -0.146303, 0.795591,
		0.019006, -0.985736, -0.167224,
		0.808708, -0.083190, 0.582298,
		33.277260, 33.440472, 48.258453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786560, 32.831299, 48.143181>,  <32.711166, 33.498703, 47.850845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786560, 32.831299, 48.143181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.982632, 33.079395, 48.388138>,  <33.100273, 33.228252, 48.535110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.982632, 33.079395, 48.388138>,  <32.786560, 32.831299, 48.143181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982632, 33.079395, 48.388138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582244, -0.289835, 0.759597,
		0.648626, -0.728901, 0.219061,
		0.490179, 0.620241, 0.612393,
		33.129684, 33.265469, 48.571857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768688, 32.454353, 48.778015>,  <32.786560, 32.831299, 48.143181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.768688, 32.454353, 48.778015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.856720, 32.840130, 48.836548>,  <32.909538, 33.071598, 48.871666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.856720, 32.840130, 48.836548>,  <32.768688, 32.454353, 48.778015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.856720, 32.840130, 48.836548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656318, 0.035417, 0.753652,
		0.721673, -0.261903, 0.640777,
		0.220079, 0.964444, 0.146332,
		32.922745, 33.129463, 48.880447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695641, 32.499771, 49.467865>,  <32.768688, 32.454353, 48.778015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695641, 32.499771, 49.467865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.675236, 32.881325, 49.349541>,  <32.662994, 33.110256, 49.278545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.675236, 32.881325, 49.349541>,  <32.695641, 32.499771, 49.467865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675236, 32.881325, 49.349541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622164, 0.201346, 0.756552,
		0.781223, 0.222638, 0.583201,
		-0.051012, 0.953883, -0.295813,
		32.659931, 33.167488, 49.260796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904774, 32.790226, 50.045258>,  <32.695641, 32.499771, 49.467865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904774, 32.790226, 50.045258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.727577, 33.093990, 49.854652>,  <32.621262, 33.276249, 49.740288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.727577, 33.093990, 49.854652>,  <32.904774, 32.790226, 50.045258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727577, 33.093990, 49.854652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608359, 0.135786, 0.781960,
		0.658529, 0.636289, 0.401840,
		-0.442988, 0.759407, -0.476512,
		32.594681, 33.321812, 49.711700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064270, 33.409237, 50.406895>,  <32.904774, 32.790226, 50.045258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.064270, 33.409237, 50.406895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.738892, 33.509678, 50.197037>,  <32.543663, 33.569942, 50.071121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.738892, 33.509678, 50.197037>,  <33.064270, 33.409237, 50.406895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738892, 33.509678, 50.197037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425199, 0.358744, 0.830968,
		0.396871, 0.899027, -0.185051,
		-0.813449, 0.251103, -0.524641,
		32.494858, 33.585011, 50.039646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922989, 34.133179, 50.560452>,  <33.064270, 33.409237, 50.406895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922989, 34.133179, 50.560452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.584614, 33.958714, 50.437717>,  <32.381588, 33.854034, 50.364079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.584614, 33.958714, 50.437717>,  <32.922989, 34.133179, 50.560452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.584614, 33.958714, 50.437717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515080, 0.519255, 0.681958,
		-0.138119, 0.734940, -0.663917,
		-0.845941, -0.436162, -0.306834,
		32.330833, 33.827866, 50.345669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.368755, 34.675724, 50.413857>,  <32.922989, 34.133179, 50.560452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.368755, 34.675724, 50.413857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.178276, 34.329456, 50.475636>,  <32.063988, 34.121696, 50.512703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.178276, 34.329456, 50.475636>,  <32.368755, 34.675724, 50.413857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.178276, 34.329456, 50.475636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702340, 0.480116, 0.525554,
		-0.529110, 0.141791, -0.836623,
		-0.476195, -0.865670, 0.154449,
		32.035419, 34.069756, 50.521969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.704411, 34.777008, 50.120941>,  <32.368755, 34.675724, 50.413857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.704411, 34.777008, 50.120941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.654575, 34.463757, 50.364643>,  <31.624674, 34.275806, 50.510864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.654575, 34.463757, 50.364643>,  <31.704411, 34.777008, 50.120941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.654575, 34.463757, 50.364643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702462, 0.503274, 0.503252,
		-0.700731, -0.365277, -0.612820,
		-0.124590, -0.783127, 0.609253,
		31.617199, 34.228817, 50.547421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.021370, 34.558254, 50.067104>,  <31.704411, 34.777008, 50.120941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.021370, 34.558254, 50.067104> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.139820, 34.428440, 50.426434>,  <31.210890, 34.350552, 50.642033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.139820, 34.428440, 50.426434>,  <31.021370, 34.558254, 50.067104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.139820, 34.428440, 50.426434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796804, 0.434687, 0.419703,
		-0.526699, -0.840072, -0.129871,
		0.296127, -0.324539, 0.898322,
		31.228659, 34.331078, 50.695930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.398699, 34.420227, 50.387772>,  <31.021370, 34.558254, 50.067104>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.398699, 34.420227, 50.387772> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.650826, 34.419830, 50.698307>,  <30.802101, 34.419590, 50.884628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.650826, 34.419830, 50.698307>,  <30.398699, 34.420227, 50.387772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.650826, 34.419830, 50.698307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746830, 0.272308, 0.606708,
		-0.212005, -0.962210, 0.170898,
		0.630317, -0.000993, 0.776337,
		30.839920, 34.419533, 50.931210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.021730, 34.217735, 50.904449>,  <30.398699, 34.420227, 50.387772>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.021730, 34.217735, 50.904449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.337450, 34.355228, 51.107960>,  <30.526882, 34.437725, 51.230064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.337450, 34.355228, 51.107960>,  <30.021730, 34.217735, 50.904449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.337450, 34.355228, 51.107960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613223, 0.399415, 0.681488,
		0.031041, -0.849890, 0.526046,
		0.789300, 0.343738, 0.508773,
		30.574240, 34.458351, 51.260593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.830351, 34.061985, 51.579563>,  <30.021730, 34.217735, 50.904449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.830351, 34.061985, 51.579563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.084641, 34.370750, 51.578850>,  <30.237215, 34.556011, 51.578423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.084641, 34.370750, 51.578850>,  <29.830351, 34.061985, 51.579563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.084641, 34.370750, 51.578850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561634, 0.464127, 0.684948,
		0.529552, -0.434433, 0.728590,
		0.635722, 0.771917, -0.001787,
		30.275358, 34.602325, 51.578316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<30.080088, 34.154709, 52.365086> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.171949, 34.502926, 52.190994>,  <30.227066, 34.711857, 52.086540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.171949, 34.502926, 52.190994>,  <30.080088, 34.154709, 52.365086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.171949, 34.502926, 52.190994> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431157, 0.491902, 0.756397,
		0.872560, 0.013939, 0.488307,
		0.229656, 0.870539, -0.435224,
		30.240847, 34.764088, 52.060429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.415636, 34.526077, 52.853119>,  <30.080088, 34.154709, 52.365086>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.415636, 34.526077, 52.853119> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.276592, 34.789776, 52.586414>,  <30.193167, 34.947994, 52.426392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.276592, 34.789776, 52.586414>,  <30.415636, 34.526077, 52.853119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.276592, 34.789776, 52.586414> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321938, 0.583960, 0.745216,
		0.880639, 0.473698, 0.009246,
		-0.347608, 0.659243, -0.666759,
		30.172310, 34.987549, 52.386387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.562761, 35.292599, 53.088188>,  <30.415636, 34.526077, 52.853119>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.562761, 35.292599, 53.088188> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.277784, 35.314110, 52.808323>,  <30.106798, 35.327015, 52.640404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.277784, 35.314110, 52.808323>,  <30.562761, 35.292599, 53.088188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.277784, 35.314110, 52.808323> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389047, 0.799527, 0.457601,
		0.584009, 0.598218, -0.548697,
		-0.712443, 0.053774, -0.699666,
		30.064051, 35.330242, 52.598423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.550751, 36.016338, 52.846531>,  <30.562761, 35.292599, 53.088188>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.550751, 36.016338, 52.846531> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.191446, 35.858456, 52.769249>,  <29.975863, 35.763725, 52.722881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.191446, 35.858456, 52.769249>,  <30.550751, 36.016338, 52.846531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.191446, 35.858456, 52.769249> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414080, 0.612963, 0.672915,
		-0.147178, 0.684457, -0.714043,
		-0.898263, -0.394709, -0.193205,
		29.921967, 35.740044, 52.711288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.081749, 36.599052, 52.641953>,  <30.550751, 36.016338, 52.846531>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.081749, 36.599052, 52.641953> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.829195, 36.309341, 52.752789>,  <29.677662, 36.135517, 52.819290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.829195, 36.309341, 52.752789>,  <30.081749, 36.599052, 52.641953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.829195, 36.309341, 52.752789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352531, 0.586343, 0.729331,
		-0.690707, 0.362805, -0.625537,
		-0.631384, -0.724275, 0.277091,
		29.639780, 36.092060, 52.835915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.550070, 36.949352, 53.085323>,  <30.081749, 36.599052, 52.641953>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.550070, 36.949352, 53.085323> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.453718, 36.569351, 53.164791>,  <29.395906, 36.341351, 53.212471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.453718, 36.569351, 53.164791>,  <29.550070, 36.949352, 53.085323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.453718, 36.569351, 53.164791> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595495, 0.306300, 0.742675,
		-0.766396, 0.060591, -0.639504,
		-0.240880, -0.950005, 0.198665,
		29.381454, 36.284351, 53.224392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.828308, 36.840153, 53.036545>,  <29.550070, 36.949352, 53.085323>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.828308, 36.840153, 53.036545> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.969286, 36.557335, 53.281780>,  <29.053873, 36.387646, 53.428921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.969286, 36.557335, 53.281780>,  <28.828308, 36.840153, 53.036545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.969286, 36.557335, 53.281780> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714883, 0.219363, 0.663944,
		-0.603926, -0.672287, -0.428140,
		0.352443, -0.707043, 0.613085,
		29.075020, 36.345222, 53.465706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.225317, 36.434139, 53.241005>,  <28.828308, 36.840153, 53.036545>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.225317, 36.434139, 53.241005> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.515303, 36.383617, 53.511848>,  <28.689293, 36.353302, 53.674355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.515303, 36.383617, 53.511848>,  <28.225317, 36.434139, 53.241005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.515303, 36.383617, 53.511848> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644717, 0.221553, 0.731611,
		-0.242423, -0.966934, 0.079184,
		0.724962, -0.126308, 0.677108,
		28.732792, 36.345726, 53.714981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.892128, 35.966240, 53.685253>,  <28.225317, 36.434139, 53.241005>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.892128, 35.966240, 53.685253> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.168564, 36.191864, 53.866020>,  <28.334425, 36.327240, 53.974480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.168564, 36.191864, 53.866020>,  <27.892128, 35.966240, 53.685253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.168564, 36.191864, 53.866020> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656953, 0.229530, 0.718143,
		0.301348, -0.793190, 0.529187,
		0.691088, 0.564062, 0.451920,
		28.375891, 36.361080, 54.001598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.797874, 35.932621, 54.417397>,  <27.892128, 35.966240, 53.685253>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.797874, 35.932621, 54.417397> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.037380, 36.250683, 54.379013>,  <28.181084, 36.441521, 54.355984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.037380, 36.250683, 54.379013>,  <27.797874, 35.932621, 54.417397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.037380, 36.250683, 54.379013> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600725, 0.525097, 0.602829,
		0.529727, -0.303312, 0.792080,
		0.598764, 0.795157, -0.095951,
		28.217009, 36.489231, 54.350224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.829853, 36.231594, 55.111946>,  <27.797874, 35.932621, 54.417397>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.829853, 36.231594, 55.111946> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.991110, 36.528530, 54.897877>,  <28.087864, 36.706692, 54.769436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.991110, 36.528530, 54.897877>,  <27.829853, 36.231594, 55.111946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.991110, 36.528530, 54.897877> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446051, 0.670023, 0.593387,
		0.799071, -0.000507, 0.601236,
		0.403142, 0.742340, -0.535170,
		28.112053, 36.751232, 54.737328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.991529, 36.640396, 55.619545>,  <27.829853, 36.231594, 55.111946>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.991529, 36.640396, 55.619545> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.997904, 36.862801, 55.287136>,  <28.001728, 36.996243, 55.087692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.997904, 36.862801, 55.287136>,  <27.991529, 36.640396, 55.619545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.997904, 36.862801, 55.287136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509179, 0.719799, 0.471833,
		0.860513, 0.415618, 0.294582,
		0.015937, 0.556014, -0.831020,
		28.002686, 37.029606, 55.037830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.203571, 37.338223, 55.851044>,  <27.991529, 36.640396, 55.619545>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.203571, 37.338223, 55.851044> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.991388, 37.390583, 55.516026>,  <27.864079, 37.422001, 55.315014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.991388, 37.390583, 55.516026>,  <28.203571, 37.338223, 55.851044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.991388, 37.390583, 55.516026> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422056, 0.816063, 0.394853,
		0.735175, 0.562944, -0.377640,
		-0.530458, 0.130900, -0.837543,
		27.832251, 37.429852, 55.264763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.199139, 38.023022, 55.677959>,  <28.203571, 37.338223, 55.851044>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.199139, 38.023022, 55.677959> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.878653, 37.842785, 55.520470>,  <27.686361, 37.734642, 55.425976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.878653, 37.842785, 55.520470>,  <28.199139, 38.023022, 55.677959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.878653, 37.842785, 55.520470> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581223, 0.742463, 0.333059,
		0.142254, 0.495695, -0.856767,
		-0.801214, -0.450594, -0.393727,
		27.638288, 37.707607, 55.402351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.845835, 38.548759, 55.324478>,  <28.199139, 38.023022, 55.677959>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.845835, 38.548759, 55.324478> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.571531, 38.260086, 55.362228>,  <27.406948, 38.086884, 55.384876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.571531, 38.260086, 55.362228>,  <27.845835, 38.548759, 55.324478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.571531, 38.260086, 55.362228> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697554, 0.688696, 0.197778,
		-0.207728, 0.069798, -0.975693,
		-0.685761, -0.721683, 0.094373,
		27.365803, 38.043583, 55.390541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.343815, 38.952511, 55.267170>,  <27.845835, 38.548759, 55.324478>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.343815, 38.952511, 55.267170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.149885, 38.624752, 55.389507>,  <27.033527, 38.428097, 55.462910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.149885, 38.624752, 55.389507>,  <27.343815, 38.952511, 55.267170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.149885, 38.624752, 55.389507> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765613, 0.566664, 0.304513,
		-0.422825, -0.086519, -0.902072,
		-0.484826, -0.819394, 0.305839,
		27.004438, 38.378933, 55.481258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.658487, 39.032772, 55.054672>,  <27.343815, 38.952511, 55.267170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.658487, 39.032772, 55.054672> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.609871, 38.737545, 55.320148>,  <26.580700, 38.560410, 55.479435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.609871, 38.737545, 55.320148>,  <26.658487, 39.032772, 55.054672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.609871, 38.737545, 55.320148> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451736, 0.636521, 0.625121,
		-0.883834, -0.223835, -0.410775,
		-0.121543, -0.738065, 0.663693,
		26.573408, 38.516125, 55.519257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.074070, 39.064789, 55.282085>,  <26.658487, 39.032772, 55.054672>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.074070, 39.064789, 55.282085> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.231228, 38.842014, 55.574787>,  <26.325523, 38.708351, 55.750408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.231228, 38.842014, 55.574787>,  <26.074070, 39.064789, 55.282085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.231228, 38.842014, 55.574787> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370242, 0.632593, 0.680255,
		-0.841757, -0.538193, 0.042343,
		0.392895, -0.556932, 0.731752,
		26.349096, 38.674934, 55.794312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.526924, 38.909641, 55.666977>,  <26.074070, 39.064789, 55.282085>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.526924, 38.909641, 55.666977> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.851805, 38.874485, 55.897663>,  <26.046734, 38.853390, 56.036076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.851805, 38.874485, 55.897663>,  <25.526924, 38.909641, 55.666977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.851805, 38.874485, 55.897663> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410408, 0.616494, 0.671938,
		-0.414599, -0.782439, 0.464648,
		0.812203, -0.087890, 0.576717,
		26.095465, 38.848118, 56.070679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.344339, 38.716351, 56.249870>,  <25.526924, 38.909641, 55.666977>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.344339, 38.716351, 56.249870> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.683954, 38.920097, 56.305981>,  <25.887724, 39.042347, 56.339645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.683954, 38.920097, 56.305981>,  <25.344339, 38.716351, 56.249870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.683954, 38.920097, 56.305981> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420345, 0.490413, 0.763416,
		0.320070, -0.707133, 0.630491,
		0.849038, 0.509371, 0.140273,
		25.938665, 39.072910, 56.348064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.328623, 38.729855, 56.943230>,  <25.344339, 38.716351, 56.249870>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.328623, 38.729855, 56.943230> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.590469, 39.004929, 56.817650>,  <25.747578, 39.169971, 56.742302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.590469, 39.004929, 56.817650>,  <25.328623, 38.729855, 56.943230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.590469, 39.004929, 56.817650> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253126, 0.590726, 0.766140,
		0.712324, -0.422057, 0.560769,
		0.654616, 0.687685, -0.313954,
		25.786854, 39.211235, 56.723465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.461695, 39.030880, 57.524509>,  <25.328623, 38.729855, 56.943230>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.461695, 39.030880, 57.524509> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.607214, 39.305096, 57.272263>,  <25.694525, 39.469627, 57.120914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.607214, 39.305096, 57.272263>,  <25.461695, 39.030880, 57.524509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.607214, 39.305096, 57.272263> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016397, 0.681619, 0.731524,
		0.931334, -0.255785, 0.259211,
		0.363796, 0.685543, -0.630621,
		25.716352, 39.510757, 57.083076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.494818, 38.436768, 57.925163>,  <25.461695, 39.030880, 57.524509>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.494818, 38.436768, 57.925163> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.612753, 38.056297, 57.961685>,  <25.683514, 37.828014, 57.983597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.612753, 38.056297, 57.961685>,  <25.494818, 38.436768, 57.925163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.612753, 38.056297, 57.961685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729046, 0.285689, 0.621991,
		-0.617706, -0.116824, 0.777683,
		0.294839, -0.951175, 0.091301,
		25.701204, 37.770947, 57.989075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.935526, 38.458210, 58.526279>,  <25.494818, 38.436768, 57.925163>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.935526, 38.458210, 58.526279> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.974070, 38.076561, 58.412888>,  <25.997196, 37.847572, 58.344852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.974070, 38.076561, 58.412888>,  <25.935526, 38.458210, 58.526279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.974070, 38.076561, 58.412888> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883341, -0.049280, 0.466133,
		-0.458719, -0.295325, 0.838069,
		0.096360, -0.954125, -0.283478,
		26.002977, 37.790325, 58.327843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.259947, 38.207470, 59.188282>,  <25.935526, 38.458210, 58.526279>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.259947, 38.207470, 59.188282> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.441189, 38.270527, 59.539246>,  <26.549934, 38.308361, 59.749825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.441189, 38.270527, 59.539246>,  <26.259947, 38.207470, 59.188282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.441189, 38.270527, 59.539246> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884605, -0.201307, -0.420653,
		0.110315, 0.966759, -0.230667,
		0.453105, 0.157645, 0.877407,
		26.577120, 38.317822, 59.802467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.762999, 38.657875, 59.024376>,  <26.259947, 38.207470, 59.188282>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.762999, 38.657875, 59.024376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.870554, 38.447517, 59.347145>,  <26.935087, 38.321301, 59.540806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.870554, 38.447517, 59.347145>,  <26.762999, 38.657875, 59.024376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.870554, 38.447517, 59.347145> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834049, -0.291881, -0.468154,
		0.481727, 0.798899, 0.360139,
		0.268890, -0.525896, 0.806927,
		26.951221, 38.289749, 59.589222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.407934, 38.975464, 59.366661>,  <26.762999, 38.657875, 59.024376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.407934, 38.975464, 59.366661> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.431963, 38.601727, 59.507175>,  <27.446381, 38.377483, 59.591484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.431963, 38.601727, 59.507175>,  <27.407934, 38.975464, 59.366661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.431963, 38.601727, 59.507175> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906142, -0.096568, -0.411803,
		0.418687, 0.343051, 0.840843,
		0.060071, -0.934340, 0.351284,
		27.449984, 38.321426, 59.612560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.120968, 38.826447, 59.574730>,  <27.407934, 38.975464, 59.366661>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.120968, 38.826447, 59.574730> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.950855, 38.467640, 59.526569>,  <27.848787, 38.252357, 59.497673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.950855, 38.467640, 59.526569>,  <28.120968, 38.826447, 59.574730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.950855, 38.467640, 59.526569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835779, -0.338188, -0.432553,
		0.347290, -0.284584, 0.893533,
		-0.425280, -0.897018, -0.120400,
		27.823271, 38.198536, 59.490448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.576801, 38.318283, 59.695545>,  <28.120968, 38.826447, 59.574730>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.576801, 38.318283, 59.695545> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.308313, 38.123386, 59.472099>,  <28.147221, 38.006447, 59.338032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.308313, 38.123386, 59.472099>,  <28.576801, 38.318283, 59.695545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.308313, 38.123386, 59.472099> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736894, -0.356961, -0.574078,
		0.080313, -0.796975, 0.598648,
		-0.671220, -0.487246, -0.558618,
		28.106947, 37.977211, 59.304512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.985826, 37.820549, 59.346615>,  <28.576801, 38.318283, 59.695545>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.985826, 37.820549, 59.346615> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.641417, 37.787285, 59.145927>,  <28.434771, 37.767326, 59.025517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.641417, 37.787285, 59.145927>,  <28.985826, 37.820549, 59.346615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.641417, 37.787285, 59.145927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496569, -0.350465, -0.794099,
		-0.109796, -0.932876, 0.343055,
		-0.861025, -0.083161, -0.501718,
		28.383110, 37.762337, 58.995411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.955910, 37.143757, 59.125591>,  <28.985826, 37.820549, 59.346615>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.955910, 37.143757, 59.125591> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.713579, 37.326149, 58.864807>,  <28.568182, 37.435585, 58.708336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.713579, 37.326149, 58.864807>,  <28.955910, 37.143757, 59.125591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.713579, 37.326149, 58.864807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571019, -0.321412, -0.755402,
		-0.553998, -0.829925, -0.065655,
		-0.605824, 0.455981, -0.651964,
		28.531832, 37.462944, 58.669216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.728695, 36.602936, 58.657906>,  <28.955910, 37.143757, 59.125591>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.728695, 36.602936, 58.657906> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.665773, 36.959126, 58.487110>,  <28.628021, 37.172840, 58.384632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.665773, 36.959126, 58.487110>,  <28.728695, 36.602936, 58.657906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.665773, 36.959126, 58.487110> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212977, -0.391607, -0.895145,
		-0.964311, -0.231748, -0.128049,
		-0.157304, 0.890470, -0.426988,
		28.618582, 37.226265, 58.359013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.342342, 36.510876, 57.946690>,  <28.728695, 36.602936, 58.657906>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.342342, 36.510876, 57.946690> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.529692, 36.863819, 57.928452>,  <28.642101, 37.075584, 57.917507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.529692, 36.863819, 57.928452>,  <28.342342, 36.510876, 57.946690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.529692, 36.863819, 57.928452> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282797, -0.198609, -0.938393,
		-0.837051, 0.426621, -0.342550,
		0.468372, 0.882354, -0.045599,
		28.670202, 37.128525, 57.914772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.229654, 36.792618, 57.208652>,  <28.342342, 36.510876, 57.946690>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.229654, 36.792618, 57.208652> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.549850, 36.976879, 57.362019>,  <28.741968, 37.087437, 57.454037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.549850, 36.976879, 57.362019>,  <28.229654, 36.792618, 57.208652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.549850, 36.976879, 57.362019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485771, -0.123964, -0.865251,
		-0.351053, 0.878879, -0.323005,
		0.800493, 0.460656, 0.383416,
		28.789999, 37.115074, 57.477043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.471815, 37.255280, 56.676956>,  <28.229654, 36.792618, 57.208652>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.471815, 37.255280, 56.676956> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.790001, 37.180351, 56.907486>,  <28.980913, 37.135395, 57.045803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.790001, 37.180351, 56.907486>,  <28.471815, 37.255280, 56.676956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.790001, 37.180351, 56.907486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544782, -0.195495, -0.815472,
		0.265419, 0.962650, -0.053463,
		0.795465, -0.187316, 0.576322,
		29.028641, 37.124157, 57.080383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.035591, 37.577839, 56.349728>,  <28.471815, 37.255280, 56.676956>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.035591, 37.577839, 56.349728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.214046, 37.318836, 56.596855>,  <29.321119, 37.163437, 56.745132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.214046, 37.318836, 56.596855>,  <29.035591, 37.577839, 56.349728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.214046, 37.318836, 56.596855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678577, -0.205362, -0.705237,
		0.583520, 0.733871, 0.347762,
		0.446136, -0.647503, 0.617821,
		29.347887, 37.124584, 56.782200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.801458, 37.633930, 56.242977>,  <29.035591, 37.577839, 56.349728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.801458, 37.633930, 56.242977> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.763742, 37.272228, 56.409557>,  <29.741114, 37.055206, 56.509506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.763742, 37.272228, 56.409557>,  <29.801458, 37.633930, 56.242977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.763742, 37.272228, 56.409557> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684900, -0.362509, -0.632060,
		0.722511, 0.225632, 0.653504,
		-0.094288, -0.904255, 0.416452,
		29.735456, 37.000950, 56.534492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.421169, 37.395340, 56.338875>,  <29.801458, 37.633930, 56.242977>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.421169, 37.395340, 56.338875> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.226353, 37.045998, 56.341564>,  <30.109463, 36.836391, 56.343178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.226353, 37.045998, 56.341564>,  <30.421169, 37.395340, 56.338875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.226353, 37.045998, 56.341564> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642196, -0.363325, -0.674966,
		0.591925, -0.324421, 0.737818,
		-0.487040, -0.873353, 0.006719,
		30.080240, 36.783993, 56.343578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.930975, 36.990337, 56.364517>,  <30.421169, 37.395340, 56.338875>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.930975, 36.990337, 56.364517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.627602, 36.765591, 56.232403>,  <30.445578, 36.630741, 56.153133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.627602, 36.765591, 56.232403>,  <30.930975, 36.990337, 56.364517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.627602, 36.765591, 56.232403> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620513, -0.467492, -0.629615,
		0.199355, -0.682465, 0.703206,
		-0.758433, -0.561865, -0.330282,
		30.400072, 36.597031, 56.133320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.152298, 36.272186, 56.337765>,  <30.930975, 36.990337, 56.364517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.152298, 36.272186, 56.337765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.838158, 36.292969, 56.091019>,  <30.649673, 36.305439, 55.942970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.838158, 36.292969, 56.091019>,  <31.152298, 36.272186, 56.337765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.838158, 36.292969, 56.091019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428247, -0.673958, -0.601985,
		-0.447019, -0.736940, 0.507044,
		-0.785353, 0.051958, -0.616864,
		30.602552, 36.308556, 55.905960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.919531, 35.617603, 56.209183>,  <31.152298, 36.272186, 56.337765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.919531, 35.617603, 56.209183> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.787117, 35.828812, 55.896362>,  <30.707668, 35.955536, 55.708668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.787117, 35.828812, 55.896362>,  <30.919531, 35.617603, 56.209183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.787117, 35.828812, 55.896362> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523406, -0.586853, -0.617779,
		-0.785151, -0.613839, -0.082100,
		-0.331036, 0.528021, -0.782055,
		30.687807, 35.987217, 55.661747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.633739, 35.121616, 55.776970>,  <30.919531, 35.617603, 56.209183>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.633739, 35.121616, 55.776970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.723133, 35.447407, 55.562798>,  <30.776770, 35.642879, 55.434296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.723133, 35.447407, 55.562798>,  <30.633739, 35.121616, 55.776970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.723133, 35.447407, 55.562798> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586381, -0.551147, -0.593629,
		-0.778597, -0.181301, -0.600764,
		0.223483, 0.814474, -0.535433,
		30.790178, 35.691750, 55.402168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.628862, 34.846733, 55.075790>,  <30.633739, 35.121616, 55.776970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.628862, 34.846733, 55.075790> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.787004, 35.203869, 54.989502>,  <30.881889, 35.418148, 54.937729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.787004, 35.203869, 54.989502>,  <30.628862, 34.846733, 55.075790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.787004, 35.203869, 54.989502> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671905, -0.441249, -0.594847,
		-0.626290, 0.090229, -0.774351,
		0.395354, 0.892837, -0.215725,
		30.905611, 35.471722, 54.924786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.724596, 34.911022, 54.326878>,  <30.628862, 34.846733, 55.075790>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.724596, 34.911022, 54.326878> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.986528, 35.169003, 54.484478>,  <31.143688, 35.323792, 54.579041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.986528, 35.169003, 54.484478>,  <30.724596, 34.911022, 54.326878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.986528, 35.169003, 54.484478> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704018, -0.330927, -0.628367,
		-0.274878, 0.688860, -0.670757,
		0.654829, 0.644949, 0.394005,
		31.182978, 35.362488, 54.602680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<47.054317, 33.834846, 52.688881> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.219505, 34.180256, 52.573105>,  <47.318619, 34.387501, 52.503639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.219505, 34.180256, 52.573105>,  <47.054317, 33.834846, 52.688881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.219505, 34.180256, 52.573105> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903870, 0.349631, -0.246529,
		-0.111687, 0.363428, 0.924903,
		0.412970, 0.863527, -0.289443,
		47.343395, 34.439316, 52.486271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.691051, 34.295815, 53.047058>,  <47.054317, 33.834846, 52.688881>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.691051, 34.295815, 53.047058> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.831749, 34.475243, 52.718410>,  <46.916168, 34.582901, 52.521221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.831749, 34.475243, 52.718410>,  <46.691051, 34.295815, 53.047058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.831749, 34.475243, 52.718410> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925542, 0.298075, -0.233502,
		0.140163, 0.842577, 0.520017,
		0.351747, 0.448569, -0.821620,
		46.937275, 34.609814, 52.471924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.230198, 34.690498, 52.841648>,  <46.691051, 34.295815, 53.047058>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.230198, 34.690498, 52.841648> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.431160, 34.714725, 52.496643>,  <46.551739, 34.729263, 52.289642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.431160, 34.714725, 52.496643>,  <46.230198, 34.690498, 52.841648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.431160, 34.714725, 52.496643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840073, 0.270257, -0.470359,
		0.204610, 0.960881, 0.186660,
		0.502406, 0.060568, -0.862508,
		46.581882, 34.732895, 52.237892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.948635, 35.310642, 52.656292>,  <46.230198, 34.690498, 52.841648>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.948635, 35.310642, 52.656292> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.090458, 35.099358, 52.347675>,  <46.175552, 34.972588, 52.162506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.090458, 35.099358, 52.347675>,  <45.948635, 35.310642, 52.656292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.090458, 35.099358, 52.347675> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772575, 0.299314, -0.559946,
		0.526705, 0.794609, -0.301960,
		0.354557, -0.528213, -0.771544,
		46.196827, 34.940895, 52.116211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.970295, 35.817806, 52.011723>,  <45.948635, 35.310642, 52.656292>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.970295, 35.817806, 52.011723> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.998230, 35.449863, 51.857330>,  <46.014992, 35.229095, 51.764694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.998230, 35.449863, 51.857330>,  <45.970295, 35.817806, 52.011723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.998230, 35.449863, 51.857330> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587089, 0.274923, -0.761410,
		0.806504, 0.279782, -0.520838,
		0.069838, -0.919859, -0.385983,
		46.019180, 35.173904, 51.741535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.071289, 35.884750, 51.354446>,  <45.970295, 35.817806, 52.011723>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.071289, 35.884750, 51.354446> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.927029, 35.512211, 51.374535>,  <45.840473, 35.288689, 51.386589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.927029, 35.512211, 51.374535>,  <46.071289, 35.884750, 51.354446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.927029, 35.512211, 51.374535> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797933, 0.280211, -0.533652,
		0.482944, -0.232534, -0.844211,
		-0.360650, -0.931348, 0.050220,
		45.818832, 35.232807, 51.389603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.104767, 35.634109, 50.635391>,  <46.071289, 35.884750, 51.354446>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.104767, 35.634109, 50.635391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.837742, 35.395329, 50.813381>,  <45.677528, 35.252060, 50.920177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.837742, 35.395329, 50.813381>,  <46.104767, 35.634109, 50.635391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.837742, 35.395329, 50.813381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719470, 0.363365, -0.591887,
		0.191639, -0.715270, -0.672059,
		-0.667561, -0.596955, 0.444980,
		45.637474, 35.216240, 50.946877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.778133, 35.400482, 50.077873>,  <46.104767, 35.634109, 50.635391>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.778133, 35.400482, 50.077873> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.532032, 35.290039, 50.373230>,  <45.384369, 35.223774, 50.550446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.532032, 35.290039, 50.373230>,  <45.778133, 35.400482, 50.077873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.532032, 35.290039, 50.373230> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784881, 0.302038, -0.541049,
		-0.073637, -0.912436, -0.402539,
		-0.615255, -0.276104, 0.738396,
		45.347454, 35.207207, 50.594749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.232353, 34.962322, 49.822163>,  <45.778133, 35.400482, 50.077873>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.232353, 34.962322, 49.822163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.082108, 35.129204, 50.153187>,  <44.991959, 35.229332, 50.351799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.082108, 35.129204, 50.153187>,  <45.232353, 34.962322, 49.822163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.082108, 35.129204, 50.153187> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838799, 0.226688, -0.495004,
		-0.394116, -0.880086, 0.264804,
		-0.375618, 0.417207, 0.827556,
		44.969421, 35.254364, 50.401455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.565670, 34.748772, 49.812157>,  <45.232353, 34.962322, 49.822163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.565670, 34.748772, 49.812157> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.559719, 35.053596, 50.071091>,  <44.556149, 35.236492, 50.226452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.559719, 35.053596, 50.071091>,  <44.565670, 34.748772, 49.812157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.559719, 35.053596, 50.071091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900242, 0.271536, -0.340342,
		-0.435135, -0.587821, 0.682000,
		-0.014873, 0.762059, 0.647336,
		44.555256, 35.282215, 50.265293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.851162, 34.715630, 50.169903>,  <44.565670, 34.748772, 49.812157>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.851162, 34.715630, 50.169903> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.000084, 35.081024, 50.235546>,  <44.089436, 35.300262, 50.274933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.000084, 35.081024, 50.235546>,  <43.851162, 34.715630, 50.169903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.000084, 35.081024, 50.235546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927280, 0.373590, 0.024125,
		-0.039272, -0.161157, 0.986147,
		0.372302, 0.913487, 0.164110,
		44.111774, 35.355072, 50.284779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.478951, 34.980255, 50.737141>,  <43.851162, 34.715630, 50.169903>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.478951, 34.980255, 50.737141> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.604656, 35.300652, 50.533314>,  <43.680080, 35.492889, 50.411018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.604656, 35.300652, 50.533314>,  <43.478951, 34.980255, 50.737141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.604656, 35.300652, 50.533314> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920377, 0.388631, 0.043273,
		0.232693, 0.455392, 0.859344,
		0.314261, 0.800990, -0.509564,
		43.698933, 35.540947, 50.380444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.142727, 35.564590, 51.019390>,  <43.478951, 34.980255, 50.737141>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.142727, 35.564590, 51.019390> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.264530, 35.709023, 50.666824>,  <43.337612, 35.795681, 50.455284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.264530, 35.709023, 50.666824>,  <43.142727, 35.564590, 51.019390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.264530, 35.709023, 50.666824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810334, 0.584569, -0.040478,
		0.500632, 0.726566, 0.470606,
		0.304511, 0.361083, -0.881415,
		43.355885, 35.817348, 50.402401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.056004, 36.305511, 51.050507>,  <43.142727, 35.564590, 51.019390>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.056004, 36.305511, 51.050507> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.106052, 36.226330, 50.661629>,  <43.136082, 36.178822, 50.428303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.106052, 36.226330, 50.661629>,  <43.056004, 36.305511, 51.050507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.106052, 36.226330, 50.661629> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668363, 0.707366, -0.230055,
		0.733236, 0.678562, -0.043799,
		0.125124, -0.197959, -0.972192,
		43.143589, 36.166943, 50.369972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.829967, 36.944996, 50.789364>,  <43.056004, 36.305511, 51.050507>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.829967, 36.944996, 50.789364> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.833748, 36.697121, 50.475445>,  <42.836018, 36.548397, 50.287094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.833748, 36.697121, 50.475445>,  <42.829967, 36.944996, 50.789364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.833748, 36.697121, 50.475445> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808513, 0.457079, -0.370655,
		0.588402, 0.638020, -0.496702,
		0.009453, -0.619684, -0.784794,
		42.836582, 36.511215, 50.240005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.589111, 37.327053, 50.271130>,  <42.829967, 36.944996, 50.789364>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.589111, 37.327053, 50.271130> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.551292, 36.964592, 50.106228>,  <42.528603, 36.747116, 50.007286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.551292, 36.964592, 50.106228>,  <42.589111, 37.327053, 50.271130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.551292, 36.964592, 50.106228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771125, 0.328563, -0.545356,
		0.629625, 0.266337, -0.729819,
		-0.094543, -0.906151, -0.412251,
		42.522930, 36.692745, 49.982552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.708370, 37.386650, 49.505341>,  <42.589111, 37.327053, 50.271130>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.708370, 37.386650, 49.505341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.480709, 37.068893, 49.590195>,  <42.344112, 36.878239, 49.641106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.480709, 37.068893, 49.590195>,  <42.708370, 37.386650, 49.505341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.480709, 37.068893, 49.590195> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767672, 0.420989, -0.483164,
		0.294516, -0.437846, -0.849442,
		-0.569157, -0.794392, 0.212134,
		42.309963, 36.830574, 49.653835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.424419, 37.167442, 48.941418>,  <42.708370, 37.386650, 49.505341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.424419, 37.167442, 48.941418> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.164536, 37.007965, 49.200314>,  <42.008606, 36.912277, 49.355652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.164536, 37.007965, 49.200314>,  <42.424419, 37.167442, 48.941418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.164536, 37.007965, 49.200314> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760005, 0.322059, -0.564510,
		0.016617, -0.858673, -0.512254,
		-0.649705, -0.398696, 0.647244,
		41.969624, 36.888355, 49.394485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.959785, 36.758362, 48.580711>,  <42.424419, 37.167442, 48.941418>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.959785, 36.758362, 48.580711> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.769711, 36.822563, 48.926762>,  <41.655666, 36.861084, 49.134392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.769711, 36.822563, 48.926762>,  <41.959785, 36.758362, 48.580711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.769711, 36.822563, 48.926762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801078, 0.327798, -0.500822,
		-0.363971, -0.931014, -0.027185,
		-0.475183, 0.160508, 0.865123,
		41.627155, 36.870716, 49.186298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.299107, 36.421906, 48.500023>,  <41.959785, 36.758362, 48.580711>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.299107, 36.421906, 48.500023> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.276604, 36.706417, 48.780285>,  <41.263103, 36.877125, 48.948444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.276604, 36.706417, 48.780285>,  <41.299107, 36.421906, 48.500023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.276604, 36.706417, 48.780285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875475, 0.302224, -0.377099,
		-0.479977, -0.634623, 0.605703,
		-0.056258, 0.711276, 0.700658,
		41.259727, 36.919800, 48.990482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.593952, 36.358917, 48.778748>,  <41.299107, 36.421906, 48.500023>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.593952, 36.358917, 48.778748> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.749279, 36.721066, 48.847454>,  <40.842476, 36.938354, 48.888680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.749279, 36.721066, 48.847454>,  <40.593952, 36.358917, 48.778748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.749279, 36.721066, 48.847454> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823529, 0.424590, -0.376197,
		-0.413530, 0.004628, 0.910479,
		0.388321, 0.905374, 0.171770,
		40.865776, 36.992676, 48.898987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968334, 35.972950, 48.466682>,  <40.593952, 36.358917, 48.778748>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.968334, 35.972950, 48.466682> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.836746, 35.610291, 48.572338>,  <39.757793, 35.392696, 48.635731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.836746, 35.610291, 48.572338>,  <39.968334, 35.972950, 48.466682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.836746, 35.610291, 48.572338> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637817, 0.007050, -0.770155,
		0.696396, -0.421834, -0.580594,
		-0.328971, -0.906645, 0.264143,
		39.738056, 35.338295, 48.651581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001137, 35.493706, 47.995003>,  <39.968334, 35.972950, 48.466682>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.001137, 35.493706, 47.995003> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.690914, 35.422436, 48.237247>,  <39.504780, 35.379673, 48.382595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.690914, 35.422436, 48.237247>,  <40.001137, 35.493706, 47.995003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.690914, 35.422436, 48.237247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629201, 0.140426, -0.764452,
		0.051161, -0.973928, -0.221015,
		-0.775557, -0.178173, 0.605612,
		39.458248, 35.368984, 48.418930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763355, 35.521694, 47.285019>,  <40.001137, 35.493706, 47.995003>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.763355, 35.521694, 47.285019> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.797661, 35.710854, 46.934246>,  <39.818245, 35.824348, 46.723782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.797661, 35.710854, 46.934246>,  <39.763355, 35.521694, 47.285019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.797661, 35.710854, 46.934246> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922926, -0.293848, -0.248718,
		-0.375303, 0.830676, 0.411248,
		0.085760, 0.472896, -0.876935,
		39.823387, 35.852722, 46.671165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171520, 36.012505, 47.140327>,  <39.763355, 35.521694, 47.285019>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171520, 36.012505, 47.140327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.324997, 35.889000, 46.792202>,  <39.417084, 35.814896, 46.583328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.324997, 35.889000, 46.792202>,  <39.171520, 36.012505, 47.140327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.324997, 35.889000, 46.792202> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918142, -0.228565, -0.323689,
		-0.098980, 0.923268, -0.371186,
		0.383691, -0.308763, -0.870314,
		39.440105, 35.796371, 46.531109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622486, 36.219677, 46.738441>,  <39.171520, 36.012505, 47.140327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622486, 36.219677, 46.738441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.834373, 35.970284, 46.508430>,  <38.961506, 35.820648, 46.370422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.834373, 35.970284, 46.508430>,  <38.622486, 36.219677, 46.738441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834373, 35.970284, 46.508430> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826802, -0.228359, -0.514053,
		0.189191, 0.747742, -0.636466,
		0.529721, -0.623485, -0.575032,
		38.993290, 35.783237, 46.335922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498455, 36.401131, 45.993050>,  <38.622486, 36.219677, 46.738441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498455, 36.401131, 45.993050> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.605988, 36.017254, 46.025837>,  <38.670506, 35.786926, 46.045509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.605988, 36.017254, 46.025837>,  <38.498455, 36.401131, 45.993050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.605988, 36.017254, 46.025837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832285, -0.274283, -0.481738,
		0.484802, 0.061288, -0.872474,
		0.268830, -0.959694, 0.081964,
		38.686638, 35.729347, 46.050426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444263, 36.112328, 45.352772>,  <38.498455, 36.401131, 45.993050>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444263, 36.112328, 45.352772> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.445187, 35.799732, 45.602337>,  <38.445740, 35.612175, 45.752075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.445187, 35.799732, 45.602337>,  <38.444263, 36.112328, 45.352772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445187, 35.799732, 45.602337> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703801, -0.444497, -0.554154,
		0.710394, -0.437830, -0.551040,
		0.002310, -0.781490, 0.623913,
		38.445881, 35.565285, 45.789513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337200, 35.530426, 44.869026>,  <38.444263, 36.112328, 45.352772>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337200, 35.530426, 44.869026> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.259644, 35.365658, 45.225166>,  <38.213108, 35.266796, 45.438850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.259644, 35.365658, 45.225166>,  <38.337200, 35.530426, 44.869026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259644, 35.365658, 45.225166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632385, -0.641363, -0.434445,
		0.749996, -0.647280, -0.136139,
		-0.193893, -0.411925, 0.890350,
		38.201477, 35.242081, 45.492271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424934, 34.782742, 44.821487>,  <38.337200, 35.530426, 44.869026>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424934, 34.782742, 44.821487> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.183571, 34.830231, 45.136906>,  <38.038754, 34.858723, 45.326157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.183571, 34.830231, 45.136906>,  <38.424934, 34.782742, 44.821487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183571, 34.830231, 45.136906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728887, -0.483218, -0.485000,
		0.323461, -0.867414, 0.378109,
		-0.603404, 0.118720, 0.788548,
		38.002548, 34.865849, 45.373470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000790, 34.201561, 44.830391>,  <38.424934, 34.782742, 44.821487>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.000790, 34.201561, 44.830391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.802982, 34.437881, 45.085388>,  <37.684299, 34.579674, 45.238388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.802982, 34.437881, 45.085388>,  <38.000790, 34.201561, 44.830391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802982, 34.437881, 45.085388> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864778, -0.260826, -0.429102,
		-0.087239, -0.763493, 0.639897,
		-0.494518, 0.590804, 0.637498,
		37.654629, 34.615124, 45.276638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424446, 33.770531, 45.104229>,  <38.000790, 34.201561, 44.830391>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424446, 33.770531, 45.104229> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.320686, 34.154308, 45.148373>,  <37.258430, 34.384575, 45.174858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.320686, 34.154308, 45.148373>,  <37.424446, 33.770531, 45.104229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320686, 34.154308, 45.148373> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907810, -0.203243, -0.366843,
		-0.329535, -0.195348, 0.923713,
		-0.259400, 0.959443, 0.110363,
		37.242867, 34.442142, 45.181480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835560, 33.721710, 45.583767>,  <37.424446, 33.770531, 45.104229>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835560, 33.721710, 45.583767> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.820332, 34.052586, 45.359512>,  <36.811195, 34.251110, 45.224960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.820332, 34.052586, 45.359512>,  <36.835560, 33.721710, 45.583767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820332, 34.052586, 45.359512> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961634, -0.182863, -0.204501,
		-0.271680, 0.531342, 0.802412,
		-0.038071, 0.827186, -0.560637,
		36.808910, 34.300743, 45.191322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182888, 34.032917, 45.722721>,  <36.835560, 33.721710, 45.583767>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182888, 34.032917, 45.722721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.274986, 34.255287, 45.403240>,  <36.330246, 34.388710, 45.211552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.274986, 34.255287, 45.403240>,  <36.182888, 34.032917, 45.722721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.274986, 34.255287, 45.403240> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922696, -0.136083, -0.360712,
		-0.309221, 0.820015, 0.481621,
		0.230249, 0.555929, -0.798704,
		36.344063, 34.422066, 45.163628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566814, 34.436462, 45.515244>,  <36.182888, 34.032917, 45.722721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.566814, 34.436462, 45.515244> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.789600, 34.412518, 45.183891>,  <35.923271, 34.398151, 44.985081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.789600, 34.412518, 45.183891>,  <35.566814, 34.436462, 45.515244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.789600, 34.412518, 45.183891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830522, -0.033886, -0.555954,
		0.005211, 0.997631, -0.068591,
		0.556962, -0.059864, -0.828378,
		35.956688, 34.394558, 44.935379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.215054, 33.450386, 49.869427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.567318, 33.556213, 50.026623>,  <31.778677, 33.619709, 50.120941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.567318, 33.556213, 50.026623>,  <31.215054, 33.450386, 49.869427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.567318, 33.556213, 50.026623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404499, 0.011897, -0.914461,
		-0.246612, 0.964294, -0.096541,
		0.880661, 0.264568, 0.392989,
		31.831516, 33.635582, 50.144520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.477501, 33.712009, 49.282352>,  <31.215054, 33.450386, 49.869427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.477501, 33.712009, 49.282352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.786699, 33.710583, 49.536114>,  <31.972218, 33.709728, 49.688370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.786699, 33.710583, 49.536114>,  <31.477501, 33.712009, 49.282352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786699, 33.710583, 49.536114> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629674, -0.117651, -0.767899,
		0.077375, 0.993049, -0.088700,
		0.772997, -0.003564, 0.634400,
		32.018597, 33.709515, 49.726433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.023628, 34.162170, 48.918674>,  <31.477501, 33.712009, 49.282352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.023628, 34.162170, 48.918674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.195705, 33.917007, 49.183784>,  <32.298954, 33.769909, 49.342850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.195705, 33.917007, 49.183784>,  <32.023628, 34.162170, 48.918674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195705, 33.917007, 49.183784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785285, -0.108047, -0.609634,
		0.445261, 0.782731, 0.434828,
		0.430197, -0.612910, 0.662776,
		32.324764, 33.733135, 49.382618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561390, 34.400055, 49.029354>,  <32.023628, 34.162170, 48.918674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561390, 34.400055, 49.029354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.577129, 34.006279, 49.097862>,  <32.586575, 33.770016, 49.138969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.577129, 34.006279, 49.097862>,  <32.561390, 34.400055, 49.029354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577129, 34.006279, 49.097862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894940, -0.041517, -0.444251,
		0.444448, 0.170763, 0.879378,
		0.039352, -0.984437, 0.171275,
		32.588936, 33.710949, 49.149246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316704, 34.390419, 49.116924>,  <32.561390, 34.400055, 49.029354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316704, 34.390419, 49.116924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.194572, 34.014412, 49.056076>,  <33.121292, 33.788807, 49.019569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.194572, 34.014412, 49.056076>,  <33.316704, 34.390419, 49.116924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194572, 34.014412, 49.056076> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856694, -0.201421, -0.474874,
		0.415750, -0.275312, 0.866807,
		-0.305332, -0.940017, -0.152118,
		33.102974, 33.732407, 49.010441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.947826, 34.056843, 49.278084>,  <33.316704, 34.390419, 49.116924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.947826, 34.056843, 49.278084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.699654, 33.827385, 49.064171>,  <33.550751, 33.689709, 48.935825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.699654, 33.827385, 49.064171>,  <33.947826, 34.056843, 49.278084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699654, 33.827385, 49.064171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749203, -0.231948, -0.620398,
		0.231848, -0.785576, 0.573687,
		-0.620436, -0.573646, -0.534780,
		33.513523, 33.655293, 48.903736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265072, 33.419994, 49.086945>,  <33.947826, 34.056843, 49.278084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265072, 33.419994, 49.086945> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.972717, 33.456181, 48.816353>,  <33.797302, 33.477890, 48.653999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.972717, 33.456181, 48.816353>,  <34.265072, 33.419994, 49.086945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972717, 33.456181, 48.816353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646977, -0.223755, -0.728940,
		-0.217289, -0.970440, 0.105030,
		-0.730894, 0.090438, -0.676472,
		33.753452, 33.483318, 48.613411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376431, 32.773396, 48.700008>,  <34.265072, 33.419994, 49.086945>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376431, 32.773396, 48.700008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.163029, 33.038422, 48.489719>,  <34.034988, 33.197437, 48.363548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.163029, 33.038422, 48.489719>,  <34.376431, 32.773396, 48.700008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163029, 33.038422, 48.489719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568886, -0.178864, -0.802731,
		-0.625896, -0.727331, -0.281502,
		-0.533500, 0.662569, -0.525719,
		34.002979, 33.237190, 48.332005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183266, 32.477982, 48.076721>,  <34.376431, 32.773396, 48.700008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183266, 32.477982, 48.076721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.130241, 32.866989, 48.000156>,  <34.098427, 33.100391, 47.954216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.130241, 32.866989, 48.000156>,  <34.183266, 32.477982, 48.076721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130241, 32.866989, 48.000156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466243, -0.109237, -0.877887,
		-0.874668, -0.205624, -0.438947,
		-0.132565, 0.972515, -0.191416,
		34.090473, 33.158745, 47.942730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167713, 32.465321, 47.370792>,  <34.183266, 32.477982, 48.076721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167713, 32.465321, 47.370792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.190155, 32.858410, 47.441345>,  <34.203621, 33.094261, 47.483677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.190155, 32.858410, 47.441345>,  <34.167713, 32.465321, 47.370792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190155, 32.858410, 47.441345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528413, 0.120664, -0.840369,
		-0.847132, 0.140351, -0.512513,
		0.056105, 0.982721, 0.176382,
		34.206985, 33.153225, 47.494259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995647, 32.723866, 46.826271>,  <34.167713, 32.465321, 47.370792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995647, 32.723866, 46.826271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.174690, 33.046406, 46.980904>,  <34.282116, 33.239929, 47.073685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.174690, 33.046406, 46.980904>,  <33.995647, 32.723866, 46.826271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174690, 33.046406, 46.980904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537842, 0.102610, -0.836778,
		-0.714403, 0.582470, -0.387759,
		0.447610, 0.806349, 0.386582,
		34.308975, 33.288311, 47.096878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926971, 33.245590, 46.299892>,  <33.995647, 32.723866, 46.826271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926971, 33.245590, 46.299892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.224583, 33.396210, 46.520668>,  <34.403149, 33.486584, 46.653133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.224583, 33.396210, 46.520668>,  <33.926971, 33.245590, 46.299892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224583, 33.396210, 46.520668> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522780, 0.186346, -0.831851,
		-0.416088, 0.907460, -0.058208,
		0.744025, 0.376553, 0.551938,
		34.447788, 33.509174, 46.686249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.411346, 33.892307, 46.078793>,  <33.926971, 33.245590, 46.299892>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.411346, 33.892307, 46.078793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.559967, 34.256557, 46.006454>,  <34.649139, 34.475109, 45.963051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.559967, 34.256557, 46.006454>,  <34.411346, 33.892307, 46.078793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559967, 34.256557, 46.006454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781954, 0.411951, 0.467809,
		0.500499, -0.032403, 0.865130,
		0.371549, 0.910630, -0.180843,
		34.671432, 34.529747, 45.952202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646564, 34.346928, 46.708004>,  <34.411346, 33.892307, 46.078793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646564, 34.346928, 46.708004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.479530, 34.550823, 46.407127>,  <34.379311, 34.673161, 46.226601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.479530, 34.550823, 46.407127>,  <34.646564, 34.346928, 46.708004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479530, 34.550823, 46.407127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628298, 0.436039, 0.644292,
		0.656404, 0.741646, 0.138183,
		-0.417584, 0.509736, -0.752192,
		34.354256, 34.703743, 46.181469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701515, 35.064896, 46.850742>,  <34.646564, 34.346928, 46.708004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701515, 35.064896, 46.850742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.408180, 35.043034, 46.579678>,  <34.232178, 35.029919, 46.417038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.408180, 35.043034, 46.579678>,  <34.701515, 35.064896, 46.850742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.408180, 35.043034, 46.579678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593484, 0.537703, 0.598875,
		0.331652, 0.841361, -0.426754,
		-0.733337, -0.054653, -0.677665,
		34.188179, 35.026638, 46.376377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458916, 35.777870, 46.804604>,  <34.701515, 35.064896, 46.850742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458916, 35.777870, 46.804604> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.141106, 35.594711, 46.645077>,  <33.950420, 35.484818, 46.549362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.141106, 35.594711, 46.645077>,  <34.458916, 35.777870, 46.804604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.141106, 35.594711, 46.645077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603913, 0.664383, 0.440323,
		0.063342, 0.590699, -0.804402,
		-0.794529, -0.457898, -0.398814,
		33.902748, 35.457340, 46.525433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085030, 36.353333, 46.663597>,  <34.458916, 35.777870, 46.804604>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085030, 36.353333, 46.663597> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.843266, 36.034809, 46.673214>,  <33.698208, 35.843697, 46.678986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.843266, 36.034809, 46.673214>,  <34.085030, 36.353333, 46.663597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843266, 36.034809, 46.673214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679462, 0.531013, 0.506317,
		-0.415951, 0.289689, -0.862013,
		-0.604414, -0.796308, 0.024043,
		33.661942, 35.795918, 46.680428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465218, 36.612865, 46.355259>,  <34.085030, 36.353333, 46.663597>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465218, 36.612865, 46.355259> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.372963, 36.293530, 46.577774>,  <33.317612, 36.101929, 46.711285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.372963, 36.293530, 46.577774>,  <33.465218, 36.612865, 46.355259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372963, 36.293530, 46.577774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705532, 0.530917, 0.469417,
		-0.670099, -0.284218, -0.685702,
		-0.230635, -0.798340, 0.556292,
		33.303772, 36.054028, 46.744663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701714, 36.526218, 46.253605>,  <33.465218, 36.612865, 46.355259>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701714, 36.526218, 46.253605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.764439, 36.337002, 46.600395>,  <32.802074, 36.223473, 46.808468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.764439, 36.337002, 46.600395>,  <32.701714, 36.526218, 46.253605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.764439, 36.337002, 46.600395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624275, 0.632748, 0.458160,
		-0.765304, -0.613075, -0.196085,
		0.156814, -0.473042, 0.866972,
		32.811481, 36.195087, 46.860485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.939188, 36.274334, 46.597298>,  <32.701714, 36.526218, 46.253605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.939188, 36.274334, 46.597298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.209980, 36.275799, 46.891693>,  <32.372456, 36.276676, 47.068333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.209980, 36.275799, 46.891693>,  <31.939188, 36.274334, 46.597298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.209980, 36.275799, 46.891693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629147, 0.521795, 0.576110,
		-0.381928, -0.853063, 0.355548,
		0.676982, 0.003659, 0.735990,
		32.413074, 36.276897, 47.112492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.552631, 36.237694, 47.284149>,  <31.939188, 36.274334, 46.597298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.552631, 36.237694, 47.284149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.902271, 36.416439, 47.360325>,  <32.112057, 36.523685, 47.406029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.902271, 36.416439, 47.360325>,  <31.552631, 36.237694, 47.284149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.902271, 36.416439, 47.360325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439002, 0.558933, 0.703471,
		0.207913, -0.698505, 0.684736,
		0.874099, 0.446861, 0.190435,
		32.164501, 36.550499, 47.417454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.364233, 36.546566, 47.803391>,  <31.552631, 36.237694, 47.284149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.364233, 36.546566, 47.803391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.729565, 36.703312, 47.759083>,  <31.948765, 36.797359, 47.732498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.729565, 36.703312, 47.759083>,  <31.364233, 36.546566, 47.803391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729565, 36.703312, 47.759083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223333, 0.709476, 0.668406,
		0.340513, -0.585737, 0.735502,
		0.913331, 0.391863, -0.110772,
		32.003563, 36.820869, 47.725853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.566727, 36.798363, 48.365841>,  <31.364233, 36.546566, 47.803391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.566727, 36.798363, 48.365841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.814272, 37.012066, 48.135513>,  <31.962799, 37.140289, 47.997314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.814272, 37.012066, 48.135513>,  <31.566727, 36.798363, 48.365841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.814272, 37.012066, 48.135513> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194751, 0.814540, 0.546440,
		0.760970, -0.226032, 0.608139,
		0.618867, 0.534261, -0.575821,
		31.999931, 37.172344, 47.962769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.120457, 37.028786, 48.834190>,  <31.566727, 36.798363, 48.365841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.120457, 37.028786, 48.834190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.100872, 37.267540, 48.513859>,  <32.089123, 37.410793, 48.321659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.100872, 37.267540, 48.513859>,  <32.120457, 37.028786, 48.834190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.100872, 37.267540, 48.513859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042648, 0.799810, 0.598737,
		0.997890, 0.063469, -0.013703,
		-0.048961, 0.596889, -0.800829,
		32.086185, 37.446606, 48.273609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561268, 37.510620, 49.040321>,  <32.120457, 37.028786, 48.834190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561268, 37.510620, 49.040321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.401787, 37.703743, 48.728443>,  <32.306099, 37.819618, 48.541317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.401787, 37.703743, 48.728443>,  <32.561268, 37.510620, 49.040321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.401787, 37.703743, 48.728443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005970, 0.851548, 0.524243,
		0.917060, 0.204364, -0.342399,
		-0.398706, 0.482806, -0.779700,
		32.282177, 37.848583, 48.494534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011524, 38.090958, 48.853458>,  <32.561268, 37.510620, 49.040321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011524, 38.090958, 48.853458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.643791, 38.156029, 48.710144>,  <32.423153, 38.195072, 48.624153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.643791, 38.156029, 48.710144>,  <33.011524, 38.090958, 48.853458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643791, 38.156029, 48.710144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128192, 0.737041, 0.663579,
		0.372025, 0.655977, -0.656728,
		-0.919328, 0.162680, -0.358289,
		32.367992, 38.204834, 48.602657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033516, 38.753311, 48.910942>,  <33.011524, 38.090958, 48.853458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.033516, 38.753311, 48.910942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.654827, 38.631489, 48.869068>,  <32.427612, 38.558395, 48.843945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.654827, 38.631489, 48.869068>,  <33.033516, 38.753311, 48.910942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654827, 38.631489, 48.869068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254250, 0.507304, 0.823408,
		-0.197665, 0.806157, -0.557710,
		-0.946724, -0.304556, -0.104689,
		32.370811, 38.540123, 48.837662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.596542, 39.376064, 48.930618>,  <33.033516, 38.753311, 48.910942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.596542, 39.376064, 48.930618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.374393, 39.061325, 49.038269>,  <32.241104, 38.872482, 49.102859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.374393, 39.061325, 49.038269>,  <32.596542, 39.376064, 48.930618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.374393, 39.061325, 49.038269> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078018, 0.371496, 0.925151,
		-0.827934, 0.492806, -0.267707,
		-0.555372, -0.786850, 0.269127,
		32.207783, 38.825272, 49.119007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595726, 40.057003, 48.706924>,  <32.596542, 39.376064, 48.930618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595726, 40.057003, 48.706924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.889614, 40.248863, 48.898811>,  <33.065948, 40.363979, 49.013943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.889614, 40.248863, 48.898811>,  <32.595726, 40.057003, 48.706924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889614, 40.248863, 48.898811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678300, -0.509172, -0.529766,
		-0.009846, 0.714618, -0.699445,
		0.734719, 0.479650, 0.479713,
		33.110031, 40.392757, 49.042725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.248306, 40.022606, 48.253902>,  <32.595726, 40.057003, 48.706924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.248306, 40.022606, 48.253902> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.402210, 40.137848, 48.604664>,  <33.494553, 40.206993, 48.815121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.402210, 40.137848, 48.604664>,  <33.248306, 40.022606, 48.253902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402210, 40.137848, 48.604664> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854904, -0.469416, -0.220880,
		0.347996, 0.834652, -0.426913,
		0.384758, 0.288105, 0.876902,
		33.517639, 40.224277, 48.867733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752399, 40.542686, 48.070721>,  <33.248306, 40.022606, 48.253902>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752399, 40.542686, 48.070721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.821693, 40.341724, 48.409561>,  <33.863270, 40.221149, 48.612865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.821693, 40.341724, 48.409561>,  <33.752399, 40.542686, 48.070721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.821693, 40.341724, 48.409561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912308, -0.242186, -0.330211,
		0.371054, 0.830024, 0.416389,
		0.173239, -0.502401, 0.847102,
		33.873665, 40.191006, 48.663692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433552, 40.807350, 48.261555>,  <33.752399, 40.542686, 48.070721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433552, 40.807350, 48.261555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.365707, 40.467655, 48.461567>,  <34.325001, 40.263840, 48.581573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.365707, 40.467655, 48.461567>,  <34.433552, 40.807350, 48.261555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365707, 40.467655, 48.461567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901391, -0.338798, -0.269647,
		0.398402, 0.404984, 0.822960,
		-0.169614, -0.849237, 0.500027,
		34.314823, 40.212883, 48.611576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015995, 40.774902, 48.783375>,  <34.433552, 40.807350, 48.261555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015995, 40.774902, 48.783375> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.895226, 40.395267, 48.747417>,  <34.822765, 40.167488, 48.725842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.895226, 40.395267, 48.747417>,  <35.015995, 40.774902, 48.783375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895226, 40.395267, 48.747417> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950799, -0.292911, -0.100921,
		0.069451, -0.115942, 0.990825,
		-0.301925, -0.949084, -0.089895,
		34.804649, 40.110542, 48.720448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342178, 40.350891, 49.302341>,  <35.015995, 40.774902, 48.783375>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342178, 40.350891, 49.302341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.237244, 40.093712, 49.014511>,  <35.174282, 39.939404, 48.841812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.237244, 40.093712, 49.014511>,  <35.342178, 40.350891, 49.302341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237244, 40.093712, 49.014511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964654, -0.194000, -0.178343,
		-0.024932, -0.740930, 0.671119,
		-0.262337, -0.642952, -0.719578,
		35.158543, 39.900826, 48.798637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772408, 39.858372, 49.362320>,  <35.342178, 40.350891, 49.302341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772408, 39.858372, 49.362320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.635509, 39.768459, 48.997387>,  <35.553371, 39.714512, 48.778427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.635509, 39.768459, 48.997387>,  <35.772408, 39.858372, 49.362320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635509, 39.768459, 48.997387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937056, -0.153192, -0.313781,
		-0.069231, -0.962293, 0.263058,
		-0.342248, -0.224776, -0.912328,
		35.532837, 39.701027, 48.723690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071037, 39.262070, 49.199276>,  <35.772408, 39.858372, 49.362320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071037, 39.262070, 49.199276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.961258, 39.401878, 48.840942>,  <35.895390, 39.485764, 48.625942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.961258, 39.401878, 48.840942>,  <36.071037, 39.262070, 49.199276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961258, 39.401878, 48.840942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811349, -0.415860, -0.410821,
		-0.516131, -0.839580, -0.169454,
		-0.274448, 0.349524, -0.895830,
		35.878925, 39.506737, 48.572193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004238, 38.689846, 48.648014>,  <36.071037, 39.262070, 49.199276>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004238, 38.689846, 48.648014> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.083290, 39.036621, 48.464989>,  <36.130722, 39.244686, 48.355175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.083290, 39.036621, 48.464989>,  <36.004238, 38.689846, 48.648014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083290, 39.036621, 48.464989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780449, -0.421587, -0.461695,
		-0.593163, -0.265858, -0.759919,
		0.197627, 0.866939, -0.457559,
		36.142578, 39.296703, 48.327721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059380, 38.606747, 47.916821>,  <36.004238, 38.689846, 48.648014>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059380, 38.606747, 47.916821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.257534, 38.948517, 47.979492>,  <36.376427, 39.153580, 48.017097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.257534, 38.948517, 47.979492>,  <36.059380, 38.606747, 47.916821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257534, 38.948517, 47.979492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800657, -0.379148, -0.463891,
		-0.336954, 0.355255, -0.871926,
		0.495389, 0.854424, 0.156682,
		36.406151, 39.204845, 48.026497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440506, 38.682636, 47.321522>,  <36.059380, 38.606747, 47.916821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440506, 38.682636, 47.321522> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.642155, 38.927700, 47.565002>,  <36.763145, 39.074738, 47.711090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.642155, 38.927700, 47.565002>,  <36.440506, 38.682636, 47.321522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.642155, 38.927700, 47.565002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863255, -0.378317, -0.334165,
		0.025554, 0.693923, -0.719595,
		0.504120, 0.612655, 0.608700,
		36.793392, 39.111496, 47.747612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858631, 39.250237, 46.964817>,  <36.440506, 38.682636, 47.321522>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858631, 39.250237, 46.964817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.002007, 39.106552, 47.309490>,  <37.088032, 39.020344, 47.516293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.002007, 39.106552, 47.309490>,  <36.858631, 39.250237, 46.964817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002007, 39.106552, 47.309490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700835, -0.506227, -0.502557,
		0.616729, 0.784031, 0.070295,
		0.358435, -0.359207, 0.861681,
		37.109535, 38.998791, 47.567993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.417475, 42.704811, 53.204433> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.202065, 42.884171, 52.919075>,  <30.072819, 42.991787, 52.747860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.202065, 42.884171, 52.919075>,  <30.417475, 42.704811, 53.204433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.202065, 42.884171, 52.919075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701581, -0.230290, -0.674352,
		-0.466664, -0.863660, -0.190568,
		-0.538525, 0.448395, -0.713395,
		30.040506, 43.018688, 52.705055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.476454, 42.257515, 52.647346>,  <30.417475, 42.704811, 53.204433>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.476454, 42.257515, 52.647346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.361485, 42.592533, 52.461487>,  <30.292503, 42.793545, 52.349972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.361485, 42.592533, 52.461487>,  <30.476454, 42.257515, 52.647346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.361485, 42.592533, 52.461487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710081, -0.139237, -0.690216,
		-0.642785, -0.528325, -0.554707,
		-0.287422, 0.837547, -0.464653,
		30.275257, 42.843796, 52.322090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.196062, 42.088551, 51.964821>,  <30.476454, 42.257515, 52.647346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.196062, 42.088551, 51.964821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.290165, 42.476868, 51.945999>,  <30.346626, 42.709858, 51.934704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.290165, 42.476868, 51.945999>,  <30.196062, 42.088551, 51.964821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.290165, 42.476868, 51.945999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320704, -0.123240, -0.939128,
		-0.917499, 0.205844, -0.340330,
		0.235256, 0.970794, -0.047058,
		30.360743, 42.768105, 51.931881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.839119, 42.338795, 51.256718>,  <30.196062, 42.088551, 51.964821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.839119, 42.338795, 51.256718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.146544, 42.570927, 51.364445>,  <30.330997, 42.710205, 51.429081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.146544, 42.570927, 51.364445>,  <29.839119, 42.338795, 51.256718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.146544, 42.570927, 51.364445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396552, -0.101777, -0.912353,
		-0.502057, 0.807996, -0.308353,
		0.768561, 0.580331, 0.269314,
		30.377111, 42.745026, 51.445240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.992722, 42.685829, 50.623188>,  <29.839119, 42.338795, 51.256718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.992722, 42.685829, 50.623188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.330139, 42.749874, 50.828243>,  <30.532589, 42.788300, 50.951275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.330139, 42.749874, 50.828243>,  <29.992722, 42.685829, 50.623188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.330139, 42.749874, 50.828243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535794, -0.185366, -0.823750,
		-0.036867, 0.969538, -0.242151,
		0.843543, 0.160112, 0.512639,
		30.583202, 42.797909, 50.982037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.419592, 42.931808, 50.160809>,  <29.992722, 42.685829, 50.623188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.419592, 42.931808, 50.160809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.685991, 42.819672, 50.437317>,  <30.845831, 42.752388, 50.603222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.685991, 42.819672, 50.437317>,  <30.419592, 42.931808, 50.160809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.685991, 42.819672, 50.437317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610493, -0.327669, -0.721062,
		0.428651, 0.902243, -0.047082,
		0.666000, -0.280341, 0.691269,
		30.885792, 42.735569, 50.644699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.059353, 43.231087, 49.907845>,  <30.419592, 42.931808, 50.160809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.059353, 43.231087, 49.907845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.158852, 42.933315, 50.155701>,  <31.218552, 42.754654, 50.304417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.158852, 42.933315, 50.155701>,  <31.059353, 43.231087, 49.907845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.158852, 42.933315, 50.155701> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718927, -0.286800, -0.633158,
		0.649053, 0.602973, 0.463847,
		0.248746, -0.744425, 0.619642,
		31.233475, 42.709988, 50.341595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.856249, 43.194664, 49.894115>,  <31.059353, 43.231087, 49.907845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.856249, 43.194664, 49.894115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.674969, 42.854118, 49.999790>,  <31.566200, 42.649792, 50.063194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.674969, 42.854118, 49.999790>,  <31.856249, 43.194664, 49.894115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.674969, 42.854118, 49.999790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704297, -0.523656, -0.479323,
		0.546421, -0.031160, 0.836931,
		-0.453199, -0.851360, 0.264191,
		31.539009, 42.598709, 50.079048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.402527, 42.782490, 50.022598>,  <31.856249, 43.194664, 49.894115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.402527, 42.782490, 50.022598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.116932, 42.503479, 49.998329>,  <31.945574, 42.336075, 49.983768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.116932, 42.503479, 49.998329>,  <32.402527, 42.782490, 50.022598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.116932, 42.503479, 49.998329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694584, -0.694728, -0.186832,
		0.088168, -0.175538, 0.980517,
		-0.713989, -0.697523, -0.060673,
		31.902735, 42.294224, 49.980125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.719604, 42.198689, 50.315155>,  <32.402527, 42.782490, 50.022598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.719604, 42.198689, 50.315155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.405304, 42.060135, 50.110172>,  <32.216724, 41.977001, 49.987183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.405304, 42.060135, 50.110172>,  <32.719604, 42.198689, 50.315155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.405304, 42.060135, 50.110172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534254, -0.797582, -0.280063,
		-0.311715, -0.493841, 0.811760,
		-0.785752, -0.346386, -0.512455,
		32.169579, 41.956219, 49.956436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583500, 41.612465, 50.610386>,  <32.719604, 42.198689, 50.315155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.583500, 41.612465, 50.610386> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.414684, 41.574776, 50.249718>,  <32.313396, 41.552162, 50.033318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.414684, 41.574776, 50.249718>,  <32.583500, 41.612465, 50.610386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414684, 41.574776, 50.249718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556982, -0.811688, -0.175881,
		-0.715300, -0.576441, 0.395047,
		-0.422039, -0.094227, -0.901668,
		32.288071, 41.546509, 49.979218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393528, 40.912144, 50.486050>,  <32.583500, 41.612465, 50.610386>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393528, 40.912144, 50.486050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.463982, 41.060726, 50.121414>,  <32.506252, 41.149876, 49.902634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.463982, 41.060726, 50.121414>,  <32.393528, 40.912144, 50.486050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463982, 41.060726, 50.121414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466879, -0.846802, -0.254853,
		-0.866603, -0.380714, -0.322576,
		0.176132, 0.371460, -0.911589,
		32.516823, 41.172165, 49.847939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.503426, 40.349297, 50.143654>,  <32.393528, 40.912144, 50.486050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.503426, 40.349297, 50.143654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.601116, 40.614063, 49.860184>,  <32.659729, 40.772923, 49.690102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.601116, 40.614063, 49.860184>,  <32.503426, 40.349297, 50.143654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.601116, 40.614063, 49.860184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463489, -0.721605, -0.514261,
		-0.851781, -0.202868, -0.483025,
		0.244226, 0.661915, -0.708676,
		32.674385, 40.812637, 49.647579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.374603, 40.068657, 49.476913>,  <32.503426, 40.349297, 50.143654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.374603, 40.068657, 49.476913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.648315, 40.356480, 49.429592>,  <32.812542, 40.529175, 49.401199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.648315, 40.356480, 49.429592>,  <32.374603, 40.068657, 49.476913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648315, 40.356480, 49.429592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552305, -0.617334, -0.560230,
		-0.476154, 0.318013, -0.819845,
		0.684279, 0.719560, -0.118306,
		32.853600, 40.572346, 49.394100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.724787, 39.668583, 49.411221>,  <32.374603, 40.068657, 49.476913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.724787, 39.668583, 49.411221> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.806265, 39.283260, 49.481144>,  <31.855152, 39.052067, 49.523098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.806265, 39.283260, 49.481144>,  <31.724787, 39.668583, 49.411221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.806265, 39.283260, 49.481144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336589, 0.098761, 0.936458,
		-0.919357, -0.249587, -0.304120,
		0.203693, -0.963303, 0.174805,
		31.867373, 38.994270, 49.533585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.026325, 39.374599, 49.672249>,  <31.724787, 39.668583, 49.411221>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.026325, 39.374599, 49.672249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.277872, 39.084282, 49.783783>,  <31.428801, 38.910091, 49.850704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.277872, 39.084282, 49.783783>,  <31.026325, 39.374599, 49.672249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.277872, 39.084282, 49.783783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365651, 0.040422, 0.929874,
		-0.686168, -0.686724, -0.239967,
		0.628866, -0.725794, 0.278838,
		31.466532, 38.866543, 49.867435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.670969, 38.861988, 50.001209>,  <31.026325, 39.374599, 49.672249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.670969, 38.861988, 50.001209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.049654, 38.807747, 50.118069>,  <31.276865, 38.775204, 50.188183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.049654, 38.807747, 50.118069>,  <30.670969, 38.861988, 50.001209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.049654, 38.807747, 50.118069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295481, -0.004667, 0.955337,
		-0.128185, -0.990752, -0.044487,
		0.946710, -0.135605, 0.292150,
		31.333668, 38.767067, 50.205715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.700024, 38.275402, 50.440685>,  <30.670969, 38.861988, 50.001209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.700024, 38.275402, 50.440685> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.044088, 38.455219, 50.537045>,  <31.250528, 38.563110, 50.594860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.044088, 38.455219, 50.537045>,  <30.700024, 38.275402, 50.440685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.044088, 38.455219, 50.537045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173445, -0.186341, 0.967054,
		0.479621, -0.873607, -0.082313,
		0.860163, 0.449543, 0.240896,
		31.302137, 38.590080, 50.609314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.125595, 37.907017, 50.845295>,  <30.700024, 38.275402, 50.440685>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.125595, 37.907017, 50.845295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.236917, 38.278072, 50.944923>,  <31.303711, 38.500706, 51.004700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.236917, 38.278072, 50.944923>,  <31.125595, 37.907017, 50.845295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.236917, 38.278072, 50.944923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259037, -0.177214, 0.949471,
		0.924903, -0.328761, 0.190973,
		0.278306, 0.927638, 0.249067,
		31.320410, 38.556362, 51.019642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440504, 37.803596, 51.518425>,  <31.125595, 37.907017, 50.845295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440504, 37.803596, 51.518425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.369158, 38.195770, 51.485123>,  <31.326351, 38.431076, 51.465141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.369158, 38.195770, 51.485123>,  <31.440504, 37.803596, 51.518425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.369158, 38.195770, 51.485123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385637, 0.008186, 0.922615,
		0.905246, 0.196666, 0.376632,
		-0.178364, 0.980436, -0.083252,
		31.315649, 38.489902, 51.460148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.655807, 38.203651, 52.206440>,  <31.440504, 37.803596, 51.518425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.655807, 38.203651, 52.206440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.409336, 38.470631, 52.039185>,  <31.261454, 38.630817, 51.938831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.409336, 38.470631, 52.039185>,  <31.655807, 38.203651, 52.206440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.409336, 38.470631, 52.039185> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493141, 0.087009, 0.865587,
		0.614115, 0.739557, 0.275532,
		-0.616178, 0.667446, -0.418139,
		31.224483, 38.670864, 51.913742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.406340, 38.574211, 52.741936>,  <31.655807, 38.203651, 52.206440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.406340, 38.574211, 52.741936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.173996, 38.688839, 52.437180>,  <31.034590, 38.757618, 52.254326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.173996, 38.688839, 52.437180>,  <31.406340, 38.574211, 52.741936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.173996, 38.688839, 52.437180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712770, 0.272998, 0.646089,
		0.393146, 0.918340, 0.045687,
		-0.580857, 0.286572, -0.761893,
		30.999739, 38.774811, 52.208611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.256083, 39.344868, 52.758980>,  <31.406340, 38.574211, 52.741936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.256083, 39.344868, 52.758980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.960556, 39.130409, 52.595665>,  <30.783239, 39.001736, 52.497677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.960556, 39.130409, 52.595665>,  <31.256083, 39.344868, 52.758980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.960556, 39.130409, 52.595665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623714, 0.314575, 0.715558,
		-0.255205, 0.783321, -0.566814,
		-0.738817, -0.536144, -0.408288,
		30.738911, 38.969566, 52.473179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.648262, 39.817829, 52.613518>,  <31.256083, 39.344868, 52.758980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.648262, 39.817829, 52.613518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.497404, 39.447464, 52.621967>,  <30.406889, 39.225246, 52.627037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.497404, 39.447464, 52.621967>,  <30.648262, 39.817829, 52.613518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.497404, 39.447464, 52.621967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732522, 0.312174, 0.604945,
		-0.566723, 0.212675, -0.795987,
		-0.377143, -0.925914, 0.021127,
		30.384262, 39.169689, 52.628304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.938381, 39.922707, 52.515686>,  <30.648262, 39.817829, 52.613518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.938381, 39.922707, 52.515686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.997953, 39.576870, 52.707645>,  <30.033697, 39.369370, 52.822819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.997953, 39.576870, 52.707645>,  <29.938381, 39.922707, 52.515686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.997953, 39.576870, 52.707645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607017, 0.303173, 0.734586,
		-0.780608, -0.400708, -0.479670,
		0.148932, -0.864592, 0.479896,
		30.042633, 39.317493, 52.851616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.365334, 39.749947, 52.690674>,  <29.938381, 39.922707, 52.515686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.365334, 39.749947, 52.690674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.544241, 39.473595, 52.917877>,  <29.651585, 39.307785, 53.054199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.544241, 39.473595, 52.917877>,  <29.365334, 39.749947, 52.690674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.544241, 39.473595, 52.917877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705959, 0.117231, 0.698483,
		-0.549156, -0.713402, -0.435299,
		0.447269, -0.690880, 0.568011,
		29.678421, 39.266331, 53.088280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.947512, 39.237286, 52.715714>,  <29.365334, 39.749947, 52.690674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.947512, 39.237286, 52.715714> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.187204, 39.257847, 53.035282>,  <29.331020, 39.270184, 53.227024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.187204, 39.257847, 53.035282>,  <28.947512, 39.237286, 52.715714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.187204, 39.257847, 53.035282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800568, 0.033805, 0.598287,
		0.003742, -0.998106, 0.061403,
		0.599230, 0.051396, 0.798925,
		29.366974, 39.273270, 53.274960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.562748, 38.911442, 53.164192>,  <28.947512, 39.237286, 52.715714>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.562748, 38.911442, 53.164192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.833471, 39.100616, 53.389851>,  <28.995905, 39.214119, 53.525246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.833471, 39.100616, 53.389851>,  <28.562748, 38.911442, 53.164192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.833471, 39.100616, 53.389851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705420, 0.197518, 0.680712,
		0.210516, -0.858664, 0.467311,
		0.676805, 0.472951, 0.564138,
		29.036514, 39.242496, 53.559093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.167053, 38.155312, 57.507885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.999149, 38.269844, 57.163368>,  <32.898407, 38.338562, 56.956657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.999149, 38.269844, 57.163368>,  <33.167053, 38.155312, 57.507885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999149, 38.269844, 57.163368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708243, -0.490120, -0.508108,
		-0.567622, -0.823284, 0.002941,
		-0.419759, 0.286331, -0.861288,
		32.873222, 38.355743, 56.904984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.249035, 37.661827, 57.163353>,  <33.167053, 38.155312, 57.507885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.249035, 37.661827, 57.163353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.215874, 37.939705, 56.877548>,  <33.195976, 38.106430, 56.706066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.215874, 37.939705, 56.877548>,  <33.249035, 37.661827, 57.163353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215874, 37.939705, 56.877548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555766, -0.562904, -0.611770,
		-0.827195, -0.447821, -0.339419,
		-0.082903, 0.694691, -0.714515,
		33.191002, 38.148113, 56.663193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319592, 37.262917, 56.618164>,  <33.249035, 37.661827, 57.163353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319592, 37.262917, 56.618164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.355541, 37.630013, 56.463413>,  <33.377110, 37.850269, 56.370564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.355541, 37.630013, 56.463413>,  <33.319592, 37.262917, 56.618164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355541, 37.630013, 56.463413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541223, -0.371086, -0.754568,
		-0.836063, -0.141571, -0.530053,
		0.089871, 0.917743, -0.386873,
		33.382504, 37.905334, 56.347351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130157, 37.214642, 55.899792>,  <33.319592, 37.262917, 56.618164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130157, 37.214642, 55.899792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.356770, 37.537018, 55.968506>,  <33.492737, 37.730442, 56.009735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.356770, 37.537018, 55.968506>,  <33.130157, 37.214642, 55.899792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356770, 37.537018, 55.968506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647808, -0.306740, -0.697320,
		-0.509303, 0.506336, -0.695870,
		0.566529, 0.805937, 0.171785,
		33.526730, 37.778797, 56.020042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237324, 37.537476, 55.263332>,  <33.130157, 37.214642, 55.899792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237324, 37.537476, 55.263332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.546040, 37.675339, 55.477081>,  <33.731270, 37.758057, 55.605331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.546040, 37.675339, 55.477081>,  <33.237324, 37.537476, 55.263332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546040, 37.675339, 55.477081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625287, -0.258603, -0.736302,
		-0.115583, 0.902405, -0.415098,
		0.771788, 0.344659, 0.534372,
		33.777576, 37.778736, 55.637394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.641323, 37.905281, 54.819138>,  <33.237324, 37.537476, 55.263332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.641323, 37.905281, 54.819138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.891125, 37.828766, 55.122028>,  <34.041008, 37.782856, 55.303764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.891125, 37.828766, 55.122028>,  <33.641323, 37.905281, 54.819138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.891125, 37.828766, 55.122028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706605, -0.274644, -0.652135,
		0.332716, 0.942326, -0.036350,
		0.624507, -0.191291, 0.757231,
		34.078476, 37.771378, 55.349197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270195, 37.956020, 54.486660>,  <33.641323, 37.905281, 54.819138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270195, 37.956020, 54.486660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.395733, 37.804111, 54.834747>,  <34.471054, 37.712967, 55.043598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.395733, 37.804111, 54.834747>,  <34.270195, 37.956020, 54.486660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395733, 37.804111, 54.834747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872059, -0.247190, -0.422387,
		0.375519, 0.891442, 0.253606,
		0.313845, -0.379774, 0.870215,
		34.489887, 37.690178, 55.095810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934460, 38.257729, 54.665691>,  <34.270195, 37.956020, 54.486660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934460, 38.257729, 54.665691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.865097, 37.891663, 54.811237>,  <34.823479, 37.672024, 54.898563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.865097, 37.891663, 54.811237>,  <34.934460, 38.257729, 54.665691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865097, 37.891663, 54.811237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778707, -0.353603, -0.518247,
		0.602946, 0.193472, 0.773967,
		-0.173411, -0.915169, 0.363861,
		34.813072, 37.617111, 54.920395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602966, 38.037769, 54.877926>,  <34.934460, 38.257729, 54.665691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602966, 38.037769, 54.877926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.385109, 37.702850, 54.858730>,  <35.254395, 37.501900, 54.847214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.385109, 37.702850, 54.858730>,  <35.602966, 38.037769, 54.877926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385109, 37.702850, 54.858730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768722, -0.475521, -0.427723,
		0.335308, -0.269849, 0.902635,
		-0.544642, -0.837294, -0.047993,
		35.221718, 37.451660, 54.844334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120373, 37.517094, 54.860920>,  <35.602966, 38.037769, 54.877926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120373, 37.517094, 54.860920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.793243, 37.327686, 54.730114>,  <35.596966, 37.214043, 54.651630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.793243, 37.327686, 54.730114>,  <36.120373, 37.517094, 54.860920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793243, 37.327686, 54.730114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570955, -0.596678, -0.563903,
		0.071898, -0.647885, 0.758337,
		-0.817827, -0.473520, -0.327013,
		35.547894, 37.185631, 54.632011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300869, 36.895596, 54.846100>,  <36.120373, 37.517094, 54.860920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300869, 36.895596, 54.846100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.999203, 36.894447, 54.583431>,  <35.818203, 36.893757, 54.425831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.999203, 36.894447, 54.583431>,  <36.300869, 36.895596, 54.846100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999203, 36.894447, 54.583431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528590, -0.596003, -0.604461,
		-0.389642, -0.802977, 0.451006,
		-0.754170, -0.002874, -0.656673,
		35.772953, 36.893585, 54.386429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022530, 36.196621, 54.712612>,  <36.300869, 36.895596, 54.846100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.022530, 36.196621, 54.712612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.953114, 36.422596, 54.389938>,  <35.911465, 36.558182, 54.196335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.953114, 36.422596, 54.389938>,  <36.022530, 36.196621, 54.712612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953114, 36.422596, 54.389938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634668, -0.562180, -0.530236,
		-0.753049, -0.603990, -0.260987,
		-0.173536, 0.564934, -0.806682,
		35.901054, 36.592075, 54.147934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870682, 35.765987, 54.102749>,  <36.022530, 36.196621, 54.712612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870682, 35.765987, 54.102749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.948929, 36.123154, 53.940548>,  <35.995876, 36.337452, 53.843227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.948929, 36.123154, 53.940548>,  <35.870682, 35.765987, 54.102749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948929, 36.123154, 53.940548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434528, -0.449608, -0.780409,
		-0.879158, -0.023541, -0.475949,
		0.195618, 0.892916, -0.405505,
		36.007614, 36.391029, 53.818897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630150, 35.685844, 53.399597>,  <35.870682, 35.765987, 54.102749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630150, 35.685844, 53.399597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.882130, 35.996487, 53.402531>,  <36.033318, 36.182873, 53.404293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.882130, 35.996487, 53.402531>,  <35.630150, 35.685844, 53.399597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882130, 35.996487, 53.402531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354157, -0.278842, -0.892648,
		-0.691188, 0.564919, -0.450695,
		0.629946, 0.776604, 0.007338,
		36.071114, 36.229469, 53.404732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027786, 35.662498, 52.990192>,  <35.630150, 35.685844, 53.399597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027786, 35.662498, 52.990192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.821022, 35.413074, 52.755592>,  <34.696964, 35.263420, 52.614834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.821022, 35.413074, 52.755592>,  <35.027786, 35.662498, 52.990192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821022, 35.413074, 52.755592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740572, -0.017903, 0.671738,
		-0.429368, 0.781572, -0.452536,
		-0.516910, -0.623558, -0.586497,
		34.665951, 35.226006, 52.579643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412891, 35.904678, 52.900658>,  <35.027786, 35.662498, 52.990192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412891, 35.904678, 52.900658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.366104, 35.510628, 52.850304>,  <34.338032, 35.274197, 52.820091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.366104, 35.510628, 52.850304>,  <34.412891, 35.904678, 52.900658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366104, 35.510628, 52.850304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715859, -0.004225, 0.698232,
		-0.688378, 0.171785, -0.704716,
		-0.116968, -0.985125, -0.125882,
		34.331013, 35.215092, 52.812538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608650, 35.942860, 52.697227>,  <34.412891, 35.904678, 52.900658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.608650, 35.942860, 52.697227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.737202, 35.579281, 52.803459>,  <33.814331, 35.361134, 52.867199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.737202, 35.579281, 52.803459>,  <33.608650, 35.942860, 52.697227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737202, 35.579281, 52.803459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816763, -0.124150, 0.563457,
		-0.479180, -0.397999, -0.782293,
		0.321378, -0.908946, 0.265581,
		33.833614, 35.306599, 52.883133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.044075, 35.636005, 52.688553>,  <33.608650, 35.942860, 52.697227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.044075, 35.636005, 52.688553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.277912, 35.389961, 52.900173>,  <33.418217, 35.242336, 53.027145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.277912, 35.389961, 52.900173>,  <33.044075, 35.636005, 52.688553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277912, 35.389961, 52.900173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760945, -0.189492, 0.620528,
		-0.281441, -0.765334, -0.578839,
		0.584597, -0.615106, 0.529047,
		33.453293, 35.205429, 53.058887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.717300, 34.952122, 52.729214>,  <33.044075, 35.636005, 52.688553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.717300, 34.952122, 52.729214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.970818, 35.015041, 53.032150>,  <33.122929, 35.052792, 53.213913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.970818, 35.015041, 53.032150>,  <32.717300, 34.952122, 52.729214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970818, 35.015041, 53.032150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766487, -0.003863, 0.642248,
		0.103950, -0.987544, 0.118118,
		0.633792, 0.157297, 0.757341,
		33.160954, 35.062229, 53.259354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.467922, 34.529449, 53.270672>,  <32.717300, 34.952122, 52.729214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.467922, 34.529449, 53.270672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.718414, 34.771873, 53.466843>,  <32.868710, 34.917328, 53.584545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.718414, 34.771873, 53.466843>,  <32.467922, 34.529449, 53.270672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718414, 34.771873, 53.466843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705395, 0.172551, 0.687491,
		0.332037, -0.776477, 0.535570,
		0.626234, 0.606061, 0.490429,
		32.906284, 34.953690, 53.613972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.341896, 34.310310, 53.953636>,  <32.467922, 34.529449, 53.270672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.341896, 34.310310, 53.953636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.506622, 34.674782, 53.958595>,  <32.605457, 34.893467, 53.961571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.506622, 34.674782, 53.958595>,  <32.341896, 34.310310, 53.953636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.506622, 34.674782, 53.958595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706022, 0.310435, 0.636525,
		0.576141, -0.270885, 0.771157,
		0.411819, 0.911181, 0.012396,
		32.630169, 34.948135, 53.962315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.361145, 34.423485, 54.634541>,  <32.341896, 34.310310, 53.953636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.361145, 34.423485, 54.634541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.363613, 34.780598, 54.454357>,  <32.365093, 34.994865, 54.346249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.363613, 34.780598, 54.454357>,  <32.361145, 34.423485, 54.634541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.363613, 34.780598, 54.454357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650361, 0.345762, 0.676372,
		0.759600, 0.288785, 0.582761,
		0.006171, 0.892778, -0.450455,
		32.365463, 35.048431, 54.319221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422768, 34.922237, 55.179489>,  <32.361145, 34.423485, 54.634541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422768, 34.922237, 55.179489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.254707, 35.063225, 54.845005>,  <32.153873, 35.147816, 54.644314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.254707, 35.063225, 54.845005>,  <32.422768, 34.922237, 55.179489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.254707, 35.063225, 54.845005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783270, 0.324447, 0.530304,
		0.458218, 0.877784, 0.139759,
		-0.420147, 0.352464, -0.836209,
		32.128662, 35.168964, 54.594143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.160507, 35.533897, 55.383457>,  <32.422768, 34.922237, 55.179489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.160507, 35.533897, 55.383457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.979584, 35.517944, 55.027069>,  <31.871029, 35.508373, 54.813236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.979584, 35.517944, 55.027069>,  <32.160507, 35.533897, 55.383457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979584, 35.517944, 55.027069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797521, 0.465265, 0.384043,
		0.399221, 0.884272, -0.242250,
		-0.452309, -0.039881, -0.890969,
		31.843891, 35.505981, 54.759777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.916059, 36.151604, 55.275627>,  <32.160507, 35.533897, 55.383457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.916059, 36.151604, 55.275627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.696167, 35.916924, 55.037777>,  <31.564232, 35.776115, 54.895065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.696167, 35.916924, 55.037777>,  <31.916059, 36.151604, 55.275627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.696167, 35.916924, 55.037777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832360, 0.444819, 0.330625,
		0.070523, 0.676697, -0.732876,
		-0.549730, -0.586700, -0.594626,
		31.531248, 35.740913, 54.859390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.499660, 36.606434, 54.931847>,  <31.916059, 36.151604, 55.275627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.499660, 36.606434, 54.931847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.322771, 36.247673, 54.931149>,  <31.216637, 36.032417, 54.930729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.322771, 36.247673, 54.931149>,  <31.499660, 36.606434, 54.931847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.322771, 36.247673, 54.931149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875290, 0.431142, 0.219055,
		-0.195719, 0.098399, -0.975711,
		-0.442224, -0.896903, -0.001744,
		31.190104, 35.978603, 54.930626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.915262, 36.749233, 54.548397>,  <31.499660, 36.606434, 54.931847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.915262, 36.749233, 54.548397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.879852, 36.442822, 54.803066>,  <30.858606, 36.258972, 54.955868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.879852, 36.442822, 54.803066>,  <30.915262, 36.749233, 54.548397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.879852, 36.442822, 54.803066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890245, 0.347558, 0.294392,
		-0.446796, -0.540736, -0.712726,
		-0.088525, -0.766034, 0.636675,
		30.853294, 36.213013, 54.994068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.076017, 36.594501, 54.677925>,  <30.915262, 36.749233, 54.548397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.076017, 36.594501, 54.677925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.265425, 36.413120, 54.979961>,  <30.379068, 36.304291, 55.161182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.265425, 36.413120, 54.979961>,  <30.076017, 36.594501, 54.677925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.265425, 36.413120, 54.979961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758515, 0.225822, 0.611277,
		-0.447700, -0.862199, -0.237019,
		0.473518, -0.453451, 0.755091,
		30.407480, 36.277084, 55.206490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.740932, 36.077133, 54.430008>,  <30.076017, 36.594501, 54.677925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.740932, 36.077133, 54.430008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.401958, 36.157242, 54.233337>,  <29.198574, 36.205307, 54.115337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.401958, 36.157242, 54.233337>,  <29.740932, 36.077133, 54.430008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.401958, 36.157242, 54.233337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316685, -0.552617, -0.770925,
		-0.426098, -0.809016, 0.404886,
		-0.847438, 0.200268, -0.491673,
		29.147728, 36.217323, 54.085835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.533531, 35.368595, 54.153629>,  <29.740932, 36.077133, 54.430008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.533531, 35.368595, 54.153629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.398724, 35.674122, 53.933449>,  <29.317839, 35.857437, 53.801342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.398724, 35.674122, 53.933449>,  <29.533531, 35.368595, 54.153629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.398724, 35.674122, 53.933449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441693, -0.388052, -0.808902,
		-0.831460, -0.515745, -0.206594,
		-0.337018, 0.763821, -0.550451,
		29.297619, 35.903267, 53.768314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.247889, 35.051517, 53.614033>,  <29.533531, 35.368595, 54.153629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.247889, 35.051517, 53.614033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.284300, 35.426632, 53.480011>,  <29.306147, 35.651703, 53.399597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.284300, 35.426632, 53.480011>,  <29.247889, 35.051517, 53.614033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.284300, 35.426632, 53.480011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322258, -0.346091, -0.881119,
		-0.942265, -0.027766, -0.333716,
		0.091031, 0.937790, -0.335057,
		29.311609, 35.707970, 53.379494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.806259, 35.051208, 53.047440>,  <29.247889, 35.051517, 53.614033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.806259, 35.051208, 53.047440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.070387, 35.347843, 53.000065>,  <29.228863, 35.525826, 52.971642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.070387, 35.347843, 53.000065>,  <28.806259, 35.051208, 53.047440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.070387, 35.347843, 53.000065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340186, -0.435969, -0.833189,
		-0.669518, 0.509880, -0.540156,
		0.660318, 0.741589, -0.118435,
		29.268482, 35.570320, 52.964535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.889181, 35.003941, 52.404839>,  <28.806259, 35.051208, 53.047440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.889181, 35.003941, 52.404839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.187010, 35.251575, 52.504719>,  <29.365707, 35.400154, 52.564648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.187010, 35.251575, 52.504719>,  <28.889181, 35.003941, 52.404839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.187010, 35.251575, 52.504719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525077, -0.312166, -0.791737,
		-0.412202, 0.720616, -0.557496,
		0.744569, 0.619084, 0.249703,
		29.410381, 35.437302, 52.579628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.001907, 35.555824, 51.862736>,  <28.889181, 35.003941, 52.404839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.001907, 35.555824, 51.862736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.319668, 35.446411, 52.079662>,  <29.510324, 35.380764, 52.209816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.319668, 35.446411, 52.079662>,  <29.001907, 35.555824, 51.862736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.319668, 35.446411, 52.079662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444954, -0.345686, -0.826146,
		0.413448, 0.897597, -0.152904,
		0.794403, -0.273533, 0.542313,
		29.557989, 35.364349, 52.242355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.643539, 35.765881, 51.487736>,  <29.001907, 35.555824, 51.862736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.643539, 35.765881, 51.487736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.819542, 35.545746, 51.771572>,  <29.925142, 35.413666, 51.941875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.819542, 35.545746, 51.771572>,  <29.643539, 35.765881, 51.487736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.819542, 35.545746, 51.771572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725643, -0.247592, -0.641982,
		0.528997, 0.797386, 0.290408,
		0.440004, -0.550339, 0.709593,
		29.951544, 35.380646, 51.984451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.354446, 35.852261, 51.304325>,  <29.643539, 35.765881, 51.487736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.354446, 35.852261, 51.304325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.320419, 35.528469, 51.536705>,  <30.300003, 35.334194, 51.676132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.320419, 35.528469, 51.536705>,  <30.354446, 35.852261, 51.304325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.320419, 35.528469, 51.536705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793623, -0.407584, -0.451705,
		0.602433, 0.422631, 0.677095,
		-0.085069, -0.809480, 0.580952,
		30.294899, 35.285625, 51.710991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.058697, 35.598877, 51.509510>,  <30.354446, 35.852261, 51.304325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.058697, 35.598877, 51.509510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.835024, 35.274250, 51.577244>,  <30.700819, 35.079475, 51.617882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.835024, 35.274250, 51.577244>,  <31.058697, 35.598877, 51.509510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.835024, 35.274250, 51.577244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729579, -0.578725, -0.364405,
		0.393735, -0.080230, 0.915716,
		-0.559184, -0.811567, 0.169330,
		30.667269, 35.030781, 51.628044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471769, 35.117664, 51.927906>,  <31.058697, 35.598877, 51.509510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471769, 35.117664, 51.927906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.203104, 34.911011, 51.715508>,  <31.041904, 34.787018, 51.588070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.203104, 34.911011, 51.715508>,  <31.471769, 35.117664, 51.927906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.203104, 34.911011, 51.715508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733702, -0.563240, -0.380057,
		-0.102727, -0.644862, 0.757364,
		-0.671661, -0.516637, -0.530996,
		31.001606, 34.756020, 51.556210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.696335, 34.534290, 51.910877>,  <31.471769, 35.117664, 51.927906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.696335, 34.534290, 51.910877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.425611, 34.466923, 51.624222>,  <31.263178, 34.426502, 51.452229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.425611, 34.466923, 51.624222>,  <31.696335, 34.534290, 51.910877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.425611, 34.466923, 51.624222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625460, -0.644958, -0.439124,
		-0.388243, -0.745429, 0.541851,
		-0.676807, -0.168419, -0.716637,
		31.222570, 34.416397, 51.409229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.525908, 33.793072, 51.786049>,  <31.696335, 34.534290, 51.910877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.525908, 33.793072, 51.786049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.435070, 33.964191, 51.436096>,  <31.380568, 34.066864, 51.226124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.435070, 33.964191, 51.436096>,  <31.525908, 33.793072, 51.786049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.435070, 33.964191, 51.436096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560648, -0.677127, -0.476626,
		-0.796306, -0.598739, -0.086074,
		-0.227091, 0.427798, -0.874882,
		31.366943, 34.092529, 51.173630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.413429, 33.195633, 51.335945>,  <31.525908, 33.793072, 51.786049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.413429, 33.195633, 51.335945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.495291, 33.520824, 51.117889>,  <31.544407, 33.715939, 50.987057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.495291, 33.520824, 51.117889>,  <31.413429, 33.195633, 51.335945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.495291, 33.520824, 51.117889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484644, -0.568030, -0.665178,
		-0.850433, -0.128067, -0.510257,
		0.204654, 0.812983, -0.545138,
		31.556686, 33.764721, 50.954350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.430561, 32.901203, 50.694023>,  <31.413429, 33.195633, 51.335945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.430561, 32.901203, 50.694023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.596422, 33.262638, 50.650944>,  <31.695938, 33.479500, 50.625095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.596422, 33.262638, 50.650944>,  <31.430561, 32.901203, 50.694023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.596422, 33.262638, 50.650944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635348, -0.372200, -0.676609,
		-0.651458, 0.212133, -0.728424,
		0.414651, 0.903585, -0.107694,
		31.720818, 33.533714, 50.618637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<28.455225, 38.724800, 53.858891> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.661860, 39.065884, 53.889961>,  <28.785841, 39.270535, 53.908604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.661860, 39.065884, 53.889961>,  <28.455225, 38.724800, 53.858891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.661860, 39.065884, 53.889961> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771573, 0.424254, 0.474009,
		0.371233, -0.304802, 0.877087,
		0.516586, 0.852704, 0.077680,
		28.816835, 39.321693, 53.913265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.269093, 38.977177, 54.509808>,  <28.455225, 38.724800, 53.858891>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.269093, 38.977177, 54.509808> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.414192, 39.296650, 54.317760>,  <28.501251, 39.488335, 54.202534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.414192, 39.296650, 54.317760>,  <28.269093, 38.977177, 54.509808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.414192, 39.296650, 54.317760> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751225, 0.555489, 0.356500,
		0.551432, 0.231357, 0.801497,
		0.362744, 0.798690, -0.480116,
		28.523016, 39.536255, 54.173725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.302689, 39.537056, 55.066086>,  <28.269093, 38.977177, 54.509808>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.302689, 39.537056, 55.066086> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.311794, 39.707058, 54.704124>,  <28.317257, 39.809059, 54.486946>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.311794, 39.707058, 54.704124>,  <28.302689, 39.537056, 55.066086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.311794, 39.707058, 54.704124> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621579, 0.714942, 0.320151,
		0.783020, 0.555182, 0.280449,
		0.022763, 0.425007, -0.904904,
		28.318623, 39.834560, 54.432652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.427935, 40.243607, 55.176186>,  <28.302689, 39.537056, 55.066086>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.427935, 40.243607, 55.176186> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.280151, 40.268917, 54.805351>,  <28.191481, 40.284103, 54.582851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.280151, 40.268917, 54.805351>,  <28.427935, 40.243607, 55.176186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.280151, 40.268917, 54.805351> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616499, 0.729803, 0.295494,
		0.695291, 0.680723, -0.230622,
		-0.369458, 0.063276, -0.927090,
		28.169313, 40.287899, 54.527225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.449287, 40.964081, 54.954109>,  <28.427935, 40.243607, 55.176186>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.449287, 40.964081, 54.954109> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.167818, 40.767853, 54.748516>,  <27.998936, 40.650116, 54.625160>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.167818, 40.767853, 54.748516>,  <28.449287, 40.964081, 54.954109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.167818, 40.767853, 54.748516> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679644, 0.675669, 0.285579,
		0.207184, 0.550280, -0.808868,
		-0.703675, -0.490575, -0.513982,
		27.956715, 40.620682, 54.594322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.121334, 41.419197, 54.547382>,  <28.449287, 40.964081, 54.954109>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.121334, 41.419197, 54.547382> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.861532, 41.117538, 54.586185>,  <27.705652, 40.936543, 54.609467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.861532, 41.117538, 54.586185>,  <28.121334, 41.419197, 54.547382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.861532, 41.117538, 54.586185> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734319, 0.655236, 0.177316,
		-0.197286, 0.043932, -0.979361,
		-0.649503, -0.754146, 0.097009,
		27.666681, 40.891296, 54.615288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.484491, 41.686142, 54.415276>,  <28.121334, 41.419197, 54.547382>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.484491, 41.686142, 54.415276> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.366451, 41.341438, 54.580341>,  <27.295628, 41.134617, 54.679382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.366451, 41.341438, 54.580341>,  <27.484491, 41.686142, 54.415276>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.366451, 41.341438, 54.580341> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797848, 0.459881, 0.389805,
		-0.525695, -0.214216, -0.823260,
		-0.295099, -0.861755, 0.412669,
		27.277922, 41.082912, 54.704144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.788195, 41.675652, 54.364616>,  <27.484491, 41.686142, 54.415276>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.788195, 41.675652, 54.364616> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.895657, 41.449474, 54.676540>,  <26.960135, 41.313770, 54.863693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.895657, 41.449474, 54.676540>,  <26.788195, 41.675652, 54.364616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.895657, 41.449474, 54.676540> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780766, 0.346292, 0.520083,
		-0.564118, -0.748570, -0.348444,
		0.268655, -0.565441, 0.779808,
		26.976254, 41.279842, 54.910484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.119261, 41.446716, 54.532764>,  <26.788195, 41.675652, 54.364616>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.119261, 41.446716, 54.532764> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.350010, 41.342140, 54.842308>,  <26.488459, 41.279392, 55.028034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.350010, 41.342140, 54.842308>,  <26.119261, 41.446716, 54.532764>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.350010, 41.342140, 54.842308> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762453, 0.167554, 0.624973,
		-0.293060, -0.950564, -0.102682,
		0.576872, -0.261445, 0.773863,
		26.523071, 41.263706, 55.074467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.720034, 40.961586, 54.876175>,  <26.119261, 41.446716, 54.532764>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.720034, 40.961586, 54.876175> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.998466, 41.116531, 55.117973>,  <26.165527, 41.209499, 55.263054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.998466, 41.116531, 55.117973>,  <25.720034, 40.961586, 54.876175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.998466, 41.116531, 55.117973> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713550, 0.280071, 0.642189,
		0.079456, -0.878358, 0.471353,
		0.696084, 0.387360, 0.604499,
		26.207293, 41.232738, 55.299324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.569090, 40.731663, 55.593712>,  <25.720034, 40.961586, 54.876175>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.569090, 40.731663, 55.593712> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.751816, 41.087440, 55.587971>,  <25.861450, 41.300907, 55.584526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.751816, 41.087440, 55.587971>,  <25.569090, 40.731663, 55.593712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.751816, 41.087440, 55.587971> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748285, 0.392940, 0.534479,
		0.481033, -0.233412, 0.845060,
		0.456812, 0.889448, -0.014358,
		25.888859, 41.354275, 55.583664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.296755, 41.181194, 56.161968>,  <25.569090, 40.731663, 55.593712>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.296755, 41.181194, 56.161968> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.522854, 41.480556, 56.023182>,  <25.658514, 41.660175, 55.939911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.522854, 41.480556, 56.023182>,  <25.296755, 41.181194, 56.161968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.522854, 41.480556, 56.023182> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556990, 0.656506, 0.508686,
		0.608484, -0.094282, 0.787945,
		0.565251, 0.748405, -0.346959,
		25.692429, 41.705078, 55.919094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.746523, 40.714867, 56.418186>,  <25.296755, 41.181194, 56.161968>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.746523, 40.714867, 56.418186> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.550793, 40.796768, 56.757275>,  <24.433353, 40.845909, 56.960728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.550793, 40.796768, 56.757275>,  <24.746523, 40.714867, 56.418186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.550793, 40.796768, 56.757275> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765322, 0.365243, -0.529981,
		-0.418140, -0.908116, -0.022022,
		-0.489328, 0.204753, 0.847723,
		24.403994, 40.858192, 57.011593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.444016, 40.467503, 56.248547>,  <24.746523, 40.714867, 56.418186>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.444016, 40.467503, 56.248547> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.564833, 40.333267, 56.605457>,  <25.637323, 40.252728, 56.819603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.564833, 40.333267, 56.605457>,  <25.444016, 40.467503, 56.248547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.564833, 40.333267, 56.605457> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443875, -0.778828, -0.443173,
		0.843650, 0.529915, -0.086281,
		0.302041, -0.335585, 0.892274,
		25.655445, 40.232594, 56.873138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.089024, 40.402115, 56.226311>,  <25.444016, 40.467503, 56.248547>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.089024, 40.402115, 56.226311> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.975861, 40.134502, 56.501225>,  <25.907963, 39.973934, 56.666172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.975861, 40.134502, 56.501225>,  <26.089024, 40.402115, 56.226311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.975861, 40.134502, 56.501225> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347366, -0.739381, -0.576761,
		0.894037, 0.075570, 0.441574,
		-0.282906, -0.669033, 0.687284,
		25.890989, 39.933792, 56.707409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.713335, 40.009216, 56.402634>,  <26.089024, 40.402115, 56.226311>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.713335, 40.009216, 56.402634> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.394697, 39.775784, 56.465710>,  <26.203514, 39.635723, 56.503555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.394697, 39.775784, 56.465710>,  <26.713335, 40.009216, 56.402634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.394697, 39.775784, 56.465710> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438769, -0.737604, -0.513246,
		0.415835, -0.339660, 0.843630,
		-0.796594, -0.583585, 0.157690,
		26.155720, 39.600708, 56.513016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.157566, 39.431610, 56.605564>,  <26.713335, 40.009216, 56.402634>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.157566, 39.431610, 56.605564> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.777138, 39.330078, 56.535091>,  <26.548882, 39.269161, 56.492809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.777138, 39.330078, 56.535091>,  <27.157566, 39.431610, 56.605564>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.777138, 39.330078, 56.535091> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305530, -0.687651, -0.658625,
		0.046028, -0.680226, 0.731556,
		-0.951069, -0.253827, -0.176178,
		26.491817, 39.253929, 56.482239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.148891, 38.734699, 56.796989>,  <27.157566, 39.431610, 56.605564>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.148891, 38.734699, 56.796989> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.819609, 38.773453, 56.573223>,  <26.622040, 38.796703, 56.438965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.819609, 38.773453, 56.573223>,  <27.148891, 38.734699, 56.796989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.819609, 38.773453, 56.573223> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267641, -0.802754, -0.532874,
		-0.500698, -0.588387, 0.634904,
		-0.823207, 0.096882, -0.559413,
		26.572647, 38.802517, 56.405399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.653624, 38.103790, 56.912853>,  <27.148891, 38.734699, 56.796989>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.653624, 38.103790, 56.912853> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.570662, 38.277069, 56.562008>,  <26.520884, 38.381035, 56.351501>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.570662, 38.277069, 56.562008>,  <26.653624, 38.103790, 56.912853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.570662, 38.277069, 56.562008> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206847, -0.856917, -0.472131,
		-0.956137, -0.279350, 0.088123,
		-0.207404, 0.433194, -0.877113,
		26.508440, 38.407028, 56.298874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.308769, 37.659641, 56.507488>,  <26.653624, 38.103790, 56.912853>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.308769, 37.659641, 56.507488> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.444054, 37.910202, 56.226566>,  <26.525225, 38.060539, 56.058014>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.444054, 37.910202, 56.226566>,  <26.308769, 37.659641, 56.507488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.444054, 37.910202, 56.226566> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329479, -0.777871, -0.535127,
		-0.881509, -0.050411, -0.469469,
		0.338210, 0.626399, -0.702309,
		26.545517, 38.098122, 56.015873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.494944, 37.301731, 55.916756>,  <26.308769, 37.659641, 56.507488>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.494944, 37.301731, 55.916756> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.625025, 37.653160, 55.776833>,  <26.703074, 37.864017, 55.692879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.625025, 37.653160, 55.776833>,  <26.494944, 37.301731, 55.916756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.625025, 37.653160, 55.776833> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597242, -0.477616, -0.644348,
		-0.733175, 0.000626, -0.680039,
		0.325201, 0.878568, -0.349803,
		26.722586, 37.916729, 55.671890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.449738, 37.148430, 55.226456>,  <26.494944, 37.301731, 55.916756>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.449738, 37.148430, 55.226456> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.722092, 37.434654, 55.288895>,  <26.885504, 37.606388, 55.326359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.722092, 37.434654, 55.288895>,  <26.449738, 37.148430, 55.226456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.722092, 37.434654, 55.288895> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666306, -0.516745, -0.537597,
		-0.304023, 0.470050, -0.828627,
		0.680887, 0.715561, 0.156095,
		26.926357, 37.649323, 55.335724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.733366, 37.231186, 54.586060>,  <26.449738, 37.148430, 55.226456>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.733366, 37.231186, 54.586060> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.987562, 37.414333, 54.834740>,  <27.140079, 37.524220, 54.983948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.987562, 37.414333, 54.834740>,  <26.733366, 37.231186, 54.586060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.987562, 37.414333, 54.834740> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771512, -0.344926, -0.534598,
		-0.030333, 0.819381, -0.572446,
		0.635491, 0.457865, 0.621700,
		27.178209, 37.551693, 55.021248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.239758, 37.570740, 54.144176>,  <26.733366, 37.231186, 54.586060>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.239758, 37.570740, 54.144176> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.426027, 37.528042, 54.495575>,  <27.537788, 37.502422, 54.706413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.426027, 37.528042, 54.495575>,  <27.239758, 37.570740, 54.144176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.426027, 37.528042, 54.495575> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812125, -0.342826, -0.472148,
		0.351572, 0.933314, -0.072952,
		0.465672, -0.106748, 0.878495,
		27.565729, 37.496017, 54.759125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.860552, 37.824348, 54.002972>,  <27.239758, 37.570740, 54.144176>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.860552, 37.824348, 54.002972> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.923058, 37.573502, 54.308205>,  <27.960560, 37.422993, 54.491344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.923058, 37.573502, 54.308205>,  <27.860552, 37.824348, 54.002972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.923058, 37.573502, 54.308205> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797413, -0.375799, -0.472132,
		0.582851, 0.682271, 0.441352,
		0.156262, -0.627122, 0.763086,
		27.969936, 37.385365, 54.537132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.571316, 37.685894, 53.945423>,  <27.860552, 37.824348, 54.002972>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.571316, 37.685894, 53.945423> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.432365, 37.402092, 54.190678>,  <28.348995, 37.231812, 54.337830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.432365, 37.402092, 54.190678>,  <28.571316, 37.685894, 53.945423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.432365, 37.402092, 54.190678> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731385, -0.614201, -0.296366,
		0.586861, 0.345487, 0.732279,
		-0.347376, -0.709504, 0.613135,
		28.328152, 37.189240, 54.374619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.131744, 37.478664, 54.393742>,  <28.571316, 37.685894, 53.945423>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.131744, 37.478664, 54.393742> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.875336, 37.171978, 54.379692>,  <28.721491, 36.987965, 54.371262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.875336, 37.171978, 54.379692>,  <29.131744, 37.478664, 54.393742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.875336, 37.171978, 54.379692> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743039, -0.608452, -0.278712,
		0.192321, -0.204760, 0.959732,
		-0.641020, -0.766720, -0.035127,
		28.683029, 36.941963, 54.369156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.400337, 36.893742, 54.600498>,  <29.131744, 37.478664, 54.393742>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.400337, 36.893742, 54.600498> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.093706, 36.715942, 54.415123>,  <28.909727, 36.609261, 54.303898>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.093706, 36.715942, 54.415123>,  <29.400337, 36.893742, 54.600498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.093706, 36.715942, 54.415123> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642001, -0.514911, -0.568069,
		0.013877, -0.732998, 0.680090,
		-0.766579, -0.444501, -0.463440,
		28.863733, 36.582592, 54.276093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.501308, 36.448540, 55.232471>,  <29.400337, 36.893742, 54.600498>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.501308, 36.448540, 55.232471> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.824604, 36.330154, 55.436100>,  <30.018581, 36.259121, 55.558277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.824604, 36.330154, 55.436100>,  <29.501308, 36.448540, 55.232471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.824604, 36.330154, 55.436100> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482517, 0.162672, 0.860648,
		-0.337535, -0.941245, -0.011332,
		0.808237, -0.295967, 0.509074,
		30.067076, 36.241364, 55.588821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.348118, 35.903141, 55.747551>,  <29.501308, 36.448540, 55.232471>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.348118, 35.903141, 55.747551> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.667765, 36.113438, 55.864170>,  <29.859552, 36.239616, 55.934143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.667765, 36.113438, 55.864170>,  <29.348118, 35.903141, 55.747551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.667765, 36.113438, 55.864170> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527965, 0.381810, 0.758600,
		0.287515, -0.760139, 0.582687,
		0.799117, 0.525747, 0.291550,
		29.907499, 36.271160, 55.951637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.416374, 35.676830, 56.425678>,  <29.348118, 35.903141, 55.747551>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.416374, 35.676830, 56.425678> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.614273, 36.022930, 56.393280>,  <29.733013, 36.230591, 56.373840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.614273, 36.022930, 56.393280>,  <29.416374, 35.676830, 56.425678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.614273, 36.022930, 56.393280> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520047, 0.369448, 0.770104,
		0.696259, -0.338886, 0.632756,
		0.494748, 0.865254, -0.080995,
		29.762697, 36.282505, 56.368980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.407578, 35.891800, 57.087982>,  <29.416374, 35.676830, 56.425678>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.407578, 35.891800, 57.087982> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.535416, 36.231888, 56.920658>,  <29.612118, 36.435940, 56.820263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.535416, 36.231888, 56.920658>,  <29.407578, 35.891800, 57.087982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.535416, 36.231888, 56.920658> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337666, 0.514674, 0.788094,
		0.885348, -0.110619, 0.451577,
		0.319594, 0.850220, -0.418314,
		29.631294, 36.486954, 56.795162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.953333, 36.252193, 57.578403>,  <29.407578, 35.891800, 57.087982>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.953333, 36.252193, 57.578403> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.769234, 36.509689, 57.333858>,  <29.658773, 36.664188, 57.187130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.769234, 36.509689, 57.333858>,  <29.953333, 36.252193, 57.578403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.769234, 36.509689, 57.333858> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343870, 0.505618, 0.791267,
		0.818489, 0.574410, -0.011347,
		-0.460249, 0.643741, -0.611365,
		29.631159, 36.702812, 57.150448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.104244, 36.947815, 57.810307>,  <29.953333, 36.252193, 57.578403>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.104244, 36.947815, 57.810307> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.776234, 37.003185, 57.588173>,  <29.579428, 37.036407, 57.454891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.776234, 37.003185, 57.588173>,  <30.104244, 36.947815, 57.810307>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.776234, 37.003185, 57.588173> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383122, 0.588075, 0.712310,
		0.425180, 0.796873, -0.429204,
		-0.820025, 0.138422, -0.555337,
		29.530226, 37.044712, 57.421574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.919512, 37.672146, 57.810585>,  <30.104244, 36.947815, 57.810307>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.919512, 37.672146, 57.810585> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.571487, 37.492340, 57.729660>,  <29.362673, 37.384457, 57.681107>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.571487, 37.492340, 57.729660>,  <29.919512, 37.672146, 57.810585>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.571487, 37.492340, 57.729660> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437890, 0.516335, 0.735969,
		-0.226368, 0.728928, -0.646082,
		-0.870063, -0.449513, -0.202308,
		29.310469, 37.357487, 57.668968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.925228, 38.356232, 57.401028>,  <29.919512, 37.672146, 57.810585>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.925228, 38.356232, 57.401028> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.122183, 38.657379, 57.575726>,  <30.240356, 38.838066, 57.680546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.122183, 38.657379, 57.575726>,  <29.925228, 38.356232, 57.401028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.122183, 38.657379, 57.575726> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798460, -0.190990, -0.570950,
		-0.346434, 0.629854, -0.695174,
		0.492386, 0.752866, 0.436748,
		30.269899, 38.883240, 57.706749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.353579, 38.660995, 56.907513>,  <29.925228, 38.356232, 57.401028>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.353579, 38.660995, 56.907513> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.533607, 38.802765, 57.235371>,  <30.641624, 38.887825, 57.432087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.533607, 38.802765, 57.235371>,  <30.353579, 38.660995, 56.907513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.533607, 38.802765, 57.235371> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877905, -0.007603, -0.478774,
		-0.163455, 0.935056, -0.314568,
		0.450072, 0.354419, 0.819648,
		30.668629, 38.909092, 57.481266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.774721, 39.213066, 56.666126>,  <30.353579, 38.660995, 56.907513>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.774721, 39.213066, 56.666126> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.924871, 39.108852, 57.021927>,  <31.014961, 39.046322, 57.235409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.924871, 39.108852, 57.021927>,  <30.774721, 39.213066, 56.666126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.924871, 39.108852, 57.021927> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921342, 0.000207, -0.388752,
		0.101101, 0.965464, 0.240122,
		0.375376, -0.260538, 0.889502,
		31.037483, 39.030689, 57.288776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.411980, 39.676979, 56.826908>,  <30.774721, 39.213066, 56.666126>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.411980, 39.676979, 56.826908> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.450665, 39.338539, 57.036579>,  <31.473875, 39.135475, 57.162384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.450665, 39.338539, 57.036579>,  <31.411980, 39.676979, 56.826908>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.450665, 39.338539, 57.036579> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892807, -0.159035, -0.421431,
		0.439935, 0.508750, 0.740021,
		0.096714, -0.846098, 0.524180,
		31.479679, 39.084709, 57.193832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072048, 39.741940, 57.055305>,  <31.411980, 39.676979, 56.826908>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.072048, 39.741940, 57.055305> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.977903, 39.357964, 57.116119>,  <31.921417, 39.127579, 57.152607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.977903, 39.357964, 57.116119>,  <32.072048, 39.741940, 57.055305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.977903, 39.357964, 57.116119> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894042, -0.275188, -0.353498,
		0.381176, 0.052723, 0.922998,
		-0.235361, -0.959944, 0.152031,
		31.907295, 39.069981, 57.161728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586060, 39.514866, 57.543690>,  <32.072048, 39.741940, 57.055305>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586060, 39.514866, 57.543690> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.429192, 39.223381, 57.319126>,  <32.335072, 39.048489, 57.184387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.429192, 39.223381, 57.319126>,  <32.586060, 39.514866, 57.543690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429192, 39.223381, 57.319126> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919890, -0.312062, -0.237528,
		-0.002105, -0.609587, 0.792717,
		-0.392170, -0.728712, -0.561410,
		32.311539, 39.004768, 57.150703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982216, 38.866138, 57.703720>,  <32.586060, 39.514866, 57.543690>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982216, 38.866138, 57.703720> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.781605, 38.751114, 57.377338>,  <32.661240, 38.682098, 57.181507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.781605, 38.751114, 57.377338>,  <32.982216, 38.866138, 57.703720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781605, 38.751114, 57.377338> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780248, -0.557784, -0.283002,
		-0.373748, -0.778580, 0.504109,
		-0.501524, -0.287559, -0.815956,
		32.631149, 38.664845, 57.132553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<27.680010, 44.223152, 56.416042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.485275, 43.874729, 56.442127>,  <27.368435, 43.665676, 56.457779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.485275, 43.874729, 56.442127>,  <27.680010, 44.223152, 56.416042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.485275, 43.874729, 56.442127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232701, -0.201287, -0.951490,
		0.841928, -0.448045, 0.300689,
		-0.486835, -0.871056, 0.065209,
		27.339224, 43.613411, 56.461689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.098398, 43.595798, 56.347725>,  <27.680010, 44.223152, 56.416042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.098398, 43.595798, 56.347725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.730064, 43.548744, 56.199009>,  <27.509064, 43.520512, 56.109779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.730064, 43.548744, 56.199009>,  <28.098398, 43.595798, 56.347725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.730064, 43.548744, 56.199009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386574, -0.150146, -0.909954,
		0.051225, -0.981640, 0.183736,
		-0.920834, -0.117640, -0.371785,
		27.453814, 43.513451, 56.087475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.003809, 42.961483, 56.106743>,  <28.098398, 43.595798, 56.347725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.003809, 42.961483, 56.106743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.750893, 43.204216, 55.914093>,  <27.599142, 43.349854, 55.798504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.750893, 43.204216, 55.914093>,  <28.003809, 42.961483, 56.106743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.750893, 43.204216, 55.914093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413202, -0.261722, -0.872219,
		-0.655340, -0.750507, -0.085258,
		-0.632292, 0.606829, -0.481628,
		27.561205, 43.386265, 55.769604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.756426, 42.545933, 55.599918>,  <28.003809, 42.961483, 56.106743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.756426, 42.545933, 55.599918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.653221, 42.908016, 55.464848>,  <27.591299, 43.125267, 55.383804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.653221, 42.908016, 55.464848>,  <27.756426, 42.545933, 55.599918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.653221, 42.908016, 55.464848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596708, -0.125580, -0.792571,
		-0.759849, -0.405986, -0.507745,
		-0.258011, 0.905210, -0.337677,
		27.575817, 43.179581, 55.363544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.694613, 42.410923, 54.844940>,  <27.756426, 42.545933, 55.599918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.694613, 42.410923, 54.844940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.731306, 42.805065, 54.902428>,  <27.753323, 43.041550, 54.936920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.731306, 42.805065, 54.902428>,  <27.694613, 42.410923, 54.844940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.731306, 42.805065, 54.902428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583517, 0.063762, -0.809594,
		-0.806903, 0.158130, -0.569124,
		0.091733, 0.985358, 0.143721,
		27.758825, 43.100674, 54.945545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.506176, 42.742649, 54.202271>,  <27.694613, 42.410923, 54.844940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.506176, 42.742649, 54.202271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.725395, 42.993641, 54.423508>,  <27.856926, 43.144238, 54.556252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.725395, 42.993641, 54.423508>,  <27.506176, 42.742649, 54.202271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.725395, 42.993641, 54.423508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622627, 0.135520, -0.770694,
		-0.558550, 0.766749, -0.316415,
		0.548048, 0.627480, 0.553093,
		27.889811, 43.181885, 54.589436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.517708, 43.303631, 53.827526>,  <27.506176, 42.742649, 54.202271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.517708, 43.303631, 53.827526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.842752, 43.307823, 54.060612>,  <28.037779, 43.310337, 54.200462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.842752, 43.307823, 54.060612>,  <27.517708, 43.303631, 53.827526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.842752, 43.307823, 54.060612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562007, 0.250639, -0.788244,
		-0.154311, 0.968024, 0.197782,
		0.812611, 0.010480, 0.582713,
		28.086536, 43.310966, 54.235424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.906651, 43.952667, 53.527458>,  <27.517708, 43.303631, 53.827526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.906651, 43.952667, 53.527458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.166159, 43.730713, 53.735764>,  <28.321863, 43.597542, 53.860748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.166159, 43.730713, 53.735764>,  <27.906651, 43.952667, 53.527458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.166159, 43.730713, 53.735764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624813, -0.002236, -0.780771,
		0.434404, 0.831923, 0.345250,
		0.648770, -0.554887, 0.520768,
		28.360790, 43.564247, 53.891994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.551950, 44.276840, 53.478687>,  <27.906651, 43.952667, 53.527458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.551950, 44.276840, 53.478687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.650900, 43.904320, 53.585632>,  <28.710270, 43.680809, 53.649799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.650900, 43.904320, 53.585632>,  <28.551950, 44.276840, 53.478687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.650900, 43.904320, 53.585632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614927, -0.062346, -0.786116,
		0.748780, 0.358874, 0.557259,
		0.247374, -0.931301, 0.267365,
		28.725113, 43.624928, 53.665840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.245752, 44.241631, 53.194439>,  <28.551950, 44.276840, 53.478687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.245752, 44.241631, 53.194439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.125740, 43.868690, 53.275139>,  <29.053734, 43.644928, 53.323559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.125740, 43.868690, 53.275139>,  <29.245752, 44.241631, 53.194439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.125740, 43.868690, 53.275139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623580, -0.351744, -0.698158,
		0.721894, -0.083658, 0.686928,
		-0.300029, -0.932351, 0.201754,
		29.035730, 43.588985, 53.335667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.863823, 43.900150, 53.503578>,  <29.245752, 44.241631, 53.194439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.863823, 43.900150, 53.503578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.617691, 43.643246, 53.320770>,  <29.470013, 43.489101, 53.211086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.617691, 43.643246, 53.320770>,  <29.863823, 43.900150, 53.503578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.617691, 43.643246, 53.320770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699401, -0.177400, -0.692363,
		0.363602, -0.745674, 0.558358,
		-0.615330, -0.642261, -0.457022,
		29.433092, 43.450569, 53.183662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.243752, 43.342300, 53.519127>,  <29.863823, 43.900150, 53.503578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.243752, 43.342300, 53.519127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.973160, 43.296787, 53.228081>,  <29.810804, 43.269478, 53.053452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.973160, 43.296787, 53.228081>,  <30.243752, 43.342300, 53.519127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.973160, 43.296787, 53.228081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696756, -0.418913, -0.582275,
		-0.238555, -0.900869, 0.362666,
		-0.676478, -0.113785, -0.727619,
		29.770216, 43.262653, 53.009796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.951424, 43.465565, 53.511288>,  <30.243752, 43.342300, 53.519127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.951424, 43.465565, 53.511288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.268135, 43.382141, 53.740929>,  <31.458162, 43.332088, 53.878712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.268135, 43.382141, 53.740929>,  <30.951424, 43.465565, 53.511288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.268135, 43.382141, 53.740929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595800, -0.056623, 0.801134,
		-0.134575, -0.976370, -0.169091,
		0.791778, -0.208557, 0.574101,
		31.505669, 43.319572, 53.913158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.766722, 42.949249, 53.940399>,  <30.951424, 43.465565, 53.511288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.766722, 42.949249, 53.940399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.062338, 43.160110, 54.108177>,  <31.239708, 43.286625, 54.208843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.062338, 43.160110, 54.108177>,  <30.766722, 42.949249, 53.940399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.062338, 43.160110, 54.108177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499647, 0.011303, 0.866155,
		0.451852, -0.849698, 0.271742,
		0.739042, 0.527149, 0.419442,
		31.284050, 43.318256, 54.234009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.005627, 42.627285, 54.581612>,  <30.766722, 42.949249, 53.940399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.005627, 42.627285, 54.581612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.129904, 43.001614, 54.648193>,  <31.204470, 43.226212, 54.688145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.129904, 43.001614, 54.648193>,  <31.005627, 42.627285, 54.581612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.129904, 43.001614, 54.648193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344857, -0.052212, 0.937202,
		0.885745, -0.348585, 0.306503,
		0.310691, 0.935822, 0.166459,
		31.223112, 43.282360, 54.698132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.465183, 42.604931, 55.149063>,  <31.005627, 42.627285, 54.581612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.465183, 42.604931, 55.149063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.314543, 42.972874, 55.105167>,  <31.224159, 43.193638, 55.078831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.314543, 42.972874, 55.105167>,  <31.465183, 42.604931, 55.149063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.314543, 42.972874, 55.105167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295065, -0.006820, 0.955453,
		0.878128, 0.392203, 0.273985,
		-0.376600, 0.919853, -0.109736,
		31.201563, 43.248829, 55.072247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.619747, 42.946026, 55.787308>,  <31.465183, 42.604931, 55.149063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.619747, 42.946026, 55.787308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.313917, 43.145771, 55.624306>,  <31.130419, 43.265617, 55.526505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.313917, 43.145771, 55.624306>,  <31.619747, 42.946026, 55.787308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.313917, 43.145771, 55.624306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468464, 0.003689, 0.883475,
		0.442682, 0.866382, 0.231115,
		-0.764574, 0.499368, -0.407502,
		31.084545, 43.295582, 55.502056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.387329, 43.550110, 56.294712>,  <31.619747, 42.946026, 55.787308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.387329, 43.550110, 56.294712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.086334, 43.517471, 56.033298>,  <30.905737, 43.497887, 55.876450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.086334, 43.517471, 56.033298>,  <31.387329, 43.550110, 56.294712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.086334, 43.517471, 56.033298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658194, 0.058007, 0.750610,
		-0.023338, 0.994976, -0.097356,
		-0.752486, -0.081597, -0.653534,
		30.860588, 43.492992, 55.837238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.815792, 44.096992, 56.483536>,  <31.387329, 43.550110, 56.294712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.815792, 44.096992, 56.483536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.641735, 43.808655, 56.267742>,  <30.537302, 43.635654, 56.138268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.641735, 43.808655, 56.267742>,  <30.815792, 44.096992, 56.483536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.641735, 43.808655, 56.267742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781435, 0.004738, 0.623969,
		-0.447227, 0.693084, -0.565353,
		-0.435141, -0.720842, -0.539481,
		30.511192, 43.592403, 56.105900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.141729, 44.288788, 56.428413>,  <30.815792, 44.096992, 56.483536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.141729, 44.288788, 56.428413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.151880, 43.901676, 56.328213>,  <30.157970, 43.669407, 56.268093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.151880, 43.901676, 56.328213>,  <30.141729, 44.288788, 56.428413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.151880, 43.901676, 56.328213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814998, -0.165143, 0.555433,
		-0.578907, 0.190066, -0.792932,
		0.025379, -0.967782, -0.250506,
		30.159494, 43.611343, 56.253059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.460320, 44.108681, 56.155182>,  <30.141729, 44.288788, 56.428413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.460320, 44.108681, 56.155182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.618212, 43.761501, 56.275745>,  <29.712948, 43.553192, 56.348083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.618212, 43.761501, 56.275745>,  <29.460320, 44.108681, 56.155182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.618212, 43.761501, 56.275745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710706, -0.080524, 0.698865,
		-0.582309, -0.490080, -0.648643,
		0.394731, -0.867950, 0.301413,
		29.736631, 43.501118, 56.366169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.892681, 43.737549, 56.252964>,  <29.460320, 44.108681, 56.155182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.892681, 43.737549, 56.252964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.179480, 43.537636, 56.447338>,  <29.351559, 43.417686, 56.563961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.179480, 43.537636, 56.447338>,  <28.892681, 43.737549, 56.252964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.179480, 43.537636, 56.447338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667979, -0.293298, 0.683945,
		-0.199299, -0.814982, -0.544137,
		0.716996, -0.499781, 0.485937,
		29.394579, 43.387703, 56.593121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.668419, 43.005215, 56.350445>,  <28.892681, 43.737549, 56.252964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.668419, 43.005215, 56.350445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.931143, 43.084473, 56.641468>,  <29.088778, 43.132027, 56.816082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.931143, 43.084473, 56.641468>,  <28.668419, 43.005215, 56.350445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.931143, 43.084473, 56.641468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668289, -0.293947, 0.683363,
		0.349270, -0.935057, -0.060648,
		0.656811, 0.198148, 0.727555,
		29.128185, 43.143917, 56.859734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.325098, 42.733494, 56.906021>,  <28.668419, 43.005215, 56.350445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.325098, 42.733494, 56.906021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.615957, 42.947765, 57.077740>,  <28.790472, 43.076328, 57.180771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.615957, 42.947765, 57.077740>,  <28.325098, 42.733494, 56.906021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.615957, 42.947765, 57.077740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424514, -0.140567, 0.894443,
		0.539483, -0.832637, 0.125192,
		0.727149, 0.535683, 0.429300,
		28.834103, 43.108471, 57.206532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.565071, 42.260311, 57.386555>,  <28.325098, 42.733494, 56.906021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.565071, 42.260311, 57.386555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.653017, 42.640369, 57.474995>,  <28.705786, 42.868404, 57.528057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.653017, 42.640369, 57.474995>,  <28.565071, 42.260311, 57.386555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.653017, 42.640369, 57.474995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454571, -0.100747, 0.884995,
		0.863148, -0.295084, 0.409757,
		0.219866, 0.950145, 0.221096,
		28.718977, 42.925411, 57.541325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.669954, 42.235764, 58.100590>,  <28.565071, 42.260311, 57.386555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.669954, 42.235764, 58.100590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.634975, 42.632565, 58.064178>,  <28.613987, 42.870644, 58.042332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.634975, 42.632565, 58.064178>,  <28.669954, 42.235764, 58.100590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.634975, 42.632565, 58.064178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618332, 0.017595, 0.785720,
		0.781037, 0.124999, 0.611847,
		-0.087449, 0.992001, -0.091033,
		28.608740, 42.930164, 58.036869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.096027, 41.612682, 58.198212>,  <28.669954, 42.235764, 58.100590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.096027, 41.612682, 58.198212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.984230, 41.370342, 58.496159>,  <28.917152, 41.224937, 58.674927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.984230, 41.370342, 58.496159>,  <29.096027, 41.612682, 58.198212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.984230, 41.370342, 58.496159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222504, -0.795533, -0.563577,
		0.934010, 0.008219, 0.357152,
		-0.279494, -0.605854, 0.744865,
		28.900381, 41.188587, 58.719620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.707203, 41.201412, 58.477676>,  <29.096027, 41.612682, 58.198212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.707203, 41.201412, 58.477676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.377592, 40.999947, 58.581448>,  <29.179827, 40.879066, 58.643711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.377592, 40.999947, 58.581448>,  <29.707203, 41.201412, 58.477676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.377592, 40.999947, 58.581448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438410, -0.856911, -0.271109,
		0.358857, -0.109664, 0.926928,
		-0.824026, -0.503664, 0.259430,
		29.130384, 40.848846, 58.659275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.846176, 40.782955, 59.068661>,  <29.707203, 41.201412, 58.477676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.846176, 40.782955, 59.068661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.527870, 40.615368, 58.893745>,  <29.336885, 40.514816, 58.788795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.527870, 40.615368, 58.893745>,  <29.846176, 40.782955, 59.068661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.527870, 40.615368, 58.893745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465679, -0.884954, 0.000455,
		-0.387169, -0.203273, 0.899322,
		-0.795766, -0.418971, -0.437287,
		29.289141, 40.489677, 58.762558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.808764, 40.190025, 59.379200>,  <29.846176, 40.782955, 59.068661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.808764, 40.190025, 59.379200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.574883, 40.119076, 59.062553>,  <29.434553, 40.076508, 58.872566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.574883, 40.119076, 59.062553>,  <29.808764, 40.190025, 59.379200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.574883, 40.119076, 59.062553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445856, -0.885479, -0.130915,
		-0.677743, -0.429495, 0.596823,
		-0.584702, -0.177371, -0.791621,
		29.399471, 40.065865, 58.825066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.836975, 39.519825, 59.353840>,  <29.808764, 40.190025, 59.379200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.836975, 39.519825, 59.353840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.678822, 39.592155, 58.993626>,  <29.583929, 39.635555, 58.777496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.678822, 39.592155, 58.993626>,  <29.836975, 39.519825, 59.353840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.678822, 39.592155, 58.993626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629188, -0.660961, -0.408966,
		-0.669175, -0.728308, 0.147557,
		-0.395382, 0.180828, -0.900541,
		29.560205, 39.646404, 58.723465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.619333, 38.858906, 59.114586>,  <29.836975, 39.519825, 59.353840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.619333, 38.858906, 59.114586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.672361, 39.103657, 58.802681>,  <29.704178, 39.250507, 58.615536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.672361, 39.103657, 58.802681>,  <29.619333, 38.858906, 59.114586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.672361, 39.103657, 58.802681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509902, -0.716724, -0.475716,
		-0.849956, -0.334539, -0.407012,
		0.132570, 0.611874, -0.779766,
		29.712132, 39.287220, 58.568752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.658989, 38.492546, 58.485699>,  <29.619333, 38.858906, 59.114586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.658989, 38.492546, 58.485699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.848536, 38.815895, 58.345993>,  <29.962263, 39.009903, 58.262169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.848536, 38.815895, 58.345993>,  <29.658989, 38.492546, 58.485699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.848536, 38.815895, 58.345993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628106, -0.588262, -0.509343,
		-0.617199, 0.021984, -0.786500,
		0.473865, 0.808372, -0.349266,
		29.990696, 39.058407, 58.241215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.307442, 38.246346, 57.777424>,  <29.658989, 38.492546, 58.485699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.307442, 38.246346, 57.777424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.102774, 37.906158, 57.826244>,  <28.979973, 37.702045, 57.855537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.102774, 37.906158, 57.826244>,  <29.307442, 38.246346, 57.777424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.102774, 37.906158, 57.826244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648841, 0.475610, 0.593971,
		-0.563203, 0.224725, -0.795174,
		-0.511672, -0.850467, 0.122054,
		28.949272, 37.651020, 57.862862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.585871, 38.487724, 57.855869>,  <29.307442, 38.246346, 57.777424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.585871, 38.487724, 57.855869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.586372, 38.114063, 57.998611>,  <28.586674, 37.889866, 58.084259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.586372, 38.114063, 57.998611>,  <28.585871, 38.487724, 57.855869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.586372, 38.114063, 57.998611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628279, 0.276896, 0.727044,
		-0.777987, -0.225119, -0.586564,
		0.001254, -0.934157, 0.356860,
		28.586748, 37.833817, 58.105671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.882055, 38.230835, 57.946033>,  <28.585871, 38.487724, 57.855869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.882055, 38.230835, 57.946033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.083824, 37.973072, 58.175922>,  <28.204885, 37.818417, 58.313854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.083824, 37.973072, 58.175922>,  <27.882055, 38.230835, 57.946033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.083824, 37.973072, 58.175922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730924, 0.035678, 0.681526,
		-0.459684, -0.763852, -0.453014,
		0.504422, -0.644405, 0.574718,
		28.235151, 37.779751, 58.348339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.417431, 37.648624, 58.146023>,  <27.882055, 38.230835, 57.946033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.417431, 37.648624, 58.146023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.690935, 37.693443, 58.434444>,  <27.855038, 37.720333, 58.607498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.690935, 37.693443, 58.434444>,  <27.417431, 37.648624, 58.146023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.690935, 37.693443, 58.434444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729223, 0.140893, 0.669614,
		-0.026566, -0.983664, 0.178042,
		0.683760, 0.112043, 0.721054,
		27.896063, 37.727058, 58.650761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.089361, 37.383537, 58.714245>,  <27.417431, 37.648624, 58.146023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.089361, 37.383537, 58.714245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.405514, 37.562347, 58.881798>,  <27.595205, 37.669636, 58.982330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.405514, 37.562347, 58.881798>,  <27.089361, 37.383537, 58.714245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.405514, 37.562347, 58.881798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524872, 0.141521, 0.839334,
		0.315928, -0.883253, 0.346489,
		0.790379, 0.447031, 0.418884,
		27.642628, 37.696457, 59.007462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.250202, 37.054050, 59.369316>,  <27.089361, 37.383537, 58.714245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.250202, 37.054050, 59.369316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.412588, 37.418293, 59.400265>,  <27.510019, 37.636837, 59.418835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.412588, 37.418293, 59.400265>,  <27.250202, 37.054050, 59.369316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.412588, 37.418293, 59.400265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605586, 0.204636, 0.769019,
		0.684440, -0.359052, 0.634526,
		0.405964, 0.910607, 0.077376,
		27.534378, 37.691475, 59.423477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.329790, 37.142189, 60.070076>,  <27.250202, 37.054050, 59.369316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.329790, 37.142189, 60.070076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.362562, 37.508190, 59.912064>,  <27.382225, 37.727791, 59.817257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.362562, 37.508190, 59.912064>,  <27.329790, 37.142189, 60.070076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.362562, 37.508190, 59.912064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799453, 0.297016, 0.522165,
		0.595116, 0.273031, 0.755838,
		0.081929, 0.915006, -0.395035,
		27.387140, 37.782692, 59.793552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.373987, 37.609337, 60.636673>,  <27.329790, 37.142189, 60.070076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.373987, 37.609337, 60.636673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.243063, 37.809750, 60.316216>,  <27.164509, 37.929996, 60.123940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.243063, 37.809750, 60.316216>,  <27.373987, 37.609337, 60.636673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.243063, 37.809750, 60.316216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730026, 0.404228, 0.551055,
		0.599942, 0.765223, 0.233458,
		-0.327310, 0.501031, -0.801147,
		27.144871, 37.960060, 60.075871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.371002, 38.244144, 60.904026>,  <27.373987, 37.609337, 60.636673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.371002, 38.244144, 60.904026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.121225, 38.227852, 60.592022>,  <26.971359, 38.218075, 60.404819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.121225, 38.227852, 60.592022>,  <27.371002, 38.244144, 60.904026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.121225, 38.227852, 60.592022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729968, 0.385720, 0.564239,
		0.277884, 0.921716, -0.270591,
		-0.624441, -0.040730, -0.780009,
		26.933893, 38.215633, 60.358021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<38.625172, 36.076443, 47.778969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.607838, 36.450825, 47.918751>,  <38.597439, 36.675453, 48.002621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.607838, 36.450825, 47.918751>,  <38.625172, 36.076443, 47.778969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607838, 36.450825, 47.918751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960355, -0.135438, 0.243669,
		0.275391, -0.325039, 0.904715,
		-0.043331, 0.935952, 0.349451,
		38.594837, 36.731609, 48.023586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344158, 36.026123, 48.364532>,  <38.625172, 36.076443, 47.778969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344158, 36.026123, 48.364532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.251976, 36.397297, 48.247349>,  <38.196667, 36.620003, 48.177040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.251976, 36.397297, 48.247349>,  <38.344158, 36.026123, 48.364532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251976, 36.397297, 48.247349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937845, -0.131522, 0.321167,
		0.259491, 0.348767, 0.900570,
		-0.230458, 0.927935, -0.292961,
		38.182838, 36.675678, 48.159462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042141, 36.375828, 48.934586>,  <38.344158, 36.026123, 48.364532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042141, 36.375828, 48.934586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.902008, 36.550125, 48.602947>,  <37.817928, 36.654701, 48.403965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.902008, 36.550125, 48.602947>,  <38.042141, 36.375828, 48.934586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902008, 36.550125, 48.602947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936518, -0.149576, 0.317114,
		0.014166, 0.887557, 0.460479,
		-0.350334, 0.435739, -0.829094,
		37.796909, 36.680847, 48.354218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545654, 36.828495, 49.119244>,  <38.042141, 36.375828, 48.934586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545654, 36.828495, 49.119244> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.461189, 36.812473, 48.728592>,  <37.410511, 36.802860, 48.494202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.461189, 36.812473, 48.728592>,  <37.545654, 36.828495, 49.119244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461189, 36.812473, 48.728592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972582, 0.108226, 0.205845,
		0.097453, 0.993319, -0.061805,
		-0.211158, -0.040051, -0.976631,
		37.397842, 36.800457, 48.435604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227718, 37.436398, 49.018066>,  <37.545654, 36.828495, 49.119244>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227718, 37.436398, 49.018066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.117233, 37.178261, 48.733181>,  <37.050941, 37.023380, 48.562252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.117233, 37.178261, 48.733181>,  <37.227718, 37.436398, 49.018066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117233, 37.178261, 48.733181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960238, 0.216632, 0.176106,
		0.040638, 0.732533, -0.679517,
		-0.276209, -0.645342, -0.712210,
		37.034370, 36.984657, 48.519520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681545, 37.809669, 48.662102>,  <37.227718, 37.436398, 49.018066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681545, 37.809669, 48.662102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.649574, 37.417057, 48.592579>,  <36.630394, 37.181488, 48.550865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.649574, 37.417057, 48.592579>,  <36.681545, 37.809669, 48.662102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649574, 37.417057, 48.592579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991106, 0.059637, 0.118963,
		-0.106401, 0.181769, -0.977568,
		-0.079923, -0.981531, -0.173807,
		36.625599, 37.122597, 48.540436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995739, 37.813629, 48.341991>,  <36.681545, 37.809669, 48.662102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995739, 37.813629, 48.341991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.064518, 37.428337, 48.424580>,  <36.105785, 37.197163, 48.474133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.064518, 37.428337, 48.424580>,  <35.995739, 37.813629, 48.341991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064518, 37.428337, 48.424580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973391, -0.133895, 0.185963,
		-0.151480, -0.232950, -0.960619,
		0.171942, -0.963227, 0.206469,
		36.116100, 37.139370, 48.486523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544388, 37.518379, 47.823845>,  <35.995739, 37.813629, 48.341991>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.544388, 37.518379, 47.823845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.629837, 37.247871, 48.105843>,  <35.681107, 37.085567, 48.275043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.629837, 37.247871, 48.105843>,  <35.544388, 37.518379, 47.823845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629837, 37.247871, 48.105843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949486, -0.313537, -0.013057,
		0.229873, -0.666597, -0.709088,
		0.213621, -0.676271, 0.704999,
		35.693924, 37.044991, 48.317341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320427, 36.744865, 47.610664>,  <35.544388, 37.518379, 47.823845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320427, 36.744865, 47.610664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.295856, 36.762402, 48.009525>,  <35.281113, 36.772923, 48.248840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.295856, 36.762402, 48.009525>,  <35.320427, 36.744865, 47.610664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295856, 36.762402, 48.009525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963324, -0.264062, -0.047732,
		0.261218, -0.963509, 0.058442,
		-0.061423, 0.043830, 0.997149,
		35.277428, 36.775551, 48.308670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853020, 36.264774, 47.798779>,  <35.320427, 36.744865, 47.610664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853020, 36.264774, 47.798779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.868938, 36.474136, 48.139240>,  <34.878490, 36.599754, 48.343517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.868938, 36.474136, 48.139240>,  <34.853020, 36.264774, 47.798779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868938, 36.474136, 48.139240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962824, -0.207683, 0.172734,
		0.267180, -0.826384, 0.495686,
		0.039799, 0.523410, 0.851151,
		34.880878, 36.631161, 48.394585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578255, 35.878902, 48.227360>,  <34.853020, 36.264774, 47.798779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578255, 35.878902, 48.227360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.554100, 36.253113, 48.366585>,  <34.539608, 36.477638, 48.450119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.554100, 36.253113, 48.366585>,  <34.578255, 35.878902, 48.227360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554100, 36.253113, 48.366585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976284, -0.127985, 0.174613,
		0.207902, -0.329267, 0.921065,
		-0.060388, 0.935523, 0.348066,
		34.535984, 36.533772, 48.471004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134869, 35.817848, 48.859703>,  <34.578255, 35.878902, 48.227360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134869, 35.817848, 48.859703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.110878, 36.204491, 48.760036>,  <34.096485, 36.436474, 48.700237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.110878, 36.204491, 48.760036>,  <34.134869, 35.817848, 48.859703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110878, 36.204491, 48.760036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993092, -0.083001, -0.082941,
		-0.100852, 0.242469, 0.964903,
		-0.059977, 0.966602, -0.249165,
		34.092884, 36.494473, 48.685287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487358, 35.902130, 49.032852>,  <34.134869, 35.817848, 48.859703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487358, 35.902130, 49.032852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.626884, 36.164829, 48.765419>,  <33.710598, 36.322449, 48.604958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.626884, 36.164829, 48.765419>,  <33.487358, 35.902130, 49.032852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626884, 36.164829, 48.765419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893628, 0.018096, -0.448443,
		-0.282417, 0.753890, 0.593204,
		0.348812, 0.656751, -0.668587,
		33.731529, 36.361855, 48.564842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793262, 36.316063, 49.082546>,  <33.487358, 35.902130, 49.032852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.793262, 36.316063, 49.082546> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.011906, 36.059620, 49.298023>,  <33.143093, 35.905754, 49.427311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.011906, 36.059620, 49.298023>,  <32.793262, 36.316063, 49.082546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011906, 36.059620, 49.298023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011372, -0.637565, -0.770313,
		0.837308, 0.427189, -0.341210,
		0.546613, -0.641109, 0.538697,
		33.175888, 35.867287, 49.459633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.103313, 36.015854, 48.865017>,  <32.793262, 36.316063, 49.082546>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.103313, 36.015854, 48.865017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.899843, 36.333210, 48.998749>,  <31.777761, 36.523624, 49.078987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.899843, 36.333210, 48.998749>,  <32.103313, 36.015854, 48.865017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.899843, 36.333210, 48.998749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760325, -0.596151, 0.257893,
		0.403921, -0.123014, 0.906485,
		-0.508678, 0.793392, 0.334329,
		31.747240, 36.571228, 49.099049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.808584, 35.938850, 49.630077>,  <32.103313, 36.015854, 48.865017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.808584, 35.938850, 49.630077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.578499, 36.211903, 49.449795>,  <31.440447, 36.375736, 49.341625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.578499, 36.211903, 49.449795>,  <31.808584, 35.938850, 49.630077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.578499, 36.211903, 49.449795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800965, -0.581895, 0.140899,
		-0.166083, 0.442050, 0.881481,
		-0.575214, 0.682634, -0.450710,
		31.405935, 36.416695, 49.314583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.227022, 36.065895, 50.005047>,  <31.808584, 35.938850, 49.630077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.227022, 36.065895, 50.005047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.096165, 36.207703, 49.654667>,  <31.017651, 36.292786, 49.444439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.096165, 36.207703, 49.654667>,  <31.227022, 36.065895, 50.005047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.096165, 36.207703, 49.654667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843762, -0.526966, 0.101846,
		-0.425491, 0.772414, 0.471522,
		-0.327144, 0.354518, -0.875953,
		30.998022, 36.314056, 49.391880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.575010, 36.511578, 50.112995>,  <31.227022, 36.065895, 50.005047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.575010, 36.511578, 50.112995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.574131, 36.380985, 49.734913>,  <30.573603, 36.302631, 49.508064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.574131, 36.380985, 49.734913>,  <30.575010, 36.511578, 50.112995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.574131, 36.380985, 49.734913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984621, -0.164413, 0.059079,
		-0.174691, 0.930795, -0.321098,
		-0.002198, -0.326481, -0.945201,
		30.573471, 36.283039, 49.451351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.054861, 36.857937, 49.947899>,  <30.575010, 36.511578, 50.112995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.054861, 36.857937, 49.947899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.097275, 36.571266, 49.672180>,  <30.122723, 36.399265, 49.506748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.097275, 36.571266, 49.672180>,  <30.054861, 36.857937, 49.947899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.097275, 36.571266, 49.672180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963813, -0.244582, 0.106034,
		-0.244582, 0.653112, -0.716676,
		-0.106034, 0.716676, 0.689298,
		30.129086, 36.356262, 49.465389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.502401, 36.952347, 49.474403>,  <30.054861, 36.857937, 49.947899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.502401, 36.952347, 49.474403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.617062, 36.576149, 49.401409>,  <29.685858, 36.350430, 49.357613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.617062, 36.576149, 49.401409>,  <29.502401, 36.952347, 49.474403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.617062, 36.576149, 49.401409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950985, -0.302399, 0.064673,
		-0.116008, 0.155005, -0.981079,
		0.286653, -0.940493, -0.182488,
		29.703058, 36.294003, 49.346664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.084307, 36.694401, 48.834576>,  <29.502401, 36.952347, 49.474403>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.084307, 36.694401, 48.834576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.201509, 36.383415, 49.057175>,  <29.271832, 36.196823, 49.190735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.201509, 36.383415, 49.057175>,  <29.084307, 36.694401, 48.834576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.201509, 36.383415, 49.057175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955121, -0.264491, 0.133374,
		0.043495, -0.570603, -0.820073,
		0.293006, -0.777468, 0.556499,
		29.289412, 36.150173, 49.224125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.664488, 36.103859, 48.655125>,  <29.084307, 36.694401, 48.834576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.664488, 36.103859, 48.655125> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.823412, 35.973110, 48.998123>,  <28.918766, 35.894661, 49.203922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.823412, 35.973110, 48.998123>,  <28.664488, 36.103859, 48.655125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.823412, 35.973110, 48.998123> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889969, -0.365153, 0.273165,
		0.223827, -0.871675, -0.435986,
		0.397313, -0.326872, 0.857495,
		28.942606, 35.875050, 49.255371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.457548, 35.441799, 48.745792>,  <28.664488, 36.103859, 48.655125>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.457548, 35.441799, 48.745792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.517126, 35.601917, 49.107471>,  <28.552874, 35.697987, 49.324478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.517126, 35.601917, 49.107471>,  <28.457548, 35.441799, 48.745792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.517126, 35.601917, 49.107471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866984, -0.386891, 0.314093,
		0.475557, -0.830710, 0.289423,
		0.148945, 0.400294, 0.904201,
		28.561810, 35.722004, 49.378731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.189165, 34.965069, 49.179195>,  <28.457548, 35.441799, 48.745792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.189165, 34.965069, 49.179195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.200575, 35.279251, 49.426498>,  <28.207420, 35.467762, 49.574879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.200575, 35.279251, 49.426498>,  <28.189165, 34.965069, 49.179195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.200575, 35.279251, 49.426498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885953, -0.266555, 0.379521,
		0.462897, -0.558573, 0.688275,
		0.028527, 0.785458, 0.618257,
		28.209133, 35.514889, 49.611977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.125395, 34.665543, 49.830997>,  <28.189165, 34.965069, 49.179195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.125395, 34.665543, 49.830997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.060791, 35.052231, 49.910362>,  <28.022030, 35.284245, 49.957981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.060791, 35.052231, 49.910362>,  <28.125395, 34.665543, 49.830997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.060791, 35.052231, 49.910362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760961, -0.250010, 0.598693,
		0.628374, -0.054290, 0.776015,
		-0.161508, 0.966720, 0.198412,
		28.012339, 35.342247, 49.969887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.134470, 34.816853, 50.576183>,  <28.125395, 34.665543, 49.830997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.134470, 34.816853, 50.576183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.910557, 35.100777, 50.405155>,  <27.776209, 35.271130, 50.302540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.910557, 35.100777, 50.405155>,  <28.134470, 34.816853, 50.576183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.910557, 35.100777, 50.405155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725039, -0.169732, 0.667465,
		0.401202, 0.683637, 0.609653,
		-0.559782, 0.709811, -0.427566,
		27.742622, 35.313721, 50.276886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.901098, 35.221939, 51.183750>,  <28.134470, 34.816853, 50.576183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.901098, 35.221939, 51.183750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.652048, 35.300625, 50.880795>,  <27.502619, 35.347836, 50.699020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.652048, 35.300625, 50.880795>,  <27.901098, 35.221939, 51.183750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.652048, 35.300625, 50.880795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782517, -0.159527, 0.601845,
		-0.002431, 0.967395, 0.253261,
		-0.622624, 0.196718, -0.757391,
		27.465261, 35.359642, 50.653576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.471609, 35.778702, 51.410091>,  <27.901098, 35.221939, 51.183750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.471609, 35.778702, 51.410091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.267096, 35.581425, 51.128567>,  <27.144388, 35.463058, 50.959652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.267096, 35.581425, 51.128567>,  <27.471609, 35.778702, 51.410091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.267096, 35.581425, 51.128567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745116, -0.153688, 0.648986,
		-0.428244, 0.856235, -0.288910,
		-0.511282, -0.493196, -0.703809,
		27.113710, 35.433464, 50.917423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.739609, 36.081825, 51.450100>,  <27.471609, 35.778702, 51.410091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.739609, 36.081825, 51.450100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.661802, 35.750275, 51.240288>,  <26.615118, 35.551346, 51.114399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.661802, 35.750275, 51.240288>,  <26.739609, 36.081825, 51.450100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.661802, 35.750275, 51.240288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952709, 0.032366, 0.302157,
		-0.233473, 0.558498, -0.795971,
		-0.194517, -0.828874, -0.524529,
		26.603447, 35.501614, 51.082928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.057962, 36.225140, 51.134567>,  <26.739609, 36.081825, 51.450100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.057962, 36.225140, 51.134567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.147928, 35.836258, 51.108562>,  <26.201908, 35.602928, 51.092960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.147928, 35.836258, 51.108562>,  <26.057962, 36.225140, 51.134567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.147928, 35.836258, 51.108562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908631, -0.233364, 0.346311,
		-0.351857, -0.018823, -0.935865,
		0.224916, -0.972208, -0.065008,
		26.215403, 35.544598, 51.089062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.518507, 35.908566, 50.841415>,  <26.057962, 36.225140, 51.134567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.518507, 35.908566, 50.841415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.678087, 35.576946, 50.998142>,  <25.773834, 35.377975, 51.092178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.678087, 35.576946, 50.998142>,  <25.518507, 35.908566, 50.841415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.678087, 35.576946, 50.998142> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916891, -0.354929, 0.182585,
		-0.012306, -0.432093, -0.901745,
		0.398949, -0.829048, 0.391814,
		25.797771, 35.328232, 51.115688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.218801, 35.276077, 50.554630>,  <25.518507, 35.908566, 50.841415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.218801, 35.276077, 50.554630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.353220, 35.152779, 50.910622>,  <25.433872, 35.078800, 51.124214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.353220, 35.152779, 50.910622>,  <25.218801, 35.276077, 50.554630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.353220, 35.152779, 50.910622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867807, -0.468572, 0.165384,
		0.366037, -0.827902, -0.424964,
		0.336048, -0.308250, 0.889974,
		25.454035, 35.060303, 51.177612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.069885, 34.537743, 50.652016>,  <25.218801, 35.276077, 50.554630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.069885, 34.537743, 50.652016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.120659, 34.647560, 51.033279>,  <25.151123, 34.713451, 51.262039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.120659, 34.647560, 51.033279>,  <25.069885, 34.537743, 50.652016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.120659, 34.647560, 51.033279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780986, -0.564752, 0.266676,
		0.611513, -0.778254, 0.142732,
		0.126933, 0.274548, 0.953159,
		25.158739, 34.729923, 51.319225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.989990, 33.908409, 51.020554>,  <25.069885, 34.537743, 50.652016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.989990, 33.908409, 51.020554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.929520, 34.221745, 51.261723>,  <24.893238, 34.409748, 51.406425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.929520, 34.221745, 51.261723>,  <24.989990, 33.908409, 51.020554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.929520, 34.221745, 51.261723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624023, -0.548667, 0.556382,
		0.766643, -0.292128, 0.571769,
		-0.151176, 0.783343, 0.602926,
		24.884167, 34.456749, 51.442600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.438269, 33.948780, 50.467484>,  <24.989990, 33.908409, 51.020554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.438269, 33.948780, 50.467484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.688810, 33.989288, 50.776657>,  <25.839134, 34.013592, 50.962162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.688810, 33.989288, 50.776657>,  <25.438269, 33.948780, 50.467484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.688810, 33.989288, 50.776657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142605, 0.989679, -0.014104,
		-0.766385, -0.101390, 0.634329,
		0.626353, 0.101268, 0.772934,
		25.876717, 34.019669, 51.008537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<37.286240, 33.507858, 48.845184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.987930, 33.639500, 48.613487>,  <36.808945, 33.718483, 48.474468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.987930, 33.639500, 48.613487>,  <37.286240, 33.507858, 48.845184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987930, 33.639500, 48.613487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421045, 0.440968, 0.792634,
		0.516281, 0.835010, -0.190296,
		-0.745772, 0.329099, -0.579240,
		36.764198, 33.738228, 48.439716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221695, 34.288002, 48.999138>,  <37.286240, 33.507858, 48.845184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221695, 34.288002, 48.999138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.875511, 34.140923, 48.863037>,  <36.667801, 34.052673, 48.781376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.875511, 34.140923, 48.863037>,  <37.221695, 34.288002, 48.999138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875511, 34.140923, 48.863037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476055, 0.392088, 0.787171,
		-0.156033, 0.843246, -0.514383,
		-0.865462, -0.367699, -0.340253,
		36.615871, 34.030613, 48.760960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725925, 34.890686, 48.946392>,  <37.221695, 34.288002, 48.999138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725925, 34.890686, 48.946392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.499962, 34.561916, 48.975552>,  <36.364384, 34.364655, 48.993046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.499962, 34.561916, 48.975552>,  <36.725925, 34.890686, 48.946392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499962, 34.561916, 48.975552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548519, 0.440053, 0.710971,
		-0.616447, 0.361646, -0.699432,
		-0.564907, -0.821928, 0.072900,
		36.330490, 34.315338, 48.997421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011845, 35.053570, 48.858742>,  <36.725925, 34.890686, 48.946392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011845, 35.053570, 48.858742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.986019, 34.709656, 49.061363>,  <35.970524, 34.503307, 49.182934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.986019, 34.709656, 49.061363>,  <36.011845, 35.053570, 48.858742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986019, 34.709656, 49.061363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676178, 0.411010, 0.611437,
		-0.733904, -0.303041, -0.607907,
		-0.064566, -0.859789, 0.506551,
		35.966648, 34.451717, 49.213329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.316700, 35.084690, 49.308800>,  <36.011845, 35.053570, 48.858742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.316700, 35.084690, 49.308800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.536297, 34.778446, 49.442932>,  <35.668056, 34.594700, 49.523411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.536297, 34.778446, 49.442932>,  <35.316700, 35.084690, 49.308800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536297, 34.778446, 49.442932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486382, 0.033645, 0.873098,
		-0.679735, -0.642425, -0.353908,
		0.548993, -0.765610, 0.335333,
		35.700996, 34.548763, 49.543533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877861, 34.708080, 49.609894>,  <35.316700, 35.084690, 49.308800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877861, 34.708080, 49.609894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.220512, 34.598125, 49.784534>,  <35.426105, 34.532150, 49.889320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.220512, 34.598125, 49.784534>,  <34.877861, 34.708080, 49.609894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220512, 34.598125, 49.784534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437432, 0.061731, 0.897130,
		-0.273564, -0.959492, -0.067365,
		0.856630, -0.274890, 0.436600,
		35.477501, 34.515659, 49.915516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680820, 34.369968, 50.152580>,  <34.877861, 34.708080, 49.609894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680820, 34.369968, 50.152580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.060692, 34.458607, 50.241127>,  <35.288616, 34.511791, 50.294254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.060692, 34.458607, 50.241127>,  <34.680820, 34.369968, 50.152580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060692, 34.458607, 50.241127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231465, 0.020358, 0.972630,
		0.211023, -0.974926, 0.070625,
		0.949680, 0.221595, 0.221366,
		35.345596, 34.525085, 50.307537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836403, 34.004478, 50.707928>,  <34.680820, 34.369968, 50.152580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836403, 34.004478, 50.707928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.092255, 34.311943, 50.705681>,  <35.245766, 34.496422, 50.704334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.092255, 34.311943, 50.705681>,  <34.836403, 34.004478, 50.707928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092255, 34.311943, 50.705681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150304, 0.132234, 0.979756,
		0.753846, -0.625836, 0.200114,
		0.639628, 0.768664, -0.005618,
		35.284142, 34.542542, 50.703995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297462, 33.899624, 51.282810>,  <34.836403, 34.004478, 50.707928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297462, 33.899624, 51.282810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.324604, 34.293507, 51.218616>,  <35.340889, 34.529835, 51.180099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.324604, 34.293507, 51.218616>,  <35.297462, 33.899624, 51.282810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324604, 34.293507, 51.218616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136124, 0.168484, 0.976260,
		0.988365, -0.044399, 0.145474,
		0.067855, 0.984704, -0.160480,
		35.344959, 34.588917, 51.170471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749638, 34.192905, 51.825092>,  <35.297462, 33.899624, 51.282810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749638, 34.192905, 51.825092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.520187, 34.481457, 51.669884>,  <35.382519, 34.654587, 51.576759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.520187, 34.481457, 51.669884>,  <35.749638, 34.192905, 51.825092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520187, 34.481457, 51.669884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423132, 0.144652, 0.894447,
		0.701365, 0.677264, 0.222263,
		-0.573626, 0.721381, -0.388025,
		35.348099, 34.697872, 51.553474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874786, 34.769756, 52.299496>,  <35.749638, 34.192905, 51.825092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874786, 34.769756, 52.299496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.535538, 34.847870, 52.102497>,  <35.331989, 34.894737, 51.984299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.535538, 34.847870, 52.102497>,  <35.874786, 34.769756, 52.299496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535538, 34.847870, 52.102497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454424, 0.209758, 0.865737,
		0.272366, 0.958054, -0.089160,
		-0.848125, 0.195281, -0.492493,
		35.281101, 34.906452, 51.954750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620075, 35.252678, 52.698807>,  <35.874786, 34.769756, 52.299496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620075, 35.252678, 52.698807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.308739, 35.182560, 52.457657>,  <35.121937, 35.140491, 52.312965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.308739, 35.182560, 52.457657>,  <35.620075, 35.252678, 52.698807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308739, 35.182560, 52.457657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627421, 0.252322, 0.736666,
		0.022987, 0.951634, -0.306374,
		-0.778341, -0.175291, -0.602875,
		35.075237, 35.129974, 52.276794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620087, 35.933346, 52.681862>,  <35.620075, 35.252678, 52.698807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620087, 35.933346, 52.681862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.963818, 36.059696, 52.842751>,  <36.170055, 36.135506, 52.939281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.963818, 36.059696, 52.842751>,  <35.620087, 35.933346, 52.681862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963818, 36.059696, 52.842751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465880, -0.159041, -0.870437,
		-0.210977, 0.935377, -0.283827,
		0.859328, 0.315872, 0.402220,
		36.221615, 36.154457, 52.963417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948704, 36.317333, 52.143105>,  <35.620087, 35.933346, 52.681862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948704, 36.317333, 52.143105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.237263, 36.235882, 52.407867>,  <36.410397, 36.187012, 52.566727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.237263, 36.235882, 52.407867>,  <35.948704, 36.317333, 52.143105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237263, 36.235882, 52.407867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640867, -0.165933, -0.749504,
		0.262454, 0.964884, 0.010797,
		0.721393, -0.203630, 0.661912,
		36.453682, 36.174793, 52.606441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532478, 36.779987, 52.099087>,  <35.948704, 36.317333, 52.143105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532478, 36.779987, 52.099087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.707890, 36.459534, 52.261993>,  <36.813137, 36.267262, 52.359737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.707890, 36.459534, 52.261993>,  <36.532478, 36.779987, 52.099087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707890, 36.459534, 52.261993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754784, 0.082321, -0.650788,
		0.487843, 0.592793, 0.640785,
		0.438532, -0.801137, 0.407271,
		36.839451, 36.219193, 52.384174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306267, 37.024139, 52.083591>,  <36.532478, 36.779987, 52.099087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306267, 37.024139, 52.083591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.276142, 36.627132, 52.122044>,  <37.258068, 36.388927, 52.145115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.276142, 36.627132, 52.122044>,  <37.306267, 37.024139, 52.083591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276142, 36.627132, 52.122044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809466, -0.117152, -0.575361,
		0.582317, 0.034481, 0.812230,
		-0.075315, -0.992515, 0.096130,
		37.253548, 36.329376, 52.150883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934414, 36.909122, 52.277611>,  <37.306267, 37.024139, 52.083591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934414, 36.909122, 52.277611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.761711, 36.572948, 52.146610>,  <37.658089, 36.371246, 52.068008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.761711, 36.572948, 52.146610>,  <37.934414, 36.909122, 52.277611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.761711, 36.572948, 52.146610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820958, -0.215740, -0.528662,
		0.373649, -0.497121, 0.783107,
		-0.431757, -0.840433, -0.327504,
		37.632183, 36.320820, 52.048359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362125, 36.375519, 52.338341>,  <37.934414, 36.909122, 52.277611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362125, 36.375519, 52.338341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.112511, 36.224167, 52.064873>,  <37.962742, 36.133354, 51.900791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.112511, 36.224167, 52.064873>,  <38.362125, 36.375519, 52.338341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112511, 36.224167, 52.064873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780778, -0.267105, -0.564836,
		0.031112, -0.886274, 0.462116,
		-0.624033, -0.378384, -0.683673,
		37.925301, 36.110653, 51.859772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615715, 35.718609, 52.217190>,  <38.362125, 36.375519, 52.338341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.615715, 35.718609, 52.217190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.405144, 35.798588, 51.886642>,  <38.278801, 35.846573, 51.688313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.405144, 35.798588, 51.886642>,  <38.615715, 35.718609, 52.217190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405144, 35.798588, 51.886642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824132, -0.118910, -0.553775,
		-0.208989, -0.972565, -0.102183,
		-0.526431, 0.199946, -0.826372,
		38.247215, 35.858570, 51.638729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855812, 35.190403, 51.734737>,  <38.615715, 35.718609, 52.217190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.855812, 35.190403, 51.734737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.679653, 35.481152, 51.523945>,  <38.573959, 35.655602, 51.397469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.679653, 35.481152, 51.523945>,  <38.855812, 35.190403, 51.734737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679653, 35.481152, 51.523945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711825, -0.075018, -0.698339,
		-0.547136, -0.682664, -0.484367,
		-0.440395, 0.726871, -0.526982,
		38.547535, 35.699211, 51.365849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014359, 34.950054, 51.066040>,  <38.855812, 35.190403, 51.734737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.014359, 34.950054, 51.066040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.910362, 35.334259, 51.026409>,  <38.847965, 35.564781, 51.002632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.910362, 35.334259, 51.026409>,  <39.014359, 34.950054, 51.066040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910362, 35.334259, 51.026409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654534, 0.099866, -0.749408,
		-0.709923, -0.259689, -0.654653,
		-0.259990, 0.960515, -0.099078,
		38.832367, 35.622414, 50.996685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814518, 34.978161, 50.436226>,  <39.014359, 34.950054, 51.066040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814518, 34.978161, 50.436226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.924175, 35.347874, 50.542473>,  <38.989971, 35.569702, 50.606220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.924175, 35.347874, 50.542473>,  <38.814518, 34.978161, 50.436226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924175, 35.347874, 50.542473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612633, 0.045053, -0.789083,
		-0.741300, 0.379048, -0.553893,
		0.274146, 0.924280, 0.265615,
		39.006420, 35.625156, 50.622158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815147, 35.310825, 49.758541>,  <38.814518, 34.978161, 50.436226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815147, 35.310825, 49.758541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.039803, 35.537487, 49.999695>,  <39.174595, 35.673485, 50.144386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.039803, 35.537487, 49.999695>,  <38.815147, 35.310825, 49.758541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039803, 35.537487, 49.999695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574390, 0.257433, -0.777049,
		-0.595519, 0.782709, -0.180896,
		0.561634, 0.566653, 0.602886,
		39.208294, 35.707481, 50.180561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906124, 35.957954, 49.399212>,  <38.815147, 35.310825, 49.758541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906124, 35.957954, 49.399212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.200657, 35.990158, 49.667934>,  <39.377377, 36.009480, 49.829170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.200657, 35.990158, 49.667934>,  <38.906124, 35.957954, 49.399212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.200657, 35.990158, 49.667934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564383, 0.474568, -0.675467,
		-0.373202, 0.876529, 0.304002,
		0.736336, 0.080513, 0.671808,
		39.421558, 36.014313, 49.869476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232426, 36.602772, 49.344124>,  <38.906124, 35.957954, 49.399212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232426, 36.602772, 49.344124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.500443, 36.383926, 49.544807>,  <39.661251, 36.252621, 49.665218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.500443, 36.383926, 49.544807>,  <39.232426, 36.602772, 49.344124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.500443, 36.383926, 49.544807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729401, 0.359658, -0.581910,
		0.137926, 0.755852, 0.640050,
		0.670037, -0.547114, 0.501713,
		39.701454, 36.219791, 49.695320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777889, 37.048691, 49.571629>,  <39.232426, 36.602772, 49.344124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777889, 37.048691, 49.571629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.911285, 36.671818, 49.584774>,  <39.991322, 36.445694, 49.592659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.911285, 36.671818, 49.584774>,  <39.777889, 37.048691, 49.571629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.911285, 36.671818, 49.584774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836817, 0.279779, -0.470596,
		0.434194, 0.184435, 0.881737,
		0.333486, -0.942182, 0.032860,
		40.011330, 36.389164, 49.594631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.281799, 37.545582, 49.403393>,  <39.777889, 37.048691, 49.571629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.281799, 37.545582, 49.403393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.590588, 37.671116, 49.624508>,  <39.775860, 37.746437, 49.757175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.590588, 37.671116, 49.624508>,  <39.281799, 37.545582, 49.403393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590588, 37.671116, 49.624508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179946, 0.941946, -0.283475,
		-0.609659, 0.119361, 0.783625,
		0.771968, 0.313833, 0.552787,
		39.822178, 37.765266, 49.790344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006351, 38.090958, 49.836597>,  <39.281799, 37.545582, 49.403393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006351, 38.090958, 49.836597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.390972, 38.115982, 49.729633>,  <39.621742, 38.130997, 49.665455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.390972, 38.115982, 49.729633>,  <39.006351, 38.090958, 49.836597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.390972, 38.115982, 49.729633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159542, 0.919799, -0.358493,
		0.223540, 0.387372, 0.894412,
		0.961549, 0.062559, -0.267414,
		39.679436, 38.134750, 49.649410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420715, 38.724144, 50.232258>,  <39.006351, 38.090958, 49.836597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.420715, 38.724144, 50.232258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.510918, 38.601250, 49.862446>,  <39.565041, 38.527512, 49.640560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.510918, 38.601250, 49.862446>,  <39.420715, 38.724144, 50.232258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510918, 38.601250, 49.862446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294752, 0.882982, -0.365327,
		0.928583, 0.354890, 0.108560,
		0.225508, -0.307239, -0.924527,
		39.578571, 38.509079, 49.585087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.936630, 39.156643, 50.204079>,  <39.420715, 38.724144, 50.232258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.936630, 39.156643, 50.204079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.733585, 39.052589, 49.875526>,  <39.611759, 38.990158, 49.678394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.733585, 39.052589, 49.875526>,  <39.936630, 39.156643, 50.204079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733585, 39.052589, 49.875526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304158, 0.946056, -0.111652,
		0.806115, 0.193154, -0.559348,
		-0.507608, -0.260135, -0.821379,
		39.581303, 38.974548, 49.629112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039886, 39.739944, 49.754768>,  <39.936630, 39.156643, 50.204079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.039886, 39.739944, 49.754768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.705536, 39.529278, 49.692875>,  <39.504925, 39.402878, 49.655739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.705536, 39.529278, 49.692875>,  <40.039886, 39.739944, 49.754768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705536, 39.529278, 49.692875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534689, 0.844958, 0.012420,
		0.124202, 0.093116, -0.987878,
		-0.835872, -0.526665, -0.154733,
		39.454773, 39.371277, 49.646454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533600, 40.219570, 49.355858>,  <40.039886, 39.739944, 49.754768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533600, 40.219570, 49.355858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.311634, 39.926090, 49.512703>,  <39.178455, 39.750004, 49.606812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.311634, 39.926090, 49.512703>,  <39.533600, 40.219570, 49.355858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311634, 39.926090, 49.512703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783270, 0.619597, 0.050867,
		-0.280272, -0.278902, -0.918510,
		-0.554919, -0.733698, 0.392112,
		39.145157, 39.705982, 49.630337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791245, 40.451340, 49.139141>,  <39.533600, 40.219570, 49.355858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.791245, 40.451340, 49.139141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.727959, 40.173870, 49.420219>,  <38.689987, 40.007389, 49.588867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.727959, 40.173870, 49.420219>,  <38.791245, 40.451340, 49.139141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727959, 40.173870, 49.420219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933309, 0.337384, 0.122913,
		-0.322340, -0.636387, -0.700791,
		-0.158215, -0.693674, 0.702698,
		38.680492, 39.965767, 49.631027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155937, 40.291103, 49.001305>,  <38.791245, 40.451340, 49.139141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155937, 40.291103, 49.001305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.206856, 40.198471, 49.387085>,  <38.237408, 40.142891, 49.618553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.206856, 40.198471, 49.387085>,  <38.155937, 40.291103, 49.001305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206856, 40.198471, 49.387085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906753, 0.366913, 0.207782,
		-0.401987, -0.900970, -0.163275,
		0.127297, -0.231576, 0.964452,
		38.245045, 40.128998, 49.676422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499592, 40.102699, 49.218468>,  <38.155937, 40.291103, 49.001305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499592, 40.102699, 49.218468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.707924, 40.189030, 49.548840>,  <37.832924, 40.240826, 49.747063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.707924, 40.189030, 49.548840>,  <37.499592, 40.102699, 49.218468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707924, 40.189030, 49.548840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824444, 0.378130, 0.421082,
		-0.221429, -0.900243, 0.374875,
		0.520827, 0.215823, 0.825929,
		37.864174, 40.253777, 49.796619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011642, 39.934322, 49.775917>,  <37.499592, 40.102699, 49.218468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011642, 39.934322, 49.775917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.284176, 40.186794, 49.924187>,  <37.447697, 40.338276, 50.013149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.284176, 40.186794, 49.924187>,  <37.011642, 39.934322, 49.775917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.284176, 40.186794, 49.924187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720802, 0.490420, 0.489829,
		0.127381, -0.600921, 0.789093,
		0.681335, 0.631175, 0.370675,
		37.488575, 40.376148, 50.035389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868954, 39.871433, 50.541790>,  <37.011642, 39.934322, 49.775917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868954, 39.871433, 50.541790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.094864, 40.199589, 50.506023>,  <37.230412, 40.396481, 50.484566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.094864, 40.199589, 50.506023>,  <36.868954, 39.871433, 50.541790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094864, 40.199589, 50.506023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710539, 0.538515, 0.452919,
		0.419719, -0.192267, 0.887057,
		0.564774, 0.820387, -0.089411,
		37.264297, 40.445705, 50.479198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900387, 40.225910, 51.266895>,  <36.868954, 39.871433, 50.541790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900387, 40.225910, 51.266895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.981152, 40.509193, 50.996288>,  <37.029610, 40.679161, 50.833923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.981152, 40.509193, 50.996288>,  <36.900387, 40.225910, 51.266895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981152, 40.509193, 50.996288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715109, 0.578583, 0.392251,
		0.669216, 0.404584, 0.623267,
		0.201913, 0.708204, -0.676519,
		37.041725, 40.721653, 50.793331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997257, 40.839119, 51.659298>,  <36.900387, 40.225910, 51.266895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.997257, 40.839119, 51.659298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.898949, 40.970695, 51.294575>,  <36.839962, 41.049641, 51.075741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.898949, 40.970695, 51.294575>,  <36.997257, 40.839119, 51.659298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898949, 40.970695, 51.294575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648291, 0.643541, 0.406907,
		0.720634, 0.691124, 0.055084,
		-0.245775, 0.328942, -0.911807,
		36.825214, 41.069378, 51.021034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219360, 41.580330, 51.657909>,  <36.997257, 40.839119, 51.659298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219360, 41.580330, 51.657909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.946629, 41.525677, 51.370453>,  <36.782990, 41.492886, 51.197979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.946629, 41.525677, 51.370453>,  <37.219360, 41.580330, 51.657909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946629, 41.525677, 51.370453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536466, 0.761267, 0.364249,
		0.497308, 0.633881, -0.592351,
		-0.681828, -0.136632, -0.718640,
		36.742081, 41.484688, 51.154861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866966, 42.294605, 51.549034>,  <37.219360, 41.580330, 51.657909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.866966, 42.294605, 51.549034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.623203, 42.042103, 51.357140>,  <36.476948, 41.890602, 51.242004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.623203, 42.042103, 51.357140>,  <36.866966, 42.294605, 51.549034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623203, 42.042103, 51.357140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792171, 0.510004, 0.335204,
		0.033067, 0.584306, -0.810859,
		-0.609403, -0.631255, -0.479734,
		36.440384, 41.852726, 51.213219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331959, 42.672371, 51.390686>,  <36.866966, 42.294605, 51.549034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331959, 42.672371, 51.390686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.166176, 42.311672, 51.341576>,  <36.066704, 42.095253, 51.312107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.166176, 42.311672, 51.341576>,  <36.331959, 42.672371, 51.390686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166176, 42.311672, 51.341576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823776, 0.314391, 0.471753,
		-0.386802, 0.296664, -0.873141,
		-0.414460, -0.901747, -0.122778,
		36.041840, 42.041149, 51.304741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709839, 42.743771, 50.987915>,  <36.331959, 42.672371, 51.390686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709839, 42.743771, 50.987915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.651634, 42.402222, 51.187805>,  <35.616711, 42.197292, 51.307739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.651634, 42.402222, 51.187805>,  <35.709839, 42.743771, 50.987915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651634, 42.402222, 51.187805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856030, 0.361897, 0.369112,
		-0.496024, -0.374068, -0.783603,
		-0.145510, -0.853875, 0.499723,
		35.607983, 42.146057, 51.337723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990463, 42.590187, 50.953911>,  <35.709839, 42.743771, 50.987915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.990463, 42.590187, 50.953911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.098442, 42.339954, 51.246700>,  <35.163231, 42.189816, 51.422375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.098442, 42.339954, 51.246700>,  <34.990463, 42.590187, 50.953911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098442, 42.339954, 51.246700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901436, 0.103004, 0.420480,
		-0.338439, -0.773332, -0.536113,
		0.269949, -0.625578, 0.731970,
		35.179428, 42.152283, 51.466290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519665, 41.966324, 51.004395>,  <34.990463, 42.590187, 50.953911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519665, 41.966324, 51.004395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.675930, 42.063286, 51.359612>,  <34.769691, 42.121464, 51.572742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.675930, 42.063286, 51.359612>,  <34.519665, 41.966324, 51.004395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675930, 42.063286, 51.359612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917510, 0.180638, 0.354323,
		-0.074526, -0.953211, 0.292975,
		0.390667, 0.242401, 0.888044,
		34.793129, 42.136005, 51.626026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074871, 41.769306, 51.427288>,  <34.519665, 41.966324, 51.004395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074871, 41.769306, 51.427288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.289570, 41.964466, 51.702637>,  <34.418388, 42.081562, 51.867844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.289570, 41.964466, 51.702637>,  <34.074871, 41.769306, 51.427288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289570, 41.964466, 51.702637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839437, 0.226497, 0.494009,
		0.085115, -0.843001, 0.531136,
		0.536751, 0.487902, 0.688368,
		34.450596, 42.110836, 51.909145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863064, 41.489025, 52.217228>,  <34.074871, 41.769306, 51.427288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863064, 41.489025, 52.217228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.053730, 41.840008, 52.238625>,  <34.168129, 42.050598, 52.251465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.053730, 41.840008, 52.238625>,  <33.863064, 41.489025, 52.217228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053730, 41.840008, 52.238625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702031, 0.343330, 0.623921,
		0.529097, -0.334955, 0.779655,
		0.476664, 0.877456, 0.053494,
		34.196728, 42.103245, 52.254673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722214, 41.694958, 52.942211>,  <33.863064, 41.489025, 52.217228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722214, 41.694958, 52.942211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.833405, 42.044334, 52.782299>,  <33.900120, 42.253960, 52.686352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.833405, 42.044334, 52.782299>,  <33.722214, 41.694958, 52.942211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.833405, 42.044334, 52.782299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599847, 0.482901, 0.637958,
		0.750276, 0.062473, 0.658166,
		0.277974, 0.873444, -0.399783,
		33.916798, 42.306366, 52.662365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078594, 42.137024, 53.444397>,  <33.722214, 41.694958, 52.942211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078594, 42.137024, 53.444397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.909245, 42.360886, 53.159431>,  <33.807636, 42.495205, 52.988453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.909245, 42.360886, 53.159431>,  <34.078594, 42.137024, 53.444397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.909245, 42.360886, 53.159431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520441, 0.493422, 0.696904,
		0.741552, 0.665820, 0.082369,
		-0.423370, 0.559658, -0.712418,
		33.782234, 42.528782, 52.945705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960342, 42.831188, 53.707882>,  <34.078594, 42.137024, 53.444397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960342, 42.831188, 53.707882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.730728, 42.840759, 53.380489>,  <33.592960, 42.846504, 53.184052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.730728, 42.840759, 53.380489>,  <33.960342, 42.831188, 53.707882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730728, 42.840759, 53.380489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680094, 0.542751, 0.492843,
		0.456027, 0.839553, -0.295280,
		-0.574031, 0.023932, -0.818484,
		33.558517, 42.847939, 53.134945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690628, 43.569778, 53.658943>,  <33.960342, 42.831188, 53.707882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690628, 43.569778, 53.658943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.442471, 43.339844, 53.445526>,  <33.293575, 43.201881, 53.317474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.442471, 43.339844, 53.445526>,  <33.690628, 43.569778, 53.658943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442471, 43.339844, 53.445526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783169, 0.490408, 0.382290,
		0.041897, 0.655024, -0.754445,
		-0.620395, -0.574841, -0.533542,
		33.256351, 43.167393, 53.285465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.226475, 44.029442, 53.346664>,  <33.690628, 43.569778, 53.658943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.226475, 44.029442, 53.346664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.048504, 43.671268, 53.352913>,  <32.941723, 43.456364, 53.356663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.048504, 43.671268, 53.352913>,  <33.226475, 44.029442, 53.346664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.048504, 43.671268, 53.352913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841130, 0.423807, 0.335988,
		-0.307474, 0.136350, -0.941737,
		-0.444926, -0.895431, 0.015622,
		32.915028, 43.402637, 53.357601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.564552, 44.244625, 53.189629>,  <33.226475, 44.029442, 53.346664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.564552, 44.244625, 53.189629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.531418, 43.875240, 53.339481>,  <32.511536, 43.653610, 53.429394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.531418, 43.875240, 53.339481>,  <32.564552, 44.244625, 53.189629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.531418, 43.875240, 53.339481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779290, 0.294344, 0.553234,
		-0.621163, -0.246119, -0.744031,
		-0.082840, -0.923465, 0.374634,
		32.506565, 43.598202, 53.451870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.807493, 43.987679, 53.128155>,  <32.564552, 44.244625, 53.189629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.807493, 43.987679, 53.128155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.985888, 43.803646, 53.435249>,  <32.092926, 43.693226, 53.619507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.985888, 43.803646, 53.435249>,  <31.807493, 43.987679, 53.128155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.985888, 43.803646, 53.435249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842689, 0.073212, 0.533400,
		-0.301615, -0.884853, -0.355054,
		0.445987, -0.460082, 0.767738,
		32.119682, 43.665623, 53.665569>
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
