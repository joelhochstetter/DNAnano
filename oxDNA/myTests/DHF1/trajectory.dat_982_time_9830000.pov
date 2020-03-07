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
	<3.651762, -0.230770, 2.625858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.255676, -0.191671, 2.665697>,  <3.018025, -0.168211, 2.689601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.255676, -0.191671, 2.665697>,  <3.651762, -0.230770, 2.625858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.255676, -0.191671, 2.665697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135968, 0.515089, 0.846284,
		0.031422, 0.851545, -0.523339,
		-0.990215, 0.097750, 0.099598,
		2.958612, -0.162346, 2.695577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.507240, 0.476189, 2.581930>,  <3.651762, -0.230770, 2.625858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.507240, 0.476189, 2.581930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.229225, 0.270096, 2.782513>,  <3.062416, 0.146440, 2.902862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.229225, 0.270096, 2.782513>,  <3.507240, 0.476189, 2.581930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.229225, 0.270096, 2.782513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111043, 0.612166, 0.782893,
		-0.710347, 0.599823, -0.368265,
		-0.695037, -0.515232, 0.501457,
		3.020714, 0.115526, 2.932950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.796874, 0.869241, 2.746582>,  <3.507240, 0.476189, 2.581930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.796874, 0.869241, 2.746582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.893906, 0.611177, 3.036388>,  <2.952124, 0.456338, 3.210272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.893906, 0.611177, 3.036388>,  <2.796874, 0.869241, 2.746582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.893906, 0.611177, 3.036388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060708, 0.735263, 0.675058,
		-0.968231, -0.207738, 0.139192,
		0.242578, -0.645162, 0.724515,
		2.966679, 0.417628, 3.253743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.255759, 0.915886, 3.233446>,  <2.796874, 0.869241, 2.746582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.255759, 0.915886, 3.233446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.613129, 0.827251, 3.389750>,  <2.827550, 0.774070, 3.483532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.613129, 0.827251, 3.389750>,  <2.255759, 0.915886, 3.233446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.613129, 0.827251, 3.389750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120670, 0.719517, 0.683911,
		-0.432704, -0.658175, 0.616094,
		0.893423, -0.221587, 0.390760,
		2.881156, 0.760775, 3.506978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.290824, 0.990340, 4.051162>,  <2.255759, 0.915886, 3.233446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.290824, 0.990340, 4.051162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.640137, 1.056608, 3.867889>,  <2.849725, 1.096368, 3.757926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.640137, 1.056608, 3.867889>,  <2.290824, 0.990340, 4.051162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.640137, 1.056608, 3.867889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096346, 0.863121, 0.495720,
		0.477593, -0.477048, 0.737787,
		0.873282, 0.165670, -0.458183,
		2.902122, 1.106309, 3.730435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.862192, 1.107056, 4.536716>,  <2.290824, 0.990340, 4.051162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.862192, 1.107056, 4.536716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.955231, 1.293817, 4.195448>,  <3.011054, 1.405874, 3.990687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.955231, 1.293817, 4.195448>,  <2.862192, 1.107056, 4.536716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.955231, 1.293817, 4.195448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203763, 0.834368, 0.512163,
		0.950989, -0.292972, 0.098933,
		0.232596, 0.466903, -0.853171,
		3.025010, 1.433888, 3.939497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.487869, 1.342863, 4.682575>,  <2.862192, 1.107056, 4.536716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.487869, 1.342863, 4.682575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.372055, 1.582856, 4.384262>,  <3.302567, 1.726851, 4.205275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.372055, 1.582856, 4.384262>,  <3.487869, 1.342863, 4.682575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.372055, 1.582856, 4.384262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316202, 0.795367, 0.517114,
		0.903430, -0.086095, -0.420002,
		-0.289535, 0.599982, -0.745782,
		3.285195, 1.762850, 4.160527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.104072, 1.709055, 4.484576>,  <3.487869, 1.342863, 4.682575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.104072, 1.709055, 4.484576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.765877, 1.901020, 4.390911>,  <3.562960, 2.016200, 4.334712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.765877, 1.901020, 4.390911>,  <4.104072, 1.709055, 4.484576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.765877, 1.901020, 4.390911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338867, 0.821104, 0.459302,
		0.412697, 0.308984, -0.856861,
		-0.845488, 0.479914, -0.234163,
		3.512230, 2.044994, 4.320662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.439836, 2.326075, 5.262128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.287476, 2.680832, 5.157564>,  <3.196059, 2.893686, 5.094826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.287476, 2.680832, 5.157564>,  <3.439836, 2.326075, 5.262128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.287476, 2.680832, 5.157564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226646, -0.363656, -0.903541,
		-0.896407, -0.284913, 0.339527,
		-0.380901, 0.886893, -0.261409,
		3.173205, 2.946900, 5.079141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.758456, 2.313295, 4.963630>,  <3.439836, 2.326075, 5.262128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.758456, 2.313295, 4.963630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.953613, 2.621445, 4.799442>,  <3.070708, 2.806334, 4.700930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.953613, 2.621445, 4.799442>,  <2.758456, 2.313295, 4.963630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.953613, 2.621445, 4.799442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116399, -0.408617, -0.905253,
		-0.865107, 0.489446, -0.109691,
		0.487894, 0.770373, -0.410469,
		3.099981, 2.852557, 4.676301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.331310, 2.639484, 4.419843>,  <2.758456, 2.313295, 4.963630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.331310, 2.639484, 4.419843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.727882, 2.666519, 4.375128>,  <2.965826, 2.682740, 4.348299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.727882, 2.666519, 4.375128>,  <2.331310, 2.639484, 4.419843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.727882, 2.666519, 4.375128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046236, -0.618802, -0.784185,
		-0.122176, 0.782634, -0.610374,
		0.991431, 0.067587, -0.111788,
		3.025312, 2.686795, 4.341591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.548246, 2.632334, 3.677336>,  <2.331310, 2.639484, 4.419843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.548246, 2.632334, 3.677336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.866447, 2.504448, 3.883232>,  <3.057369, 2.427716, 4.006770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.866447, 2.504448, 3.883232>,  <2.548246, 2.632334, 3.677336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.866447, 2.504448, 3.883232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190821, -0.674077, -0.713587,
		0.575118, 0.665885, -0.475223,
		0.795504, -0.319714, 0.514739,
		3.105099, 2.408534, 4.037654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.102451, 2.517660, 3.068770>,  <2.548246, 2.632334, 3.677336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.102451, 2.517660, 3.068770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.158714, 2.293144, 3.395002>,  <3.192472, 2.158435, 3.590742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.158714, 2.293144, 3.395002>,  <3.102451, 2.517660, 3.068770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.158714, 2.293144, 3.395002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077568, -0.814990, -0.574260,
		0.987015, 0.144038, -0.071097,
		0.140658, -0.561288, 0.815580,
		3.200912, 2.124758, 3.639676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.589556, 1.884761, 2.849854>,  <3.102451, 2.517660, 3.068770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.589556, 1.884761, 2.849854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.419044, 1.761658, 3.190105>,  <3.316737, 1.687796, 3.394257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.419044, 1.761658, 3.190105>,  <3.589556, 1.884761, 2.849854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.419044, 1.761658, 3.190105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030382, -0.944687, -0.326563,
		0.904081, -0.113363, 0.412051,
		-0.426279, -0.307759, 0.850630,
		3.291161, 1.669330, 3.445294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.014604, 1.381283, 3.096262>,  <3.589556, 1.884761, 2.849854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.014604, 1.381283, 3.096262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.650993, 1.328199, 3.254280>,  <3.432827, 1.296349, 3.349091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.650993, 1.328199, 3.254280>,  <4.014604, 1.381283, 3.096262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.650993, 1.328199, 3.254280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042504, -0.972522, -0.228899,
		0.414567, -0.191284, 0.889688,
		-0.909025, -0.132710, 0.395045,
		3.378286, 1.288386, 3.372794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.023968, 0.823727, 3.571292>,  <4.014604, 1.381283, 3.096262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.023968, 0.823727, 3.571292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.649902, 0.856663, 3.433487>,  <3.425463, 0.876424, 3.350804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.649902, 0.856663, 3.433487>,  <4.023968, 0.823727, 3.571292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.649902, 0.856663, 3.433487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007260, -0.967947, -0.251048,
		-0.354142, -0.237272, 0.904591,
		-0.935163, 0.082339, -0.344513,
		3.369353, 0.881365, 3.330133>
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
