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
	<3.003459, 3.621047, 6.018954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.809134, 3.653984, 5.670883>,  <2.692539, 3.673746, 5.462041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.809134, 3.653984, 5.670883>,  <3.003459, 3.621047, 6.018954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.809134, 3.653984, 5.670883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836193, 0.333651, -0.435268,
		0.254495, -0.939094, -0.230945,
		-0.485812, 0.082341, -0.870176,
		2.663390, 3.678686, 5.409830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.600875, 3.713401, 5.577033>,  <3.003459, 3.621047, 6.018954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.600875, 3.713401, 5.577033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.322351, 3.841194, 5.319946>,  <3.155237, 3.917870, 5.165694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.322351, 3.841194, 5.319946>,  <3.600875, 3.713401, 5.577033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.322351, 3.841194, 5.319946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703145, 0.483314, -0.521531,
		0.144013, -0.815070, -0.561178,
		-0.696310, 0.319482, -0.642716,
		3.113458, 3.937039, 5.127131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.854572, 3.632598, 4.874095>,  <3.600875, 3.713401, 5.577033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.854572, 3.632598, 4.874095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.570045, 3.913433, 4.860840>,  <3.399329, 4.081934, 4.852887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.570045, 3.913433, 4.860840>,  <3.854572, 3.632598, 4.874095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.570045, 3.913433, 4.860840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612328, 0.595851, -0.519630,
		-0.345081, -0.389914, -0.853748,
		-0.711318, 0.702089, -0.033138,
		3.356650, 4.124060, 4.850898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.695840, 3.909904, 4.186058>,  <3.854572, 3.632598, 4.874095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.695840, 3.909904, 4.186058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.595531, 4.227734, 4.407242>,  <3.535345, 4.418431, 4.539952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.595531, 4.227734, 4.407242>,  <3.695840, 3.909904, 4.186058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.595531, 4.227734, 4.407242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627359, 0.568420, -0.532277,
		-0.737247, 0.213424, -0.641028,
		-0.250773, 0.794575, 0.552960,
		3.520298, 4.466106, 4.573130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.731687, 4.452012, 3.700621>,  <3.695840, 3.909904, 4.186058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.731687, 4.452012, 3.700621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.698800, 4.642231, 4.050957>,  <3.679068, 4.756362, 4.261158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.698800, 4.642231, 4.050957>,  <3.731687, 4.452012, 3.700621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.698800, 4.642231, 4.050957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604443, 0.722526, -0.335565,
		-0.792394, 0.501807, -0.346845,
		-0.082216, 0.475548, 0.875839,
		3.674135, 4.784895, 4.313709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.574920, 5.219780, 3.560459>,  <3.731687, 4.452012, 3.700621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.574920, 5.219780, 3.560459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.731611, 5.210224, 3.928368>,  <3.825626, 5.204491, 4.149113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.731611, 5.210224, 3.928368>,  <3.574920, 5.219780, 3.560459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.731611, 5.210224, 3.928368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456301, 0.873111, -0.171661,
		-0.798961, 0.486937, 0.352923,
		0.391729, -0.023889, 0.919770,
		3.849130, 5.203057, 4.204299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.425040, 5.841661, 3.928535>,  <3.574920, 5.219780, 3.560459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.425040, 5.841661, 3.928535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.750574, 5.692486, 4.106789>,  <3.945895, 5.602981, 4.213741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.750574, 5.692486, 4.106789>,  <3.425040, 5.841661, 3.928535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.750574, 5.692486, 4.106789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439511, 0.896718, -0.052216,
		-0.380134, 0.238356, 0.893691,
		0.813836, -0.372938, 0.445633,
		3.994725, 5.580605, 4.240479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.560759, 6.276677, 4.557897>,  <3.425040, 5.841661, 3.928535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.560759, 6.276677, 4.557897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.894417, 6.097855, 4.428688>,  <4.094612, 5.990561, 4.351162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.894417, 6.097855, 4.428688>,  <3.560759, 6.276677, 4.557897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.894417, 6.097855, 4.428688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468217, 0.883508, -0.013670,
		0.291504, -0.139842, 0.946293,
		0.834145, -0.447055, -0.323022,
		4.144661, 5.963738, 4.331781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.027420, 1.956261, 3.752969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.260353, 1.741386, 3.997040>,  <5.400113, 1.612461, 4.143483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.260353, 1.741386, 3.997040>,  <5.027420, 1.956261, 3.752969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.260353, 1.741386, 3.997040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713836, -0.697043, 0.067600,
		0.389007, -0.474933, -0.789375,
		0.582334, -0.537188, 0.610178,
		5.435053, 1.580230, 4.180093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.093458, 1.186294, 3.553429>,  <5.027420, 1.956261, 3.752969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.093458, 1.186294, 3.553429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.161535, 1.212349, 3.946732>,  <5.202382, 1.227982, 4.182713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.161535, 1.212349, 3.946732>,  <5.093458, 1.186294, 3.553429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.161535, 1.212349, 3.946732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644752, -0.747222, 0.161103,
		0.745204, -0.661375, -0.085175,
		0.170194, 0.065138, 0.983255,
		5.212594, 1.231890, 4.241708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.440103, 0.682050, 3.922803>,  <5.093458, 1.186294, 3.553429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.440103, 0.682050, 3.922803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.197348, 0.843292, 4.196793>,  <5.051694, 0.940038, 4.361187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.197348, 0.843292, 4.196793>,  <5.440103, 0.682050, 3.922803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.197348, 0.843292, 4.196793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501437, -0.862859, 0.063518,
		0.616642, -0.304923, 0.725793,
		-0.606889, 0.403107, 0.684975,
		5.015281, 0.964224, 4.402285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.169726, 0.159479, 4.216809>,  <5.440103, 0.682050, 3.922803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.169726, 0.159479, 4.216809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.885265, 0.414986, 4.334274>,  <4.714589, 0.568290, 4.404754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.885265, 0.414986, 4.334274>,  <5.169726, 0.159479, 4.216809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.885265, 0.414986, 4.334274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660457, -0.750167, 0.032337,
		0.240953, -0.170956, 0.955362,
		-0.711152, 0.638767, 0.293664,
		4.671920, 0.606616, 4.422373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.955593, 0.100122, 4.946016>,  <5.169726, 0.159479, 4.216809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.955593, 0.100122, 4.946016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.650936, 0.258911, 4.741150>,  <4.468142, 0.354185, 4.618230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.650936, 0.258911, 4.741150>,  <4.955593, 0.100122, 4.946016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.650936, 0.258911, 4.741150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559452, -0.801660, 0.210605,
		-0.326978, 0.446938, 0.832665,
		-0.761642, 0.396973, -0.512166,
		4.422443, 0.378003, 4.587500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.374836, 0.128569, 5.370682>,  <4.955593, 0.100122, 4.946016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.374836, 0.128569, 5.370682> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.217588, 0.170715, 5.005310>,  <4.123240, 0.196003, 4.786087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.217588, 0.170715, 5.005310>,  <4.374836, 0.128569, 5.370682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.217588, 0.170715, 5.005310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788744, -0.549227, 0.276102,
		-0.472590, 0.829004, 0.299017,
		-0.393118, 0.105365, -0.913431,
		4.099653, 0.202325, 4.731281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.746959, 0.324534, 5.464783>,  <4.374836, 0.128569, 5.370682>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.746959, 0.324534, 5.464783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.721367, 0.168221, 5.097481>,  <3.706012, 0.074432, 4.877099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.721367, 0.168221, 5.097481>,  <3.746959, 0.324534, 5.464783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.721367, 0.168221, 5.097481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783420, -0.550323, 0.288788,
		-0.618191, 0.737857, -0.270938,
		-0.063981, -0.390784, -0.918256,
		3.702173, 0.050985, 4.822004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.121192, 0.502897, 5.256814>,  <3.746959, 0.324534, 5.464783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.121192, 0.502897, 5.256814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.247353, 0.170067, 5.074310>,  <3.323049, -0.029631, 4.964808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.247353, 0.170067, 5.074310>,  <3.121192, 0.502897, 5.256814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.247353, 0.170067, 5.074310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701108, -0.528336, 0.478862,
		-0.639508, 0.168853, -0.750012,
		0.315401, -0.832076, -0.456259,
		3.341973, -0.079556, 4.937433>
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
