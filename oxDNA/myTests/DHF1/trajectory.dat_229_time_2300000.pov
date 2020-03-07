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
	<2.479663, 2.837934, 1.649829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.801975, 3.038712, 1.524117>,  <2.995363, 3.159178, 1.448689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.801975, 3.038712, 1.524117>,  <2.479663, 2.837934, 1.649829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.801975, 3.038712, 1.524117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521376, 0.852946, 0.025502,
		0.280865, 0.143310, 0.948987,
		0.805780, 0.501942, -0.314281,
		3.043709, 3.189294, 1.429832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.735269, 3.444485, 2.082637>,  <2.479663, 2.837934, 1.649829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.735269, 3.444485, 2.082637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.791187, 3.483658, 1.688507>,  <2.824738, 3.507162, 1.452029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.791187, 3.483658, 1.688507>,  <2.735269, 3.444485, 2.082637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.791187, 3.483658, 1.688507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541982, 0.840364, 0.006629,
		0.828682, 0.533101, 0.170557,
		0.139796, 0.097932, -0.985326,
		2.833126, 3.513037, 1.392909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.258828, 3.991742, 1.838669>,  <2.735269, 3.444485, 2.082637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.258828, 3.991742, 1.838669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.990643, 3.926956, 1.549049>,  <2.829731, 3.888084, 1.375278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.990643, 3.926956, 1.549049>,  <3.258828, 3.991742, 1.838669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.990643, 3.926956, 1.549049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308362, 0.948434, 0.073382,
		0.674827, 0.272469, -0.685834,
		-0.670463, -0.161965, -0.724049,
		2.789504, 3.878366, 1.331835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.446280, 4.489745, 1.477163>,  <3.258828, 3.991742, 1.838669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.446280, 4.489745, 1.477163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.061150, 4.431633, 1.386070>,  <2.830071, 4.396766, 1.331415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.061150, 4.431633, 1.386070>,  <3.446280, 4.489745, 1.477163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.061150, 4.431633, 1.386070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149112, 0.988820, -0.000377,
		0.225240, 0.033594, -0.973724,
		-0.962825, -0.145279, -0.227731,
		2.772302, 4.388049, 1.317751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.184641, 4.846961, 0.822340>,  <3.446280, 4.489745, 1.477163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.184641, 4.846961, 0.822340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.900833, 4.831505, 1.103790>,  <2.730548, 4.822231, 1.272660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.900833, 4.831505, 1.103790>,  <3.184641, 4.846961, 0.822340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.900833, 4.831505, 1.103790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095546, 0.994550, -0.041732,
		-0.698177, -0.096838, -0.709345,
		-0.709520, -0.038639, 0.703625,
		2.687977, 4.819913, 1.314878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.763157, 5.359365, 0.559378>,  <3.184641, 4.846961, 0.822340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.763157, 5.359365, 0.559378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.671089, 5.310844, 0.945602>,  <2.615849, 5.281733, 1.177337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.671089, 5.310844, 0.945602>,  <2.763157, 5.359365, 0.559378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.671089, 5.310844, 0.945602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024781, 0.991149, 0.130421,
		-0.972835, 0.053946, -0.225126,
		-0.230169, -0.121300, 0.965561,
		2.602038, 5.274455, 1.235271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.330512, 5.950495, 0.644896>,  <2.763157, 5.359365, 0.559378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.330512, 5.950495, 0.644896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.369572, 5.807884, 1.016563>,  <2.393008, 5.722318, 1.239564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.369572, 5.807884, 1.016563>,  <2.330512, 5.950495, 0.644896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.369572, 5.807884, 1.016563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448768, 0.817549, 0.360861,
		-0.888297, -0.452219, -0.080164,
		0.097650, -0.356527, 0.929168,
		2.398867, 5.700926, 1.295314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.647183, 5.807907, 0.993597>,  <2.330512, 5.950495, 0.644896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.647183, 5.807907, 0.993597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.937836, 5.876076, 1.259819>,  <2.112227, 5.916977, 1.419552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.937836, 5.876076, 1.259819>,  <1.647183, 5.807907, 0.993597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.937836, 5.876076, 1.259819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433472, 0.865309, 0.251679,
		-0.533020, -0.471377, 0.702633,
		0.726631, 0.170422, 0.665556,
		2.155825, 5.927202, 1.459486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.852943, 2.327308, 0.803959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.474194, 2.393097, 0.914505>,  <1.246944, 2.432570, 0.980833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.474194, 2.393097, 0.914505>,  <1.852943, 2.327308, 0.803959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.474194, 2.393097, 0.914505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285025, -0.031143, -0.958014,
		-0.148964, -0.985889, 0.076368,
		-0.946874, 0.164476, 0.276365,
		1.190131, 2.442439, 0.997414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.863127, 1.782071, 1.365178>,  <1.852943, 2.327308, 0.803959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.863127, 1.782071, 1.365178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.991920, 1.935379, 1.711456>,  <2.069196, 2.027364, 1.919223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.991920, 1.935379, 1.711456>,  <1.863127, 1.782071, 1.365178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.991920, 1.935379, 1.711456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553738, -0.817917, 0.156162,
		0.767920, 0.429087, -0.475587,
		0.321983, 0.383271, 0.865696,
		2.088516, 2.050360, 1.971165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.553108, 1.909986, 1.331351>,  <1.863127, 1.782071, 1.365178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.553108, 1.909986, 1.331351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.433828, 1.814972, 1.701141>,  <2.362261, 1.757964, 1.923016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.433828, 1.814972, 1.701141>,  <2.553108, 1.909986, 1.331351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.433828, 1.814972, 1.701141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613209, -0.789904, -0.005162,
		0.731473, 0.565358, 0.381206,
		-0.298198, -0.237535, 0.924476,
		2.344369, 1.743711, 1.978484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.153666, 1.778201, 1.812856>,  <2.553108, 1.909986, 1.331351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.153666, 1.778201, 1.812856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.820465, 1.573303, 1.896484>,  <2.620544, 1.450364, 1.946661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.820465, 1.573303, 1.896484>,  <3.153666, 1.778201, 1.812856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.820465, 1.573303, 1.896484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442005, -0.843426, -0.305391,
		0.332771, -0.161981, 0.928992,
		-0.833003, -0.512245, 0.209071,
		2.570564, 1.419630, 1.959206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.155913, 1.167795, 2.315789>,  <3.153666, 1.778201, 1.812856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.155913, 1.167795, 2.315789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.837185, 1.095505, 2.085167>,  <2.645948, 1.052131, 1.946794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.837185, 1.095505, 2.085167>,  <3.155913, 1.167795, 2.315789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.837185, 1.095505, 2.085167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314699, -0.938708, -0.140682,
		-0.515792, -0.293540, 0.804856,
		-0.796821, -0.180724, -0.576555,
		2.598139, 1.041287, 1.912201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.048691, 0.455298, 2.386362>,  <3.155913, 1.167795, 2.315789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.048691, 0.455298, 2.386362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.830736, 0.544876, 2.063141>,  <2.699963, 0.598623, 1.869208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.830736, 0.544876, 2.063141>,  <3.048691, 0.455298, 2.386362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.830736, 0.544876, 2.063141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101075, -0.974191, -0.201832,
		-0.832396, -0.028302, 0.553458,
		-0.544886, 0.223945, -0.808052,
		2.667270, 0.612060, 1.820725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.388519, 0.092924, 2.493824>,  <3.048691, 0.455298, 2.386362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.388519, 0.092924, 2.493824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.444977, 0.141830, 2.100861>,  <2.478852, 0.171175, 1.865082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.444977, 0.141830, 2.100861>,  <2.388519, 0.092924, 2.493824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.444977, 0.141830, 2.100861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333938, -0.928305, -0.163511,
		-0.931967, 0.351143, -0.090196,
		0.141145, 0.122267, -0.982410,
		2.487320, 0.178511, 1.806138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.814631, -0.195219, 2.237388>,  <2.388519, 0.092924, 2.493824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.814631, -0.195219, 2.237388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.093281, -0.183502, 1.950653>,  <2.260471, -0.176472, 1.778612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.093281, -0.183502, 1.950653>,  <1.814631, -0.195219, 2.237388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.093281, -0.183502, 1.950653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170625, -0.963734, -0.205194,
		-0.696851, 0.265253, -0.666363,
		0.696624, 0.029292, -0.716838,
		2.302268, -0.174715, 1.735602>
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
