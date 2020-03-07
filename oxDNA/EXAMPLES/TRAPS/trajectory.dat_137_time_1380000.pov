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
	<35.964615, 52.963051, 50.068588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299198, 52.982155, 49.850208>,  <36.499947, 52.993618, 49.719181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299198, 52.982155, 49.850208>,  <35.964615, 52.963051, 50.068588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299198, 52.982155, 49.850208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548029, -0.067676, 0.833717,
		0.002867, -0.996564, -0.082780,
		0.836454, 0.047757, -0.545952,
		36.550133, 52.996483, 49.686424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459480, 52.378139, 50.075241>,  <35.964615, 52.963051, 50.068588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459480, 52.378139, 50.075241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690395, 52.701870, 50.031921>,  <36.828945, 52.896107, 50.005932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690395, 52.701870, 50.031921>,  <36.459480, 52.378139, 50.075241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690395, 52.701870, 50.031921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492317, -0.239179, 0.836909,
		0.651431, -0.536454, -0.536521,
		0.577288, 0.809327, -0.108298,
		36.863583, 52.944668, 49.999432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207237, 52.465767, 49.807972>,  <36.459480, 52.378139, 50.075241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207237, 52.465767, 49.807972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227837, 52.804073, 50.020393>,  <37.240196, 53.007057, 50.147846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227837, 52.804073, 50.020393>,  <37.207237, 52.465767, 49.807972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227837, 52.804073, 50.020393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861923, -0.306232, 0.404119,
		0.504418, 0.436917, -0.744759,
		0.051503, 0.845769, 0.531057,
		37.243286, 53.057804, 50.179710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936283, 52.142006, 50.065002>,  <37.207237, 52.465767, 49.807972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936283, 52.142006, 50.065002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.710705, 52.110958, 49.736137>,  <37.575359, 52.092331, 49.538818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.710705, 52.110958, 49.736137>,  <37.936283, 52.142006, 50.065002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710705, 52.110958, 49.736137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411623, -0.889504, -0.198364,
		-0.715916, -0.450286, 0.533579,
		-0.563942, -0.077621, -0.822159,
		37.541523, 52.087673, 49.489491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580215, 51.541901, 50.078346>,  <37.936283, 52.142006, 50.065002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580215, 51.541901, 50.078346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.651093, 51.656208, 49.701637>,  <37.693619, 51.724792, 49.475613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.651093, 51.656208, 49.701637>,  <37.580215, 51.541901, 50.078346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651093, 51.656208, 49.701637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467515, -0.866497, -0.174967,
		-0.866045, -0.409291, -0.287135,
		0.177189, 0.285769, -0.941775,
		37.704250, 51.741940, 49.419106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317867, 51.036396, 49.495018>,  <37.580215, 51.541901, 50.078346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317867, 51.036396, 49.495018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643475, 51.249371, 49.402161>,  <37.838840, 51.377155, 49.346447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643475, 51.249371, 49.402161>,  <37.317867, 51.036396, 49.495018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643475, 51.249371, 49.402161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519430, -0.846146, -0.119289,
		-0.259938, -0.023478, -0.965340,
		0.814017, 0.532434, -0.232141,
		37.887680, 51.409100, 49.332520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632000, 50.752285, 48.797104>,  <37.317867, 51.036396, 49.495018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.632000, 50.752285, 48.797104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.907516, 50.936680, 49.020908>,  <38.072826, 51.047318, 49.155190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.907516, 50.936680, 49.020908>,  <37.632000, 50.752285, 48.797104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907516, 50.936680, 49.020908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519287, -0.852280, 0.062937,
		0.505874, 0.247197, -0.826429,
		0.688791, 0.460992, 0.559512,
		38.114155, 51.074978, 49.188763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312634, 50.663483, 48.569756>,  <37.632000, 50.752285, 48.797104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312634, 50.663483, 48.569756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.408756, 50.757133, 48.946571>,  <38.466431, 50.813324, 49.172661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.408756, 50.757133, 48.946571>,  <38.312634, 50.663483, 48.569756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408756, 50.757133, 48.946571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556805, -0.828190, 0.063794,
		0.795123, 0.509202, -0.329383,
		0.240307, 0.234126, 0.942039,
		38.480850, 50.827370, 49.229183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007469, 50.971226, 48.644100>,  <38.312634, 50.663483, 48.569756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007469, 50.971226, 48.644100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.896870, 50.720352, 48.935356>,  <38.830509, 50.569828, 49.110111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.896870, 50.720352, 48.935356>,  <39.007469, 50.971226, 48.644100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896870, 50.720352, 48.935356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687108, -0.658746, -0.306492,
		0.671887, 0.415568, 0.613084,
		-0.276498, -0.627182, 0.728142,
		38.813919, 50.532196, 49.153797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.576183, 50.740231, 49.030460>,  <39.007469, 50.971226, 48.644100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.576183, 50.740231, 49.030460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285679, 50.466248, 49.053711>,  <39.111378, 50.301857, 49.067661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285679, 50.466248, 49.053711>,  <39.576183, 50.740231, 49.030460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285679, 50.466248, 49.053711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630268, -0.697242, -0.341490,
		0.274434, -0.211376, 0.938087,
		-0.726257, -0.684962, 0.058123,
		39.067802, 50.260757, 49.071148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758301, 50.157009, 49.438442>,  <39.576183, 50.740231, 49.030460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758301, 50.157009, 49.438442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.497009, 49.999928, 49.179497>,  <39.340237, 49.905678, 49.024132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.497009, 49.999928, 49.179497>,  <39.758301, 50.157009, 49.438442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.497009, 49.999928, 49.179497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557816, -0.827739, -0.060738,
		-0.511995, -0.400784, 0.759759,
		-0.653225, -0.392708, -0.647361,
		39.301041, 49.882114, 48.985287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227715, 50.399048, 49.988655>,  <39.758301, 50.157009, 49.438442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.227715, 50.399048, 49.988655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.454075, 50.710350, 49.879784>,  <40.589890, 50.897129, 49.814461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.454075, 50.710350, 49.879784>,  <40.227715, 50.399048, 49.988655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.454075, 50.710350, 49.879784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812146, -0.583061, 0.021395,
		-0.142047, -0.233159, -0.962008,
		0.565898, 0.778252, -0.272181,
		40.623844, 50.943825, 49.798130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566521, 50.172058, 49.417801>,  <40.227715, 50.399048, 49.988655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.566521, 50.172058, 49.417801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.792038, 50.434521, 49.618439>,  <40.927349, 50.591999, 49.738819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.792038, 50.434521, 49.618439>,  <40.566521, 50.172058, 49.417801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.792038, 50.434521, 49.618439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716764, -0.690456, 0.097569,
		0.410347, 0.304514, -0.859585,
		0.563795, 0.656157, 0.501591,
		40.961178, 50.631367, 49.768917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.269882, 50.314674, 49.147888>,  <40.566521, 50.172058, 49.417801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.269882, 50.314674, 49.147888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.249508, 50.359200, 49.544880>,  <41.237282, 50.385914, 49.783073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.249508, 50.359200, 49.544880>,  <41.269882, 50.314674, 49.147888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.249508, 50.359200, 49.544880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543732, -0.830483, 0.121050,
		0.837712, 0.545809, -0.018219,
		-0.050939, 0.111312, 0.992479,
		41.234226, 50.392593, 49.842625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.966934, 50.545513, 49.366066>,  <41.269882, 50.314674, 49.147888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.966934, 50.545513, 49.366066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.731579, 50.338852, 49.614861>,  <41.590366, 50.214855, 49.764137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.731579, 50.338852, 49.614861>,  <41.966934, 50.545513, 49.366066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.731579, 50.338852, 49.614861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672442, -0.739836, 0.021582,
		0.449020, 0.430950, 0.782728,
		-0.588391, -0.516648, 0.621989,
		41.555061, 50.183857, 49.801456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.739353, 51.003754, 50.005840>,  <41.966934, 50.545513, 49.366066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.739353, 51.003754, 50.005840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.033695, 51.235107, 49.864990>,  <42.210300, 51.373920, 49.780479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.033695, 51.235107, 49.864990>,  <41.739353, 51.003754, 50.005840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.033695, 51.235107, 49.864990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477211, -0.074028, 0.875665,
		0.480404, -0.812399, -0.330485,
		0.735855, 0.578384, -0.352123,
		42.254452, 51.408623, 49.759354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.321617, 50.780670, 50.382092>,  <41.739353, 51.003754, 50.005840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.321617, 50.780670, 50.382092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.443897, 51.115719, 50.201012>,  <42.517265, 51.316750, 50.092365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.443897, 51.115719, 50.201012>,  <42.321617, 50.780670, 50.382092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.443897, 51.115719, 50.201012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701665, 0.123196, 0.701775,
		0.643592, -0.532179, -0.550068,
		0.305704, 0.837621, -0.452699,
		42.535610, 51.367004, 50.065201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.073013, 50.754032, 50.523083>,  <42.321617, 50.780670, 50.382092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.073013, 50.754032, 50.523083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.915150, 51.116161, 50.460297>,  <42.820431, 51.333439, 50.422623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.915150, 51.116161, 50.460297>,  <43.073013, 50.754032, 50.523083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.915150, 51.116161, 50.460297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565802, 0.374055, 0.734813,
		0.723958, 0.201185, -0.659856,
		-0.394656, 0.905322, -0.156969,
		42.796753, 51.387756, 50.413204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.534641, 51.338993, 50.169239>,  <43.073013, 50.754032, 50.523083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.534641, 51.338993, 50.169239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.269672, 51.480888, 50.433167>,  <43.110691, 51.566025, 50.591522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.269672, 51.480888, 50.433167>,  <43.534641, 51.338993, 50.169239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.269672, 51.480888, 50.433167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749082, 0.303881, 0.588670,
		0.008317, 0.884205, -0.467025,
		-0.662426, 0.354736, 0.659814,
		43.070946, 51.587311, 50.631111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.512001, 52.120716, 50.193878>,  <43.534641, 51.338993, 50.169239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.512001, 52.120716, 50.193878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.459038, 51.909866, 50.529640>,  <43.427261, 51.783356, 50.731098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.459038, 51.909866, 50.529640>,  <43.512001, 52.120716, 50.193878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.459038, 51.909866, 50.529640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746268, 0.504340, 0.434426,
		-0.652345, 0.683942, 0.326602,
		-0.132404, -0.527128, 0.839408,
		43.419315, 51.751728, 50.781464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.673431, 52.626930, 50.595116>,  <43.512001, 52.120716, 50.193878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.673431, 52.626930, 50.595116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.717064, 52.281803, 50.792557>,  <43.743244, 52.074726, 50.911022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.717064, 52.281803, 50.792557>,  <43.673431, 52.626930, 50.595116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.717064, 52.281803, 50.792557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661990, 0.433484, 0.611442,
		-0.741533, 0.260062, 0.618463,
		0.109081, -0.862821, 0.493601,
		43.749786, 52.022957, 50.940636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.689251, 52.785088, 51.281204>,  <43.673431, 52.626930, 50.595116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.689251, 52.785088, 51.281204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.873615, 52.432022, 51.244385>,  <43.984234, 52.220184, 51.222294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.873615, 52.432022, 51.244385>,  <43.689251, 52.785088, 51.281204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.873615, 52.432022, 51.244385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664724, 0.274653, 0.694772,
		-0.587968, -0.381411, 0.713316,
		0.460908, -0.882662, -0.092046,
		44.011887, 52.167225, 51.216770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.431297, 52.581955, 51.420753>,  <43.689251, 52.785088, 51.281204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.431297, 52.581955, 51.420753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.349098, 52.440460, 51.785751>,  <44.299778, 52.355564, 52.004749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.349098, 52.440460, 51.785751>,  <44.431297, 52.581955, 51.420753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.349098, 52.440460, 51.785751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732853, 0.562326, 0.383035,
		-0.648611, 0.747436, 0.143679,
		-0.205500, -0.353736, 0.912491,
		44.287449, 52.334339, 52.059498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.353992, 53.112637, 52.026291>,  <44.431297, 52.581955, 51.420753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.353992, 53.112637, 52.026291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.519497, 52.758331, 52.110405>,  <44.618797, 52.545746, 52.160873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.519497, 52.758331, 52.110405>,  <44.353992, 53.112637, 52.026291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.519497, 52.758331, 52.110405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883184, 0.446584, 0.143352,
		-0.220886, 0.126408, 0.967073,
		0.413758, -0.885768, 0.210285,
		44.643623, 52.492599, 52.173489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.051308, 53.177616, 52.237877>,  <44.353992, 53.112637, 52.026291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.051308, 53.177616, 52.237877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.104767, 52.781631, 52.219482>,  <45.136841, 52.544041, 52.208447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.104767, 52.781631, 52.219482>,  <45.051308, 53.177616, 52.237877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.104767, 52.781631, 52.219482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987677, 0.129240, 0.088263,
		-0.081434, -0.057214, 0.995035,
		0.133648, -0.989961, -0.045984,
		45.144863, 52.484642, 52.205688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.595230, 52.941170, 52.735527>,  <45.051308, 53.177616, 52.237877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.595230, 52.941170, 52.735527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.574852, 52.677521, 52.435406>,  <45.562626, 52.519329, 52.255333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.574852, 52.677521, 52.435406>,  <45.595230, 52.941170, 52.735527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.574852, 52.677521, 52.435406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987690, 0.077999, -0.135590,
		0.147894, -0.747975, 0.647040,
		-0.050950, -0.659128, -0.750303,
		45.559566, 52.479782, 52.210316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.962994, 52.275673, 52.936596>,  <45.595230, 52.941170, 52.735527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.962994, 52.275673, 52.936596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.955379, 52.450115, 52.576717>,  <45.950809, 52.554779, 52.360790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.955379, 52.450115, 52.576717>,  <45.962994, 52.275673, 52.936596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.955379, 52.450115, 52.576717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976249, 0.202343, 0.077428,
		0.215814, -0.876851, -0.429600,
		-0.019034, 0.436107, -0.899694,
		45.949669, 52.580948, 52.306808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.429577, 52.006161, 52.443764>,  <45.962994, 52.275673, 52.936596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.429577, 52.006161, 52.443764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.388905, 52.399708, 52.384876>,  <46.364502, 52.635834, 52.349545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.388905, 52.399708, 52.384876>,  <46.429577, 52.006161, 52.443764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.388905, 52.399708, 52.384876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949724, 0.140049, 0.280020,
		0.296120, -0.111346, -0.948639,
		-0.101677, 0.983864, -0.147219,
		46.358402, 52.694866, 52.340710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.049976, 52.299946, 52.501240>,  <46.429577, 52.006161, 52.443764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.049976, 52.299946, 52.501240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.888634, 52.653992, 52.408394>,  <46.791828, 52.866421, 52.352684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.888634, 52.653992, 52.408394>,  <47.049976, 52.299946, 52.501240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.888634, 52.653992, 52.408394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853541, 0.455368, 0.253195,
		0.329805, -0.095994, -0.939156,
		-0.403356, 0.885113, -0.232117,
		46.767628, 52.919525, 52.338760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.262936, 52.695454, 51.896439>,  <47.049976, 52.299946, 52.501240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.262936, 52.695454, 51.896439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.137848, 52.948715, 52.179657>,  <47.062794, 53.100674, 52.349586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.137848, 52.948715, 52.179657>,  <47.262936, 52.695454, 51.896439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.137848, 52.948715, 52.179657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942565, 0.298977, 0.148946,
		-0.117383, 0.713953, -0.690284,
		-0.312719, 0.633154, 0.708042,
		47.044033, 53.138660, 52.392071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.730896, 53.282169, 51.859329>,  <47.262936, 52.695454, 51.896439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.730896, 53.282169, 51.859329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.594269, 53.255268, 52.234310>,  <47.512295, 53.239128, 52.459297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.594269, 53.255268, 52.234310>,  <47.730896, 53.282169, 51.859329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.594269, 53.255268, 52.234310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903031, 0.252994, 0.347173,
		-0.260517, 0.965127, -0.025682,
		-0.341564, -0.067253, 0.937449,
		47.491798, 53.235092, 52.515545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.930981, 53.875412, 52.240471>,  <47.730896, 53.282169, 51.859329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.930981, 53.875412, 52.240471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.939449, 53.566433, 52.494362>,  <47.944530, 53.381046, 52.646698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.939449, 53.566433, 52.494362>,  <47.930981, 53.875412, 52.240471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.939449, 53.566433, 52.494362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784976, 0.406021, 0.467931,
		-0.619164, 0.488342, 0.614946,
		0.021170, -0.772444, 0.634730,
		47.945801, 53.334702, 52.684780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.919075, 54.134525, 53.028439>,  <47.930981, 53.875412, 52.240471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.919075, 54.134525, 53.028439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.106735, 53.785919, 52.971371>,  <48.219334, 53.576756, 52.937130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.106735, 53.785919, 52.971371>,  <47.919075, 54.134525, 53.028439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.106735, 53.785919, 52.971371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797273, 0.348510, 0.492846,
		-0.379803, -0.344964, 0.858341,
		0.469155, -0.871516, -0.142665,
		48.247482, 53.524464, 52.928570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.221024, 54.011024, 53.650822>,  <47.919075, 54.134525, 53.028439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.221024, 54.011024, 53.650822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.442158, 53.804527, 53.389175>,  <48.574837, 53.680630, 53.232189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.442158, 53.804527, 53.389175>,  <48.221024, 54.011024, 53.650822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.442158, 53.804527, 53.389175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800734, 0.111840, 0.588487,
		-0.230645, -0.849110, 0.475200,
		0.552837, -0.516240, -0.654115,
		48.608009, 53.649654, 53.192940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.594940, 53.465038, 53.983944>,  <48.221024, 54.011024, 53.650822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.594940, 53.465038, 53.983944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.762714, 53.625542, 53.658226>,  <48.863377, 53.721844, 53.462795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.762714, 53.625542, 53.658226>,  <48.594940, 53.465038, 53.983944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.762714, 53.625542, 53.658226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776644, 0.305808, 0.550732,
		0.470001, -0.863410, -0.183366,
		0.419433, 0.401255, -0.814291,
		48.888546, 53.745918, 53.413940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.275314, 53.107262, 53.695847>,  <48.594940, 53.465038, 53.983944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.275314, 53.107262, 53.695847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.196072, 53.499229, 53.686821>,  <49.148525, 53.734409, 53.681404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.196072, 53.499229, 53.686821>,  <49.275314, 53.107262, 53.695847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.196072, 53.499229, 53.686821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771279, 0.170050, 0.613360,
		0.604883, 0.104102, -0.789481,
		-0.198104, 0.979921, -0.022569,
		49.136642, 53.793205, 53.680050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.802639, 53.482765, 53.432186>,  <49.275314, 53.107262, 53.695847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.802639, 53.482765, 53.432186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.612865, 53.740337, 53.672272>,  <49.499001, 53.894882, 53.816322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.612865, 53.740337, 53.672272>,  <49.802639, 53.482765, 53.432186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.612865, 53.740337, 53.672272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816587, 0.067279, 0.573288,
		0.328778, 0.762117, -0.557748,
		-0.474438, 0.643934, 0.600215,
		49.470535, 53.933517, 53.852337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.228985, 54.018501, 53.523743>,  <49.802639, 53.482765, 53.432186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.228985, 54.018501, 53.523743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.983273, 54.011772, 53.839306>,  <49.835846, 54.007736, 54.028645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.983273, 54.011772, 53.839306>,  <50.228985, 54.018501, 53.523743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.983273, 54.011772, 53.839306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789020, -0.026392, 0.613800,
		0.010495, 0.999510, 0.029484,
		-0.614278, -0.016822, 0.788910,
		49.798988, 54.006725, 54.075977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.305603, 54.677769, 54.011070>,  <50.228985, 54.018501, 53.523743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.305603, 54.677769, 54.011070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.127132, 54.395683, 54.231472>,  <50.020050, 54.226433, 54.363712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.127132, 54.395683, 54.231472>,  <50.305603, 54.677769, 54.011070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.127132, 54.395683, 54.231472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635029, 0.184355, 0.750167,
		-0.630608, 0.684607, 0.365578,
		-0.446173, -0.705214, 0.551001,
		49.993279, 54.184120, 54.396770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.795700, 54.890026, 54.538353>,  <50.305603, 54.677769, 54.011070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.795700, 54.890026, 54.538353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.015221, 54.561558, 54.600967>,  <50.146931, 54.364479, 54.638535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.015221, 54.561558, 54.600967>,  <49.795700, 54.890026, 54.538353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.015221, 54.561558, 54.600967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519465, 0.481705, 0.705774,
		-0.654963, -0.306012, 0.690927,
		0.548798, -0.821168, 0.156537,
		50.179859, 54.315208, 54.647930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.635986, 54.695972, 55.234230>,  <49.795700, 54.890026, 54.538353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.635986, 54.695972, 55.234230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.999767, 54.626152, 55.083275>,  <50.218037, 54.584259, 54.992702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.999767, 54.626152, 55.083275>,  <49.635986, 54.695972, 55.234230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.999767, 54.626152, 55.083275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369262, 0.756286, 0.540071,
		0.191137, -0.630525, 0.752267,
		0.909457, -0.174556, -0.377383,
		50.272606, 54.573784, 54.970058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.220028, 54.569965, 55.763435>,  <49.635986, 54.695972, 55.234230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.220028, 54.569965, 55.763435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.337051, 54.750801, 55.426384>,  <50.407265, 54.859303, 55.224152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.337051, 54.750801, 55.426384>,  <50.220028, 54.569965, 55.763435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.337051, 54.750801, 55.426384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398246, 0.743527, 0.537185,
		0.869374, -0.492731, 0.037481,
		0.292556, 0.452088, -0.842631,
		50.424820, 54.886429, 55.173595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.020107, 54.669540, 55.790264>,  <50.220028, 54.569965, 55.763435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.020107, 54.669540, 55.790264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.845123, 54.931519, 55.543793>,  <50.740135, 55.088707, 55.395912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.845123, 54.931519, 55.543793>,  <51.020107, 54.669540, 55.790264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.845123, 54.931519, 55.543793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583502, 0.728120, 0.359676,
		0.684220, -0.202197, -0.700685,
		-0.437458, 0.654949, -0.616176,
		50.713886, 55.128002, 55.358940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.580822, 54.483978, 56.253063>,  <51.020107, 54.669540, 55.790264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.580822, 54.483978, 56.253063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.732933, 54.712204, 56.544228>,  <51.824200, 54.849140, 56.718925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.732933, 54.712204, 56.544228>,  <51.580822, 54.483978, 56.253063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.732933, 54.712204, 56.544228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521585, -0.782239, 0.340663,
		0.763768, 0.250121, -0.595062,
		0.380273, 0.570563, 0.727908,
		51.847015, 54.883373, 56.762600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.335140, 54.556538, 56.192635>,  <51.580822, 54.483978, 56.253063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.335140, 54.556538, 56.192635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.308834, 54.616787, 56.587196>,  <52.293053, 54.652939, 56.823933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.308834, 54.616787, 56.587196>,  <52.335140, 54.556538, 56.192635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.308834, 54.616787, 56.587196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552118, -0.817934, 0.161708,
		0.831168, 0.555244, -0.029374,
		-0.065762, 0.150625, 0.986401,
		52.289104, 54.661976, 56.883118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.020348, 54.536736, 56.680660>,  <52.335140, 54.556538, 56.192635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.020348, 54.536736, 56.680660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.712925, 54.378166, 56.881523>,  <52.528469, 54.283024, 57.002041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.712925, 54.378166, 56.881523>,  <53.020348, 54.536736, 56.680660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.712925, 54.378166, 56.881523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509083, -0.854323, 0.104719,
		0.387494, 0.336124, 0.858410,
		-0.768559, -0.396424, 0.502161,
		52.482357, 54.259239, 57.032173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.195545, 54.247322, 57.416969>,  <53.020348, 54.536736, 56.680660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.195545, 54.247322, 57.416969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.889309, 54.058136, 57.242538>,  <52.705566, 53.944622, 57.137878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.889309, 54.058136, 57.242538>,  <53.195545, 54.247322, 57.416969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.889309, 54.058136, 57.242538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446292, -0.878689, 0.169498,
		-0.463348, -0.064853, 0.883800,
		-0.765593, -0.472969, -0.436082,
		52.659630, 53.916245, 57.111713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.044559, 53.751549, 57.888050>,  <53.195545, 54.247322, 57.416969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.044559, 53.751549, 57.888050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.900356, 53.653694, 57.528008>,  <52.813835, 53.594982, 57.311981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.900356, 53.653694, 57.528008>,  <53.044559, 53.751549, 57.888050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.900356, 53.653694, 57.528008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309567, -0.941678, 0.131950,
		-0.879889, -0.231074, 0.415211,
		-0.360504, -0.244637, -0.900105,
		52.792206, 53.580303, 57.257977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.932957, 52.952698, 58.004631>,  <53.044559, 53.751549, 57.888050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.932957, 52.952698, 58.004631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.931362, 53.032730, 57.612724>,  <52.930405, 53.080750, 57.377579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.931362, 53.032730, 57.612724>,  <52.932957, 52.952698, 58.004631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.931362, 53.032730, 57.612724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555929, -0.813975, -0.168486,
		-0.831220, -0.545354, -0.107991,
		-0.003983, 0.200085, -0.979770,
		52.930168, 53.092754, 57.318794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.291656, 52.771557, 57.453651>,  <52.932957, 52.952698, 58.004631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.291656, 52.771557, 57.453651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.464973, 52.631577, 57.785866>,  <53.568966, 52.547588, 57.985195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.464973, 52.631577, 57.785866>,  <53.291656, 52.771557, 57.453651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.464973, 52.631577, 57.785866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898637, 0.237910, -0.368579,
		-0.068608, 0.906053, 0.417566,
		0.433295, -0.349953, 0.830535,
		53.594963, 52.526592, 58.035027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.906551, 53.115337, 57.602467>,  <53.291656, 52.771557, 57.453651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.906551, 53.115337, 57.602467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.974602, 52.794735, 57.831779>,  <54.015430, 52.602375, 57.969368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.974602, 52.794735, 57.831779>,  <53.906551, 53.115337, 57.602467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.974602, 52.794735, 57.831779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876657, -0.142585, -0.459503,
		0.450035, 0.580740, 0.678388,
		0.170123, -0.801505, 0.573278,
		54.025639, 52.554283, 58.003761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.613289, 53.144211, 57.889614>,  <53.906551, 53.115337, 57.602467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.613289, 53.144211, 57.889614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.467812, 52.772228, 57.868057>,  <54.380524, 52.549038, 57.855122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.467812, 52.772228, 57.868057>,  <54.613289, 53.144211, 57.889614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.467812, 52.772228, 57.868057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840747, -0.302791, -0.448845,
		0.401088, -0.208555, 0.891983,
		-0.363693, -0.929958, -0.053896,
		54.358704, 52.493240, 57.851887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.232666, 52.688194, 58.030819>,  <54.613289, 53.144211, 57.889614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.232666, 52.688194, 58.030819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.929771, 52.517124, 57.833359>,  <54.748035, 52.414482, 57.714882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.929771, 52.517124, 57.833359>,  <55.232666, 52.688194, 58.030819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.929771, 52.517124, 57.833359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631636, -0.287140, -0.720129,
		0.166238, -0.857112, 0.487569,
		-0.757232, -0.427680, -0.493649,
		54.702602, 52.388821, 57.685265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.734447, 52.798939, 57.598557>,  <55.232666, 52.688194, 58.030819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.734447, 52.798939, 57.598557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.806473, 53.180305, 57.501755>,  <55.849689, 53.409126, 57.443672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.806473, 53.180305, 57.501755>,  <55.734447, 52.798939, 57.598557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.806473, 53.180305, 57.501755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458260, 0.136386, 0.878291,
		0.870387, -0.269050, -0.412356,
		0.180065, 0.953421, -0.242004,
		55.860493, 53.466331, 57.429153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.411797, 52.905178, 57.760685>,  <55.734447, 52.798939, 57.598557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.411797, 52.905178, 57.760685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.172791, 53.221943, 57.811043>,  <56.029388, 53.412003, 57.841255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.172791, 53.221943, 57.811043>,  <56.411797, 52.905178, 57.760685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.172791, 53.221943, 57.811043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421647, 0.176759, 0.889365,
		0.682048, 0.584491, -0.439524,
		-0.597515, 0.791913, 0.125891,
		55.993534, 53.459518, 57.848808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.757320, 53.530769, 58.120438>,  <56.411797, 52.905178, 57.760685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.757320, 53.530769, 58.120438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.370781, 53.560497, 58.218948>,  <56.138859, 53.578335, 58.278053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.370781, 53.560497, 58.218948>,  <56.757320, 53.530769, 58.120438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.370781, 53.560497, 58.218948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256655, 0.213825, 0.942553,
		0.017386, 0.974041, -0.225703,
		-0.966347, 0.074315, 0.246275,
		56.080875, 53.582790, 58.292831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.535843, 53.629436, 57.909676>,  <56.757320, 53.530769, 58.120438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.535843, 53.629436, 57.909676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.793076, 53.843910, 57.690971>,  <57.947414, 53.972595, 57.559750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.793076, 53.843910, 57.690971>,  <57.535843, 53.629436, 57.909676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.793076, 53.843910, 57.690971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752747, -0.573840, 0.322614,
		-0.140772, -0.619041, -0.772639,
		0.643082, 0.536187, -0.546762,
		57.986000, 54.004765, 57.526943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.888088, 53.132782, 57.415386>,  <57.535843, 53.629436, 57.909676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.888088, 53.132782, 57.415386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.092735, 53.443890, 57.561440>,  <58.215523, 53.630554, 57.649071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.092735, 53.443890, 57.561440>,  <57.888088, 53.132782, 57.415386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.092735, 53.443890, 57.561440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652494, -0.628184, 0.423835,
		0.559019, 0.021409, -0.828879,
		0.511615, 0.777770, 0.365136,
		58.246220, 53.677219, 57.670979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.640404, 53.096298, 57.203037>,  <57.888088, 53.132782, 57.415386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.640404, 53.096298, 57.203037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.620132, 53.342155, 57.517906>,  <58.607971, 53.489670, 57.706829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.620132, 53.342155, 57.517906>,  <58.640404, 53.096298, 57.203037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.620132, 53.342155, 57.517906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661101, -0.570138, 0.487738,
		0.748584, 0.545117, -0.377451,
		-0.050675, 0.614646, 0.787174,
		58.604931, 53.526550, 57.754059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.304691, 53.398823, 57.364113>,  <58.640404, 53.096298, 57.203037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.304691, 53.398823, 57.364113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.059547, 53.344784, 57.675537>,  <58.912460, 53.312359, 57.862392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.059547, 53.344784, 57.675537>,  <59.304691, 53.398823, 57.364113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.059547, 53.344784, 57.675537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605188, -0.713773, 0.352526,
		0.508090, 0.687224, 0.519200,
		-0.612855, -0.135098, 0.778561,
		58.875690, 53.304253, 57.909107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.987495, 53.103916, 57.568680>,  <59.304691, 53.398823, 57.364113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.987495, 53.103916, 57.568680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.026741, 52.808945, 57.301376>,  <60.050289, 52.631962, 57.140995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.026741, 52.808945, 57.301376>,  <59.987495, 53.103916, 57.568680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.026741, 52.808945, 57.301376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990584, 0.007941, 0.136675,
		-0.095482, -0.675374, 0.731268,
		0.098114, -0.737433, -0.668257,
		60.056175, 52.587715, 57.100899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.722736, 53.218948, 57.652355>,  <59.987495, 53.103916, 57.568680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.722736, 53.218948, 57.652355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.418755, 53.140656, 57.900276>,  <60.236366, 53.093678, 58.049026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.418755, 53.140656, 57.900276>,  <60.722736, 53.218948, 57.652355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.418755, 53.140656, 57.900276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647928, -0.303708, 0.698535,
		0.051510, 0.932442, 0.357628,
		-0.759958, -0.195736, 0.619799,
		60.190765, 53.081936, 58.086216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.322384, 53.022144, 58.105087>,  <60.722736, 53.218948, 57.652355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.322384, 53.022144, 58.105087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.648949, 53.098938, 58.322937>,  <61.844887, 53.145016, 58.453648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.648949, 53.098938, 58.322937>,  <61.322384, 53.022144, 58.105087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.648949, 53.098938, 58.322937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537291, -0.598196, -0.594542,
		0.211650, 0.778012, -0.591524,
		0.816409, 0.191986, 0.544627,
		61.893871, 53.156532, 58.486324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.845406, 52.951405, 57.659084>,  <61.322384, 53.022144, 58.105087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.845406, 52.951405, 57.659084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.069290, 52.944084, 57.990479>,  <62.203621, 52.939693, 58.189316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.069290, 52.944084, 57.990479>,  <61.845406, 52.951405, 57.659084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.069290, 52.944084, 57.990479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728383, -0.465919, -0.502372,
		0.395200, 0.884638, -0.247452,
		0.559710, -0.018298, 0.828487,
		62.237202, 52.938595, 58.239025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.076347, 53.073559, 56.923645>,  <61.845406, 52.951405, 57.659084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.076347, 53.073559, 56.923645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.921333, 53.299175, 56.631981>,  <61.828327, 53.434547, 56.456982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.921333, 53.299175, 56.631981>,  <62.076347, 53.073559, 56.923645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.921333, 53.299175, 56.631981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733457, 0.667810, 0.126771,
		0.558445, -0.485680, -0.672498,
		-0.387531, 0.564043, -0.729161,
		61.805073, 53.468388, 56.413231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.692310, 53.414543, 56.528748>,  <62.076347, 53.073559, 56.923645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.692310, 53.414543, 56.528748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.369286, 53.650402, 56.523705>,  <62.175468, 53.791916, 56.520679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.369286, 53.650402, 56.523705>,  <62.692310, 53.414543, 56.528748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.369286, 53.650402, 56.523705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563643, 0.777894, 0.277825,
		0.173625, 0.217256, -0.960549,
		-0.807565, 0.589644, -0.012607,
		62.127018, 53.827297, 56.519924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.747025, 53.989498, 56.140083>,  <62.692310, 53.414543, 56.528748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.747025, 53.989498, 56.140083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.493416, 54.066490, 56.439674>,  <62.341251, 54.112686, 56.619427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.493416, 54.066490, 56.439674>,  <62.747025, 53.989498, 56.140083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.493416, 54.066490, 56.439674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600612, 0.732649, 0.320142,
		-0.487113, 0.652821, -0.580125,
		-0.634024, 0.192484, 0.748975,
		62.303207, 54.124237, 56.664368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.499451, 54.672802, 56.153820>,  <62.747025, 53.989498, 56.140083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.499451, 54.672802, 56.153820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.512596, 54.510715, 56.519272>,  <62.520481, 54.413464, 56.738544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.512596, 54.510715, 56.519272>,  <62.499451, 54.672802, 56.153820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.512596, 54.510715, 56.519272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797179, 0.562000, 0.220592,
		-0.602848, 0.721077, 0.341501,
		0.032860, -0.405221, 0.913628,
		62.522453, 54.389149, 56.793362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.077820, 54.437893, 56.633736>,  <62.499451, 54.672802, 56.153820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.077820, 54.437893, 56.633736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.929901, 54.806084, 56.684288>,  <62.841148, 55.026997, 56.714619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.929901, 54.806084, 56.684288>,  <63.077820, 54.437893, 56.633736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.929901, 54.806084, 56.684288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865542, 0.390743, -0.313302,
		-0.337770, -0.006468, -0.941207,
		-0.369796, 0.920477, 0.126383,
		62.818962, 55.082226, 56.722202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.297386, 54.785717, 56.138031>,  <63.077820, 54.437893, 56.633736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.297386, 54.785717, 56.138031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.262070, 55.078014, 56.408798>,  <63.240879, 55.253391, 56.571259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.262070, 55.078014, 56.408798>,  <63.297386, 54.785717, 56.138031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.262070, 55.078014, 56.408798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895135, 0.356319, -0.267901,
		-0.436966, 0.582285, -0.685569,
		-0.088287, 0.730740, 0.676923,
		63.235584, 55.297237, 56.611874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.312298, 55.502384, 55.840271>,  <63.297386, 54.785717, 56.138031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.312298, 55.502384, 55.840271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.449760, 55.490513, 56.215721>,  <63.532238, 55.483391, 56.440990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.449760, 55.490513, 56.215721>,  <63.312298, 55.502384, 55.840271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.449760, 55.490513, 56.215721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896012, 0.309630, -0.318263,
		-0.281181, 0.950394, 0.132999,
		0.343655, -0.029679, 0.938627,
		63.552856, 55.481609, 56.497311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.702030, 56.127842, 56.009735>,  <63.312298, 55.502384, 55.840271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.702030, 56.127842, 56.009735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.844109, 55.861103, 56.271774>,  <63.929356, 55.701061, 56.428997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.844109, 55.861103, 56.271774>,  <63.702030, 56.127842, 56.009735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.844109, 55.861103, 56.271774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920187, 0.372818, -0.119427,
		-0.164592, 0.645231, 0.746047,
		0.355198, -0.666846, 0.655096,
		63.950668, 55.661049, 56.468304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.113403, 56.489311, 56.574757>,  <63.702030, 56.127842, 56.009735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.113403, 56.489311, 56.574757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.221382, 56.117096, 56.475777>,  <64.286171, 55.893768, 56.416389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.221382, 56.117096, 56.475777>,  <64.113403, 56.489311, 56.574757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.221382, 56.117096, 56.475777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942706, 0.307742, -0.128841,
		0.196042, -0.198494, 0.960296,
		0.269949, -0.930535, -0.247452,
		64.302368, 55.837936, 56.401543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.845215, 56.464317, 56.776253>,  <64.113403, 56.489311, 56.574757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.845215, 56.464317, 56.776253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.793915, 56.130821, 56.561432>,  <64.763130, 55.930721, 56.432541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.793915, 56.130821, 56.561432>,  <64.845215, 56.464317, 56.776253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.793915, 56.130821, 56.561432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969182, 0.009473, -0.246165,
		0.210326, -0.552072, 0.806833,
		-0.128258, -0.833742, -0.537051,
		64.755440, 55.880699, 56.400318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.265747, 55.890682, 57.076706>,  <64.845215, 56.464317, 56.776253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.265747, 55.890682, 57.076706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.219627, 55.859261, 56.680618>,  <65.191956, 55.840408, 56.442966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.219627, 55.859261, 56.680618>,  <65.265747, 55.890682, 57.076706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.219627, 55.859261, 56.680618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983443, 0.131280, -0.124921,
		0.139810, -0.988228, 0.062119,
		-0.115296, -0.078556, -0.990220,
		65.185036, 55.835693, 56.383553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.799194, 55.479706, 56.734646>,  <65.265747, 55.890682, 57.076706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.799194, 55.479706, 56.734646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.646187, 55.731014, 56.463661>,  <65.554382, 55.881802, 56.301071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.646187, 55.731014, 56.463661>,  <65.799194, 55.479706, 56.734646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.646187, 55.731014, 56.463661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910050, 0.382888, -0.158764,
		0.159643, -0.677251, -0.718224,
		-0.382522, 0.628274, -0.677457,
		65.531433, 55.919495, 56.260426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.894714, 55.294464, 55.929531>,  <65.799194, 55.479706, 56.734646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.894714, 55.294464, 55.929531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.890152, 55.671261, 56.063713>,  <65.887413, 55.897339, 56.144222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.890152, 55.671261, 56.063713>,  <65.894714, 55.294464, 55.929531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.890152, 55.671261, 56.063713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952407, 0.112431, -0.283336,
		-0.304615, 0.316257, -0.898438,
		-0.011406, 0.941988, 0.335454,
		65.886734, 55.953857, 56.164349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.027695, 55.710274, 55.432732>,  <65.894714, 55.294464, 55.929531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.027695, 55.710274, 55.432732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.140846, 55.868042, 55.782455>,  <66.208733, 55.962704, 55.992290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.140846, 55.868042, 55.782455>,  <66.027695, 55.710274, 55.432732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.140846, 55.868042, 55.782455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949464, 0.014117, -0.313557,
		-0.136015, 0.918822, -0.370494,
		0.282873, 0.394419, 0.874309,
		66.225708, 55.986366, 56.044746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.441322, 56.342754, 55.279575>,  <66.027695, 55.710274, 55.432732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.441322, 56.342754, 55.279575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.553825, 56.180454, 55.627426>,  <66.621330, 56.083073, 55.836136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.553825, 56.180454, 55.627426>,  <66.441322, 56.342754, 55.279575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.553825, 56.180454, 55.627426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958084, 0.067280, -0.278476,
		0.054483, 0.911503, 0.407668,
		0.281260, -0.405753, 0.869631,
		66.638206, 56.058727, 55.888317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.840767, 56.911472, 55.673340>,  <66.441322, 56.342754, 55.279575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.840767, 56.911472, 55.673340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.945580, 56.529217, 55.727150>,  <67.008469, 56.299862, 55.759434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.945580, 56.529217, 55.727150>,  <66.840767, 56.911472, 55.673340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.945580, 56.529217, 55.727150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899415, 0.191282, -0.393019,
		0.349853, 0.223971, 0.909637,
		0.262023, -0.955640, 0.134522,
		67.024185, 56.242523, 55.767506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.947853, 57.619854, 55.500271>,  <66.840767, 56.911472, 55.673340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.947853, 57.619854, 55.500271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.174728, 57.656143, 55.172844>,  <67.310852, 57.677917, 54.976387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.174728, 57.656143, 55.172844>,  <66.947853, 57.619854, 55.500271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.174728, 57.656143, 55.172844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417331, 0.888522, -0.190694,
		0.710017, 0.449776, 0.541827,
		0.567195, 0.090725, -0.818571,
		67.344887, 57.683361, 54.927273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.163109, 58.310947, 55.351891>,  <66.947853, 57.619854, 55.500271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.163109, 58.310947, 55.351891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.177933, 58.146538, 54.987541>,  <67.186829, 58.047894, 54.768932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.177933, 58.146538, 54.987541>,  <67.163109, 58.310947, 55.351891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.177933, 58.146538, 54.987541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497842, 0.782740, -0.373459,
		0.866475, 0.467310, -0.175617,
		0.037059, -0.411023, -0.910872,
		67.189049, 58.023232, 54.714279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.519707, 58.738071, 54.761101>,  <67.163109, 58.310947, 55.351891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.519707, 58.738071, 54.761101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.234802, 58.504494, 54.605305>,  <67.063858, 58.364349, 54.511826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.234802, 58.504494, 54.605305>,  <67.519707, 58.738071, 54.761101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.234802, 58.504494, 54.605305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507722, 0.811758, -0.288561,
		0.484676, -0.007777, -0.874660,
		-0.712256, -0.583942, -0.389491,
		67.021126, 58.329311, 54.488457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.169670, 58.435036, 55.019703>,  <67.519707, 58.738071, 54.761101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.169670, 58.435036, 55.019703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.245735, 58.769257, 55.225883>,  <68.291374, 58.969788, 55.349594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.245735, 58.769257, 55.225883>,  <68.169670, 58.435036, 55.019703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.245735, 58.769257, 55.225883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832296, -0.415675, 0.366740,
		0.520691, 0.359268, -0.774473,
		0.190171, 0.835548, 0.515455,
		68.302788, 59.019920, 55.380520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.868988, 58.721710, 54.844269>,  <68.169670, 58.435036, 55.019703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.868988, 58.721710, 54.844269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.775497, 58.904919, 55.187332>,  <68.719398, 59.014843, 55.393169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.775497, 58.904919, 55.187332>,  <68.868988, 58.721710, 54.844269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.775497, 58.904919, 55.187332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876486, -0.282577, 0.389772,
		0.420881, 0.842830, -0.335405,
		-0.233734, 0.458025, 0.857661,
		68.705376, 59.042328, 55.444630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.428268, 58.829861, 55.192558>,  <68.868988, 58.721710, 54.844269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.428268, 58.829861, 55.192558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.175941, 58.848221, 55.502388>,  <69.024544, 58.859238, 55.688286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.175941, 58.848221, 55.502388>,  <69.428268, 58.829861, 55.192558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.175941, 58.848221, 55.502388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749089, -0.224273, 0.623351,
		0.202329, 0.973445, 0.107090,
		-0.630816, 0.045902, 0.774574,
		68.986694, 58.861992, 55.734760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.654953, 59.331570, 55.676579>,  <69.428268, 58.829861, 55.192558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.654953, 59.331570, 55.676579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.466820, 59.072090, 55.915901>,  <69.353935, 58.916401, 56.059494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.466820, 59.072090, 55.915901>,  <69.654953, 59.331570, 55.676579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.466820, 59.072090, 55.915901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828486, -0.091057, 0.552557,
		-0.303963, 0.755578, 0.580265,
		-0.470337, -0.648698, 0.598308,
		69.325722, 58.877480, 56.095394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.770149, 59.563347, 56.378098>,  <69.654953, 59.331570, 55.676579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.770149, 59.563347, 56.378098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.695953, 59.171196, 56.351418>,  <69.651436, 58.935905, 56.335407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.695953, 59.171196, 56.351418>,  <69.770149, 59.563347, 56.378098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.695953, 59.171196, 56.351418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844571, -0.193749, 0.499161,
		-0.502291, 0.036249, 0.863938,
		-0.185482, -0.980381, -0.066704,
		69.640312, 58.877083, 56.331406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.777718, 59.400425, 56.997948>,  <69.770149, 59.563347, 56.378098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.777718, 59.400425, 56.997948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.862221, 59.082039, 56.771034>,  <69.912918, 58.891006, 56.634884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.862221, 59.082039, 56.771034>,  <69.777718, 59.400425, 56.997948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.862221, 59.082039, 56.771034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896440, -0.073549, 0.437019,
		-0.389575, -0.600860, 0.697997,
		0.211250, -0.795964, -0.567288,
		69.925598, 58.843250, 56.600849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.049408, 58.957718, 57.441048>,  <69.777718, 59.400425, 56.997948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.049408, 58.957718, 57.441048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.168625, 58.849705, 57.074821>,  <70.240150, 58.784897, 56.855087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.168625, 58.849705, 57.074821>,  <70.049408, 58.957718, 57.441048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.168625, 58.849705, 57.074821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936957, -0.100568, 0.334659,
		-0.182446, -0.957584, 0.223039,
		0.298034, -0.270036, -0.915564,
		70.258034, 58.768696, 56.800152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.678055, 58.254990, 57.454472>,  <70.049408, 58.957718, 57.441048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.678055, 58.254990, 57.454472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.467491, 58.069450, 57.169449>,  <69.341156, 57.958126, 56.998436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.467491, 58.069450, 57.169449>,  <69.678055, 58.254990, 57.454472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.467491, 58.069450, 57.169449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488169, -0.521277, 0.699972,
		-0.696119, 0.716322, 0.047971,
		-0.526411, -0.463846, -0.712557,
		69.309570, 57.930298, 56.955681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.344940, 57.909466, 57.706669>,  <69.678055, 58.254990, 57.454472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.344940, 57.909466, 57.706669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.559502, 58.210339, 57.859772>,  <70.688240, 58.390862, 57.951633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.559502, 58.210339, 57.859772>,  <70.344940, 57.909466, 57.706669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.559502, 58.210339, 57.859772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300074, 0.593864, -0.746513,
		-0.788816, 0.285575, 0.544258,
		0.536400, 0.752179, 0.382755,
		70.720421, 58.435993, 57.974598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.521767, 57.931801, 58.543022>,  <70.344940, 57.909466, 57.706669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.521767, 57.931801, 58.543022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.817650, 58.112057, 58.742928>,  <70.995178, 58.220211, 58.862869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.817650, 58.112057, 58.742928>,  <70.521767, 57.931801, 58.543022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.817650, 58.112057, 58.742928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662704, 0.358808, 0.657328,
		0.116901, -0.817421, 0.564054,
		0.739701, 0.450642, 0.499763,
		71.039558, 58.247250, 58.892857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.910713, 57.537888, 58.849899>,  <70.521767, 57.931801, 58.543022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.910713, 57.537888, 58.849899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.145142, 57.377239, 59.131386>,  <70.285797, 57.280849, 59.300278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.145142, 57.377239, 59.131386>,  <69.910713, 57.537888, 58.849899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.145142, 57.377239, 59.131386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762202, 0.567933, -0.310645,
		-0.274904, 0.718436, 0.638966,
		0.586068, -0.401623, 0.703721,
		70.320961, 57.256752, 59.342503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.199455, 58.061123, 59.173233>,  <69.910713, 57.537888, 58.849899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.199455, 58.061123, 59.173233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.440315, 57.742859, 59.199570>,  <70.584831, 57.551899, 59.215370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.440315, 57.742859, 59.199570>,  <70.199455, 58.061123, 59.173233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.440315, 57.742859, 59.199570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794509, 0.589077, -0.147458,
		0.078542, 0.141103, 0.986874,
		0.602152, -0.795662, 0.065840,
		70.620964, 57.504162, 59.219322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.662842, 58.182785, 59.655197>,  <70.199455, 58.061123, 59.173233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.662842, 58.182785, 59.655197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.848297, 57.894730, 59.448730>,  <70.959572, 57.721897, 59.324852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.848297, 57.894730, 59.448730>,  <70.662842, 58.182785, 59.655197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.848297, 57.894730, 59.448730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817706, 0.572103, -0.063677,
		0.341157, -0.392549, 0.854118,
		0.463647, -0.720141, -0.516167,
		70.987389, 57.678688, 59.293880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.297348, 57.960869, 59.976906>,  <70.662842, 58.182785, 59.655197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.297348, 57.960869, 59.976906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.323685, 57.936569, 59.578514>,  <71.339485, 57.921989, 59.339478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.323685, 57.936569, 59.578514>,  <71.297348, 57.960869, 59.976906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.323685, 57.936569, 59.578514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790718, 0.611997, 0.014936,
		0.608629, -0.788523, 0.088327,
		0.065833, -0.060751, -0.995980,
		71.343437, 57.918343, 59.279720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.014839, 57.977062, 59.823784>,  <71.297348, 57.960869, 59.976906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.014839, 57.977062, 59.823784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.895302, 58.024551, 59.445030>,  <71.823578, 58.053043, 59.217777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.895302, 58.024551, 59.445030>,  <72.014839, 57.977062, 59.823784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.895302, 58.024551, 59.445030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901628, 0.360219, -0.239394,
		0.312665, -0.925282, -0.214695,
		-0.298844, 0.118725, -0.946888,
		71.805649, 58.060169, 59.160965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.470573, 58.598202, 59.925873>,  <72.014839, 57.977062, 59.823784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.470573, 58.598202, 59.925873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.425232, 58.488663, 60.307899>,  <72.398026, 58.422939, 60.537117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.425232, 58.488663, 60.307899>,  <72.470573, 58.598202, 59.925873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.425232, 58.488663, 60.307899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232118, -0.941964, -0.242538,
		0.966061, 0.194197, 0.170336,
		-0.113350, -0.273844, 0.955071,
		72.391228, 58.406509, 60.594421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.148094, 58.336376, 60.310692>,  <72.470573, 58.598202, 59.925873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.148094, 58.336376, 60.310692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.793091, 58.167660, 60.384888>,  <72.580086, 58.066429, 60.429405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.793091, 58.167660, 60.384888>,  <73.148094, 58.336376, 60.310692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.793091, 58.167660, 60.384888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274367, -0.807170, -0.522685,
		0.370190, -0.412997, 0.832102,
		-0.887515, -0.421793, 0.185493,
		72.526833, 58.041122, 60.440536>
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
