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
	<24.418411, 35.107533, 35.134041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.089399, 34.889862, 35.200157>,  <23.891993, 34.759262, 35.239826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.089399, 34.889862, 35.200157>,  <24.418411, 35.107533, 35.134041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.089399, 34.889862, 35.200157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567863, -0.769869, 0.291263,
		-0.031247, 0.333434, 0.942256,
		-0.822530, -0.544173, 0.165288,
		23.842640, 34.726608, 35.249744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.020041, 35.235645, 35.182869>,  <24.418411, 35.107533, 35.134041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.020041, 35.235645, 35.182869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.369732, 35.379181, 35.313686>,  <25.579548, 35.465302, 35.392178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.369732, 35.379181, 35.313686>,  <25.020041, 35.235645, 35.182869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.369732, 35.379181, 35.313686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422872, -0.893726, -0.149775,
		0.238542, 0.269235, -0.933065,
		0.874230, 0.358839, 0.327043,
		25.632000, 35.486832, 35.411800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.650620, 35.233101, 34.688602>,  <25.020041, 35.235645, 35.182869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.650620, 35.233101, 34.688602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.747723, 35.189690, 35.074200>,  <25.805984, 35.163643, 35.305557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.747723, 35.189690, 35.074200>,  <25.650620, 35.233101, 34.688602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.747723, 35.189690, 35.074200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474161, -0.853655, -0.215512,
		0.846310, 0.509406, -0.155768,
		0.242756, -0.108531, 0.963997,
		25.820549, 35.157131, 35.363400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.429792, 35.270863, 34.848171>,  <25.650620, 35.233101, 34.688602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.429792, 35.270863, 34.848171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.196211, 35.040867, 35.077389>,  <26.056063, 34.902870, 35.214920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.196211, 35.040867, 35.077389>,  <26.429792, 35.270863, 34.848171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.196211, 35.040867, 35.077389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582159, -0.788590, -0.198032,
		0.565766, 0.217964, 0.795236,
		-0.583952, -0.574994, 0.573047,
		26.021025, 34.868370, 35.249302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.843187, 34.850868, 35.388828>,  <26.429792, 35.270863, 34.848171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.843187, 34.850868, 35.388828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.507090, 34.650196, 35.306561>,  <26.305431, 34.529793, 35.257198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.507090, 34.650196, 35.306561>,  <26.843187, 34.850868, 35.388828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.507090, 34.650196, 35.306561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537154, -0.821865, -0.189747,
		-0.073843, -0.269913, 0.960049,
		-0.840246, -0.501683, -0.205674,
		26.255016, 34.499691, 35.244858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.130726, 34.877468, 36.054081>,  <26.843187, 34.850868, 35.388828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.130726, 34.877468, 36.054081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.270557, 35.075214, 36.372425>,  <27.354456, 35.193863, 36.563431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.270557, 35.075214, 36.372425>,  <27.130726, 34.877468, 36.054081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.270557, 35.075214, 36.372425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903789, 0.045915, -0.425508,
		-0.246900, 0.868038, -0.430756,
		0.349579, 0.494370, 0.795860,
		27.375431, 35.223526, 36.611183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.383940, 35.608700, 35.946205>,  <27.130726, 34.877468, 36.054081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.383940, 35.608700, 35.946205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.595875, 35.391342, 36.206665>,  <27.723036, 35.260925, 36.362942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.595875, 35.391342, 36.206665>,  <27.383940, 35.608700, 35.946205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.595875, 35.391342, 36.206665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814663, 0.112636, -0.568891,
		0.235792, 0.831884, 0.502366,
		0.529836, -0.543399, 0.651146,
		27.754826, 35.228321, 36.402008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.741440, 36.181442, 35.500946>,  <27.383940, 35.608700, 35.946205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.741440, 36.181442, 35.500946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.875599, 36.115177, 35.871906>,  <27.956095, 36.075420, 36.094482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.875599, 36.115177, 35.871906>,  <27.741440, 36.181442, 35.500946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.875599, 36.115177, 35.871906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696901, 0.706026, -0.125919,
		-0.633907, 0.688537, 0.352247,
		0.335396, -0.165660, 0.927398,
		27.976217, 36.065479, 36.150127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.022039, 36.814598, 35.745106>,  <27.741440, 36.181442, 35.500946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.022039, 36.814598, 35.745106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.162949, 36.540607, 36.000202>,  <28.247494, 36.376213, 36.153259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.162949, 36.540607, 36.000202>,  <28.022039, 36.814598, 35.745106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.162949, 36.540607, 36.000202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819092, 0.555301, 0.143980,
		-0.452760, 0.471646, 0.756676,
		0.352275, -0.684975, 0.637739,
		28.268631, 36.335114, 36.191525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.552654, 37.171745, 36.091881>,  <28.022039, 36.814598, 35.745106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.552654, 37.171745, 36.091881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.599037, 36.789055, 36.198639>,  <28.626867, 36.559441, 36.262695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.599037, 36.789055, 36.198639>,  <28.552654, 37.171745, 36.091881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.599037, 36.789055, 36.198639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841835, 0.237273, 0.484785,
		-0.527132, 0.168468, 0.832917,
		0.115958, -0.956724, 0.266896,
		28.633825, 36.502037, 36.278709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.793180, 37.105984, 36.885509>,  <28.552654, 37.171745, 36.091881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.793180, 37.105984, 36.885509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.892828, 36.802177, 36.645153>,  <28.952616, 36.619892, 36.500938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.892828, 36.802177, 36.645153>,  <28.793180, 37.105984, 36.885509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.892828, 36.802177, 36.645153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916901, -0.014805, 0.398840,
		-0.311822, -0.650318, 0.692715,
		0.249117, -0.759518, -0.600893,
		28.967564, 36.574322, 36.464886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.161514, 36.731697, 37.302311>,  <28.793180, 37.105984, 36.885509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.161514, 36.731697, 37.302311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.248192, 36.690262, 36.914021>,  <29.300198, 36.665401, 36.681046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.248192, 36.690262, 36.914021>,  <29.161514, 36.731697, 37.302311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.248192, 36.690262, 36.914021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964214, 0.178306, 0.196211,
		0.152760, -0.978507, 0.138522,
		0.216693, -0.103591, -0.970728,
		29.313200, 36.659184, 36.622803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.726463, 36.324661, 37.222412>,  <29.161514, 36.731697, 37.302311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.726463, 36.324661, 37.222412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.713181, 36.555931, 36.896317>,  <29.705212, 36.694695, 36.700661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.713181, 36.555931, 36.896317>,  <29.726463, 36.324661, 37.222412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.713181, 36.555931, 36.896317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857395, 0.435636, 0.274035,
		0.513587, -0.689881, -0.510189,
		-0.033205, 0.578174, -0.815237,
		29.703218, 36.729382, 36.651745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.265324, 36.295403, 36.735271>,  <29.726463, 36.324661, 37.222412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.265324, 36.295403, 36.735271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.082190, 36.643860, 36.806267>,  <29.972309, 36.852932, 36.848862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.082190, 36.643860, 36.806267>,  <30.265324, 36.295403, 36.735271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.082190, 36.643860, 36.806267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859269, 0.382368, 0.339782,
		0.228133, 0.308072, -0.923605,
		-0.457834, 0.871141, 0.177486,
		29.944839, 36.905201, 36.859512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.496904, 36.808220, 36.242954>,  <30.265324, 36.295403, 36.735271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.496904, 36.808220, 36.242954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.397652, 36.967819, 36.596050>,  <30.338100, 37.063580, 36.807907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.397652, 36.967819, 36.596050>,  <30.496904, 36.808220, 36.242954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.397652, 36.967819, 36.596050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931665, 0.347929, 0.104621,
		-0.265386, 0.848377, -0.458068,
		-0.248133, 0.399001, 0.882739,
		30.323212, 37.087521, 36.860870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.614719, 37.555775, 36.405434>,  <30.496904, 36.808220, 36.242954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.614719, 37.555775, 36.405434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.642744, 37.355309, 36.750439>,  <30.659559, 37.235027, 36.957439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.642744, 37.355309, 36.750439>,  <30.614719, 37.555775, 36.405434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.642744, 37.355309, 36.750439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927162, 0.351730, 0.129063,
		-0.368052, 0.790643, 0.489307,
		0.070062, -0.501169, 0.862509,
		30.663763, 37.204956, 37.009190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.894030, 37.977539, 36.941956>,  <30.614719, 37.555775, 36.405434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.894030, 37.977539, 36.941956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.964895, 37.594803, 37.034111>,  <31.007414, 37.365162, 37.089405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.964895, 37.594803, 37.034111>,  <30.894030, 37.977539, 36.941956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.964895, 37.594803, 37.034111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945052, 0.230744, 0.231588,
		-0.274752, 0.176697, 0.945140,
		0.177165, -0.956836, 0.230385,
		31.018045, 37.307751, 37.103226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356068, 38.067261, 37.484020>,  <30.894030, 37.977539, 36.941956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356068, 38.067261, 37.484020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.386311, 37.715168, 37.296627>,  <31.404457, 37.503914, 37.184193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.386311, 37.715168, 37.296627>,  <31.356068, 38.067261, 37.484020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.386311, 37.715168, 37.296627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976711, -0.029234, 0.212560,
		-0.200797, -0.473642, 0.857522,
		0.075608, -0.880232, -0.468481,
		31.408993, 37.451099, 37.156082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.558342, 37.511772, 37.920547>,  <31.356068, 38.067261, 37.484020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.558342, 37.511772, 37.920547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662836, 37.469505, 37.536758>,  <31.725533, 37.444145, 37.306484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662836, 37.469505, 37.536758>,  <31.558342, 37.511772, 37.920547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.662836, 37.469505, 37.536758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961135, -0.063492, 0.268679,
		-0.089310, -0.992373, 0.084975,
		0.261235, -0.105668, -0.959474,
		31.741207, 37.437805, 37.248917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.082253, 36.889351, 37.783703>,  <31.558342, 37.511772, 37.920547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.082253, 36.889351, 37.783703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.121864, 37.194355, 37.527962>,  <32.145630, 37.377357, 37.374519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.121864, 37.194355, 37.527962>,  <32.082253, 36.889351, 37.783703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.121864, 37.194355, 37.527962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980025, 0.036622, 0.195474,
		0.172465, -0.645936, -0.743655,
		0.099030, 0.762513, -0.639349,
		32.151573, 37.423107, 37.336159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519699, 36.780373, 37.214790>,  <32.082253, 36.889351, 37.783703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519699, 36.780373, 37.214790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560242, 37.176949, 37.247726>,  <32.584568, 37.414894, 37.267487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560242, 37.176949, 37.247726>,  <32.519699, 36.780373, 37.214790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560242, 37.176949, 37.247726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993676, -0.104913, 0.040016,
		0.048312, 0.077764, -0.995800,
		0.101361, 0.991436, 0.082341,
		32.590649, 37.474380, 37.272430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806549, 37.344418, 36.679733>,  <32.519699, 36.780373, 37.214790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.806549, 37.344418, 36.679733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.877869, 37.451138, 37.058578>,  <32.920662, 37.515171, 37.285885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.877869, 37.451138, 37.058578>,  <32.806549, 37.344418, 36.679733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.877869, 37.451138, 37.058578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980941, -0.123743, -0.149808,
		0.077230, 0.955774, -0.283781,
		0.178298, 0.266803, 0.947115,
		32.931358, 37.531178, 37.342712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253853, 37.945610, 36.849171>,  <32.806549, 37.344418, 36.679733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253853, 37.945610, 36.849171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275806, 37.641243, 37.107780>,  <33.288979, 37.458622, 37.262947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275806, 37.641243, 37.107780>,  <33.253853, 37.945610, 36.849171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275806, 37.641243, 37.107780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966637, -0.121760, -0.225359,
		0.250201, 0.637323, 0.728848,
		0.054882, -0.760916, 0.646525,
		33.292271, 37.412968, 37.301739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884716, 37.960503, 37.181892>,  <33.253853, 37.945610, 36.849171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884716, 37.960503, 37.181892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747185, 37.586906, 37.220757>,  <33.664665, 37.362747, 37.244076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747185, 37.586906, 37.220757>,  <33.884716, 37.960503, 37.181892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747185, 37.586906, 37.220757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919690, -0.355828, -0.166001,
		0.189616, 0.032283, 0.981327,
		-0.343825, -0.933994, 0.097162,
		33.644039, 37.306709, 37.249905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347584, 37.674530, 37.559032>,  <33.884716, 37.960503, 37.181892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.347584, 37.674530, 37.559032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181889, 37.347969, 37.398087>,  <34.082470, 37.152035, 37.301517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181889, 37.347969, 37.398087>,  <34.347584, 37.674530, 37.559032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181889, 37.347969, 37.398087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908241, -0.399528, -0.124401,
		-0.059195, -0.416975, 0.906988,
		-0.414240, -0.816400, -0.402364,
		34.057617, 37.103050, 37.277378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360664, 38.104851, 38.137447>,  <34.347584, 37.674530, 37.559032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360664, 38.104851, 38.137447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.143391, 38.288837, 37.856483>,  <34.013027, 38.399231, 37.687904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.143391, 38.288837, 37.856483>,  <34.360664, 38.104851, 38.137447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143391, 38.288837, 37.856483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373853, 0.616574, 0.692871,
		0.751787, 0.638955, -0.162952,
		-0.543185, 0.459971, -0.702408,
		33.980434, 38.426830, 37.645760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349194, 38.799480, 38.208195>,  <34.360664, 38.104851, 38.137447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349194, 38.799480, 38.208195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002064, 38.731533, 38.021423>,  <33.793785, 38.690765, 37.909359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002064, 38.731533, 38.021423>,  <34.349194, 38.799480, 38.208195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002064, 38.731533, 38.021423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453453, 0.654937, 0.604514,
		0.203125, 0.736345, -0.645397,
		-0.867825, -0.169865, -0.466932,
		33.741714, 38.680573, 37.881344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924927, 39.427315, 38.059441>,  <34.349194, 38.799480, 38.208195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924927, 39.427315, 38.059441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661854, 39.126251, 38.071781>,  <33.504009, 38.945614, 38.079185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661854, 39.126251, 38.071781>,  <33.924927, 39.427315, 38.059441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661854, 39.126251, 38.071781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511143, 0.475984, 0.715662,
		-0.553337, 0.454909, -0.697765,
		-0.657686, -0.752660, 0.030856,
		33.464546, 38.900452, 38.081039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973824, 39.169716, 37.320358>,  <33.924927, 39.427315, 38.059441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973824, 39.169716, 37.320358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.078770, 39.513416, 37.144699>,  <34.141739, 39.719639, 37.039303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.078770, 39.513416, 37.144699>,  <33.973824, 39.169716, 37.320358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078770, 39.513416, 37.144699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952721, -0.158385, 0.259301,
		0.153251, -0.486414, -0.860183,
		0.262367, 0.859253, -0.439145,
		34.157478, 39.771191, 37.012955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581207, 38.916023, 37.124714>,  <33.973824, 39.169716, 37.320358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.581207, 38.916023, 37.124714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589314, 39.315941, 37.125690>,  <34.594177, 39.555889, 37.126274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589314, 39.315941, 37.125690>,  <34.581207, 38.916023, 37.124714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589314, 39.315941, 37.125690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990175, -0.020411, 0.138336,
		0.138357, -0.000391, -0.990382,
		0.020269, 0.999792, 0.002437,
		34.595394, 39.615879, 37.126423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984959, 39.279404, 36.546310>,  <34.581207, 38.916023, 37.124714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984959, 39.279404, 36.546310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.985241, 39.470879, 36.897503>,  <34.985413, 39.585762, 37.108219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.985241, 39.470879, 36.897503>,  <34.984959, 39.279404, 36.546310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985241, 39.470879, 36.897503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999950, -0.009116, 0.004165,
		0.009998, 0.877937, -0.478671,
		0.000707, 0.478689, 0.877984,
		34.985455, 39.614487, 37.160896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390297, 39.828800, 36.320000>,  <34.984959, 39.279404, 36.546310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390297, 39.828800, 36.320000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.423306, 39.812069, 36.718285>,  <35.443111, 39.802029, 36.957256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.423306, 39.812069, 36.718285>,  <35.390297, 39.828800, 36.320000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423306, 39.812069, 36.718285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968490, 0.238947, -0.070228,
		-0.234984, 0.970131, 0.060230,
		0.082522, -0.041830, 0.995711,
		35.448063, 39.799519, 37.016998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785187, 40.409344, 36.565914>,  <35.390297, 39.828800, 36.320000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785187, 40.409344, 36.565914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.831093, 40.092247, 36.805374>,  <35.858639, 39.901989, 36.949051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.831093, 40.092247, 36.805374>,  <35.785187, 40.409344, 36.565914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.831093, 40.092247, 36.805374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983642, 0.006460, -0.180020,
		0.138842, 0.609518, 0.780519,
		0.114768, -0.792746, 0.598651,
		35.865524, 39.854424, 36.984970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398602, 40.537907, 36.907085>,  <35.785187, 40.409344, 36.565914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398602, 40.537907, 36.907085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.316628, 40.146736, 36.923370>,  <36.267445, 39.912033, 36.933144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.316628, 40.146736, 36.923370>,  <36.398602, 40.537907, 36.907085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316628, 40.146736, 36.923370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929388, -0.207469, -0.305278,
		0.306987, -0.024721, 0.951393,
		-0.204931, -0.977929, 0.040715,
		36.255150, 39.853359, 36.935585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797943, 40.128368, 37.487747>,  <36.398602, 40.537907, 36.907085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797943, 40.128368, 37.487747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733345, 39.962261, 37.129646>,  <36.694588, 39.862595, 36.914787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733345, 39.962261, 37.129646>,  <36.797943, 40.128368, 37.487747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733345, 39.962261, 37.129646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984461, -0.131183, -0.116738,
		-0.068963, -0.900189, 0.430004,
		-0.161495, -0.415272, -0.895248,
		36.684895, 39.837681, 36.861073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519459, 39.914619, 37.338703>,  <36.797943, 40.128368, 37.487747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.519459, 39.914619, 37.338703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.310780, 39.827423, 37.008781>,  <37.185570, 39.775105, 36.810829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.310780, 39.827423, 37.008781>,  <37.519459, 39.914619, 37.338703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310780, 39.827423, 37.008781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851500, -0.073335, -0.519202,
		0.052693, -0.973192, 0.223875,
		-0.521701, -0.217988, -0.824809,
		37.154270, 39.762028, 36.761337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639118, 39.259949, 37.094452>,  <37.519459, 39.914619, 37.338703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.639118, 39.259949, 37.094452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.539303, 39.488815, 36.781952>,  <37.479412, 39.626137, 36.594452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.539303, 39.488815, 36.781952>,  <37.639118, 39.259949, 37.094452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.539303, 39.488815, 36.781952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918931, -0.114557, -0.377417,
		-0.305444, -0.812096, -0.497196,
		-0.249542, 0.572168, -0.781251,
		37.464439, 39.660465, 36.547577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981815, 38.965385, 36.507133>,  <37.639118, 39.259949, 37.094452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981815, 38.965385, 36.507133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.838970, 39.316605, 36.379692>,  <37.753265, 39.527336, 36.303226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.838970, 39.316605, 36.379692>,  <37.981815, 38.965385, 36.507133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.838970, 39.316605, 36.379692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839876, 0.152574, -0.520893,
		-0.408756, -0.453607, -0.791934,
		-0.357109, 0.878044, -0.318608,
		37.731838, 39.580017, 36.284111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925323, 38.941906, 35.864769>,  <37.981815, 38.965385, 36.507133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.925323, 38.941906, 35.864769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.993244, 39.320747, 35.973701>,  <38.033997, 39.548050, 36.039062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.993244, 39.320747, 35.973701>,  <37.925323, 38.941906, 35.864769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993244, 39.320747, 35.973701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760751, 0.049687, -0.647139,
		-0.626438, 0.317064, -0.712072,
		0.169804, 0.947102, 0.272332,
		38.044186, 39.604877, 36.055401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948425, 39.451115, 35.319088>,  <37.925323, 38.941906, 35.864769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948425, 39.451115, 35.319088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.206566, 39.539146, 35.611683>,  <38.361450, 39.591965, 35.787239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.206566, 39.539146, 35.611683>,  <37.948425, 39.451115, 35.319088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206566, 39.539146, 35.611683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763824, -0.197816, -0.614363,
		0.009489, 0.955213, -0.295767,
		0.645355, 0.220084, 0.731492,
		38.400173, 39.605171, 35.831131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342464, 39.963745, 35.070591>,  <37.948425, 39.451115, 35.319088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342464, 39.963745, 35.070591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.521160, 39.727882, 35.339733>,  <38.628376, 39.586365, 35.501217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.521160, 39.727882, 35.339733>,  <38.342464, 39.963745, 35.070591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521160, 39.727882, 35.339733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664964, -0.284303, -0.690648,
		0.598540, 0.755961, 0.265092,
		0.446737, -0.589657, 0.672853,
		38.655182, 39.550983, 35.541588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155392, 40.150978, 35.203270>,  <38.342464, 39.963745, 35.070591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155392, 40.150978, 35.203270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.039867, 39.773819, 35.269646>,  <38.970554, 39.547523, 35.309471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.039867, 39.773819, 35.269646>,  <39.155392, 40.150978, 35.203270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039867, 39.773819, 35.269646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821833, -0.333077, -0.462223,
		0.491099, 0.002880, 0.871099,
		-0.288812, -0.942895, 0.165941,
		38.953224, 39.490952, 35.319427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706974, 39.795883, 35.006268>,  <39.155392, 40.150978, 35.203270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706974, 39.795883, 35.006268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.459755, 39.508999, 35.135029>,  <39.311424, 39.336868, 35.212284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.459755, 39.508999, 35.135029>,  <39.706974, 39.795883, 35.006268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459755, 39.508999, 35.135029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721511, -0.680094, -0.129975,
		0.312143, 0.151924, 0.937809,
		-0.618052, -0.717210, 0.321902,
		39.274338, 39.293835, 35.231598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.154724, 39.337368, 35.241215>,  <39.706974, 39.795883, 35.006268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.154724, 39.337368, 35.241215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.818054, 39.129971, 35.180874>,  <39.616055, 39.005531, 35.144669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.818054, 39.129971, 35.180874>,  <40.154724, 39.337368, 35.241215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818054, 39.129971, 35.180874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539114, -0.790927, -0.289467,
		0.030773, -0.324963, 0.945226,
		-0.841671, -0.518492, -0.150853,
		39.565552, 38.974422, 35.135616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.110580, 38.708801, 35.635632>,  <40.154724, 39.337368, 35.241215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.110580, 38.708801, 35.635632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870800, 38.639965, 35.322952>,  <39.726933, 38.598663, 35.135345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870800, 38.639965, 35.322952>,  <40.110580, 38.708801, 35.635632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870800, 38.639965, 35.322952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298671, -0.954167, -0.018982,
		-0.742601, -0.244848, 0.623372,
		-0.599449, -0.172087, -0.781695,
		39.690964, 38.588341, 35.088444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525345, 38.107159, 35.720741>,  <40.110580, 38.708801, 35.635632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.525345, 38.107159, 35.720741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.663040, 38.180824, 35.352486>,  <39.745655, 38.225025, 35.131531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.663040, 38.180824, 35.352486>,  <39.525345, 38.107159, 35.720741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663040, 38.180824, 35.352486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397407, -0.916981, -0.034839,
		-0.850628, -0.353878, -0.388847,
		0.344237, 0.184165, -0.920643,
		39.766312, 38.236073, 35.076294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357155, 37.676548, 35.101528>,  <39.525345, 38.107159, 35.720741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357155, 37.676548, 35.101528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.709362, 37.805813, 34.962814>,  <39.920685, 37.883373, 34.879585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.709362, 37.805813, 34.962814>,  <39.357155, 37.676548, 35.101528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709362, 37.805813, 34.962814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303463, -0.946317, -0.111333,
		-0.364147, -0.007206, -0.931314,
		0.880515, 0.323161, -0.346785,
		39.973518, 37.902760, 34.858780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864281, 37.658115, 34.632549>,  <39.357155, 37.676548, 35.101528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.864281, 37.658115, 34.632549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.991024, 38.024075, 34.732601>,  <39.067070, 38.243649, 34.792633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.991024, 38.024075, 34.732601>,  <38.864281, 37.658115, 34.632549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991024, 38.024075, 34.732601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685490, -0.038627, -0.727057,
		-0.655520, 0.401836, -0.639391,
		0.316855, 0.914897, 0.250134,
		39.086082, 38.298542, 34.807640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985481, 37.998589, 34.028618>,  <38.864281, 37.658115, 34.632549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.985481, 37.998589, 34.028618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.218018, 38.178020, 34.300152>,  <39.357540, 38.285679, 34.463074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.218018, 38.178020, 34.300152>,  <38.985481, 37.998589, 34.028618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.218018, 38.178020, 34.300152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721822, 0.100715, -0.684711,
		-0.375517, 0.888049, -0.265246,
		0.581343, 0.448582, 0.678834,
		39.392422, 38.312595, 34.503803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486664, 37.500702, 33.892815>,  <38.985481, 37.998589, 34.028618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.486664, 37.500702, 33.892815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.261005, 37.668846, 33.608551>,  <39.125610, 37.769733, 33.437992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.261005, 37.668846, 33.608551>,  <39.486664, 37.500702, 33.892815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261005, 37.668846, 33.608551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155494, -0.791212, -0.591443,
		-0.810898, -0.444166, 0.381000,
		-0.564151, 0.420357, -0.710657,
		39.091759, 37.794952, 33.395355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214188, 36.919197, 33.669441>,  <39.486664, 37.500702, 33.892815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214188, 36.919197, 33.669441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146671, 37.187973, 33.380997>,  <39.106159, 37.349239, 33.207932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146671, 37.187973, 33.380997>,  <39.214188, 36.919197, 33.669441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146671, 37.187973, 33.380997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018253, -0.733615, -0.679321,
		-0.985483, -0.101503, 0.136094,
		-0.168793, 0.671943, -0.721111,
		39.096035, 37.389557, 33.164661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686363, 36.663998, 33.225124>,  <39.214188, 36.919197, 33.669441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686363, 36.663998, 33.225124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.897034, 36.932171, 33.016075>,  <39.023438, 37.093075, 32.890648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.897034, 36.932171, 33.016075>,  <38.686363, 36.663998, 33.225124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.897034, 36.932171, 33.016075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093119, -0.656603, -0.748466,
		-0.844948, 0.345536, -0.408249,
		0.526680, 0.670430, -0.522620,
		39.055038, 37.133301, 32.859287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.418686, 36.615864, 32.548962>,  <38.686363, 36.663998, 33.225124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.418686, 36.615864, 32.548962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.787506, 36.768543, 32.523273>,  <39.008801, 36.860149, 32.507858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.787506, 36.768543, 32.523273>,  <38.418686, 36.615864, 32.548962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.787506, 36.768543, 32.523273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172263, -0.553259, -0.815003,
		-0.346616, 0.740413, -0.575887,
		0.922054, 0.381697, -0.064223,
		39.064121, 36.883053, 32.504005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587578, 36.727688, 31.793192>,  <38.418686, 36.615864, 32.548962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587578, 36.727688, 31.793192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926987, 36.691547, 32.001747>,  <39.130634, 36.669865, 32.126881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926987, 36.691547, 32.001747>,  <38.587578, 36.727688, 31.793192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926987, 36.691547, 32.001747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300742, -0.728370, -0.615655,
		0.435385, 0.679201, -0.590869,
		0.848525, -0.090348, 0.521386,
		39.181545, 36.664444, 32.158161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083473, 36.497028, 31.274853>,  <38.587578, 36.727688, 31.793192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083473, 36.497028, 31.274853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.239700, 36.387424, 31.626392>,  <39.333435, 36.321663, 31.837317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.239700, 36.387424, 31.626392>,  <39.083473, 36.497028, 31.274853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.239700, 36.387424, 31.626392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245939, -0.888917, -0.386445,
		0.887114, 0.367076, -0.279793,
		0.390567, -0.274008, 0.878850,
		39.356869, 36.305222, 31.890047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790520, 36.135365, 31.089682>,  <39.083473, 36.497028, 31.274853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.790520, 36.135365, 31.089682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676243, 36.041889, 31.461439>,  <39.607677, 35.985806, 31.684494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676243, 36.041889, 31.461439>,  <39.790520, 36.135365, 31.089682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.676243, 36.041889, 31.461439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322304, -0.936748, -0.136463,
		0.902497, 0.260561, 0.342939,
		-0.285691, -0.233689, 0.929393,
		39.590534, 35.971783, 31.740257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316784, 35.936733, 31.465870>,  <39.790520, 36.135365, 31.089682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.316784, 35.936733, 31.465870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.991489, 35.765213, 31.623240>,  <39.796314, 35.662300, 31.717661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.991489, 35.765213, 31.623240>,  <40.316784, 35.936733, 31.465870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.991489, 35.765213, 31.623240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443293, -0.894461, -0.058575,
		0.377019, 0.126767, 0.917490,
		-0.813233, -0.428800, 0.393423,
		39.747520, 35.636574, 31.741266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510891, 35.493809, 32.103210>,  <40.316784, 35.936733, 31.465870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.510891, 35.493809, 32.103210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.171219, 35.361828, 31.938271>,  <39.967415, 35.282639, 31.839308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.171219, 35.361828, 31.938271>,  <40.510891, 35.493809, 32.103210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.171219, 35.361828, 31.938271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469105, -0.829900, -0.302002,
		-0.242563, -0.449889, 0.859514,
		-0.849178, -0.329948, -0.412348,
		39.916466, 35.262844, 31.814566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.380283, 34.774014, 32.358593>,  <40.510891, 35.493809, 32.103210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.380283, 34.774014, 32.358593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.147141, 34.804714, 32.035015>,  <40.007256, 34.823135, 31.840868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.147141, 34.804714, 32.035015>,  <40.380283, 34.774014, 32.358593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.147141, 34.804714, 32.035015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335390, -0.884049, -0.325531,
		-0.740131, -0.461049, 0.489530,
		-0.582854, 0.076752, -0.808944,
		39.972282, 34.827740, 31.792332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098549, 34.084148, 32.249016>,  <40.380283, 34.774014, 32.358593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098549, 34.084148, 32.249016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.081268, 34.268547, 31.894474>,  <40.070900, 34.379185, 31.681749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.081268, 34.268547, 31.894474>,  <40.098549, 34.084148, 32.249016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.081268, 34.268547, 31.894474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339986, -0.827444, -0.446930,
		-0.939438, -0.320656, -0.120983,
		-0.043204, 0.460995, -0.886351,
		40.068306, 34.406845, 31.628569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.875793, 33.597347, 31.757551>,  <40.098549, 34.084148, 32.249016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.875793, 33.597347, 31.757551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.009327, 33.872829, 31.500105>,  <40.089447, 34.038116, 31.345636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.009327, 33.872829, 31.500105>,  <39.875793, 33.597347, 31.757551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.009327, 33.872829, 31.500105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319182, -0.725041, -0.610277,
		-0.886948, -0.001698, -0.461867,
		0.333836, 0.688704, -0.643615,
		40.109478, 34.079441, 31.307020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527096, 33.544365, 31.084358>,  <39.875793, 33.597347, 31.757551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527096, 33.544365, 31.084358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.899063, 33.689503, 31.060354>,  <40.122242, 33.776585, 31.045952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.899063, 33.689503, 31.060354>,  <39.527096, 33.544365, 31.084358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.899063, 33.689503, 31.060354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230206, -0.701517, -0.674447,
		-0.286818, 0.613363, -0.735881,
		0.929914, 0.362848, -0.060008,
		40.178036, 33.798359, 31.042353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706051, 33.860462, 30.336245>,  <39.527096, 33.544365, 31.084358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706051, 33.860462, 30.336245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.959976, 33.647133, 30.559877>,  <40.112331, 33.519135, 30.694057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.959976, 33.647133, 30.559877>,  <39.706051, 33.860462, 30.336245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959976, 33.647133, 30.559877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147929, -0.794083, -0.589533,
		0.758371, 0.291540, -0.582991,
		0.634816, -0.533326, 0.559082,
		40.150421, 33.487137, 30.727602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.241478, 34.126240, 29.782749>,  <39.706051, 33.860462, 30.336245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.241478, 34.126240, 29.782749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024052, 34.203819, 29.456089>,  <39.893597, 34.250366, 29.260094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024052, 34.203819, 29.456089>,  <40.241478, 34.126240, 29.782749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024052, 34.203819, 29.456089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466730, 0.738814, 0.486124,
		0.697636, 0.645397, -0.311074,
		-0.543569, 0.193950, -0.816650,
		39.860981, 34.262005, 29.211094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.186382, 34.850040, 29.740406>,  <40.241478, 34.126240, 29.782749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.186382, 34.850040, 29.740406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871815, 34.718952, 29.530973>,  <39.683075, 34.640301, 29.405313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871815, 34.718952, 29.530973>,  <40.186382, 34.850040, 29.740406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871815, 34.718952, 29.530973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572117, 0.706005, 0.417419,
		0.232855, 0.627819, -0.742713,
		-0.786423, -0.327720, -0.523583,
		39.635887, 34.620636, 29.373899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782543, 35.317204, 29.186571>,  <40.186382, 34.850040, 29.740406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.782543, 35.317204, 29.186571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.537727, 35.062733, 29.374483>,  <39.390839, 34.910049, 29.487230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.537727, 35.062733, 29.374483>,  <39.782543, 35.317204, 29.186571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537727, 35.062733, 29.374483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637344, 0.748476, 0.183240,
		-0.468191, -0.187262, -0.863557,
		-0.612037, -0.636174, 0.469780,
		39.354115, 34.871880, 29.515417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198383, 35.067238, 28.818916>,  <39.782543, 35.317204, 29.186571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198383, 35.067238, 28.818916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.166759, 35.153404, 29.208242>,  <39.147785, 35.205105, 29.441839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.166759, 35.153404, 29.208242>,  <39.198383, 35.067238, 28.818916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166759, 35.153404, 29.208242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546729, 0.807060, -0.223028,
		-0.833569, -0.549772, 0.053974,
		-0.079055, 0.215419, 0.973316,
		39.143044, 35.218029, 29.500237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471695, 35.258194, 28.477522>,  <39.198383, 35.067238, 28.818916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471695, 35.258194, 28.477522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.670868, 35.346489, 28.142059>,  <38.790371, 35.399467, 27.940783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.670868, 35.346489, 28.142059>,  <38.471695, 35.258194, 28.477522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670868, 35.346489, 28.142059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723807, -0.426884, -0.542101,
		-0.477671, 0.876952, -0.052785,
		0.497929, 0.220740, -0.838654,
		38.820248, 35.412712, 27.890463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947529, 35.584049, 28.018278>,  <38.471695, 35.258194, 28.477522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947529, 35.584049, 28.018278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.244061, 35.453430, 27.783741>,  <38.421978, 35.375057, 27.643019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.244061, 35.453430, 27.783741>,  <37.947529, 35.584049, 28.018278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244061, 35.453430, 27.783741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671021, -0.343940, -0.656838,
		0.012824, 0.880381, -0.474095,
		0.741327, -0.326551, -0.586343,
		38.466457, 35.355465, 27.607838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845081, 35.855366, 27.398069>,  <37.947529, 35.584049, 28.018278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845081, 35.855366, 27.398069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058720, 35.525562, 27.323305>,  <38.186901, 35.327682, 27.278446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058720, 35.525562, 27.323305>,  <37.845081, 35.855366, 27.398069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058720, 35.525562, 27.323305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711316, -0.318760, -0.626435,
		0.456919, 0.467528, -0.756732,
		0.534092, -0.824506, -0.186913,
		38.218948, 35.278210, 27.267231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008751, 35.816795, 26.662189>,  <37.845081, 35.855366, 27.398069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008751, 35.816795, 26.662189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.013233, 35.445015, 26.809698>,  <38.015923, 35.221947, 26.898203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.013233, 35.445015, 26.809698>,  <38.008751, 35.816795, 26.662189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013233, 35.445015, 26.809698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680922, -0.277168, -0.677882,
		0.732270, -0.243511, -0.635990,
		0.011204, -0.929452, 0.368774,
		38.016594, 35.166180, 26.920330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915852, 35.422241, 26.099438>,  <38.008751, 35.816795, 26.662189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915852, 35.422241, 26.099438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871059, 35.140408, 26.379728>,  <37.844185, 34.971306, 26.547903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871059, 35.140408, 26.379728>,  <37.915852, 35.422241, 26.099438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871059, 35.140408, 26.379728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748234, -0.404249, -0.526051,
		0.653916, -0.583214, -0.481929,
		-0.111981, -0.704589, 0.700725,
		37.837463, 34.929031, 26.589947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894791, 34.835445, 25.751667>,  <37.915852, 35.422241, 26.099438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894791, 34.835445, 25.751667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.719288, 34.746918, 26.100039>,  <37.613987, 34.693802, 26.309061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.719288, 34.746918, 26.100039>,  <37.894791, 34.835445, 25.751667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719288, 34.746918, 26.100039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735754, -0.467959, -0.489572,
		0.515909, -0.855589, 0.042484,
		-0.438753, -0.221317, 0.870928,
		37.587662, 34.680523, 26.361317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635429, 34.140656, 25.614309>,  <37.894791, 34.835445, 25.751667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635429, 34.140656, 25.614309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.445095, 34.248985, 25.949030>,  <37.330894, 34.313984, 26.149862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.445095, 34.248985, 25.949030>,  <37.635429, 34.140656, 25.614309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445095, 34.248985, 25.949030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836044, -0.434742, -0.334707,
		0.273146, -0.858868, 0.433287,
		-0.475837, 0.270824, 0.836799,
		37.302345, 34.330231, 26.200069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277740, 33.530499, 25.978245>,  <37.635429, 34.140656, 25.614309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277740, 33.530499, 25.978245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.081921, 33.864277, 26.079470>,  <36.964428, 34.064545, 26.140205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.081921, 33.864277, 26.079470>,  <37.277740, 33.530499, 25.978245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081921, 33.864277, 26.079470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857918, -0.409031, -0.310919,
		-0.155934, -0.369318, 0.916127,
		-0.489553, 0.834445, 0.253063,
		36.935055, 34.114609, 26.155388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710751, 33.304855, 26.321869>,  <37.277740, 33.530499, 25.978245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710751, 33.304855, 26.321869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.606598, 33.672737, 26.204329>,  <36.544106, 33.893467, 26.133804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.606598, 33.672737, 26.204329>,  <36.710751, 33.304855, 26.321869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606598, 33.672737, 26.204329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901090, -0.340789, -0.268140,
		-0.346750, 0.194967, 0.917471,
		-0.260385, 0.919701, -0.293851,
		36.528484, 33.948647, 26.116175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022190, 33.336479, 26.475380>,  <36.710751, 33.304855, 26.321869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.022190, 33.336479, 26.475380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.069221, 33.650124, 26.231625>,  <36.097439, 33.838310, 26.085371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.069221, 33.650124, 26.231625>,  <36.022190, 33.336479, 26.475380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069221, 33.650124, 26.231625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948455, -0.093187, -0.302901,
		-0.294294, 0.613590, 0.732734,
		0.117575, 0.784107, -0.609386,
		36.104496, 33.885357, 26.048809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448029, 33.696251, 26.501381>,  <36.022190, 33.336479, 26.475380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448029, 33.696251, 26.501381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588428, 33.854744, 26.162016>,  <35.672668, 33.949841, 25.958397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588428, 33.854744, 26.162016>,  <35.448029, 33.696251, 26.501381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588428, 33.854744, 26.162016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899157, -0.110293, -0.423500,
		-0.261379, 0.911501, 0.317565,
		0.350996, 0.396235, -0.848410,
		35.693726, 33.973614, 25.907494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075336, 34.254406, 26.292574>,  <35.448029, 33.696251, 26.501381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075336, 34.254406, 26.292574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.250275, 34.146080, 25.949554>,  <35.355236, 34.081085, 25.743742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.250275, 34.146080, 25.949554>,  <35.075336, 34.254406, 26.292574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250275, 34.146080, 25.949554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813178, 0.288111, -0.505702,
		0.384020, 0.918505, -0.094217,
		0.437345, -0.270815, -0.857548,
		35.381477, 34.064835, 25.692289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934196, 34.809731, 25.836020>,  <35.075336, 34.254406, 26.292574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934196, 34.809731, 25.836020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992569, 34.468372, 25.635851>,  <35.027592, 34.263557, 25.515751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992569, 34.468372, 25.635851>,  <34.934196, 34.809731, 25.836020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992569, 34.468372, 25.635851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823932, 0.175135, -0.538946,
		0.547575, 0.490963, -0.677582,
		0.145934, -0.853395, -0.500420,
		35.036350, 34.212353, 25.485725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803577, 34.951824, 25.162159>,  <34.934196, 34.809731, 25.836020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803577, 34.951824, 25.162159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797379, 34.552292, 25.143816>,  <34.793659, 34.312572, 25.132811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797379, 34.552292, 25.143816>,  <34.803577, 34.951824, 25.162159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797379, 34.552292, 25.143816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776199, 0.040928, -0.629159,
		0.630298, 0.025842, -0.775923,
		-0.015498, -0.998828, -0.045855,
		34.792728, 34.252644, 25.130060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668922, 34.876308, 24.492025>,  <34.803577, 34.951824, 25.162159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668922, 34.876308, 24.492025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586006, 34.528198, 24.670755>,  <34.536255, 34.319332, 24.777994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586006, 34.528198, 24.670755>,  <34.668922, 34.876308, 24.492025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586006, 34.528198, 24.670755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818756, -0.095644, -0.566119,
		0.535415, -0.483192, -0.692716,
		-0.207290, -0.870275, 0.446826,
		34.523819, 34.267117, 24.804804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391415, 34.413933, 23.956066>,  <34.668922, 34.876308, 24.492025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391415, 34.413933, 23.956066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275417, 34.272064, 24.311619>,  <34.205818, 34.186943, 24.524950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275417, 34.272064, 24.311619>,  <34.391415, 34.413933, 23.956066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275417, 34.272064, 24.311619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909243, -0.187717, -0.371537,
		0.298632, -0.915953, -0.268046,
		-0.289993, -0.354671, 0.888882,
		34.188419, 34.165665, 24.578283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042542, 33.817780, 23.739992>,  <34.391415, 34.413933, 23.956066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042542, 33.817780, 23.739992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910702, 33.932934, 24.099657>,  <33.831600, 34.002026, 24.315456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910702, 33.932934, 24.099657>,  <34.042542, 33.817780, 23.739992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910702, 33.932934, 24.099657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934115, 0.038862, -0.354851,
		-0.137101, -0.956875, 0.256112,
		-0.329595, 0.287889, 0.899159,
		33.811825, 34.019299, 24.369406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769825, 33.263420, 23.921160>,  <34.042542, 33.817780, 23.739992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769825, 33.263420, 23.921160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620678, 33.581863, 24.111814>,  <33.531189, 33.772930, 24.226208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620678, 33.581863, 24.111814>,  <33.769825, 33.263420, 23.921160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620678, 33.581863, 24.111814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902745, -0.192488, -0.384708,
		-0.214525, -0.573721, 0.790457,
		-0.372869, 0.796111, 0.476631,
		33.508816, 33.820694, 24.254805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182755, 32.916588, 24.121996>,  <33.769825, 33.263420, 23.921160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182755, 32.916588, 24.121996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127510, 33.311779, 24.149782>,  <33.094364, 33.548893, 24.166454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127510, 33.311779, 24.149782>,  <33.182755, 32.916588, 24.121996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127510, 33.311779, 24.149782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972002, -0.121745, -0.200975,
		-0.190102, -0.095276, 0.977130,
		-0.138109, 0.987978, 0.069465,
		33.086079, 33.608173, 24.170622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.576355, 33.030548, 24.567516>,  <33.182755, 32.916588, 24.121996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.576355, 33.030548, 24.567516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629120, 33.341122, 24.321020>,  <32.660778, 33.527466, 24.173122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629120, 33.341122, 24.321020>,  <32.576355, 33.030548, 24.567516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629120, 33.341122, 24.321020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983887, 0.026870, -0.176762,
		-0.120685, 0.629631, 0.767464,
		0.131917, 0.776430, -0.616242,
		32.668694, 33.574051, 24.136147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.976152, 33.522480, 24.692741>,  <32.576355, 33.030548, 24.567516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.976152, 33.522480, 24.692741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.124020, 33.643314, 24.341267>,  <32.212738, 33.715816, 24.130383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.124020, 33.643314, 24.341267>,  <31.976152, 33.522480, 24.692741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.124020, 33.643314, 24.341267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921144, 0.243133, -0.303941,
		0.121821, 0.921754, 0.368144,
		0.369666, 0.302088, -0.878687,
		32.234921, 33.733940, 24.077662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.624392, 34.047264, 24.486023>,  <31.976152, 33.522480, 24.692741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.624392, 34.047264, 24.486023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795416, 33.939743, 24.140783>,  <31.898031, 33.875229, 23.933640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795416, 33.939743, 24.140783>,  <31.624392, 34.047264, 24.486023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.795416, 33.939743, 24.140783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861962, 0.166497, -0.478852,
		0.272420, 0.948696, -0.160510,
		0.427561, -0.268802, -0.863097,
		31.923685, 33.859104, 23.881855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.464865, 34.598591, 23.942038>,  <31.624392, 34.047264, 24.486023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.464865, 34.598591, 23.942038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.571316, 34.268658, 23.742504>,  <31.635185, 34.070698, 23.622784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.571316, 34.268658, 23.742504>,  <31.464865, 34.598591, 23.942038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.571316, 34.268658, 23.742504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826695, 0.070839, -0.558174,
		0.495735, 0.560926, -0.663030,
		0.266126, -0.824830, -0.498832,
		31.651154, 34.021210, 23.592855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.253393, 34.792751, 23.231295>,  <31.464865, 34.598591, 23.942038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.253393, 34.792751, 23.231295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.295519, 34.394978, 23.232668>,  <31.320795, 34.156315, 23.233492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.295519, 34.394978, 23.232668>,  <31.253393, 34.792751, 23.231295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.295519, 34.394978, 23.232668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796702, -0.086439, -0.598159,
		0.595126, 0.060259, -0.801370,
		0.105314, -0.994433, 0.003433,
		31.327112, 34.096649, 23.233698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.247520, 34.568516, 22.480419>,  <31.253393, 34.792751, 23.231295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.247520, 34.568516, 22.480419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.162033, 34.243813, 22.697813>,  <31.110741, 34.048992, 22.828249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.162033, 34.243813, 22.697813>,  <31.247520, 34.568516, 22.480419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.162033, 34.243813, 22.697813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802359, -0.171498, -0.571671,
		0.557264, -0.558249, -0.614667,
		-0.213720, -0.811755, 0.543486,
		31.097918, 34.000286, 22.860859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.047333, 34.155579, 21.977959>,  <31.247520, 34.568516, 22.480419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.047333, 34.155579, 21.977959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.923019, 33.982929, 22.316690>,  <30.848433, 33.879341, 22.519930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.923019, 33.982929, 22.316690>,  <31.047333, 34.155579, 21.977959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.923019, 33.982929, 22.316690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786699, -0.383183, -0.484020,
		0.533403, -0.816624, -0.220469,
		-0.310783, -0.431620, 0.846828,
		30.829784, 33.853443, 22.570740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.879515, 33.516846, 21.749075>,  <31.047333, 34.155579, 21.977959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.879515, 33.516846, 21.749075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.709496, 33.558365, 22.108755>,  <30.607485, 33.583275, 22.324564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.709496, 33.558365, 22.108755>,  <30.879515, 33.516846, 21.749075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.709496, 33.558365, 22.108755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819093, -0.466915, -0.333284,
		0.385256, -0.878189, 0.283481,
		-0.425048, 0.103798, 0.899200,
		30.581982, 33.589504, 22.378515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.602646, 32.814453, 21.983652>,  <30.879515, 33.516846, 21.749075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.602646, 32.814453, 21.983652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.391064, 33.111015, 22.148827>,  <30.264114, 33.288952, 22.247932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.391064, 33.111015, 22.148827>,  <30.602646, 32.814453, 21.983652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.391064, 33.111015, 22.148827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834050, -0.364298, -0.414304,
		-0.156736, -0.563560, 0.811070,
		-0.528956, 0.741409, 0.412938,
		30.232376, 33.333439, 22.272707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.033546, 32.524120, 22.190655>,  <30.602646, 32.814453, 21.983652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.033546, 32.524120, 22.190655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.898169, 32.900494, 22.194836>,  <29.816942, 33.126316, 22.197344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.898169, 32.900494, 22.194836>,  <30.033546, 32.524120, 22.190655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.898169, 32.900494, 22.194836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855640, -0.303105, -0.419533,
		-0.391583, -0.150930, 0.907680,
		-0.338442, 0.940929, 0.010451,
		29.796635, 33.182774, 22.197971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.359190, 32.528278, 22.527527>,  <30.033546, 32.524120, 22.190655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.359190, 32.528278, 22.527527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.368580, 32.868404, 22.317226>,  <29.374214, 33.072479, 22.191046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.368580, 32.868404, 22.317226>,  <29.359190, 32.528278, 22.527527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.368580, 32.868404, 22.317226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944254, -0.153885, -0.291041,
		-0.328382, 0.503273, 0.799301,
		0.023472, 0.850315, -0.525750,
		29.375622, 33.123501, 22.159502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.745758, 32.784264, 22.742254>,  <29.359190, 32.528278, 22.527527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.745758, 32.784264, 22.742254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.848957, 32.979923, 22.408987>,  <28.910877, 33.097321, 22.209026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.848957, 32.979923, 22.408987>,  <28.745758, 32.784264, 22.742254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.848957, 32.979923, 22.408987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896911, -0.199308, -0.394750,
		-0.359149, 0.849122, 0.387303,
		0.257998, 0.489150, -0.833168,
		28.926357, 33.126667, 22.159037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.266609, 33.275356, 22.506971>,  <28.745758, 32.784264, 22.742254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.266609, 33.275356, 22.506971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.448736, 33.181026, 22.163559>,  <28.558012, 33.124428, 21.957512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.448736, 33.181026, 22.163559>,  <28.266609, 33.275356, 22.506971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.448736, 33.181026, 22.163559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884541, -0.229595, -0.406046,
		-0.101360, 0.944285, -0.313133,
		0.455317, -0.235822, -0.858530,
		28.585331, 33.110279, 21.906000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.786455, 33.463467, 22.047699>,  <28.266609, 33.275356, 22.506971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.786455, 33.463467, 22.047699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.054966, 33.283173, 21.812336>,  <28.216072, 33.174995, 21.671118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.054966, 33.283173, 21.812336>,  <27.786455, 33.463467, 22.047699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.054966, 33.283173, 21.812336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711102, -0.167691, -0.682799,
		0.209092, 0.876765, -0.433087,
		0.671279, -0.450737, -0.588406,
		28.256350, 33.147953, 21.635815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.634907, 33.700596, 21.407532>,  <27.786455, 33.463467, 22.047699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.634907, 33.700596, 21.407532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.841963, 33.366714, 21.332350>,  <27.966196, 33.166386, 21.287241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.841963, 33.366714, 21.332350>,  <27.634907, 33.700596, 21.407532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.841963, 33.366714, 21.332350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555832, -0.161058, -0.815544,
		0.650463, 0.526628, -0.547322,
		0.517638, -0.834700, -0.187954,
		27.997253, 33.116306, 21.275963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.969801, 33.767471, 20.733685>,  <27.634907, 33.700596, 21.407532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.969801, 33.767471, 20.733685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.925577, 33.377979, 20.813307>,  <27.899042, 33.144283, 20.861080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.925577, 33.377979, 20.813307>,  <27.969801, 33.767471, 20.733685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.925577, 33.377979, 20.813307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558378, -0.104830, -0.822936,
		0.822186, -0.202132, -0.532121,
		-0.110559, -0.973732, 0.199056,
		27.892408, 33.085861, 20.873024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.004765, 33.440994, 20.116827>,  <27.969801, 33.767471, 20.733685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.004765, 33.440994, 20.116827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.828575, 33.175083, 20.358177>,  <27.722862, 33.015537, 20.502987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.828575, 33.175083, 20.358177>,  <28.004765, 33.440994, 20.116827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.828575, 33.175083, 20.358177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622434, -0.258195, -0.738857,
		0.646961, -0.701007, -0.300050,
		-0.440473, -0.664773, 0.603374,
		27.696434, 32.975651, 20.539188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.996237, 32.845566, 19.692162>,  <28.004765, 33.440994, 20.116827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.996237, 32.845566, 19.692162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.717592, 32.765858, 19.967850>,  <27.550406, 32.718033, 20.133263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.717592, 32.765858, 19.967850>,  <27.996237, 32.845566, 19.692162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.717592, 32.765858, 19.967850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635697, -0.273914, -0.721707,
		0.332601, -0.940884, 0.064136,
		-0.696610, -0.199269, 0.689221,
		27.508610, 32.706078, 20.174616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.820032, 32.196579, 19.723106>,  <27.996237, 32.845566, 19.692162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.820032, 32.196579, 19.723106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.488728, 32.370125, 19.864950>,  <27.289946, 32.474251, 19.950056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.488728, 32.370125, 19.864950>,  <27.820032, 32.196579, 19.723106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.488728, 32.370125, 19.864950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508447, -0.315932, -0.801042,
		-0.235506, -0.843774, 0.482268,
		-0.828263, 0.433858, 0.354610,
		27.240250, 32.500282, 19.971333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.354977, 31.774956, 19.505810>,  <27.820032, 32.196579, 19.723106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.354977, 31.774956, 19.505810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.150122, 32.109428, 19.584312>,  <27.027208, 32.310112, 19.631414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.150122, 32.109428, 19.584312>,  <27.354977, 31.774956, 19.505810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.150122, 32.109428, 19.584312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550811, -0.144415, -0.822041,
		-0.659033, -0.529098, 0.534538,
		-0.512136, 0.836181, 0.196258,
		26.996481, 32.360283, 19.643190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.729813, 31.594683, 19.341291>,  <27.354977, 31.774956, 19.505810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.729813, 31.594683, 19.341291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.694689, 31.993063, 19.349031>,  <26.673615, 32.232090, 19.353676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.694689, 31.993063, 19.349031>,  <26.729813, 31.594683, 19.341291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.694689, 31.993063, 19.349031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580086, -0.035335, -0.813789,
		-0.809808, -0.082683, 0.580839,
		-0.087811, 0.995949, 0.019348,
		26.668346, 32.291847, 19.354836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.049337, 31.645721, 19.230787>,  <26.729813, 31.594683, 19.341291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.049337, 31.645721, 19.230787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.199677, 32.000114, 19.122141>,  <26.289881, 32.212749, 19.056953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.199677, 32.000114, 19.122141>,  <26.049337, 31.645721, 19.230787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.199677, 32.000114, 19.122141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496153, -0.055162, -0.866481,
		-0.782668, 0.460431, 0.418849,
		0.375850, 0.885980, -0.271618,
		26.312431, 32.265907, 19.040655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.565475, 31.919006, 18.895060>,  <26.049337, 31.645721, 19.230787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.565475, 31.919006, 18.895060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.861744, 32.155663, 18.767708>,  <26.039505, 32.297657, 18.691296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.861744, 32.155663, 18.767708>,  <25.565475, 31.919006, 18.895060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.861744, 32.155663, 18.767708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403203, 0.012362, -0.915027,
		-0.537429, 0.806109, 0.247706,
		0.740673, 0.591638, -0.318382,
		26.083946, 32.333153, 18.672194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.274836, 32.577381, 18.586792>,  <25.565475, 31.919006, 18.895060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.274836, 32.577381, 18.586792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.609581, 32.432384, 18.422714>,  <25.810429, 32.345387, 18.324268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.609581, 32.432384, 18.422714>,  <25.274836, 32.577381, 18.586792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.609581, 32.432384, 18.422714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509568, -0.242080, -0.825674,
		0.200003, 0.899997, -0.387303,
		0.836863, -0.362495, -0.410193,
		25.860640, 32.323635, 18.299656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.156013, 32.831570, 17.949770>,  <25.274836, 32.577381, 18.586792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.156013, 32.831570, 17.949770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.445646, 32.555737, 17.955276>,  <25.619425, 32.390236, 17.958580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.445646, 32.555737, 17.955276>,  <25.156013, 32.831570, 17.949770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.445646, 32.555737, 17.955276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391590, -0.427451, -0.814827,
		0.567772, 0.584609, -0.579540,
		0.724080, -0.689579, 0.013768,
		25.662870, 32.348862, 17.959406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.618565, 32.705517, 17.352291>,  <25.156013, 32.831570, 17.949770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.618565, 32.705517, 17.352291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.599142, 32.342907, 17.520027>,  <25.587488, 32.125340, 17.620668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.599142, 32.342907, 17.520027>,  <25.618565, 32.705517, 17.352291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.599142, 32.342907, 17.520027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351562, -0.377460, -0.856696,
		0.934904, -0.189021, -0.300374,
		-0.048554, -0.906529, 0.419342,
		25.584576, 32.070950, 17.645830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.936644, 33.287651, 17.054947>,  <25.618565, 32.705517, 17.352291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.936644, 33.287651, 17.054947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.057554, 33.637577, 17.206385>,  <26.130100, 33.847530, 17.297247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.057554, 33.637577, 17.206385>,  <25.936644, 33.287651, 17.054947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.057554, 33.637577, 17.206385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424982, 0.231837, -0.875010,
		-0.853241, 0.425390, -0.301701,
		0.302275, 0.874812, 0.378596,
		26.148237, 33.900021, 17.319963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.702557, 33.936874, 16.632505>,  <25.936644, 33.287651, 17.054947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.702557, 33.936874, 16.632505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.048941, 34.032898, 16.807995>,  <26.256771, 34.090511, 16.913288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.048941, 34.032898, 16.807995>,  <25.702557, 33.936874, 16.632505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.048941, 34.032898, 16.807995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378632, 0.258406, -0.888743,
		-0.326723, 0.935733, 0.132874,
		0.865962, 0.240063, 0.438726,
		26.308729, 34.104916, 16.939613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.361387, 33.863880, 15.976794>,  <25.702557, 33.936874, 16.632505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.361387, 33.863880, 15.976794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.559578, 33.738132, 15.652900>,  <25.678492, 33.662682, 15.458563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.559578, 33.738132, 15.652900>,  <25.361387, 33.863880, 15.976794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.559578, 33.738132, 15.652900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867120, 0.124213, 0.482363,
		-0.051063, -0.941138, 0.334144,
		0.495475, -0.314373, -0.809736,
		25.708221, 33.643822, 15.409979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.741156, 33.227825, 16.024052>,  <25.361387, 33.863880, 15.976794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.741156, 33.227825, 16.024052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.961023, 33.439571, 15.765553>,  <26.092943, 33.566620, 15.610453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.961023, 33.439571, 15.765553>,  <25.741156, 33.227825, 16.024052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.961023, 33.439571, 15.765553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817010, -0.179304, 0.548037,
		0.174237, -0.829230, -0.531055,
		0.549669, 0.529365, -0.646248,
		26.125923, 33.598381, 15.571678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.353867, 32.783001, 16.039322>,  <25.741156, 33.227825, 16.024052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.353867, 32.783001, 16.039322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.429146, 33.150620, 15.900796>,  <26.474314, 33.371193, 15.817681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.429146, 33.150620, 15.900796>,  <26.353867, 32.783001, 16.039322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.429146, 33.150620, 15.900796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827237, 0.041735, 0.560301,
		0.529397, -0.391929, -0.752416,
		0.188196, 0.919048, -0.346313,
		26.485605, 33.426334, 15.796902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.059526, 32.715557, 15.799477>,  <26.353867, 32.783001, 16.039322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.059526, 32.715557, 15.799477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.962431, 33.098949, 15.859340>,  <26.904173, 33.328983, 15.895258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.962431, 33.098949, 15.859340>,  <27.059526, 32.715557, 15.799477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.962431, 33.098949, 15.859340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874940, 0.149677, 0.460517,
		0.418995, 0.242727, -0.874944,
		-0.242739, 0.958478, 0.149658,
		26.889608, 33.386494, 15.904237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.612673, 33.089825, 15.572349>,  <27.059526, 32.715557, 15.799477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.612673, 33.089825, 15.572349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.419785, 33.320236, 15.836364>,  <27.304052, 33.458485, 15.994773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.419785, 33.320236, 15.836364>,  <27.612673, 33.089825, 15.572349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.419785, 33.320236, 15.836364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871284, 0.236869, 0.429834,
		0.091256, 0.782355, -0.616111,
		-0.482220, 0.576032, 0.660038,
		27.275118, 33.493046, 16.034376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.787947, 33.863037, 15.647451>,  <27.612673, 33.089825, 15.572349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.787947, 33.863037, 15.647451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.662018, 33.707478, 15.993779>,  <27.586460, 33.614140, 16.201576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.662018, 33.707478, 15.993779>,  <27.787947, 33.863037, 15.647451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.662018, 33.707478, 15.993779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906164, 0.148265, 0.396087,
		-0.282410, 0.909270, 0.305732,
		-0.314820, -0.388903, 0.865819,
		27.567572, 33.590805, 16.253525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.979239, 34.271282, 16.159323>,  <27.787947, 33.863037, 15.647451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.979239, 34.271282, 16.159323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.922356, 33.952354, 16.393951>,  <27.888226, 33.760998, 16.534729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.922356, 33.952354, 16.393951>,  <27.979239, 34.271282, 16.159323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.922356, 33.952354, 16.393951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788008, 0.267427, 0.554551,
		-0.599017, 0.541084, 0.590261,
		-0.142207, -0.797315, 0.586571,
		27.879694, 33.713161, 16.569923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.892078, 34.511024, 16.833447>,  <27.979239, 34.271282, 16.159323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.892078, 34.511024, 16.833447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.008270, 34.128677, 16.851068>,  <28.077986, 33.899269, 16.861643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.008270, 34.128677, 16.851068>,  <27.892078, 34.511024, 16.833447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.008270, 34.128677, 16.851068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705912, 0.245149, 0.664522,
		-0.645995, -0.161929, 0.745969,
		0.290479, -0.955867, 0.044057,
		28.095413, 33.841919, 16.864286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.096542, 34.455883, 17.604366>,  <27.892078, 34.511024, 16.833447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.096542, 34.455883, 17.604366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.250246, 34.123455, 17.443535>,  <28.342468, 33.924000, 17.347036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.250246, 34.123455, 17.443535>,  <28.096542, 34.455883, 17.604366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.250246, 34.123455, 17.443535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841222, 0.135741, 0.523374,
		-0.380382, -0.539349, 0.751274,
		0.384260, -0.831070, -0.402078,
		28.365524, 33.874134, 17.322912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.300871, 34.075832, 18.208717>,  <28.096542, 34.455883, 17.604366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.300871, 34.075832, 18.208717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.510857, 33.958347, 17.889181>,  <28.636848, 33.887856, 17.697460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.510857, 33.958347, 17.889181>,  <28.300871, 34.075832, 18.208717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.510857, 33.958347, 17.889181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830047, -0.030909, 0.556836,
		-0.188241, -0.955394, 0.227569,
		0.524964, -0.293713, -0.798840,
		28.668346, 33.870235, 17.649529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.724445, 33.604591, 18.475321>,  <28.300871, 34.075832, 18.208717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.724445, 33.604591, 18.475321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.888393, 33.679333, 18.118200>,  <28.986761, 33.724178, 17.903929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.888393, 33.679333, 18.118200>,  <28.724445, 33.604591, 18.475321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.888393, 33.679333, 18.118200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911729, -0.113481, 0.394807,
		-0.027543, -0.975811, -0.216875,
		0.409868, 0.186857, -0.892800,
		29.011354, 33.735390, 17.850361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.198463, 33.067726, 18.294840>,  <28.724445, 33.604591, 18.475321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.198463, 33.067726, 18.294840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.333082, 33.387089, 18.095127>,  <29.413853, 33.578709, 17.975300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.333082, 33.387089, 18.095127>,  <29.198463, 33.067726, 18.294840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.333082, 33.387089, 18.095127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939212, -0.246337, 0.239163,
		0.067958, -0.549420, -0.832778,
		0.336545, 0.798408, -0.499281,
		29.434046, 33.626610, 17.945343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.635141, 32.846706, 17.843000>,  <29.198463, 33.067726, 18.294840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.635141, 32.846706, 17.843000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.744596, 33.231136, 17.858253>,  <29.810270, 33.461796, 17.867405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.744596, 33.231136, 17.858253>,  <29.635141, 32.846706, 17.843000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.744596, 33.231136, 17.858253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915167, -0.272356, 0.297139,
		0.295959, -0.046411, -0.954072,
		0.273638, 0.961077, 0.038132,
		29.826689, 33.519459, 17.869694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.269089, 32.749352, 17.695189>,  <29.635141, 32.846706, 17.843000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.269089, 32.749352, 17.695189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.257725, 33.130775, 17.815128>,  <30.250906, 33.359631, 17.887093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.257725, 33.130775, 17.815128>,  <30.269089, 32.749352, 17.695189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.257725, 33.130775, 17.815128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932844, -0.082489, 0.350711,
		0.359160, 0.289676, -0.887182,
		-0.028410, 0.953563, 0.299850,
		30.249203, 33.416843, 17.905083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.870251, 33.013596, 17.344246>,  <30.269089, 32.749352, 17.695189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.870251, 33.013596, 17.344246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.787313, 33.223297, 17.674620>,  <30.737551, 33.349117, 17.872843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.787313, 33.223297, 17.674620>,  <30.870251, 33.013596, 17.344246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.787313, 33.223297, 17.674620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914549, -0.195844, 0.353899,
		0.347288, 0.828734, -0.438852,
		-0.207341, 0.524256, 0.825933,
		30.725111, 33.380573, 17.922400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.473782, 33.413586, 17.366249>,  <30.870251, 33.013596, 17.344246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.473782, 33.413586, 17.366249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.281246, 33.449196, 17.715050>,  <31.165726, 33.470562, 17.924330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.281246, 33.449196, 17.715050>,  <31.473782, 33.413586, 17.366249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.281246, 33.449196, 17.715050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874504, -0.018904, 0.484649,
		0.059632, 0.995850, -0.068756,
		-0.481338, 0.089028, 0.872002,
		31.136845, 33.475903, 17.976650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.928465, 33.850029, 17.743654>,  <31.473782, 33.413586, 17.366249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.928465, 33.850029, 17.743654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695848, 33.668331, 18.013609>,  <31.556278, 33.559311, 18.175581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695848, 33.668331, 18.013609>,  <31.928465, 33.850029, 17.743654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.695848, 33.668331, 18.013609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792735, -0.130098, 0.595521,
		-0.182712, 0.881325, 0.435755,
		-0.581539, -0.454247, 0.674886,
		31.521387, 33.532059, 18.216074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098637, 34.193756, 18.319069>,  <31.928465, 33.850029, 17.743654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098637, 34.193756, 18.319069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.930052, 33.847698, 18.427801>,  <31.828901, 33.640064, 18.493040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.930052, 33.847698, 18.427801>,  <32.098637, 34.193756, 18.319069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.930052, 33.847698, 18.427801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649980, -0.079164, 0.755817,
		-0.632374, 0.495231, 0.595692,
		-0.421461, -0.865147, 0.271829,
		31.803614, 33.588154, 18.509350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.965570, 34.329449, 18.903950>,  <32.098637, 34.193756, 18.319069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.965570, 34.329449, 18.903950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003563, 33.931499, 18.890041>,  <32.026360, 33.692730, 18.881697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003563, 33.931499, 18.890041>,  <31.965570, 34.329449, 18.903950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.003563, 33.931499, 18.890041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624441, 0.032339, 0.780402,
		-0.775275, -0.095836, 0.624310,
		0.094980, -0.994872, -0.034772,
		32.032059, 33.633038, 18.879610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.842808, 34.112720, 19.649626>,  <31.965570, 34.329449, 18.903950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.842808, 34.112720, 19.649626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.025566, 33.806946, 19.467690>,  <32.135220, 33.623482, 19.358528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.025566, 33.806946, 19.467690>,  <31.842808, 34.112720, 19.649626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025566, 33.806946, 19.467690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582194, -0.129606, 0.802653,
		-0.672531, -0.631532, 0.385837,
		0.456894, -0.764441, -0.454838,
		32.162636, 33.577614, 19.331238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.040466, 33.686268, 20.135710>,  <31.842808, 34.112720, 19.649626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.040466, 33.686268, 20.135710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.284058, 33.573463, 19.839167>,  <32.430214, 33.505779, 19.661240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.284058, 33.573463, 19.839167>,  <32.040466, 33.686268, 20.135710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.284058, 33.573463, 19.839167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778377, 0.032702, 0.626945,
		-0.152564, -0.958852, 0.239429,
		0.608978, -0.282016, -0.741359,
		32.466751, 33.488857, 19.616758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.434605, 33.266701, 20.487965>,  <32.040466, 33.686268, 20.135710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.434605, 33.266701, 20.487965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.625778, 33.388527, 20.158403>,  <32.740482, 33.461624, 19.960667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.625778, 33.388527, 20.158403>,  <32.434605, 33.266701, 20.487965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.625778, 33.388527, 20.158403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839073, 0.119204, 0.530799,
		0.259878, -0.945001, -0.198584,
		0.477933, 0.304570, -0.823904,
		32.769157, 33.479897, 19.911232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.045109, 32.778599, 20.390965>,  <32.434605, 33.266701, 20.487965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.045109, 32.778599, 20.390965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138493, 33.114033, 20.194080>,  <33.194523, 33.315292, 20.075951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138493, 33.114033, 20.194080>,  <33.045109, 32.778599, 20.390965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.138493, 33.114033, 20.194080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825006, 0.097086, 0.556721,
		0.514645, -0.536049, -0.669173,
		0.233463, 0.838586, -0.492208,
		33.208530, 33.365608, 20.046417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.772499, 32.775894, 20.248077>,  <33.045109, 32.778599, 20.390965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.772499, 32.775894, 20.248077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.675335, 33.162697, 20.217352>,  <33.617035, 33.394779, 20.198915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.675335, 33.162697, 20.217352>,  <33.772499, 32.775894, 20.248077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.675335, 33.162697, 20.217352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851152, 0.250455, 0.461316,
		0.465333, 0.046677, -0.883904,
		-0.242911, 0.967002, -0.076816,
		33.602463, 33.452797, 20.194307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375168, 33.092121, 20.048235>,  <33.772499, 32.775894, 20.248077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.375168, 33.092121, 20.048235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159256, 33.402714, 20.178286>,  <34.029709, 33.589069, 20.256315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159256, 33.402714, 20.178286>,  <34.375168, 33.092121, 20.048235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159256, 33.402714, 20.178286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789859, 0.333597, 0.514622,
		0.291135, 0.534588, -0.793383,
		-0.539781, 0.776485, 0.325127,
		33.997322, 33.635658, 20.275824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784256, 33.744057, 19.769691>,  <34.375168, 33.092121, 20.048235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784256, 33.744057, 19.769691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553627, 33.807999, 20.090195>,  <34.415249, 33.846363, 20.282497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553627, 33.807999, 20.090195>,  <34.784256, 33.744057, 19.769691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553627, 33.807999, 20.090195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809325, 0.246255, 0.533247,
		-0.112074, 0.955932, -0.271354,
		-0.576570, 0.159851, 0.801258,
		34.380657, 33.855953, 20.330572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026295, 34.453194, 20.004250>,  <34.784256, 33.744057, 19.769691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026295, 34.453194, 20.004250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827171, 34.291912, 20.311394>,  <34.707699, 34.195141, 20.495682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827171, 34.291912, 20.311394>,  <35.026295, 34.453194, 20.004250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827171, 34.291912, 20.311394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699342, 0.337015, 0.630351,
		-0.512944, 0.850790, 0.114212,
		-0.497805, -0.403208, 0.767863,
		34.677830, 34.170948, 20.541752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005772, 34.933613, 20.470221>,  <35.026295, 34.453194, 20.004250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.005772, 34.933613, 20.470221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.958511, 34.605286, 20.693756>,  <34.930157, 34.408291, 20.827877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.958511, 34.605286, 20.693756>,  <35.005772, 34.933613, 20.470221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.958511, 34.605286, 20.693756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743737, 0.299746, 0.597502,
		-0.657949, 0.486225, 0.575056,
		-0.118150, -0.820815, 0.558841,
		34.923065, 34.359039, 20.861408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143951, 35.153488, 21.049881>,  <35.005772, 34.933613, 20.470221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143951, 35.153488, 21.049881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166367, 34.761765, 21.127672>,  <35.179817, 34.526730, 21.174347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166367, 34.761765, 21.127672>,  <35.143951, 35.153488, 21.049881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166367, 34.761765, 21.127672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621556, 0.186656, 0.760808,
		-0.781363, 0.078242, 0.619153,
		0.056041, -0.979305, 0.194477,
		35.183178, 34.467972, 21.186016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143425, 35.092201, 21.772573>,  <35.143951, 35.153488, 21.049881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143425, 35.092201, 21.772573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308678, 34.754959, 21.634880>,  <35.407829, 34.552612, 21.552265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308678, 34.754959, 21.634880>,  <35.143425, 35.092201, 21.772573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308678, 34.754959, 21.634880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779398, 0.131838, 0.612502,
		-0.471020, -0.521339, 0.711580,
		0.413134, -0.843104, -0.344232,
		35.432617, 34.502029, 21.531610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368099, 34.745293, 22.373323>,  <35.143425, 35.092201, 21.772573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368099, 34.745293, 22.373323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588211, 34.630444, 22.059698>,  <35.720280, 34.561535, 21.871523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588211, 34.630444, 22.059698>,  <35.368099, 34.745293, 22.373323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588211, 34.630444, 22.059698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823998, 0.034938, 0.565515,
		-0.134977, -0.957257, 0.255813,
		0.550281, -0.287121, -0.784062,
		35.753296, 34.544308, 21.824480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952419, 34.423885, 22.656561>,  <35.368099, 34.745293, 22.373323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952419, 34.423885, 22.656561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.097263, 34.456146, 22.285105>,  <36.184170, 34.475502, 22.062231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.097263, 34.456146, 22.285105>,  <35.952419, 34.423885, 22.656561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097263, 34.456146, 22.285105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921703, -0.179620, 0.343804,
		-0.139074, -0.980424, -0.139379,
		0.362109, 0.080652, -0.928640,
		36.205894, 34.480343, 22.006514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530670, 33.975956, 22.697891>,  <35.952419, 34.423885, 22.656561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530670, 33.975956, 22.697891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.596802, 34.200130, 22.373280>,  <36.636482, 34.334637, 22.178513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.596802, 34.200130, 22.373280>,  <36.530670, 33.975956, 22.697891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596802, 34.200130, 22.373280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957628, 0.105537, 0.267976,
		0.235830, -0.821445, -0.519242,
		0.165329, 0.560437, -0.811528,
		36.646400, 34.368263, 22.129822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192299, 33.764751, 22.436827>,  <36.530670, 33.975956, 22.697891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192299, 33.764751, 22.436827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.144028, 34.136368, 22.296926>,  <37.115063, 34.359337, 22.212986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.144028, 34.136368, 22.296926>,  <37.192299, 33.764751, 22.436827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144028, 34.136368, 22.296926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959109, 0.199989, 0.200285,
		0.256018, -0.311278, -0.915183,
		-0.120683, 0.929037, -0.349750,
		37.107822, 34.415077, 22.192001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853626, 33.925938, 22.264036>,  <37.192299, 33.764751, 22.436827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853626, 33.925938, 22.264036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.665783, 34.278976, 22.272947>,  <37.553078, 34.490799, 22.278294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.665783, 34.278976, 22.272947>,  <37.853626, 33.925938, 22.264036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.665783, 34.278976, 22.272947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807486, 0.419167, 0.415049,
		0.356981, 0.212900, -0.909526,
		-0.469607, 0.882594, 0.022279,
		37.524902, 34.543755, 22.279631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330956, 34.380016, 22.096966>,  <37.853626, 33.925938, 22.264036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.330956, 34.380016, 22.096966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056358, 34.585258, 22.303053>,  <37.891598, 34.708405, 22.426706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056358, 34.585258, 22.303053>,  <38.330956, 34.380016, 22.096966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056358, 34.585258, 22.303053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727129, 0.486998, 0.483857,
		-0.002643, 0.706796, -0.707412,
		-0.686496, 0.513101, 0.515219,
		37.850410, 34.739189, 22.457619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625347, 35.139294, 22.158768>,  <38.330956, 34.380016, 22.096966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625347, 35.139294, 22.158768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.334160, 35.129826, 22.432850>,  <38.159447, 35.124146, 22.597300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.334160, 35.129826, 22.432850>,  <38.625347, 35.139294, 22.158768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334160, 35.129826, 22.432850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676270, 0.139668, 0.723292,
		-0.112819, 0.989915, -0.085669,
		-0.727964, -0.023666, 0.685207,
		38.115772, 35.122726, 22.638412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815296, 35.667454, 22.599289>,  <38.625347, 35.139294, 22.158768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815296, 35.667454, 22.599289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.568203, 35.454891, 22.831156>,  <38.419949, 35.327354, 22.970276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.568203, 35.454891, 22.831156>,  <38.815296, 35.667454, 22.599289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568203, 35.454891, 22.831156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554848, 0.227832, 0.800148,
		-0.557271, 0.815904, 0.154111,
		-0.617732, -0.531408, 0.579666,
		38.382885, 35.295467, 23.005056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804600, 36.040466, 23.173946>,  <38.815296, 35.667454, 22.599289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.804600, 36.040466, 23.173946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.648777, 35.692501, 23.294933>,  <38.555283, 35.483719, 23.367525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.648777, 35.692501, 23.294933>,  <38.804600, 36.040466, 23.173946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648777, 35.692501, 23.294933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431297, 0.117867, 0.894478,
		-0.813773, 0.478905, 0.329277,
		-0.389559, -0.869918, 0.302467,
		38.531910, 35.431526, 23.385674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478378, 36.111542, 23.772497>,  <38.804600, 36.040466, 23.173946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478378, 36.111542, 23.772497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.584450, 35.726189, 23.756678>,  <38.648094, 35.494976, 23.747187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.584450, 35.726189, 23.756678>,  <38.478378, 36.111542, 23.772497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584450, 35.726189, 23.756678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455769, 0.089100, 0.885627,
		-0.849678, -0.252877, 0.462710,
		0.265182, -0.963387, -0.039547,
		38.664005, 35.437172, 23.744814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370213, 35.845184, 24.453091>,  <38.478378, 36.111542, 23.772497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370213, 35.845184, 24.453091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.630810, 35.598747, 24.276011>,  <38.787170, 35.450886, 24.169764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.630810, 35.598747, 24.276011>,  <38.370213, 35.845184, 24.453091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630810, 35.598747, 24.276011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472596, -0.126899, 0.872095,
		-0.593471, -0.777383, 0.208490,
		0.651495, -0.616095, -0.442699,
		38.826260, 35.413918, 24.143200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350986, 35.237782, 24.772295>,  <38.370213, 35.845184, 24.453091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.350986, 35.237782, 24.772295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.716259, 35.245453, 24.609453>,  <38.935421, 35.250053, 24.511747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.716259, 35.245453, 24.609453>,  <38.350986, 35.237782, 24.772295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716259, 35.245453, 24.609453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377865, -0.414108, 0.828090,
		-0.152707, -0.910026, -0.385401,
		0.913181, 0.019174, -0.407104,
		38.990211, 35.251205, 24.487322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778721, 34.560616, 24.891771>,  <38.350986, 35.237782, 24.772295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778721, 34.560616, 24.891771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.065140, 34.820816, 24.790478>,  <39.236992, 34.976936, 24.729702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.065140, 34.820816, 24.790478>,  <38.778721, 34.560616, 24.891771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065140, 34.820816, 24.790478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591990, -0.373643, 0.714100,
		0.369906, -0.661237, -0.652637,
		0.716043, 0.650504, -0.253233,
		39.279953, 35.015968, 24.714508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430859, 34.198936, 24.832060>,  <38.778721, 34.560616, 24.891771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430859, 34.198936, 24.832060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.540813, 34.582047, 24.865770>,  <39.606785, 34.811913, 24.885998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.540813, 34.582047, 24.865770>,  <39.430859, 34.198936, 24.832060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.540813, 34.582047, 24.865770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623162, -0.244226, 0.742982,
		0.732194, -0.151715, -0.663984,
		0.274884, 0.957776, 0.084278,
		39.623280, 34.869381, 24.891054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148659, 34.264538, 24.843727>,  <39.430859, 34.198936, 24.832060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.148659, 34.264538, 24.843727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.008156, 34.587502, 25.033342>,  <39.923855, 34.781281, 25.147112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.008156, 34.587502, 25.033342>,  <40.148659, 34.264538, 24.843727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.008156, 34.587502, 25.033342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587017, -0.204516, 0.783316,
		0.729404, 0.553411, -0.402126,
		-0.351255, 0.807409, 0.474036,
		39.902779, 34.829723, 25.175552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831730, 33.871040, 24.207897>,  <40.148659, 34.264538, 24.843727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831730, 33.871040, 24.207897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799397, 33.486324, 24.312527>,  <39.779995, 33.255493, 24.375305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799397, 33.486324, 24.312527>,  <39.831730, 33.871040, 24.207897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.799397, 33.486324, 24.312527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126234, -0.250440, -0.959867,
		0.988701, -0.110612, -0.101166,
		-0.080837, -0.961792, 0.261573,
		39.775146, 33.197788, 24.390999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243866, 33.386452, 23.689058>,  <39.831730, 33.871040, 24.207897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.243866, 33.386452, 23.689058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.974789, 33.152130, 23.869865>,  <39.813343, 33.011539, 23.978350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.974789, 33.152130, 23.869865>,  <40.243866, 33.386452, 23.689058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.974789, 33.152130, 23.869865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229231, -0.415851, -0.880069,
		0.703517, -0.695633, 0.145456,
		-0.672693, -0.585800, 0.452020,
		39.772980, 32.976391, 24.005472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395473, 32.655617, 23.487431>,  <40.243866, 33.386452, 23.689058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.395473, 32.655617, 23.487431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.018753, 32.639812, 23.620964>,  <39.792721, 32.630329, 23.701084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.018753, 32.639812, 23.620964>,  <40.395473, 32.655617, 23.487431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.018753, 32.639812, 23.620964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309606, -0.284919, -0.907174,
		0.130959, -0.957737, 0.256105,
		-0.941804, -0.039511, 0.333833,
		39.736214, 32.627960, 23.721113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126381, 32.138332, 23.125578>,  <40.395473, 32.655617, 23.487431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.126381, 32.138332, 23.125578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.774525, 32.276142, 23.256746>,  <39.563412, 32.358829, 23.335447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.774525, 32.276142, 23.256746>,  <40.126381, 32.138332, 23.125578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.774525, 32.276142, 23.256746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449028, -0.374159, -0.811406,
		-0.156853, -0.860993, 0.483827,
		-0.879642, 0.344523, 0.327922,
		39.510632, 32.379498, 23.355124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690643, 31.638203, 23.221451>,  <40.126381, 32.138332, 23.125578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690643, 31.638203, 23.221451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437496, 31.944277, 23.174160>,  <39.285610, 32.127922, 23.145786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437496, 31.944277, 23.174160>,  <39.690643, 31.638203, 23.221451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437496, 31.944277, 23.174160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460006, -0.494414, -0.737529,
		-0.622800, -0.412369, 0.664885,
		-0.632863, 0.765185, -0.118228,
		39.247639, 32.173832, 23.138691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958992, 31.391050, 23.297302>,  <39.690643, 31.638203, 23.221451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958992, 31.391050, 23.297302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.874199, 31.727549, 23.098358>,  <38.823322, 31.929447, 22.978992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.874199, 31.727549, 23.098358>,  <38.958992, 31.391050, 23.297302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.874199, 31.727549, 23.098358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446626, -0.536062, -0.716354,
		-0.869247, 0.070280, 0.489358,
		-0.211981, 0.841248, -0.497359,
		38.810604, 31.979923, 22.949150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353710, 31.324799, 23.115538>,  <38.958992, 31.391050, 23.297302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.353710, 31.324799, 23.115538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451885, 31.622566, 22.867151>,  <38.510792, 31.801228, 22.718119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451885, 31.622566, 22.867151>,  <38.353710, 31.324799, 23.115538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451885, 31.622566, 22.867151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539119, -0.427548, -0.725640,
		-0.805673, 0.512876, 0.296393,
		0.245441, 0.744420, -0.620965,
		38.525517, 31.845892, 22.680862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727123, 31.642920, 22.952349>,  <38.353710, 31.324799, 23.115538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727123, 31.642920, 22.952349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992073, 31.696266, 22.657467>,  <38.151043, 31.728273, 22.480537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992073, 31.696266, 22.657467>,  <37.727123, 31.642920, 22.952349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992073, 31.696266, 22.657467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667276, -0.342334, -0.661476,
		-0.340589, 0.930065, -0.137762,
		0.662376, 0.133366, -0.737205,
		38.190784, 31.736277, 22.436306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347775, 31.842344, 22.382927>,  <37.727123, 31.642920, 22.952349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347775, 31.842344, 22.382927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.687050, 31.729752, 22.203442>,  <37.890614, 31.662197, 22.095751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.687050, 31.729752, 22.203442>,  <37.347775, 31.842344, 22.382927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687050, 31.729752, 22.203442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519263, -0.274564, -0.809309,
		0.104604, 0.919447, -0.379044,
		0.848189, -0.281480, -0.448715,
		37.941505, 31.645308, 22.068827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189075, 32.054310, 21.727972>,  <37.347775, 31.842344, 22.382927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189075, 32.054310, 21.727972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.524971, 31.840303, 21.690872>,  <37.726509, 31.711901, 21.668613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.524971, 31.840303, 21.690872>,  <37.189075, 32.054310, 21.727972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524971, 31.840303, 21.690872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225438, -0.188125, -0.955922,
		0.493983, 0.823632, -0.278588,
		0.839737, -0.535013, -0.092747,
		37.776894, 31.679800, 21.663048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495811, 32.370186, 21.236763>,  <37.189075, 32.054310, 21.727972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495811, 32.370186, 21.236763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.638062, 31.996559, 21.249725>,  <37.723412, 31.772383, 21.257502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.638062, 31.996559, 21.249725>,  <37.495811, 32.370186, 21.236763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638062, 31.996559, 21.249725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472574, -0.209619, -0.855998,
		0.806351, 0.289104, -0.515962,
		0.355628, -0.934066, 0.032404,
		37.744751, 31.716339, 21.259447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741592, 32.265923, 20.592314>,  <37.495811, 32.370186, 21.236763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.741592, 32.265923, 20.592314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.695713, 31.887869, 20.714666>,  <37.668186, 31.661036, 20.788078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.695713, 31.887869, 20.714666>,  <37.741592, 32.265923, 20.592314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695713, 31.887869, 20.714666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502790, -0.210331, -0.838429,
		0.856766, -0.249959, -0.451080,
		-0.114697, -0.945136, 0.305881,
		37.661304, 31.604328, 20.806431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982197, 31.893032, 20.073847>,  <37.741592, 32.265923, 20.592314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982197, 31.893032, 20.073847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759197, 31.628891, 20.275091>,  <37.625397, 31.470406, 20.395838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759197, 31.628891, 20.275091>,  <37.982197, 31.893032, 20.073847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759197, 31.628891, 20.275091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492541, -0.224741, -0.840771,
		0.668277, -0.716535, -0.199958,
		-0.557503, -0.660355, 0.503112,
		37.591946, 31.430784, 20.426025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940681, 31.266691, 19.607363>,  <37.982197, 31.893032, 20.073847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940681, 31.266691, 19.607363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.651474, 31.275927, 19.883541>,  <37.477951, 31.281467, 20.049248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.651474, 31.275927, 19.883541>,  <37.940681, 31.266691, 19.607363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651474, 31.275927, 19.883541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663868, -0.299720, -0.685162,
		0.191121, -0.953748, 0.232030,
		-0.723016, 0.023088, 0.690446,
		37.434570, 31.282852, 20.090675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490070, 30.740644, 19.327000>,  <37.940681, 31.266691, 19.607363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490070, 30.740644, 19.327000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.255314, 30.902273, 19.607651>,  <37.114460, 30.999250, 19.776041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.255314, 30.902273, 19.607651>,  <37.490070, 30.740644, 19.327000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255314, 30.902273, 19.607651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797581, -0.139365, -0.586891,
		-0.139365, -0.904048, 0.404073,
		0.586891, -0.404073, -0.701629,
		37.079247, 31.023495, 19.818140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844131, 30.328444, 19.358776>,  <37.490070, 30.740644, 19.327000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844131, 30.328444, 19.358776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759113, 30.686195, 19.516207>,  <36.708103, 30.900846, 19.610666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759113, 30.686195, 19.516207>,  <36.844131, 30.328444, 19.358776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759113, 30.686195, 19.516207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910615, -0.035211, -0.411754,
		-0.354407, -0.445916, 0.821921,
		-0.212548, 0.894382, 0.393578,
		36.695347, 30.954510, 19.634281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232769, 30.205660, 19.716278>,  <36.844131, 30.328444, 19.358776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232769, 30.205660, 19.716278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.270538, 30.597469, 19.645153>,  <36.293201, 30.832556, 19.602478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.270538, 30.597469, 19.645153>,  <36.232769, 30.205660, 19.716278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270538, 30.597469, 19.645153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938460, 0.027974, -0.344252,
		-0.332229, 0.199375, 0.921886,
		0.094424, 0.979524, -0.177811,
		36.298866, 30.891327, 19.591810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666862, 30.405090, 19.979658>,  <36.232769, 30.205660, 19.716278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666862, 30.405090, 19.979658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764965, 30.718176, 19.750851>,  <35.823826, 30.906027, 19.613565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764965, 30.718176, 19.750851>,  <35.666862, 30.405090, 19.979658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764965, 30.718176, 19.750851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932367, 0.028793, -0.360365,
		-0.265593, 0.621716, 0.736838,
		0.245260, 0.782714, -0.572020,
		35.838543, 30.952990, 19.579245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243214, 30.962730, 20.134386>,  <35.666862, 30.405090, 19.979658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243214, 30.962730, 20.134386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385704, 31.045364, 19.769875>,  <35.471199, 31.094944, 19.551168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385704, 31.045364, 19.769875>,  <35.243214, 30.962730, 20.134386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385704, 31.045364, 19.769875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934390, 0.074137, -0.348452,
		-0.004425, 0.975616, 0.219439,
		0.356224, 0.206583, -0.911278,
		35.492573, 31.107340, 19.496490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881371, 31.546869, 19.897522>,  <35.243214, 30.962730, 20.134386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881371, 31.546869, 19.897522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019810, 31.368031, 19.567595>,  <35.102871, 31.260727, 19.369638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019810, 31.368031, 19.567595>,  <34.881371, 31.546869, 19.897522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019810, 31.368031, 19.567595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851298, 0.219873, -0.476391,
		0.394347, 0.867041, -0.304516,
		0.346096, -0.447097, -0.824816,
		35.123638, 31.233902, 19.320150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611389, 32.011711, 19.417072>,  <34.881371, 31.546869, 19.897522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611389, 32.011711, 19.417072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.741058, 31.704655, 19.195934>,  <34.818859, 31.520422, 19.063251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.741058, 31.704655, 19.195934>,  <34.611389, 32.011711, 19.417072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.741058, 31.704655, 19.195934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731644, 0.167006, -0.660913,
		0.599672, 0.618739, -0.507500,
		0.324177, -0.767640, -0.552845,
		34.838310, 31.474363, 19.030081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663834, 32.239292, 18.677225>,  <34.611389, 32.011711, 19.417072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663834, 32.239292, 18.677225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626648, 31.841032, 18.674730>,  <34.604336, 31.602076, 18.673233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626648, 31.841032, 18.674730>,  <34.663834, 32.239292, 18.677225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626648, 31.841032, 18.674730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812643, 0.079491, -0.577315,
		0.575299, -0.048599, -0.816498,
		-0.092961, -0.995650, -0.006237,
		34.598759, 31.542337, 18.672859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398373, 32.073505, 18.012648>,  <34.663834, 32.239292, 18.677225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398373, 32.073505, 18.012648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328396, 31.755896, 18.245514>,  <34.286407, 31.565331, 18.385235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328396, 31.755896, 18.245514>,  <34.398373, 32.073505, 18.012648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328396, 31.755896, 18.245514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895242, -0.117820, -0.429721,
		0.409800, -0.596358, -0.690232,
		-0.174944, -0.794025, 0.582168,
		34.275913, 31.517689, 18.420164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034180, 31.558437, 17.535923>,  <34.398373, 32.073505, 18.012648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034180, 31.558437, 17.535923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.922333, 31.442335, 17.901997>,  <33.855225, 31.372673, 18.121641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.922333, 31.442335, 17.901997>,  <34.034180, 31.558437, 17.535923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.922333, 31.442335, 17.901997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898878, -0.255825, -0.355770,
		0.337392, -0.922120, -0.189373,
		-0.279616, -0.290257, 0.915186,
		33.838448, 31.355259, 18.176552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854671, 30.926971, 17.530079>,  <34.034180, 31.558437, 17.535923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854671, 30.926971, 17.530079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.625980, 31.034166, 17.840256>,  <33.488766, 31.098484, 18.026361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.625980, 31.034166, 17.840256>,  <33.854671, 30.926971, 17.530079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625980, 31.034166, 17.840256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791957, -0.427163, -0.436275,
		0.214325, -0.863548, 0.456454,
		-0.571725, 0.267987, 0.775444,
		33.454464, 31.114563, 18.072889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351063, 30.433424, 17.628105>,  <33.854671, 30.926971, 17.530079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351063, 30.433424, 17.628105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.192856, 30.654877, 17.921244>,  <33.097931, 30.787748, 18.097126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.192856, 30.654877, 17.921244>,  <33.351063, 30.433424, 17.628105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.192856, 30.654877, 17.921244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867665, -0.486896, -0.100452,
		0.301206, -0.675594, 0.672940,
		-0.395516, 0.553630, 0.732845,
		33.074200, 30.820965, 18.141096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031036, 29.912300, 18.135931>,  <33.351063, 30.433424, 17.628105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031036, 29.912300, 18.135931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878372, 30.278765, 18.184893>,  <32.786774, 30.498644, 18.214270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878372, 30.278765, 18.184893>,  <33.031036, 29.912300, 18.135931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878372, 30.278765, 18.184893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923254, -0.371555, -0.097713,
		-0.044041, -0.150303, 0.987658,
		-0.381656, 0.916163, 0.122404,
		32.763874, 30.553614, 18.221615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.659695, 29.961369, 18.760784>,  <33.031036, 29.912300, 18.135931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.659695, 29.961369, 18.760784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494591, 30.262510, 18.555714>,  <32.395527, 30.443195, 18.432673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494591, 30.262510, 18.555714>,  <32.659695, 29.961369, 18.760784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494591, 30.262510, 18.555714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908583, -0.379910, 0.173625,
		-0.064056, 0.537473, 0.840845,
		-0.412764, 0.752855, -0.512674,
		32.370762, 30.488367, 18.401911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.030750, 30.295174, 19.131878>,  <32.659695, 29.961369, 18.760784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.030750, 30.295174, 19.131878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967690, 30.427235, 18.759609>,  <31.929853, 30.506472, 18.536249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967690, 30.427235, 18.759609>,  <32.030750, 30.295174, 19.131878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967690, 30.427235, 18.759609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987426, -0.063855, 0.144612,
		-0.011684, 0.941765, 0.336068,
		-0.157650, 0.330153, -0.930669,
		31.920395, 30.526281, 18.480408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.489025, 30.704308, 19.214314>,  <32.030750, 30.295174, 19.131878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.489025, 30.704308, 19.214314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.513268, 30.633308, 18.821413>,  <31.527813, 30.590710, 18.585672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.513268, 30.633308, 18.821413>,  <31.489025, 30.704308, 19.214314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.513268, 30.633308, 18.821413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989138, -0.142705, -0.035245,
		-0.133916, 0.973719, -0.184219,
		0.060608, -0.177498, -0.982253,
		31.531450, 30.580059, 18.526737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.106010, 31.251051, 18.958199>,  <31.489025, 30.704308, 19.214314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.106010, 31.251051, 18.958199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.125103, 30.958866, 18.685684>,  <31.136559, 30.783556, 18.522177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.125103, 30.958866, 18.685684>,  <31.106010, 31.251051, 18.958199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.125103, 30.958866, 18.685684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981929, 0.090731, -0.166078,
		0.183127, 0.676901, -0.712930,
		0.047734, -0.730461, -0.681284,
		31.139423, 30.739727, 18.481298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.633961, 31.499937, 18.403845>,  <31.106010, 31.251051, 18.958199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.633961, 31.499937, 18.403845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.670549, 31.105698, 18.346960>,  <30.692503, 30.869154, 18.312828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.670549, 31.105698, 18.346960>,  <30.633961, 31.499937, 18.403845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.670549, 31.105698, 18.346960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995677, -0.092836, 0.002977,
		-0.016137, 0.141326, -0.989832,
		0.091471, -0.985601, -0.142214,
		30.697990, 30.810017, 18.304296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.006435, 31.259922, 17.979734>,  <30.633961, 31.499937, 18.403845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.006435, 31.259922, 17.979734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.150515, 30.915342, 18.122932>,  <30.236963, 30.708595, 18.208851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.150515, 30.915342, 18.122932>,  <30.006435, 31.259922, 17.979734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.150515, 30.915342, 18.122932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924733, -0.380311, 0.015281,
		0.122986, -0.336556, -0.933598,
		0.360200, -0.861449, 0.357997,
		30.258575, 30.656908, 18.230331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.872618, 30.849911, 17.417395>,  <30.006435, 31.259922, 17.979734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.872618, 30.849911, 17.417395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.913010, 30.639317, 17.755060>,  <29.937244, 30.512960, 17.957661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.913010, 30.639317, 17.755060>,  <29.872618, 30.849911, 17.417395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.913010, 30.639317, 17.755060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916608, -0.379140, -0.126814,
		0.386823, -0.760962, -0.520869,
		0.100982, -0.526487, 0.844165,
		29.943304, 30.481371, 18.008310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.818258, 30.104612, 17.325123>,  <29.872618, 30.849911, 17.417395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.818258, 30.104612, 17.325123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.720955, 30.182711, 17.705166>,  <29.662573, 30.229568, 17.933191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.720955, 30.182711, 17.705166>,  <29.818258, 30.104612, 17.325123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.720955, 30.182711, 17.705166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940933, -0.285347, -0.182270,
		0.235524, -0.938327, 0.253122,
		-0.243256, 0.195242, 0.950109,
		29.647978, 30.241283, 17.990198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.246941, 29.683720, 17.495895>,  <29.818258, 30.104612, 17.325123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.246941, 29.683720, 17.495895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.237179, 29.948875, 17.795223>,  <29.231321, 30.107969, 17.974821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.237179, 29.948875, 17.795223>,  <29.246941, 29.683720, 17.495895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.237179, 29.948875, 17.795223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995311, -0.086190, 0.043893,
		0.093594, -0.743741, 0.661883,
		-0.024403, 0.662888, 0.748321,
		29.229858, 30.147741, 18.019720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.895182, 29.467142, 18.048615>,  <29.246941, 29.683720, 17.495895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.895182, 29.467142, 18.048615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.860516, 29.864685, 18.076149>,  <28.839716, 30.103210, 18.092670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.860516, 29.864685, 18.076149>,  <28.895182, 29.467142, 18.048615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.860516, 29.864685, 18.076149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994517, -0.090368, 0.052618,
		0.058516, -0.063900, 0.996239,
		-0.086666, 0.993856, 0.068838,
		28.834517, 30.162842, 18.096800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.331310, 29.532515, 18.488529>,  <28.895182, 29.467142, 18.048615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.331310, 29.532515, 18.488529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.355850, 29.899033, 18.330215>,  <28.370573, 30.118942, 18.235228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.355850, 29.899033, 18.330215>,  <28.331310, 29.532515, 18.488529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.355850, 29.899033, 18.330215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982842, 0.124562, 0.136034,
		0.173946, 0.380647, 0.908213,
		0.061348, 0.916293, -0.395783,
		28.374254, 30.173920, 18.211481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.086618, 28.980907, 18.834892>,  <28.331310, 29.532515, 18.488529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.086618, 28.980907, 18.834892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.884613, 28.654428, 18.947165>,  <27.763411, 28.458540, 19.014528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.884613, 28.654428, 18.947165>,  <28.086618, 28.980907, 18.834892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.884613, 28.654428, 18.947165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654737, -0.150375, 0.740748,
		-0.562391, 0.557858, 0.610337,
		-0.505011, -0.816200, 0.280680,
		27.733110, 28.409569, 19.031368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.108192, 29.024042, 19.491982>,  <28.086618, 28.980907, 18.834892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.108192, 29.024042, 19.491982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.035702, 28.634491, 19.437256>,  <27.992207, 28.400761, 19.404421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.035702, 28.634491, 19.437256>,  <28.108192, 29.024042, 19.491982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.035702, 28.634491, 19.437256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757495, -0.226953, 0.612122,
		-0.627182, 0.007299, 0.778838,
		-0.181228, -0.973878, -0.136812,
		27.981333, 28.342327, 19.396212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.099308, 28.736282, 20.115471>,  <28.108192, 29.024042, 19.491982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.099308, 28.736282, 20.115471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.170216, 28.431507, 19.866304>,  <28.212761, 28.248642, 19.716805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.170216, 28.431507, 19.866304>,  <28.099308, 28.736282, 20.115471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.170216, 28.431507, 19.866304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917047, -0.101850, 0.385553,
		-0.357212, -0.639592, 0.680677,
		0.177270, -0.761937, -0.622918,
		28.223396, 28.202927, 19.679428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.454876, 28.290318, 20.540554>,  <28.099308, 28.736282, 20.115471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.454876, 28.290318, 20.540554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.538162, 28.162457, 20.170805>,  <28.588135, 28.085739, 19.948956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.538162, 28.162457, 20.170805>,  <28.454876, 28.290318, 20.540554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.538162, 28.162457, 20.170805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939019, -0.199096, 0.280364,
		-0.273659, -0.926381, 0.258707,
		0.208217, -0.319655, -0.924374,
		28.600628, 28.066561, 19.893494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.772829, 27.572834, 20.595385>,  <28.454876, 28.290318, 20.540554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.772829, 27.572834, 20.595385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.887403, 27.716648, 20.240152>,  <28.956148, 27.802937, 20.027012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.887403, 27.716648, 20.240152>,  <28.772829, 27.572834, 20.595385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.887403, 27.716648, 20.240152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948630, -0.236426, 0.210249,
		-0.134374, -0.902684, -0.408785,
		0.286436, 0.359533, -0.888082,
		28.973335, 27.824509, 19.973728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.224007, 27.087265, 20.268723>,  <28.772829, 27.572834, 20.595385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.224007, 27.087265, 20.268723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.317934, 27.437977, 20.100859>,  <29.374290, 27.648405, 20.000141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.317934, 27.437977, 20.100859>,  <29.224007, 27.087265, 20.268723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.317934, 27.437977, 20.100859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967172, -0.167597, 0.191022,
		0.097151, -0.450739, -0.887353,
		0.234819, 0.876781, -0.419660,
		29.388380, 27.701012, 19.974960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.835178, 26.997688, 19.988897>,  <29.224007, 27.087265, 20.268723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.835178, 26.997688, 19.988897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.814196, 27.396025, 20.018698>,  <29.801605, 27.635027, 20.036577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.814196, 27.396025, 20.018698>,  <29.835178, 26.997688, 19.988897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.814196, 27.396025, 20.018698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977449, 0.035922, 0.208094,
		0.204553, 0.083735, -0.975267,
		-0.052459, 0.995840, 0.074499,
		29.798458, 27.694777, 20.041048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.425339, 27.247286, 19.646397>,  <29.835178, 26.997688, 19.988897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.425339, 27.247286, 19.646397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.292744, 27.547709, 19.874792>,  <30.213186, 27.727962, 20.011829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.292744, 27.547709, 19.874792>,  <30.425339, 27.247286, 19.646397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.292744, 27.547709, 19.874792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942990, 0.282832, 0.175428,
		-0.029737, 0.596589, -0.801996,
		-0.331489, 0.751058, 0.570988,
		30.193296, 27.773026, 20.046089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.803810, 27.766670, 19.534473>,  <30.425339, 27.247286, 19.646397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.803810, 27.766670, 19.534473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.652121, 27.875483, 19.888239>,  <30.561106, 27.940771, 20.100498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.652121, 27.875483, 19.888239>,  <30.803810, 27.766670, 19.534473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.652121, 27.875483, 19.888239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851963, 0.475591, 0.219027,
		-0.361036, 0.836547, -0.412119,
		-0.379226, 0.272033, 0.884413,
		30.538353, 27.957092, 20.153563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.078455, 28.406765, 19.707556>,  <30.803810, 27.766670, 19.534473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.078455, 28.406765, 19.707556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.950579, 28.312279, 20.074598>,  <30.873854, 28.255587, 20.294825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.950579, 28.312279, 20.074598>,  <31.078455, 28.406765, 19.707556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.950579, 28.312279, 20.074598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866584, 0.318750, 0.383967,
		-0.383186, 0.917933, 0.102798,
		-0.319690, -0.236214, 0.917606,
		30.854671, 28.241415, 20.349880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.182196, 28.962034, 20.142086>,  <31.078455, 28.406765, 19.707556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.182196, 28.962034, 20.142086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.169004, 28.645153, 20.385834>,  <31.161091, 28.455025, 20.532082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.169004, 28.645153, 20.385834>,  <31.182196, 28.962034, 20.142086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.169004, 28.645153, 20.385834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776052, 0.363905, 0.515088,
		-0.629806, 0.489887, 0.602790,
		-0.032977, -0.792202, 0.609368,
		31.159111, 28.407492, 20.568644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.479296, 29.130863, 20.679201>,  <31.182196, 28.962034, 20.142086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.479296, 29.130863, 20.679201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.494837, 28.736427, 20.743843>,  <31.504162, 28.499765, 20.782627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.494837, 28.736427, 20.743843>,  <31.479296, 29.130863, 20.679201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.494837, 28.736427, 20.743843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837262, 0.120400, 0.533382,
		-0.545420, 0.114582, 0.830294,
		0.038852, -0.986091, 0.161603,
		31.506493, 28.440599, 20.792324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666485, 29.088192, 21.417242>,  <31.479296, 29.130863, 20.679201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666485, 29.088192, 21.417242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.762133, 28.738131, 21.248991>,  <31.819521, 28.528093, 21.148041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.762133, 28.738131, 21.248991>,  <31.666485, 29.088192, 21.417242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.762133, 28.738131, 21.248991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874670, 0.006034, 0.484681,
		-0.421632, -0.483807, 0.766914,
		0.239120, -0.875154, -0.420628,
		31.833868, 28.475584, 21.122803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014080, 28.727682, 21.878139>,  <31.666485, 29.088192, 21.417242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.014080, 28.727682, 21.878139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.137192, 28.551350, 21.540871>,  <32.211060, 28.445551, 21.338509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.137192, 28.551350, 21.540871>,  <32.014080, 28.727682, 21.878139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.137192, 28.551350, 21.540871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945011, 0.038643, 0.324749,
		-0.110577, -0.896757, 0.428484,
		0.307778, -0.440832, -0.843172,
		32.229527, 28.419100, 21.287918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.567291, 28.270861, 22.136402>,  <32.014080, 28.727682, 21.878139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.567291, 28.270861, 22.136402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636078, 28.299704, 21.743418>,  <32.677349, 28.317009, 21.507627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636078, 28.299704, 21.743418>,  <32.567291, 28.270861, 22.136402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.636078, 28.299704, 21.743418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974611, 0.132710, 0.180336,
		0.143386, -0.988528, -0.047455,
		0.171969, 0.072108, -0.982460,
		32.687668, 28.321337, 21.448679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046677, 27.722174, 21.952114>,  <32.567291, 28.270861, 22.136402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046677, 27.722174, 21.952114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078564, 27.983009, 21.650539>,  <33.097694, 28.139511, 21.469595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078564, 27.983009, 21.650539>,  <33.046677, 27.722174, 21.952114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.078564, 27.983009, 21.650539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996241, -0.026395, 0.082509,
		0.033903, -0.757682, -0.651743,
		0.079718, 0.652090, -0.753939,
		33.102478, 28.178637, 21.424358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.666348, 27.535765, 21.537832>,  <33.046677, 27.722174, 21.952114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.666348, 27.535765, 21.537832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.609940, 27.913174, 21.417915>,  <33.576096, 28.139620, 21.345964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.609940, 27.913174, 21.417915>,  <33.666348, 27.535765, 21.537832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.609940, 27.913174, 21.417915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987522, 0.155499, 0.024885,
		0.070097, -0.292544, -0.953679,
		-0.141016, 0.943524, -0.299794,
		33.567635, 28.196232, 21.327976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321011, 27.710379, 21.275133>,  <33.666348, 27.535765, 21.537832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321011, 27.710379, 21.275133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130478, 28.061792, 21.289495>,  <34.016159, 28.272640, 21.298113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130478, 28.061792, 21.289495>,  <34.321011, 27.710379, 21.275133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130478, 28.061792, 21.289495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876386, 0.477677, -0.061421,
		-0.071112, 0.002211, -0.997466,
		-0.476331, 0.878533, 0.035906,
		33.987579, 28.325352, 21.300268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770756, 28.042618, 20.855442>,  <34.321011, 27.710379, 21.275133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.770756, 28.042618, 20.855442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577152, 28.311384, 21.079678>,  <34.460991, 28.472645, 21.214220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577152, 28.311384, 21.079678>,  <34.770756, 28.042618, 20.855442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577152, 28.311384, 21.079678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864555, 0.466158, 0.187724,
		-0.135189, 0.575523, -0.806534,
		-0.484012, 0.671915, 0.560591,
		34.431950, 28.512959, 21.247854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.982689, 28.687773, 20.515509>,  <34.770756, 28.042618, 20.855442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.982689, 28.687773, 20.515509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866844, 28.702438, 20.898085>,  <34.797337, 28.711237, 21.127630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866844, 28.702438, 20.898085>,  <34.982689, 28.687773, 20.515509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866844, 28.702438, 20.898085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877688, 0.408800, 0.250094,
		-0.381824, 0.911887, -0.150571,
		-0.289611, 0.036662, 0.956442,
		34.779961, 28.713436, 21.185017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.316319, 29.285990, 20.766653>,  <34.982689, 28.687773, 20.515509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.316319, 29.285990, 20.766653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.188320, 29.095194, 21.094088>,  <35.111523, 28.980717, 21.290548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.188320, 29.095194, 21.094088>,  <35.316319, 29.285990, 20.766653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.188320, 29.095194, 21.094088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764409, 0.380460, 0.520509,
		-0.559716, 0.792295, 0.242869,
		-0.319995, -0.476989, 0.818587,
		35.092323, 28.952097, 21.339664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291473, 29.786362, 21.287275>,  <35.316319, 29.285990, 20.766653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291473, 29.786362, 21.287275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337143, 29.428043, 21.459095>,  <35.364544, 29.213053, 21.562187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337143, 29.428043, 21.459095>,  <35.291473, 29.786362, 21.287275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337143, 29.428043, 21.459095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725990, 0.370380, 0.579445,
		-0.678162, 0.245692, 0.692627,
		0.114170, -0.895798, 0.429548,
		35.371395, 29.159304, 21.587959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229191, 29.937891, 22.011097>,  <35.291473, 29.786362, 21.287275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229191, 29.937891, 22.011097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.411705, 29.583555, 21.977409>,  <35.521214, 29.370955, 21.957197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.411705, 29.583555, 21.977409>,  <35.229191, 29.937891, 22.011097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411705, 29.583555, 21.977409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769274, 0.345129, 0.537684,
		-0.447235, -0.310125, 0.838930,
		0.456288, -0.885838, -0.084217,
		35.548592, 29.317804, 21.952145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605145, 29.745161, 22.656263>,  <35.229191, 29.937891, 22.011097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605145, 29.745161, 22.656263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802868, 29.535400, 22.378942>,  <35.921501, 29.409544, 22.212549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802868, 29.535400, 22.378942>,  <35.605145, 29.745161, 22.656263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802868, 29.535400, 22.378942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866321, 0.231327, 0.442691,
		-0.071768, -0.819447, 0.568645,
		0.494305, -0.524400, -0.693302,
		35.951160, 29.378080, 22.170952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082127, 29.397636, 23.090712>,  <35.605145, 29.745161, 22.656263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082127, 29.397636, 23.090712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.211140, 29.366396, 22.713379>,  <36.288548, 29.347651, 22.486980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.211140, 29.366396, 22.713379>,  <36.082127, 29.397636, 23.090712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211140, 29.366396, 22.713379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934464, 0.185069, 0.304182,
		0.150823, -0.979617, 0.132677,
		0.322536, -0.078104, -0.943329,
		36.307899, 29.342964, 22.430380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572094, 28.955168, 23.064232>,  <36.082127, 29.397636, 23.090712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572094, 28.955168, 23.064232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.650162, 29.185482, 22.746647>,  <36.697002, 29.323671, 22.556095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.650162, 29.185482, 22.746647>,  <36.572094, 28.955168, 23.064232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650162, 29.185482, 22.746647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945215, 0.105564, 0.308909,
		0.261680, -0.810757, -0.523638,
		0.195173, 0.575786, -0.793963,
		36.708714, 29.358217, 22.508457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178856, 28.639774, 22.943882>,  <36.572094, 28.955168, 23.064232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.178856, 28.639774, 22.943882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.160580, 28.981218, 22.736320>,  <37.149612, 29.186085, 22.611784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.160580, 28.981218, 22.736320>,  <37.178856, 28.639774, 22.943882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160580, 28.981218, 22.736320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921476, 0.236598, 0.308064,
		0.385739, -0.464080, -0.797393,
		-0.045695, 0.853610, -0.518904,
		37.146870, 29.237301, 22.580648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832016, 28.650822, 22.641947>,  <37.178856, 28.639774, 22.943882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832016, 28.650822, 22.641947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.686584, 29.023386, 22.635166>,  <37.599327, 29.246925, 22.631098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.686584, 29.023386, 22.635166>,  <37.832016, 28.650822, 22.641947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686584, 29.023386, 22.635166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853919, 0.340489, 0.393562,
		0.372339, 0.128614, -0.919142,
		-0.363575, 0.931411, -0.016952,
		37.577511, 29.302809, 22.630081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328243, 29.022076, 22.327200>,  <37.832016, 28.650822, 22.641947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328243, 29.022076, 22.327200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.131752, 29.292833, 22.546476>,  <38.013859, 29.455288, 22.678041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.131752, 29.292833, 22.546476>,  <38.328243, 29.022076, 22.327200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131752, 29.292833, 22.546476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868728, 0.334998, 0.364812,
		0.063295, 0.655434, -0.752596,
		-0.491228, 0.676892, 0.548190,
		37.984383, 29.495901, 22.710934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782616, 29.481676, 22.425982>,  <38.328243, 29.022076, 22.327200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.782616, 29.481676, 22.425982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.513172, 29.625053, 22.684521>,  <38.351505, 29.711079, 22.839643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.513172, 29.625053, 22.684521>,  <38.782616, 29.481676, 22.425982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513172, 29.625053, 22.684521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737637, 0.380753, 0.557602,
		-0.046231, 0.852378, -0.520879,
		-0.673613, 0.358441, 0.646347,
		38.311089, 29.732586, 22.878426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058395, 30.176821, 22.610266>,  <38.782616, 29.481676, 22.425982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058395, 30.176821, 22.610266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808117, 30.036942, 22.889183>,  <38.657951, 29.953014, 23.056534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808117, 30.036942, 22.889183>,  <39.058395, 30.176821, 22.610266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808117, 30.036942, 22.889183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735255, 0.034223, 0.676926,
		-0.260582, 0.936238, 0.235703,
		-0.625697, -0.349696, 0.697292,
		38.620407, 29.932032, 23.098372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191303, 30.442205, 23.176764>,  <39.058395, 30.176821, 22.610266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.191303, 30.442205, 23.176764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962044, 30.172070, 23.362417>,  <38.824490, 30.009989, 23.473808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962044, 30.172070, 23.362417>,  <39.191303, 30.442205, 23.176764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962044, 30.172070, 23.362417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656121, -0.038883, 0.753653,
		-0.490925, 0.736482, 0.465390,
		-0.573148, -0.675339, 0.464132,
		38.790100, 29.969467, 23.501657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308018, 30.538038, 23.920818>,  <39.191303, 30.442205, 23.176764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.308018, 30.538038, 23.920818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.201916, 30.159613, 23.846415>,  <39.138256, 29.932556, 23.801771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.201916, 30.159613, 23.846415>,  <39.308018, 30.538038, 23.920818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.201916, 30.159613, 23.846415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688285, -0.320898, 0.650605,
		-0.675206, 0.044546, 0.736283,
		-0.265254, -0.946065, -0.186012,
		39.122341, 29.875793, 23.790611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130367, 30.237000, 24.582029>,  <39.308018, 30.538038, 23.920818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130367, 30.237000, 24.582029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.230465, 29.922543, 24.355980>,  <39.290524, 29.733870, 24.220350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.230465, 29.922543, 24.355980>,  <39.130367, 30.237000, 24.582029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.230465, 29.922543, 24.355980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562369, -0.357111, 0.745796,
		-0.788112, -0.504435, 0.352738,
		0.250239, -0.786140, -0.565123,
		39.305538, 29.686701, 24.186443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069275, 29.663616, 25.023869>,  <39.130367, 30.237000, 24.582029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069275, 29.663616, 25.023869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.323093, 29.556265, 24.733952>,  <39.475384, 29.491854, 24.560001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.323093, 29.556265, 24.733952>,  <39.069275, 29.663616, 25.023869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323093, 29.556265, 24.733952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674118, -0.266512, 0.688866,
		-0.378043, -0.925713, 0.011805,
		0.634546, -0.268379, -0.724793,
		39.513458, 29.475752, 24.516514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331318, 29.139751, 25.351948>,  <39.069275, 29.663616, 25.023869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331318, 29.139751, 25.351948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.582039, 29.213730, 25.049185>,  <39.732471, 29.258118, 24.867527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.582039, 29.213730, 25.049185>,  <39.331318, 29.139751, 25.351948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.582039, 29.213730, 25.049185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771154, -0.286291, 0.568647,
		-0.111526, -0.940123, -0.322072,
		0.626804, 0.184948, -0.756909,
		39.770081, 29.269215, 24.822113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681568, 28.560001, 25.316031>,  <39.331318, 29.139751, 25.351948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.681568, 28.560001, 25.316031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.902328, 28.851582, 25.154028>,  <40.034786, 29.026529, 25.056826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.902328, 28.851582, 25.154028>,  <39.681568, 28.560001, 25.316031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.902328, 28.851582, 25.154028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806121, -0.342038, 0.482887,
		0.213473, -0.592993, -0.776395,
		0.551905, 0.728951, -0.405008,
		40.067902, 29.070267, 25.032526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283134, 28.280737, 25.096621>,  <39.681568, 28.560001, 25.316031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.283134, 28.280737, 25.096621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.394230, 28.664907, 25.105066>,  <40.460888, 28.895409, 25.110134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.394230, 28.664907, 25.105066>,  <40.283134, 28.280737, 25.096621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.394230, 28.664907, 25.105066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882970, -0.263876, 0.388242,
		0.378449, -0.089187, -0.921315,
		0.277740, 0.960424, 0.021115,
		40.477551, 28.953035, 25.111401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.968510, 28.239792, 24.853888>,  <40.283134, 28.280737, 25.096621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.968510, 28.239792, 24.853888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.931622, 28.584444, 25.053524>,  <40.909489, 28.791235, 25.173306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.931622, 28.584444, 25.053524>,  <40.968510, 28.239792, 24.853888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.931622, 28.584444, 25.053524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875811, -0.168288, 0.452366,
		0.473762, 0.478828, -0.739103,
		-0.092224, 0.861628, 0.499090,
		40.903954, 28.842932, 25.203251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.557037, 28.750208, 24.655481>,  <40.968510, 28.239792, 24.853888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.557037, 28.750208, 24.655481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.419159, 28.830404, 25.022303>,  <41.336433, 28.878523, 25.242395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.419159, 28.830404, 25.022303>,  <41.557037, 28.750208, 24.655481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.419159, 28.830404, 25.022303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913481, -0.153348, 0.376877,
		0.216189, 0.967620, -0.130286,
		-0.344695, 0.200490, 0.917055,
		41.315750, 28.890551, 25.297419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.040115, 29.161270, 24.967827>,  <41.557037, 28.750208, 24.655481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.040115, 29.161270, 24.967827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.840237, 29.021551, 25.284887>,  <41.720310, 28.937719, 25.475124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.840237, 29.021551, 25.284887>,  <42.040115, 29.161270, 24.967827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.840237, 29.021551, 25.284887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866114, -0.188530, 0.462928,
		-0.012260, 0.917850, 0.396738,
		-0.499695, -0.349295, 0.792652,
		41.690327, 28.916763, 25.522682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.050758, 29.617373, 25.567612>,  <42.040115, 29.161270, 24.967827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.050758, 29.617373, 25.567612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.013260, 29.234987, 25.678856>,  <41.990761, 29.005556, 25.745602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.013260, 29.234987, 25.678856>,  <42.050758, 29.617373, 25.567612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.013260, 29.234987, 25.678856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959056, -0.011725, 0.282974,
		-0.267252, 0.293249, 0.917922,
		-0.093745, -0.955964, 0.278109,
		41.985138, 28.948198, 25.762289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.510609, 29.480101, 26.269083>,  <42.050758, 29.617373, 25.567612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.510609, 29.480101, 26.269083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.301510, 29.139114, 26.271547>,  <42.176052, 28.934523, 26.273026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.301510, 29.139114, 26.271547>,  <42.510609, 29.480101, 26.269083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.301510, 29.139114, 26.271547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079808, 0.056133, 0.995228,
		-0.848745, 0.519758, -0.097377,
		-0.522745, -0.852467, 0.006162,
		42.144688, 28.883373, 26.273396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.992748, 29.674202, 26.572716>,  <42.510609, 29.480101, 26.269083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.992748, 29.674202, 26.572716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.019043, 29.283648, 26.655033>,  <42.034821, 29.049314, 26.704424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.019043, 29.283648, 26.655033>,  <41.992748, 29.674202, 26.572716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.019043, 29.283648, 26.655033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062228, 0.201826, 0.977442,
		-0.995894, -0.077062, -0.047491,
		0.065739, -0.976385, 0.205793,
		42.038765, 28.990732, 26.716770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.383228, 29.454035, 26.990355>,  <41.992748, 29.674202, 26.572716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.383228, 29.454035, 26.990355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.676838, 29.195826, 27.074736>,  <41.853004, 29.040899, 27.125364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.676838, 29.195826, 27.074736>,  <41.383228, 29.454035, 26.990355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.676838, 29.195826, 27.074736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194726, 0.097527, 0.975997,
		-0.650604, -0.757487, -0.054113,
		0.734027, -0.645525, 0.210954,
		41.897045, 29.002169, 27.138021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.853867, 29.613956, 27.485943>,  <41.383228, 29.454035, 26.990355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.853867, 29.613956, 27.485943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.667862, 29.375683, 27.747915>,  <41.556259, 29.232719, 27.905098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.667862, 29.375683, 27.747915>,  <41.853867, 29.613956, 27.485943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.667862, 29.375683, 27.747915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087506, 0.705227, 0.703560,
		-0.880972, 0.384471, -0.275810,
		-0.465007, -0.595682, 0.654929,
		41.528358, 29.196978, 27.944393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.349682, 30.000179, 27.962694>,  <41.853867, 29.613956, 27.485943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.349682, 30.000179, 27.962694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.502956, 29.687574, 28.159634>,  <41.594921, 29.500011, 28.277798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.502956, 29.687574, 28.159634>,  <41.349682, 30.000179, 27.962694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.502956, 29.687574, 28.159634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204767, 0.591644, 0.779762,
		-0.900689, -0.197975, 0.386736,
		0.383183, -0.781514, 0.492348,
		41.617912, 29.453121, 28.307339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.918900, 29.744219, 28.652344>,  <41.349682, 30.000179, 27.962694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.918900, 29.744219, 28.652344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.309551, 29.752119, 28.566734>,  <41.543941, 29.756859, 28.515369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.309551, 29.752119, 28.566734>,  <40.918900, 29.744219, 28.652344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.309551, 29.752119, 28.566734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130987, 0.734793, 0.665523,
		0.170405, -0.678003, 0.715034,
		0.976629, 0.019749, -0.214022,
		41.602539, 29.758043, 28.502527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.346809, 29.778316, 29.288330>,  <40.918900, 29.744219, 28.652344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.346809, 29.778316, 29.288330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.529266, 29.981720, 28.996206>,  <41.638741, 30.103762, 28.820932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.529266, 29.981720, 28.996206>,  <41.346809, 29.778316, 29.288330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.529266, 29.981720, 28.996206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034596, 0.809907, 0.585537,
		0.889234, -0.292354, 0.351841,
		0.456142, 0.508507, -0.730312,
		41.666111, 30.134272, 28.777113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.725002, 30.091400, 29.706894>,  <41.346809, 29.778316, 29.288330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.725002, 30.091400, 29.706894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.742981, 30.294176, 29.362570>,  <41.753769, 30.415842, 29.155975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.742981, 30.294176, 29.362570>,  <41.725002, 30.091400, 29.706894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.742981, 30.294176, 29.362570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016640, 0.861941, 0.506736,
		0.998851, -0.008455, 0.047181,
		0.044951, 0.506939, -0.860809,
		41.756466, 30.446259, 29.104326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.400478, 30.619896, 29.696138>,  <41.725002, 30.091400, 29.706894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.400478, 30.619896, 29.696138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.090813, 30.727348, 29.466875>,  <41.905014, 30.791821, 29.329317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.090813, 30.727348, 29.466875>,  <42.400478, 30.619896, 29.696138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.090813, 30.727348, 29.466875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024557, 0.917544, 0.396875,
		0.632510, 0.293171, -0.716926,
		-0.774163, 0.268633, -0.573156,
		41.858562, 30.807938, 29.294928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.546619, 31.256033, 29.709068>,  <42.400478, 30.619896, 29.696138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.546619, 31.256033, 29.709068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.167992, 31.226391, 29.583525>,  <41.940815, 31.208605, 29.508198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.167992, 31.226391, 29.583525>,  <42.546619, 31.256033, 29.709068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.167992, 31.226391, 29.583525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201932, 0.895025, 0.397685,
		0.251440, 0.439816, -0.862172,
		-0.946573, -0.074106, -0.313858,
		41.884018, 31.204159, 29.489367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.303574, 31.876968, 29.659237>,  <42.546619, 31.256033, 29.709068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.303574, 31.876968, 29.659237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.924561, 31.753832, 29.693684>,  <41.697151, 31.679951, 29.714352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.924561, 31.753832, 29.693684>,  <42.303574, 31.876968, 29.659237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.924561, 31.753832, 29.693684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264332, 0.906057, 0.330438,
		-0.179750, 0.290337, -0.939891,
		-0.947533, -0.307839, 0.086119,
		41.640301, 31.661480, 29.719519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.960377, 32.528381, 29.549183>,  <42.303574, 31.876968, 29.659237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.960377, 32.528381, 29.549183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.696548, 32.284225, 29.724630>,  <41.538250, 32.137730, 29.829899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.696548, 32.284225, 29.724630>,  <41.960377, 32.528381, 29.549183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.696548, 32.284225, 29.724630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317650, 0.755235, 0.573340,
		-0.681224, 0.238830, -0.692021,
		-0.659570, -0.610394, 0.438620,
		41.498676, 32.101109, 29.856216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.138462, 32.562595, 29.483822>,  <41.960377, 32.528381, 29.549183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.138462, 32.562595, 29.483822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.325199, 32.483932, 29.828701>,  <41.437241, 32.436733, 30.035627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.325199, 32.483932, 29.828701>,  <41.138462, 32.562595, 29.483822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.325199, 32.483932, 29.828701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251770, 0.905057, 0.342760,
		-0.847745, -0.377090, 0.373005,
		0.466841, -0.196661, 0.862197,
		41.465252, 32.424934, 30.087360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.672276, 32.599773, 30.035412>,  <41.138462, 32.562595, 29.483822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.672276, 32.599773, 30.035412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.030231, 32.700863, 30.182550>,  <41.245003, 32.761517, 30.270834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.030231, 32.700863, 30.182550>,  <40.672276, 32.599773, 30.035412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.030231, 32.700863, 30.182550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303103, 0.949134, 0.085284,
		-0.327580, -0.187814, 0.925968,
		0.894885, 0.252727, 0.367844,
		41.298698, 32.776680, 30.292904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606281, 32.879982, 30.792694>,  <40.672276, 32.599773, 30.035412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.606281, 32.879982, 30.792694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.885464, 33.031494, 30.549585>,  <41.052971, 33.122402, 30.403719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.885464, 33.031494, 30.549585>,  <40.606281, 32.879982, 30.792694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.885464, 33.031494, 30.549585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354724, 0.920103, 0.166074,
		0.622120, 0.099680, 0.776550,
		0.697952, 0.378779, -0.607774,
		41.094849, 33.145126, 30.367252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.140266, 33.296093, 31.175394>,  <40.606281, 32.879982, 30.792694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.140266, 33.296093, 31.175394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.044071, 33.426273, 30.809607>,  <40.986355, 33.504379, 30.590134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.044071, 33.426273, 30.809607>,  <41.140266, 33.296093, 31.175394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.044071, 33.426273, 30.809607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216642, 0.900354, 0.377398,
		0.946167, 0.288871, -0.146019,
		-0.240488, 0.325448, -0.914467,
		40.971924, 33.523907, 30.535267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.438023, 33.986401, 31.155596>,  <41.140266, 33.296093, 31.175394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.438023, 33.986401, 31.155596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.118790, 33.934776, 30.920172>,  <40.927250, 33.903801, 30.778917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.118790, 33.934776, 30.920172>,  <41.438023, 33.986401, 31.155596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.118790, 33.934776, 30.920172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421501, 0.817598, 0.392263,
		0.430579, 0.561138, -0.706913,
		-0.798084, -0.129064, -0.588561,
		40.879364, 33.896057, 30.743603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311714, 34.639523, 30.766293>,  <41.438023, 33.986401, 31.155596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.311714, 34.639523, 30.766293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.978249, 34.425213, 30.819885>,  <40.778168, 34.296627, 30.852041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.978249, 34.425213, 30.819885>,  <41.311714, 34.639523, 30.766293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.978249, 34.425213, 30.819885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469603, 0.815370, 0.338592,
		-0.290652, 0.219354, -0.931346,
		-0.833663, -0.535775, 0.133980,
		40.728149, 34.264481, 30.860079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677021, 34.990997, 30.593048>,  <41.311714, 34.639523, 30.766293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.677021, 34.990997, 30.593048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508442, 34.704803, 30.815928>,  <40.407295, 34.533089, 30.949656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508442, 34.704803, 30.815928>,  <40.677021, 34.990997, 30.593048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508442, 34.704803, 30.815928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679868, 0.655899, 0.327988,
		-0.600134, -0.240592, -0.762859,
		-0.421447, -0.715481, 0.557198,
		40.382008, 34.490158, 30.983088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985981, 35.139267, 30.523508>,  <40.677021, 34.990997, 30.593048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985981, 35.139267, 30.523508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996113, 34.893101, 30.838625>,  <40.002190, 34.745399, 31.027695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996113, 34.893101, 30.838625>,  <39.985981, 35.139267, 30.523508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996113, 34.893101, 30.838625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735813, 0.521975, 0.431417,
		-0.676711, -0.590596, -0.439613,
		0.025326, -0.615418, 0.787794,
		40.003712, 34.708477, 31.074963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258755, 34.893143, 30.702738>,  <39.985981, 35.139267, 30.523508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.258755, 34.893143, 30.702738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477718, 34.863903, 31.036205>,  <39.609097, 34.846359, 31.236286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477718, 34.863903, 31.036205>,  <39.258755, 34.893143, 30.702738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477718, 34.863903, 31.036205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615789, 0.639396, 0.460409,
		-0.566698, -0.765395, 0.304998,
		0.547409, -0.073099, 0.833666,
		39.641941, 34.841972, 31.286304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752548, 34.768433, 31.355564>,  <39.258755, 34.893143, 30.702738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752548, 34.768433, 31.355564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085892, 34.961002, 31.464182>,  <39.285900, 35.076546, 31.529352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085892, 34.961002, 31.464182>,  <38.752548, 34.768433, 31.355564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085892, 34.961002, 31.464182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551652, 0.693797, 0.462954,
		0.034480, -0.535607, 0.843763,
		0.833362, 0.481426, 0.271546,
		39.335899, 35.105431, 31.545645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643295, 34.970890, 32.049744>,  <38.752548, 34.768433, 31.355564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643295, 34.970890, 32.049744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941650, 35.210392, 31.933025>,  <39.120663, 35.354092, 31.862993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941650, 35.210392, 31.933025>,  <38.643295, 34.970890, 32.049744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941650, 35.210392, 31.933025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310630, 0.700226, 0.642801,
		0.589203, -0.388817, 0.708281,
		0.745888, 0.598753, -0.291797,
		39.165417, 35.390018, 31.845486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945251, 35.363972, 32.664433>,  <38.643295, 34.970890, 32.049744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.945251, 35.363972, 32.664433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.981464, 35.556770, 32.315838>,  <39.003193, 35.672447, 32.106682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.981464, 35.556770, 32.315838>,  <38.945251, 35.363972, 32.664433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981464, 35.556770, 32.315838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537548, 0.760305, 0.364662,
		0.838359, 0.435450, 0.327928,
		0.090533, 0.481994, -0.871484,
		39.008625, 35.701370, 32.054394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443439, 35.651478, 32.270092>,  <38.945251, 35.363972, 32.664433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.443439, 35.651478, 32.270092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.755802, 35.857742, 32.129078>,  <39.943218, 35.981499, 32.044468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.755802, 35.857742, 32.129078>,  <39.443439, 35.651478, 32.270092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.755802, 35.857742, 32.129078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446636, 0.855497, 0.261995,
		0.436695, -0.047137, 0.898374,
		0.780905, 0.515658, -0.352538,
		39.990074, 36.012440, 32.023315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759586, 36.087208, 32.911808>,  <39.443439, 35.651478, 32.270092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759586, 36.087208, 32.911808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.812622, 36.249321, 32.549999>,  <39.844444, 36.346588, 32.332912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.812622, 36.249321, 32.549999>,  <39.759586, 36.087208, 32.911808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.812622, 36.249321, 32.549999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381091, 0.863276, 0.330944,
		0.914981, 0.300828, 0.268908,
		0.132585, 0.405286, -0.904524,
		39.852398, 36.370907, 32.278641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014412, 36.860241, 32.929844>,  <39.759586, 36.087208, 32.911808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014412, 36.860241, 32.929844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.843086, 36.819855, 32.570656>,  <39.740292, 36.795624, 32.355141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.843086, 36.819855, 32.570656>,  <40.014412, 36.860241, 32.929844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.843086, 36.819855, 32.570656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462042, 0.878481, 0.121608,
		0.776575, 0.466987, -0.422913,
		-0.428310, -0.100966, -0.897974,
		39.714592, 36.789566, 32.301262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101120, 37.491051, 32.533325>,  <40.014412, 36.860241, 32.929844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.101120, 37.491051, 32.533325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.762295, 37.335064, 32.388874>,  <39.559002, 37.241470, 32.302204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.762295, 37.335064, 32.388874>,  <40.101120, 37.491051, 32.533325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.762295, 37.335064, 32.388874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509572, 0.789010, 0.343219,
		0.151090, 0.474749, -0.867056,
		-0.847059, -0.389971, -0.361130,
		39.508179, 37.218071, 32.280537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674690, 37.995144, 32.110847>,  <40.101120, 37.491051, 32.533325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.674690, 37.995144, 32.110847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.458584, 37.732578, 32.321457>,  <39.328918, 37.575039, 32.447823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.458584, 37.732578, 32.321457>,  <39.674690, 37.995144, 32.110847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458584, 37.732578, 32.321457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318524, 0.738673, 0.594058,
		-0.778880, 0.153239, -0.608164,
		-0.540267, -0.656415, 0.526527,
		39.296505, 37.535652, 32.479416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143978, 38.356056, 32.218624>,  <39.674690, 37.995144, 32.110847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.143978, 38.356056, 32.218624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.115402, 38.055973, 32.481556>,  <39.098255, 37.875923, 32.639317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.115402, 38.055973, 32.481556>,  <39.143978, 38.356056, 32.218624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115402, 38.055973, 32.481556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227036, 0.653949, 0.721669,
		-0.971263, -0.097681, -0.217043,
		-0.071442, -0.750207, 0.657333,
		39.093971, 37.830910, 32.678757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363968, 38.377266, 31.516619>,  <39.143978, 38.356056, 32.218624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.363968, 38.377266, 31.516619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.221626, 38.749947, 31.487473>,  <39.136223, 38.973553, 31.469984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.221626, 38.749947, 31.487473>,  <39.363968, 38.377266, 31.516619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.221626, 38.749947, 31.487473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913072, 0.330002, -0.239577,
		-0.199167, -0.151785, -0.968139,
		-0.355853, 0.931697, -0.072865,
		39.114872, 39.029457, 31.465612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583469, 38.673641, 30.870598>,  <39.363968, 38.377266, 31.516619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.583469, 38.673641, 30.870598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.535404, 38.990334, 31.110174>,  <39.506565, 39.180347, 31.253920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.535404, 38.990334, 31.110174>,  <39.583469, 38.673641, 30.870598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.535404, 38.990334, 31.110174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951864, 0.263248, -0.157018,
		-0.281985, 0.551242, -0.785249,
		-0.120160, 0.791728, 0.598940,
		39.499355, 39.227852, 31.289856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033566, 39.185162, 30.680590>,  <39.583469, 38.673641, 30.870598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033566, 39.185162, 30.680590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.890133, 39.388546, 30.993738>,  <39.804073, 39.510578, 31.181627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.890133, 39.388546, 30.993738>,  <40.033566, 39.185162, 30.680590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.890133, 39.388546, 30.993738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865262, 0.495779, 0.074323,
		-0.350340, 0.704038, -0.617731,
		-0.358585, 0.508461, 0.782869,
		39.782558, 39.541084, 31.228600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.327938, 39.835285, 30.634111>,  <40.033566, 39.185162, 30.680590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.327938, 39.835285, 30.634111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.244667, 39.786495, 31.022293>,  <40.194702, 39.757221, 31.255203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.244667, 39.786495, 31.022293>,  <40.327938, 39.835285, 30.634111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.244667, 39.786495, 31.022293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883382, 0.402485, 0.240088,
		-0.419879, 0.907264, 0.023960,
		-0.208180, -0.121974, 0.970455,
		40.182213, 39.749905, 31.313429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537292, 40.395103, 31.027466>,  <40.327938, 39.835285, 30.634111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.537292, 40.395103, 31.027466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.558044, 40.086731, 31.281385>,  <40.570496, 39.901707, 31.433737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.558044, 40.086731, 31.281385>,  <40.537292, 40.395103, 31.027466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.558044, 40.086731, 31.281385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873358, 0.343290, 0.345539,
		-0.484308, 0.536480, 0.691112,
		0.051877, -0.770935, 0.634798,
		40.573608, 39.855450, 31.471825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.756809, 40.629089, 31.618338>,  <40.537292, 40.395103, 31.027466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.756809, 40.629089, 31.618338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.819408, 40.239895, 31.686230>,  <40.856968, 40.006378, 31.726965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.819408, 40.239895, 31.686230>,  <40.756809, 40.629089, 31.618338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.819408, 40.239895, 31.686230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818353, 0.223955, 0.529286,
		-0.552999, 0.056068, 0.831293,
		0.156497, -0.972985, 0.169731,
		40.866356, 39.947998, 31.737148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.000565, 40.443336, 32.282963>,  <40.756809, 40.629089, 31.618338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.000565, 40.443336, 32.282963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.117390, 40.106655, 32.101307>,  <41.187485, 39.904648, 31.992313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.117390, 40.106655, 32.101307>,  <41.000565, 40.443336, 32.282963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.117390, 40.106655, 32.101307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861671, 0.025539, 0.506824,
		-0.414995, -0.539341, 0.732728,
		0.292064, -0.841700, -0.454136,
		41.205009, 39.854145, 31.965065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309086, 40.100891, 32.756016>,  <41.000565, 40.443336, 32.282963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.309086, 40.100891, 32.756016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.462162, 39.943424, 32.421696>,  <41.554008, 39.848942, 32.221104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.462162, 39.943424, 32.421696>,  <41.309086, 40.100891, 32.756016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.462162, 39.943424, 32.421696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889991, -0.085671, 0.447857,
		-0.247911, -0.915251, 0.317576,
		0.382695, -0.393669, -0.835805,
		41.576969, 39.825325, 32.170956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.563786, 39.457012, 32.988041>,  <41.309086, 40.100891, 32.756016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.563786, 39.457012, 32.988041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.734295, 39.619205, 32.664593>,  <41.836601, 39.716522, 32.470524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.734295, 39.619205, 32.664593>,  <41.563786, 39.457012, 32.988041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.734295, 39.619205, 32.664593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904513, -0.203024, 0.375017,
		-0.012105, -0.891270, -0.453312,
		0.426275, 0.405487, -0.808622,
		41.862179, 39.740852, 32.422005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.963905, 38.991817, 32.668396>,  <41.563786, 39.457012, 32.988041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.963905, 38.991817, 32.668396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.112705, 39.361786, 32.637077>,  <42.201984, 39.583767, 32.618286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.112705, 39.361786, 32.637077>,  <41.963905, 38.991817, 32.668396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.112705, 39.361786, 32.637077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889164, -0.330859, 0.316099,
		0.266462, -0.187208, -0.945490,
		0.372001, 0.924924, -0.078297,
		42.224304, 39.639263, 32.613586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.255100, 38.537430, 33.177704>,  <41.963905, 38.991817, 32.668396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.255100, 38.537430, 33.177704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.304535, 38.159519, 33.056301>,  <42.334198, 37.932774, 32.983459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.304535, 38.159519, 33.056301>,  <42.255100, 38.537430, 33.177704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.304535, 38.159519, 33.056301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669855, -0.305083, 0.676918,
		-0.732134, 0.119648, -0.670571,
		0.123588, -0.944780, -0.303508,
		42.341610, 37.876083, 32.965248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.685032, 38.268833, 33.101002>,  <42.255100, 38.537430, 33.177704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.685032, 38.268833, 33.101002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.882923, 37.922459, 33.130386>,  <42.001659, 37.714634, 33.148018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.882923, 37.922459, 33.130386>,  <41.685032, 38.268833, 33.101002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.882923, 37.922459, 33.130386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669858, -0.326119, 0.667036,
		-0.553655, -0.379210, -0.741395,
		0.494730, -0.865937, 0.073459,
		42.031342, 37.662678, 33.152424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272976, 38.632023, 32.537224>,  <41.685032, 38.268833, 33.101002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.272976, 38.632023, 32.537224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.572418, 38.563892, 32.280918>,  <41.752083, 38.523014, 32.127132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.572418, 38.563892, 32.280918>,  <41.272976, 38.632023, 32.537224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.572418, 38.563892, 32.280918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105809, 0.923363, -0.369059,
		0.654519, 0.344078, 0.673212,
		0.748605, -0.170324, -0.640766,
		41.797001, 38.512794, 32.088688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.923470, 37.932625, 32.916027>,  <41.272976, 38.632023, 32.537224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.923470, 37.932625, 32.916027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.575150, 37.860851, 33.099113>,  <40.366158, 37.817787, 33.208965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.575150, 37.860851, 33.099113>,  <40.923470, 37.932625, 32.916027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.575150, 37.860851, 33.099113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353929, -0.874993, 0.330334,
		0.341223, 0.449655, 0.825456,
		-0.870805, -0.179435, 0.457714,
		40.313908, 37.807022, 33.236427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.121983, 37.795006, 33.631832>,  <40.923470, 37.932625, 32.916027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.121983, 37.795006, 33.631832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.784016, 37.635654, 33.489056>,  <40.581234, 37.540043, 33.403389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.784016, 37.635654, 33.489056>,  <41.121983, 37.795006, 33.631832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.784016, 37.635654, 33.489056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242973, -0.880337, 0.407396,
		-0.476530, 0.257488, 0.840607,
		-0.844916, -0.398381, -0.356944,
		40.530540, 37.516140, 33.381973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.757240, 37.385571, 34.249702>,  <41.121983, 37.795006, 33.631832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.757240, 37.385571, 34.249702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.652664, 37.272087, 33.880669>,  <40.589920, 37.203999, 33.659248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.652664, 37.272087, 33.880669>,  <40.757240, 37.385571, 34.249702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.652664, 37.272087, 33.880669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125999, -0.957680, 0.258793,
		-0.956961, -0.048585, 0.286122,
		-0.261440, -0.283705, -0.922584,
		40.574234, 37.186974, 33.603893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.310478, 37.718750, 34.416206>,  <40.757240, 37.385571, 34.249702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.310478, 37.718750, 34.416206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.547180, 37.897121, 34.684826>,  <41.689201, 38.004143, 34.845997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.547180, 37.897121, 34.684826>,  <41.310478, 37.718750, 34.416206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.547180, 37.897121, 34.684826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785496, 0.506191, 0.356043,
		-0.181161, -0.738187, 0.649816,
		0.591757, 0.445926, 0.671545,
		41.724709, 38.030899, 34.886288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.024925, 37.562229, 35.160191>,  <41.310478, 37.718750, 34.416206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.024925, 37.562229, 35.160191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.161396, 37.921059, 35.047867>,  <41.243279, 38.136356, 34.980473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.161396, 37.921059, 35.047867>,  <41.024925, 37.562229, 35.160191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.161396, 37.921059, 35.047867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904431, 0.394675, 0.161976,
		0.256132, 0.198707, 0.945998,
		0.341176, 0.897077, -0.280805,
		41.263748, 38.190182, 34.963627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.443295, 37.036091, 35.625675>,  <41.024925, 37.562229, 35.160191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.443295, 37.036091, 35.625675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.620941, 36.684116, 35.693176>,  <41.727528, 36.472931, 35.733677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.620941, 36.684116, 35.693176>,  <41.443295, 37.036091, 35.625675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.620941, 36.684116, 35.693176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460779, -0.385839, -0.799257,
		0.768405, 0.277203, -0.576812,
		0.444113, -0.879936, 0.168751,
		41.754173, 36.420135, 35.743801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.716133, 36.813450, 34.921440>,  <41.443295, 37.036091, 35.625675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.716133, 36.813450, 34.921440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.621487, 36.541107, 35.198696>,  <41.564697, 36.377701, 35.365047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.621487, 36.541107, 35.198696>,  <41.716133, 36.813450, 34.921440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.621487, 36.541107, 35.198696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242352, -0.649488, -0.720716,
		0.940892, -0.338516, -0.011328,
		-0.236616, -0.680861, 0.693138,
		41.550503, 36.336849, 35.406639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.501247, 36.789101, 34.211651>,  <41.716133, 36.813450, 34.921440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.501247, 36.789101, 34.211651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.537151, 36.531872, 34.515862>,  <41.558693, 36.377537, 34.698387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.537151, 36.531872, 34.515862>,  <41.501247, 36.789101, 34.211651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.537151, 36.531872, 34.515862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097051, -0.754331, -0.649281,
		0.991223, 0.132091, -0.005299,
		0.089761, -0.643068, 0.760530,
		41.564079, 36.338951, 34.744022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.254257, 36.618740, 34.185673>,  <41.501247, 36.789101, 34.211651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.254257, 36.618740, 34.185673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.032623, 36.323860, 34.340343>,  <41.899643, 36.146931, 34.433147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.032623, 36.323860, 34.340343>,  <42.254257, 36.618740, 34.185673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.032623, 36.323860, 34.340343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294533, -0.608064, -0.737230,
		0.778614, -0.294598, 0.554050,
		-0.554085, -0.737204, 0.386679,
		41.866398, 36.102699, 34.456348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.599125, 35.901554, 34.416908>,  <42.254257, 36.618740, 34.185673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.599125, 35.901554, 34.416908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.245625, 35.911705, 34.230000>,  <42.033524, 35.917793, 34.117855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.245625, 35.911705, 34.230000>,  <42.599125, 35.901554, 34.416908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.245625, 35.911705, 34.230000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361914, -0.595947, -0.716844,
		-0.296660, -0.802623, 0.517484,
		-0.883748, 0.025375, -0.467274,
		41.980499, 35.919319, 34.089817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.292778, 35.215179, 34.300884>,  <42.599125, 35.901554, 34.416908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.292778, 35.215179, 34.300884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.201141, 35.460476, 33.998505>,  <42.146160, 35.607655, 33.817078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.201141, 35.460476, 33.998505>,  <42.292778, 35.215179, 34.300884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.201141, 35.460476, 33.998505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300342, -0.694175, -0.654152,
		-0.925911, -0.376904, -0.025150,
		-0.229094, 0.613241, -0.755945,
		42.132412, 35.644447, 33.771721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.063995, 35.432117, 34.133701>,  <42.292778, 35.215179, 34.300884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.063995, 35.432117, 34.133701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.150890, 35.045864, 34.076614>,  <43.203026, 34.814114, 34.042362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.150890, 35.045864, 34.076614>,  <43.063995, 35.432117, 34.133701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.150890, 35.045864, 34.076614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924040, 0.156314, 0.348880,
		-0.314581, -0.207662, 0.926237,
		0.217233, -0.965631, -0.142715,
		43.216061, 34.756176, 34.033798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.449493, 35.174343, 34.565971>,  <43.063995, 35.432117, 34.133701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.449493, 35.174343, 34.565971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.572655, 34.906574, 34.295544>,  <43.646549, 34.745911, 34.133289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.572655, 34.906574, 34.295544>,  <43.449493, 35.174343, 34.565971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.572655, 34.906574, 34.295544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929430, 0.059747, 0.364129,
		-0.203365, -0.740473, 0.640580,
		0.307900, -0.669426, -0.676067,
		43.665024, 34.705746, 34.092724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.718033, 34.529133, 34.958973>,  <43.449493, 35.174343, 34.565971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.718033, 34.529133, 34.958973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.891052, 34.622318, 34.610577>,  <43.994865, 34.678230, 34.401539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.891052, 34.622318, 34.610577>,  <43.718033, 34.529133, 34.958973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.891052, 34.622318, 34.610577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860690, 0.181033, 0.475857,
		0.268536, -0.955486, -0.122206,
		0.432551, 0.232967, -0.870991,
		44.020817, 34.692207, 34.349277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.261360, 34.042110, 34.530231>,  <43.718033, 34.529133, 34.958973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.261360, 34.042110, 34.530231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.274487, 34.441868, 34.534737>,  <44.282364, 34.681725, 34.537441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.274487, 34.441868, 34.534737>,  <44.261360, 34.042110, 34.530231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.274487, 34.441868, 34.534737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932693, -0.034676, 0.359002,
		0.359176, -0.001275, -0.933269,
		0.032819, 0.999398, 0.011266,
		44.284332, 34.741688, 34.538116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.694206, 34.440002, 34.078167>,  <44.261360, 34.042110, 34.530231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.694206, 34.440002, 34.078167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.640190, 34.573734, 34.451260>,  <44.607780, 34.653973, 34.675114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.640190, 34.573734, 34.451260>,  <44.694206, 34.440002, 34.078167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.640190, 34.573734, 34.451260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960532, -0.186873, 0.206048,
		0.243190, 0.923744, -0.295899,
		-0.135040, 0.334329, 0.932732,
		44.599678, 34.674034, 34.731079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.078495, 35.120049, 34.301762>,  <44.694206, 34.440002, 34.078167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.078495, 35.120049, 34.301762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.004261, 34.865681, 34.601406>,  <44.959721, 34.713058, 34.781193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.004261, 34.865681, 34.601406>,  <45.078495, 35.120049, 34.301762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.004261, 34.865681, 34.601406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970983, -0.001667, 0.239144,
		-0.150828, 0.771752, 0.617778,
		-0.185589, -0.635921, 0.749106,
		44.948586, 34.674904, 34.826138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.664204, 35.149063, 34.862144>,  <45.078495, 35.120049, 34.301762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.664204, 35.149063, 34.862144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.479023, 34.796177, 34.896477>,  <45.367912, 34.584446, 34.917076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.479023, 34.796177, 34.896477>,  <45.664204, 35.149063, 34.862144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.479023, 34.796177, 34.896477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867300, -0.430875, 0.249274,
		-0.182930, 0.189846, 0.964622,
		-0.462955, -0.882216, 0.085833,
		45.340137, 34.531513, 34.922226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.113369, 35.331173, 34.364651>,  <45.664204, 35.149063, 34.862144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.113369, 35.331173, 34.364651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.395504, 35.055698, 34.431820>,  <46.564785, 34.890411, 34.472122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.395504, 35.055698, 34.431820>,  <46.113369, 35.331173, 34.364651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.395504, 35.055698, 34.431820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542803, 0.677088, 0.496908,
		-0.455915, -0.259340, 0.851401,
		0.705341, -0.688691, 0.167924,
		46.607105, 34.849091, 34.482197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.489433, 35.621017, 34.920307>,  <46.113369, 35.331173, 34.364651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.489433, 35.621017, 34.920307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.745506, 35.399269, 34.707581>,  <46.899151, 35.266220, 34.579945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.745506, 35.399269, 34.707581>,  <46.489433, 35.621017, 34.920307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.745506, 35.399269, 34.707581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748929, 0.604543, 0.271354,
		0.171077, -0.572012, 0.802206,
		0.640186, -0.554373, -0.531820,
		46.937561, 35.232956, 34.548035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.990849, 35.417698, 35.340927>,  <46.489433, 35.621017, 34.920307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.990849, 35.417698, 35.340927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.140697, 35.416439, 34.970058>,  <47.230606, 35.415684, 34.747536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.140697, 35.416439, 34.970058>,  <46.990849, 35.417698, 35.340927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.140697, 35.416439, 34.970058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854771, 0.388577, 0.344055,
		0.359195, -0.921411, 0.148259,
		0.374626, -0.003145, -0.927171,
		47.253086, 35.415497, 34.691906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.564205, 34.823139, 35.158607>,  <46.990849, 35.417698, 35.340927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.564205, 34.823139, 35.158607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.597832, 35.192959, 35.009937>,  <47.618008, 35.414852, 34.920734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.597832, 35.192959, 35.009937>,  <47.564205, 34.823139, 35.158607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.597832, 35.192959, 35.009937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819413, 0.148105, 0.553740,
		0.567006, -0.351106, -0.745136,
		0.084063, 0.924548, -0.371678,
		47.623051, 35.470322, 34.898434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<30.868521, 30.592869, 25.382742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.813171, 30.962900, 25.241276>,  <30.779961, 31.184919, 25.156397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.813171, 30.962900, 25.241276>,  <30.868521, 30.592869, 25.382742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.813171, 30.962900, 25.241276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976598, 0.186818, 0.106558,
		0.164646, -0.330643, -0.929283,
		-0.138374, 0.925081, -0.353664,
		30.771660, 31.240425, 25.135176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.445570, 30.683426, 24.985428>,  <30.868521, 30.592869, 25.382742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.445570, 30.683426, 24.985428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.301704, 31.054512, 25.025398>,  <31.215385, 31.277164, 25.049379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.301704, 31.054512, 25.025398>,  <31.445570, 30.683426, 24.985428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.301704, 31.054512, 25.025398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921154, 0.335955, 0.196494,
		0.148720, 0.162718, -0.975400,
		-0.359664, 0.927716, 0.099925,
		31.193806, 31.332827, 25.055376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.990238, 31.075619, 24.673239>,  <31.445570, 30.683426, 24.985428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.990238, 31.075619, 24.673239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.780703, 31.343634, 24.883627>,  <31.654982, 31.504442, 25.009861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.780703, 31.343634, 24.883627>,  <31.990238, 31.075619, 24.673239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.780703, 31.343634, 24.883627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851522, 0.395623, 0.344082,
		0.022460, 0.628120, -0.777792,
		-0.523837, 0.670035, 0.525972,
		31.623550, 31.544643, 25.041418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.292904, 31.680447, 24.605249>,  <31.990238, 31.075619, 24.673239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.292904, 31.680447, 24.605249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.080349, 31.793556, 24.924665>,  <31.952816, 31.861422, 25.116314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.080349, 31.793556, 24.924665>,  <32.292904, 31.680447, 24.605249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080349, 31.793556, 24.924665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794787, 0.492626, 0.354448,
		-0.293152, 0.823018, -0.486522,
		-0.531390, 0.282774, 0.798538,
		31.920931, 31.878389, 25.164227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561680, 32.341766, 24.716841>,  <32.292904, 31.680447, 24.605249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561680, 32.341766, 24.716841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.363201, 32.252998, 25.052588>,  <32.244114, 32.199738, 25.254036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.363201, 32.252998, 25.052588>,  <32.561680, 32.341766, 24.716841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.363201, 32.252998, 25.052588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770329, 0.333407, 0.543537,
		-0.400473, 0.916292, 0.005515,
		-0.496199, -0.221920, 0.839367,
		32.214340, 32.186420, 25.304398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727589, 32.793941, 25.392269>,  <32.561680, 32.341766, 24.716841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727589, 32.793941, 25.392269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.573257, 32.485542, 25.594929>,  <32.480659, 32.300503, 25.716524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.573257, 32.485542, 25.594929>,  <32.727589, 32.793941, 25.392269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573257, 32.485542, 25.594929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881836, -0.146818, 0.448119,
		-0.271114, 0.619679, 0.736543,
		-0.385828, -0.771001, 0.506650,
		32.457508, 32.254242, 25.746923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716503, 32.937172, 26.109100>,  <32.727589, 32.793941, 25.392269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716503, 32.937172, 26.109100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.734417, 32.548813, 26.014988>,  <32.745167, 32.315800, 25.958521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.734417, 32.548813, 26.014988>,  <32.716503, 32.937172, 26.109100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.734417, 32.548813, 26.014988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888309, -0.069046, 0.454026,
		-0.457057, -0.229335, 0.859363,
		0.044789, -0.970895, -0.235279,
		32.747852, 32.257545, 25.944405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.066879, 32.607197, 26.803326>,  <32.716503, 32.937172, 26.109100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.066879, 32.607197, 26.803326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.130596, 32.373001, 26.485374>,  <33.168827, 32.232483, 26.294603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.130596, 32.373001, 26.485374>,  <33.066879, 32.607197, 26.803326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.130596, 32.373001, 26.485374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939510, -0.157401, 0.304214,
		-0.303227, -0.795255, 0.524997,
		0.159293, -0.585486, -0.794878,
		33.178383, 32.197357, 26.246910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423943, 32.145885, 27.110783>,  <33.066879, 32.607197, 26.803326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423943, 32.145885, 27.110783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.495876, 32.042274, 26.731190>,  <33.539036, 31.980106, 26.503435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.495876, 32.042274, 26.731190>,  <33.423943, 32.145885, 27.110783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495876, 32.042274, 26.731190> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927910, -0.275591, 0.251064,
		-0.326564, -0.925718, 0.190797,
		0.179832, -0.259031, -0.948980,
		33.549828, 31.964565, 26.446495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.847271, 31.576576, 27.068624>,  <33.423943, 32.145885, 27.110783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.847271, 31.576576, 27.068624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.916882, 31.732254, 26.706799>,  <33.958649, 31.825661, 26.489702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.916882, 31.732254, 26.706799>,  <33.847271, 31.576576, 27.068624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916882, 31.732254, 26.706799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964116, -0.254357, 0.076048,
		-0.200485, -0.885341, -0.419496,
		0.174030, 0.389197, -0.904566,
		33.969090, 31.849012, 26.435429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195690, 31.021332, 26.600811>,  <33.847271, 31.576576, 27.068624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195690, 31.021332, 26.600811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.288719, 31.385170, 26.463087>,  <34.344536, 31.603472, 26.380453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.288719, 31.385170, 26.463087>,  <34.195690, 31.021332, 26.600811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288719, 31.385170, 26.463087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959818, -0.271818, -0.069745,
		-0.157029, -0.314253, -0.936262,
		0.232575, 0.909593, -0.344309,
		34.358490, 31.658049, 26.359795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532444, 30.904335, 26.086973>,  <34.195690, 31.021332, 26.600811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532444, 30.904335, 26.086973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.662437, 31.277624, 26.148270>,  <34.740433, 31.501596, 26.185047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.662437, 31.277624, 26.148270>,  <34.532444, 30.904335, 26.086973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662437, 31.277624, 26.148270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941799, -0.304620, -0.142201,
		-0.086024, 0.190537, -0.977904,
		0.324983, 0.933221, 0.153243,
		34.759933, 31.557590, 26.194242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007545, 31.092115, 25.573030>,  <34.532444, 30.904335, 26.086973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007545, 31.092115, 25.573030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.094017, 31.345703, 25.870043>,  <35.145901, 31.497856, 26.048250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.094017, 31.345703, 25.870043>,  <35.007545, 31.092115, 25.573030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094017, 31.345703, 25.870043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968502, -0.235500, -0.080898,
		0.123579, 0.736630, -0.664910,
		0.216178, 0.633969, 0.742530,
		35.158871, 31.535894, 26.092802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643532, 31.464159, 25.273813>,  <35.007545, 31.092115, 25.573030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643532, 31.464159, 25.273813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.646370, 31.551861, 25.664070>,  <35.648071, 31.604483, 25.898224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.646370, 31.551861, 25.664070>,  <35.643532, 31.464159, 25.273813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646370, 31.551861, 25.664070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996011, -0.088340, 0.012611,
		0.088953, 0.971660, -0.219008,
		0.007093, 0.219256, 0.975641,
		35.648499, 31.617638, 25.956762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310459, 31.901415, 25.403585>,  <35.643532, 31.464159, 25.273813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310459, 31.901415, 25.403585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.191036, 31.754786, 25.756060>,  <36.119385, 31.666809, 25.967545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.191036, 31.754786, 25.756060>,  <36.310459, 31.901415, 25.403585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191036, 31.754786, 25.756060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953023, -0.065051, 0.295831,
		-0.051121, 0.928113, 0.368773,
		-0.298554, -0.366572, 0.881187,
		36.101471, 31.644814, 26.020416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789364, 32.248268, 25.958004>,  <36.310459, 31.901415, 25.403585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789364, 32.248268, 25.958004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.639389, 31.938496, 26.161840>,  <36.549404, 31.752632, 26.284142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.639389, 31.938496, 26.161840>,  <36.789364, 32.248268, 25.958004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639389, 31.938496, 26.161840> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916939, -0.228824, 0.326898,
		-0.136554, 0.589829, 0.795899,
		-0.374935, -0.774430, 0.509590,
		36.526909, 31.706167, 26.314718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219604, 32.149647, 26.618378>,  <36.789364, 32.248268, 25.958004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219604, 32.149647, 26.618378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.033394, 31.797125, 26.585886>,  <36.921669, 31.585613, 26.566391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.033394, 31.797125, 26.585886>,  <37.219604, 32.149647, 26.618378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033394, 31.797125, 26.585886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853544, -0.471328, 0.222065,
		-0.233992, 0.034043, 0.971642,
		-0.465522, -0.881301, -0.081230,
		36.893738, 31.532734, 26.561518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449200, 31.785604, 27.280199>,  <37.219604, 32.149647, 26.618378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449200, 31.785604, 27.280199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.330883, 31.534172, 26.992479>,  <37.259895, 31.383312, 26.819847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.330883, 31.534172, 26.992479>,  <37.449200, 31.785604, 27.280199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.330883, 31.534172, 26.992479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853658, -0.511860, 0.096264,
		-0.428690, -0.585563, 0.687997,
		-0.295789, -0.628582, -0.719300,
		37.242146, 31.345598, 26.776690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405815, 31.000086, 27.513519>,  <37.449200, 31.785604, 27.280199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405815, 31.000086, 27.513519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.451424, 31.019394, 27.116598>,  <37.478790, 31.030979, 26.878445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.451424, 31.019394, 27.116598>,  <37.405815, 31.000086, 27.513519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451424, 31.019394, 27.116598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790350, -0.609595, 0.061167,
		-0.601951, -0.791242, -0.107659,
		0.114026, 0.048269, -0.992304,
		37.485630, 31.033875, 26.818907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848736, 30.456741, 27.442028>,  <37.405815, 31.000086, 27.513519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848736, 30.456741, 27.442028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.882236, 30.606728, 27.072729>,  <37.902336, 30.696718, 26.851149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.882236, 30.606728, 27.072729>,  <37.848736, 30.456741, 27.442028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882236, 30.606728, 27.072729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815454, -0.558296, -0.152773,
		-0.572730, -0.740073, -0.352523,
		0.083749, 0.374965, -0.923248,
		37.907360, 30.719217, 26.795755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035694, 29.928135, 26.962572>,  <37.848736, 30.456741, 27.442028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035694, 29.928135, 26.962572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.159184, 30.268797, 26.793163>,  <38.233276, 30.473194, 26.691519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.159184, 30.268797, 26.793163>,  <38.035694, 29.928135, 26.962572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159184, 30.268797, 26.793163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911801, -0.391745, -0.123104,
		-0.270754, -0.348161, -0.897483,
		0.308725, 0.851657, -0.423520,
		38.251801, 30.524294, 26.666107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.661430, 29.930529, 27.427654>,  <38.035694, 29.928135, 26.962572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.661430, 29.930529, 27.427654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.862762, 29.648535, 27.227791>,  <38.983562, 29.479338, 27.107874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.862762, 29.648535, 27.227791>,  <38.661430, 29.930529, 27.427654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.862762, 29.648535, 27.227791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797668, -0.156741, -0.582373,
		0.332248, 0.691685, -0.641236,
		0.503327, -0.704986, -0.499657,
		39.013760, 29.437038, 27.077894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688892, 30.061890, 26.711037>,  <38.661430, 29.930529, 27.427654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688892, 30.061890, 26.711037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.743019, 29.665575, 26.708984>,  <38.775497, 29.427786, 26.707752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.743019, 29.665575, 26.708984>,  <38.688892, 30.061890, 26.711037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.743019, 29.665575, 26.708984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723334, -0.095248, -0.683898,
		0.677109, 0.096256, -0.729560,
		0.135319, -0.990789, -0.005132,
		38.783615, 29.368338, 26.707445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749130, 29.765947, 25.924139>,  <38.688892, 30.061890, 26.711037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749130, 29.765947, 25.924139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.615105, 29.474899, 26.163572>,  <38.534691, 29.300270, 26.307232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.615105, 29.474899, 26.163572>,  <38.749130, 29.765947, 25.924139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615105, 29.474899, 26.163572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624907, -0.303848, -0.719144,
		0.705143, -0.615016, -0.352887,
		-0.335061, -0.727621, 0.598584,
		38.514587, 29.256613, 26.343147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606297, 29.292973, 25.424805>,  <38.749130, 29.765947, 25.924139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606297, 29.292973, 25.424805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.447533, 29.116468, 25.746737>,  <38.352276, 29.010567, 25.939896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.447533, 29.116468, 25.746737>,  <38.606297, 29.292973, 25.424805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.447533, 29.116468, 25.746737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725640, -0.386097, -0.569540,
		0.562058, -0.810073, -0.166951,
		-0.396909, -0.441261, 0.804831,
		38.328461, 28.984091, 25.988186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248638, 28.723019, 25.116964>,  <38.606297, 29.292973, 25.424805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248638, 28.723019, 25.116964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.071262, 28.758486, 25.473728>,  <37.964836, 28.779766, 25.687786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.071262, 28.758486, 25.473728>,  <38.248638, 28.723019, 25.116964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.071262, 28.758486, 25.473728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853242, -0.346500, -0.389765,
		0.274488, -0.933850, 0.229303,
		-0.443436, 0.088666, 0.891910,
		37.938232, 28.785086, 25.741301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891663, 28.054783, 25.293640>,  <38.248638, 28.723019, 25.116964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891663, 28.054783, 25.293640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.697575, 28.324867, 25.515867>,  <37.581123, 28.486917, 25.649204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.697575, 28.324867, 25.515867>,  <37.891663, 28.054783, 25.293640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697575, 28.324867, 25.515867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867507, -0.451322, -0.209143,
		0.109525, -0.583440, 0.804737,
		-0.485218, 0.675208, 0.555569,
		37.552010, 28.527430, 25.682537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413441, 27.656122, 25.574215>,  <37.891663, 28.054783, 25.293640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413441, 27.656122, 25.574215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.288574, 28.033785, 25.616405>,  <37.213654, 28.260382, 25.641720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.288574, 28.033785, 25.616405>,  <37.413441, 27.656122, 25.574215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288574, 28.033785, 25.616405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931860, -0.282690, -0.227427,
		-0.184910, -0.169282, 0.968066,
		-0.312162, 0.944156, 0.105475,
		37.194927, 28.317032, 25.648048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881001, 27.643454, 26.089041>,  <37.413441, 27.656122, 25.574215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881001, 27.643454, 26.089041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.807159, 27.987299, 25.898470>,  <36.762856, 28.193607, 25.784128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.807159, 27.987299, 25.898470>,  <36.881001, 27.643454, 26.089041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807159, 27.987299, 25.898470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980151, -0.196684, 0.024916,
		-0.072287, 0.471570, 0.878861,
		-0.184607, 0.859615, -0.476427,
		36.751778, 28.245184, 25.755543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187809, 27.792591, 26.306696>,  <36.881001, 27.643454, 26.089041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187809, 27.792591, 26.306696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.245396, 28.017435, 25.980923>,  <36.279949, 28.152342, 25.785458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.245396, 28.017435, 25.980923>,  <36.187809, 27.792591, 26.306696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245396, 28.017435, 25.980923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974005, -0.064959, -0.217011,
		-0.174889, 0.824507, 0.538147,
		0.143970, 0.562111, -0.814435,
		36.288586, 28.186068, 25.736591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773441, 28.476915, 26.363476>,  <36.187809, 27.792591, 26.306696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.773441, 28.476915, 26.363476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.826580, 28.405787, 25.973454>,  <35.858463, 28.363110, 25.739441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.826580, 28.405787, 25.973454>,  <35.773441, 28.476915, 26.363476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826580, 28.405787, 25.973454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969602, 0.180637, -0.165049,
		0.205481, 0.967341, -0.148421,
		0.132848, -0.177824, -0.975054,
		35.866436, 28.352440, 25.680937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435463, 29.077585, 25.988699>,  <35.773441, 28.476915, 26.363476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435463, 29.077585, 25.988699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.460529, 28.776793, 25.726221>,  <35.475571, 28.596317, 25.568733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.460529, 28.776793, 25.726221>,  <35.435463, 29.077585, 25.988699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460529, 28.776793, 25.726221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955095, 0.145596, -0.258060,
		0.289596, 0.642902, -0.709091,
		0.062667, -0.751983, -0.656197,
		35.479328, 28.551197, 25.529362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926350, 29.286102, 25.514830>,  <35.435463, 29.077585, 25.988699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.926350, 29.286102, 25.514830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.994289, 28.898293, 25.444206>,  <35.035053, 28.665607, 25.401833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.994289, 28.898293, 25.444206>,  <34.926350, 29.286102, 25.514830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994289, 28.898293, 25.444206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961516, -0.123780, -0.245286,
		0.215957, 0.211424, -0.953238,
		0.169851, -0.969525, -0.176556,
		35.045246, 28.607435, 25.391239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684895, 29.232210, 24.810448>,  <34.926350, 29.286102, 25.514830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684895, 29.232210, 24.810448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.691105, 28.869991, 24.980034>,  <34.694832, 28.652660, 25.081785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.691105, 28.869991, 24.980034>,  <34.684895, 29.232210, 24.810448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691105, 28.869991, 24.980034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885529, -0.209360, -0.414736,
		0.464324, -0.368993, -0.805138,
		0.015529, -0.905545, 0.423965,
		34.695763, 28.598328, 25.107224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.666393, 28.682798, 24.324249>,  <34.684895, 29.232210, 24.810448>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.666393, 28.682798, 24.324249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.492577, 28.570150, 24.666445>,  <34.388287, 28.502562, 24.871763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.492577, 28.570150, 24.666445>,  <34.666393, 28.682798, 24.324249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492577, 28.570150, 24.666445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875078, -0.092732, -0.475016,
		0.213105, -0.955035, -0.206143,
		-0.434540, -0.281620, 0.855491,
		34.362213, 28.485664, 24.923092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122570, 28.341156, 24.053308>,  <34.666393, 28.682798, 24.324249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122570, 28.341156, 24.053308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.032848, 28.393908, 24.439529>,  <33.979015, 28.425558, 24.671263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.032848, 28.393908, 24.439529>,  <34.122570, 28.341156, 24.053308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032848, 28.393908, 24.439529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972857, 0.027531, -0.229765,
		-0.056883, -0.990883, 0.122124,
		-0.224309, 0.131879, 0.965553,
		33.965557, 28.433472, 24.729195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.641445, 27.891047, 24.086990>,  <34.122570, 28.341156, 24.053308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.641445, 27.891047, 24.086990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.601364, 28.119984, 24.412537>,  <33.577316, 28.257347, 24.607864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.601364, 28.119984, 24.412537>,  <33.641445, 27.891047, 24.086990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601364, 28.119984, 24.412537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954572, 0.175411, -0.240880,
		-0.280628, -0.801032, 0.528769,
		-0.100201, 0.572345, 0.813868,
		33.571304, 28.291687, 24.656696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222931, 27.573893, 24.570965>,  <33.641445, 27.891047, 24.086990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222931, 27.573893, 24.570965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.196384, 27.957813, 24.680056>,  <33.180458, 28.188166, 24.745510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.196384, 27.957813, 24.680056>,  <33.222931, 27.573893, 24.570965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196384, 27.957813, 24.680056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966742, -0.129509, 0.220539,
		0.246994, -0.249022, 0.936473,
		-0.066362, 0.959800, 0.272728,
		33.176476, 28.245752, 24.761873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704124, 27.527363, 25.116081>,  <33.222931, 27.573893, 24.570965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704124, 27.527363, 25.116081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.712738, 27.903177, 24.979370>,  <32.717907, 28.128666, 24.897343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.712738, 27.903177, 24.979370>,  <32.704124, 27.527363, 25.116081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712738, 27.903177, 24.979370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999728, 0.017158, -0.015814,
		-0.008993, 0.342025, 0.939648,
		0.021531, 0.939534, -0.341777,
		32.719196, 28.185038, 24.876837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117550, 27.955475, 25.372074>,  <32.704124, 27.527363, 25.116081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117550, 27.955475, 25.372074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.209213, 28.229815, 25.095785>,  <32.264210, 28.394419, 24.930012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.209213, 28.229815, 25.095785>,  <32.117550, 27.955475, 25.372074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.209213, 28.229815, 25.095785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969500, 0.224192, -0.099035,
		0.086931, 0.692349, 0.716307,
		0.229157, 0.685850, -0.690722,
		32.277962, 28.435570, 24.888569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<31.868116, 28.696344, 25.620762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.898695, 28.733311, 25.223650>,  <31.917042, 28.755491, 24.985382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.898695, 28.733311, 25.223650>,  <31.868116, 28.696344, 25.620762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.898695, 28.733311, 25.223650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934214, 0.354581, -0.038931,
		0.348424, 0.930447, 0.113444,
		0.076448, 0.092416, -0.992781,
		31.921629, 28.761036, 24.925816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.391644, 29.249424, 25.393723>,  <31.868116, 28.696344, 25.620762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.391644, 29.249424, 25.393723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.452929, 29.087227, 25.033255>,  <31.489698, 28.989908, 24.816975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.452929, 29.087227, 25.033255>,  <31.391644, 29.249424, 25.393723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.452929, 29.087227, 25.033255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980743, 0.049376, -0.188958,
		0.121117, 0.912765, -0.390117,
		0.153211, -0.405491, -0.901168,
		31.498892, 28.965580, 24.762905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.088707, 29.686775, 24.881559>,  <31.391644, 29.249424, 25.393723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.088707, 29.686775, 24.881559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.115637, 29.324884, 24.713303>,  <31.131794, 29.107750, 24.612349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.115637, 29.324884, 24.713303>,  <31.088707, 29.686775, 24.881559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.115637, 29.324884, 24.713303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911566, 0.115615, -0.394565,
		0.405605, 0.410005, -0.816933,
		0.067324, -0.904726, -0.420641,
		31.135834, 29.053467, 24.587111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.942411, 29.835878, 24.257887>,  <31.088707, 29.686775, 24.881559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.942411, 29.835878, 24.257887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.877357, 29.442038, 24.283520>,  <30.838326, 29.205732, 24.298899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.877357, 29.442038, 24.283520>,  <30.942411, 29.835878, 24.257887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.877357, 29.442038, 24.283520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851754, 0.107312, -0.512835,
		0.498062, -0.137985, -0.856092,
		-0.162633, -0.984604, 0.064081,
		30.828568, 29.146656, 24.302744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.551411, 29.660841, 23.591183>,  <30.942411, 29.835878, 24.257887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.551411, 29.660841, 23.591183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.491549, 29.357794, 23.845306>,  <30.455631, 29.175966, 23.997780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.491549, 29.357794, 23.845306>,  <30.551411, 29.660841, 23.591183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.491549, 29.357794, 23.845306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809638, -0.274915, -0.518563,
		0.567529, -0.591976, -0.572254,
		-0.149656, -0.757619, 0.635309,
		30.446651, 29.130508, 24.035898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.305069, 29.122410, 23.137001>,  <30.551411, 29.660841, 23.591183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.305069, 29.122410, 23.137001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.192259, 29.005650, 23.502571>,  <30.124573, 28.935593, 23.721912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.192259, 29.005650, 23.502571>,  <30.305069, 29.122410, 23.137001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.192259, 29.005650, 23.502571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868089, -0.327973, -0.372632,
		0.408514, -0.898458, -0.160900,
		-0.282024, -0.291901, 0.913924,
		30.107653, 28.918079, 23.776749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.987383, 28.360289, 23.107590>,  <30.305069, 29.122410, 23.137001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.987383, 28.360289, 23.107590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.860678, 28.534615, 23.444571>,  <29.784655, 28.639210, 23.646759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.860678, 28.534615, 23.444571>,  <29.987383, 28.360289, 23.107590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.860678, 28.534615, 23.444571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921167, -0.353056, -0.163717,
		0.226083, -0.827899, 0.513294,
		-0.316763, 0.435816, 0.842453,
		29.765650, 28.665359, 23.697306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.657164, 27.882359, 23.359947>,  <29.987383, 28.360289, 23.107590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.657164, 27.882359, 23.359947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.514540, 28.208881, 23.541721>,  <29.428965, 28.404795, 23.650785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.514540, 28.208881, 23.541721>,  <29.657164, 27.882359, 23.359947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.514540, 28.208881, 23.541721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920692, -0.389641, -0.022485,
		0.158711, -0.426411, 0.890497,
		-0.356562, 0.816305, 0.454434,
		29.407572, 28.453773, 23.678051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.132393, 27.606703, 23.793137>,  <29.657164, 27.882359, 23.359947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.132393, 27.606703, 23.793137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.052694, 27.996681, 23.753578>,  <29.004875, 28.230669, 23.729843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.052694, 27.996681, 23.753578>,  <29.132393, 27.606703, 23.793137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.052694, 27.996681, 23.753578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932399, -0.219666, -0.287017,
		-0.301550, 0.035024, 0.952807,
		-0.199246, 0.974946, -0.098897,
		28.992920, 28.289165, 23.723909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.444384, 27.746252, 24.081953>,  <29.132393, 27.606703, 23.793137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.444384, 27.746252, 24.081953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.517164, 28.029196, 23.808741>,  <28.560833, 28.198963, 23.644814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.517164, 28.029196, 23.808741>,  <28.444384, 27.746252, 24.081953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.517164, 28.029196, 23.808741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901636, -0.157150, -0.402933,
		-0.392358, 0.689162, 0.609188,
		0.181952, 0.707360, -0.683033,
		28.571751, 28.241404, 23.603830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.818096, 27.919596, 23.959803>,  <28.444384, 27.746252, 24.081953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.818096, 27.919596, 23.959803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.011515, 28.094471, 23.656475>,  <28.127565, 28.199396, 23.474478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.011515, 28.094471, 23.656475>,  <27.818096, 27.919596, 23.959803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.011515, 28.094471, 23.656475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851298, 0.033326, -0.523623,
		-0.203651, 0.898752, 0.388293,
		0.483547, 0.437189, -0.758319,
		28.156578, 28.225628, 23.428980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.477797, 28.544617, 23.828268>,  <27.818096, 27.919596, 23.959803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.477797, 28.544617, 23.828268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.664070, 28.435423, 23.491550>,  <27.775835, 28.369907, 23.289520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.664070, 28.435423, 23.491550>,  <27.477797, 28.544617, 23.828268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.664070, 28.435423, 23.491550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854733, 0.107710, -0.507770,
		0.229282, 0.955971, -0.183169,
		0.465684, -0.272983, -0.841795,
		27.803776, 28.353529, 23.239012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.114067, 28.881636, 23.404047>,  <27.477797, 28.544617, 23.828268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.114067, 28.881636, 23.404047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.327993, 28.647730, 23.160072>,  <27.456348, 28.507385, 23.013687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.327993, 28.647730, 23.160072>,  <27.114067, 28.881636, 23.404047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.327993, 28.647730, 23.160072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682630, 0.126406, -0.719748,
		0.497984, 0.801292, -0.331575,
		0.534815, -0.584767, -0.609935,
		27.488438, 28.472300, 22.977093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.287329, 29.274015, 22.832777>,  <27.114067, 28.881636, 23.404047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.287329, 29.274015, 22.832777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.313431, 28.896721, 22.702517>,  <27.329092, 28.670343, 22.624361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.313431, 28.896721, 22.702517>,  <27.287329, 29.274015, 22.832777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.313431, 28.896721, 22.702517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564285, 0.234276, -0.791642,
		0.822997, 0.235417, -0.516966,
		0.065253, -0.943236, -0.325651,
		27.333006, 28.613750, 22.604822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.345770, 29.273169, 22.137211>,  <27.287329, 29.274015, 22.832777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.345770, 29.273169, 22.137211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.235268, 28.890503, 22.174028>,  <27.168966, 28.660904, 22.196119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.235268, 28.890503, 22.174028>,  <27.345770, 29.273169, 22.137211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.235268, 28.890503, 22.174028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489366, 0.057593, -0.870175,
		0.827166, -0.285435, -0.484070,
		-0.276257, -0.956666, 0.092043,
		27.152390, 28.603502, 22.201641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.491440, 28.955833, 21.458797>,  <27.345770, 29.273169, 22.137211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.491440, 28.955833, 21.458797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.219080, 28.713104, 21.622816>,  <27.055664, 28.567467, 21.721228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.219080, 28.713104, 21.622816>,  <27.491440, 28.955833, 21.458797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.219080, 28.713104, 21.622816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414860, -0.141818, -0.898765,
		0.603546, -0.782081, -0.155184,
		-0.680899, -0.606825, 0.410048,
		27.014811, 28.531057, 21.745831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.414110, 28.475451, 20.963713>,  <27.491440, 28.955833, 21.458797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.414110, 28.475451, 20.963713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.110613, 28.416494, 21.217510>,  <26.928514, 28.381121, 21.369789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.110613, 28.416494, 21.217510>,  <27.414110, 28.475451, 20.963713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.110613, 28.416494, 21.217510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610902, -0.177037, -0.771658,
		0.226063, -0.973105, 0.044285,
		-0.758745, -0.147390, 0.634494,
		26.882990, 28.372278, 21.407858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.068150, 27.779528, 20.836538>,  <27.414110, 28.475451, 20.963713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.068150, 27.779528, 20.836538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.815123, 28.034601, 21.012363>,  <26.663305, 28.187645, 21.117859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.815123, 28.034601, 21.012363>,  <27.068150, 27.779528, 20.836538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.815123, 28.034601, 21.012363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625001, -0.085101, -0.775972,
		-0.457418, -0.765582, 0.452386,
		-0.632568, 0.637685, 0.439562,
		26.625353, 28.225906, 21.144232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.440945, 27.490454, 20.643629>,  <27.068150, 27.779528, 20.836538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.440945, 27.490454, 20.643629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.358145, 27.868528, 20.744642>,  <26.308466, 28.095373, 20.805250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.358145, 27.868528, 20.744642>,  <26.440945, 27.490454, 20.643629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.358145, 27.868528, 20.744642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780956, -0.004160, -0.624572,
		-0.589287, -0.326503, 0.739011,
		-0.206999, 0.945187, 0.252533,
		26.296045, 28.152084, 20.820402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.788414, 27.535305, 20.519806>,  <26.440945, 27.490454, 20.643629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.788414, 27.535305, 20.519806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.845087, 27.928604, 20.565676>,  <25.879091, 28.164583, 20.593197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.845087, 27.928604, 20.565676>,  <25.788414, 27.535305, 20.519806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.845087, 27.928604, 20.565676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602612, 0.177574, -0.778028,
		-0.785357, 0.041128, 0.617676,
		0.141681, 0.983248, 0.114675,
		25.887592, 28.223579, 20.600079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.148611, 27.835041, 20.597433>,  <25.788414, 27.535305, 20.519806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.148611, 27.835041, 20.597433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.384771, 28.110016, 20.428267>,  <25.526466, 28.275002, 20.326767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.384771, 28.110016, 20.428267>,  <25.148611, 27.835041, 20.597433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.384771, 28.110016, 20.428267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632012, 0.067870, -0.771981,
		-0.501987, 0.723064, 0.474540,
		0.590399, 0.687439, -0.422915,
		25.561892, 28.316248, 20.301392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.730684, 28.512079, 20.491991>,  <25.148611, 27.835041, 20.597433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.730684, 28.512079, 20.491991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.054094, 28.506798, 20.256664>,  <25.248140, 28.503630, 20.115469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.054094, 28.506798, 20.256664>,  <24.730684, 28.512079, 20.491991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.054094, 28.506798, 20.256664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559118, 0.294534, -0.775007,
		0.183511, 0.955549, 0.230756,
		0.808524, -0.013203, -0.588315,
		25.296652, 28.502836, 20.080170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.808769, 29.211868, 20.061247>,  <24.730684, 28.512079, 20.491991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.808769, 29.211868, 20.061247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.964638, 28.884871, 19.891607>,  <25.058159, 28.688671, 19.789824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.964638, 28.884871, 19.891607>,  <24.808769, 29.211868, 20.061247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.964638, 28.884871, 19.891607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479255, 0.213231, -0.851380,
		0.786428, 0.535011, -0.308698,
		0.389673, -0.817494, -0.424097,
		25.081539, 28.639622, 19.764378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.263058, 29.415037, 20.421669>,  <24.808769, 29.211868, 20.061247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.263058, 29.415037, 20.421669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.118723, 29.707685, 20.653023>,  <24.032122, 29.883274, 20.791836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.118723, 29.707685, 20.653023>,  <24.263058, 29.415037, 20.421669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.118723, 29.707685, 20.653023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101297, -0.647243, 0.755523,
		0.927111, 0.214034, 0.307661,
		-0.360839, 0.731619, 0.578385,
		24.010471, 29.927172, 20.826538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.307758, 30.095631, 20.332905>,  <24.263058, 29.415037, 20.421669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.307758, 30.095631, 20.332905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.296627, 30.489384, 20.263374>,  <24.289948, 30.725636, 20.221657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.296627, 30.489384, 20.263374>,  <24.307758, 30.095631, 20.332905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.296627, 30.489384, 20.263374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967999, 0.069925, 0.241017,
		0.249408, -0.161554, -0.954828,
		-0.027829, 0.984383, -0.173824,
		24.288279, 30.784698, 20.211227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.890869, 30.349150, 19.840130>,  <24.307758, 30.095631, 20.332905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.890869, 30.349150, 19.840130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.800335, 30.661331, 20.073252>,  <24.746014, 30.848640, 20.213125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.800335, 30.661331, 20.073252>,  <24.890869, 30.349150, 19.840130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.800335, 30.661331, 20.073252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953060, 0.053901, 0.297945,
		0.201119, 0.622885, -0.756019,
		-0.226336, 0.780454, 0.582806,
		24.732433, 30.895468, 20.248095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.517509, 30.740967, 19.936602>,  <24.890869, 30.349150, 19.840130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.517509, 30.740967, 19.936602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.278725, 30.883448, 20.224146>,  <25.135454, 30.968935, 20.396673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.278725, 30.883448, 20.224146>,  <25.517509, 30.740967, 19.936602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.278725, 30.883448, 20.224146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799184, 0.185492, 0.571750,
		0.070314, 0.915813, -0.395401,
		-0.596960, 0.356200, 0.718861,
		25.099636, 30.990307, 20.439804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.790138, 31.334871, 20.157078>,  <25.517509, 30.740967, 19.936602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.790138, 31.334871, 20.157078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.547804, 31.229805, 20.457470>,  <25.402403, 31.166765, 20.637705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.547804, 31.229805, 20.457470>,  <25.790138, 31.334871, 20.157078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.547804, 31.229805, 20.457470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741213, 0.156628, 0.652742,
		-0.289077, 0.952090, 0.099800,
		-0.605837, -0.262666, 0.750978,
		25.366053, 31.151005, 20.682764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.060724, 31.891663, 20.717365>,  <25.790138, 31.334871, 20.157078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.060724, 31.891663, 20.717365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.851881, 31.602701, 20.898708>,  <25.726574, 31.429323, 21.007513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.851881, 31.602701, 20.898708>,  <26.060724, 31.891663, 20.717365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.851881, 31.602701, 20.898708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695304, -0.052697, 0.716781,
		-0.493916, 0.689460, 0.529804,
		-0.522110, -0.722405, 0.453356,
		25.695248, 31.385981, 21.034716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.950039, 32.173470, 21.378925>,  <26.060724, 31.891663, 20.717365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.950039, 32.173470, 21.378925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.901201, 31.778076, 21.414682>,  <25.871899, 31.540840, 21.436136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.901201, 31.778076, 21.414682>,  <25.950039, 32.173470, 21.378925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.901201, 31.778076, 21.414682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747033, -0.032221, 0.664006,
		-0.653479, 0.147852, 0.742364,
		-0.122095, -0.988484, 0.089395,
		25.864573, 31.481531, 21.441502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.021109, 32.047951, 22.075754>,  <25.950039, 32.173470, 21.378925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.021109, 32.047951, 22.075754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.098915, 31.696457, 21.901403>,  <26.145599, 31.485561, 21.796793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.098915, 31.696457, 21.901403>,  <26.021109, 32.047951, 22.075754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.098915, 31.696457, 21.901403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691387, -0.192387, 0.696399,
		-0.695807, -0.436820, 0.570124,
		0.194517, -0.878735, -0.435876,
		26.157270, 31.432837, 21.770641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.017159, 31.650681, 22.588917>,  <26.021109, 32.047951, 22.075754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.017159, 31.650681, 22.588917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.201647, 31.436678, 22.305779>,  <26.312340, 31.308277, 22.135897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.201647, 31.436678, 22.305779>,  <26.017159, 31.650681, 22.588917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.201647, 31.436678, 22.305779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706262, -0.261537, 0.657869,
		-0.537091, -0.803347, 0.257227,
		0.461223, -0.535006, -0.707844,
		26.340014, 31.276176, 22.093426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.188601, 31.037546, 22.898495>,  <26.017159, 31.650681, 22.588917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.188601, 31.037546, 22.898495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.424376, 31.061321, 22.576244>,  <26.565842, 31.075586, 22.382895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.424376, 31.061321, 22.576244>,  <26.188601, 31.037546, 22.898495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.424376, 31.061321, 22.576244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794434, -0.223409, 0.564769,
		-0.146414, -0.972911, -0.178906,
		0.589438, 0.059439, -0.805623,
		26.601208, 31.079153, 22.334557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.614233, 30.406685, 22.841440>,  <26.188601, 31.037546, 22.898495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.614233, 30.406685, 22.841440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.804735, 30.689737, 22.632658>,  <26.919037, 30.859570, 22.507389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.804735, 30.689737, 22.632658>,  <26.614233, 30.406685, 22.841440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.804735, 30.689737, 22.632658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833826, -0.175011, 0.523550,
		0.279133, -0.684563, -0.673393,
		0.476254, 0.707633, -0.521955,
		26.947611, 30.902027, 22.476072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.252485, 30.102116, 22.586325>,  <26.614233, 30.406685, 22.841440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.252485, 30.102116, 22.586325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.300066, 30.498869, 22.568357>,  <27.328613, 30.736921, 22.557577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.300066, 30.498869, 22.568357>,  <27.252485, 30.102116, 22.586325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.300066, 30.498869, 22.568357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929763, -0.095398, 0.355583,
		0.348412, -0.084059, -0.933565,
		0.118950, 0.991884, -0.044917,
		27.335751, 30.796434, 22.554882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.923594, 30.247480, 22.333513>,  <27.252485, 30.102116, 22.586325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.923594, 30.247480, 22.333513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.832115, 30.599644, 22.499683>,  <27.777229, 30.810942, 22.599386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.832115, 30.599644, 22.499683>,  <27.923594, 30.247480, 22.333513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.832115, 30.599644, 22.499683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867893, -0.008914, 0.496671,
		0.440977, 0.474131, -0.762062,
		-0.228694, 0.880409, 0.415427,
		27.763508, 30.863766, 22.624311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.602917, 30.590225, 22.371258>,  <27.923594, 30.247480, 22.333513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.602917, 30.590225, 22.371258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.373816, 30.814627, 22.610331>,  <28.236355, 30.949268, 22.753775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.373816, 30.814627, 22.610331>,  <28.602917, 30.590225, 22.371258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.373816, 30.814627, 22.610331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785478, 0.167049, 0.595918,
		0.234471, 0.810782, -0.536336,
		-0.572754, 0.561006, 0.597683,
		28.201990, 30.982929, 22.789635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.059847, 31.088181, 22.612417>,  <28.602917, 30.590225, 22.371258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.059847, 31.088181, 22.612417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.781139, 31.073950, 22.898981>,  <28.613914, 31.065411, 23.070919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.781139, 31.073950, 22.898981>,  <29.059847, 31.088181, 22.612417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.781139, 31.073950, 22.898981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715307, 0.039822, 0.697675,
		-0.053351, 0.998573, -0.002297,
		-0.696771, -0.035578, 0.716411,
		28.572107, 31.063276, 23.113905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.186975, 31.640583, 23.086365>,  <29.059847, 31.088181, 22.612417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.186975, 31.640583, 23.086365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.972616, 31.374502, 23.294334>,  <28.844000, 31.214853, 23.419117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.972616, 31.374502, 23.294334>,  <29.186975, 31.640583, 23.086365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.972616, 31.374502, 23.294334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676675, 0.029867, 0.735676,
		-0.504900, 0.746068, 0.434118,
		-0.535898, -0.665200, 0.519925,
		28.811846, 31.174942, 23.450312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.142464, 31.966066, 23.813988>,  <29.186975, 31.640583, 23.086365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.142464, 31.966066, 23.813988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.049532, 31.578976, 23.853024>,  <28.993773, 31.346722, 23.876446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.049532, 31.578976, 23.853024>,  <29.142464, 31.966066, 23.813988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.049532, 31.578976, 23.853024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564732, -0.052526, 0.823601,
		-0.791896, 0.246460, 0.558711,
		-0.232332, -0.967728, 0.097589,
		28.979832, 31.288656, 23.882299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.991610, 31.950727, 24.457073>,  <29.142464, 31.966066, 23.813988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.991610, 31.950727, 24.457073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.076414, 31.569864, 24.369030>,  <29.127296, 31.341347, 24.316204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.076414, 31.569864, 24.369030>,  <28.991610, 31.950727, 24.457073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.076414, 31.569864, 24.369030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744780, 0.011598, 0.667210,
		-0.632736, -0.305388, 0.711606,
		0.212011, -0.952157, -0.220109,
		29.140017, 31.284218, 24.302998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.045280, 31.575233, 25.191496>,  <28.991610, 31.950727, 24.457073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.045280, 31.575233, 25.191496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.245342, 31.386250, 24.901218>,  <29.365379, 31.272860, 24.727053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.245342, 31.386250, 24.901218>,  <29.045280, 31.575233, 25.191496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.245342, 31.386250, 24.901218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803646, -0.058846, 0.592191,
		-0.322491, -0.879385, 0.350259,
		0.500153, -0.472461, -0.725691,
		29.395388, 31.244511, 24.683512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.534460, 31.226374, 25.539062>,  <29.045280, 31.575233, 25.191496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.534460, 31.226374, 25.539062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.715469, 31.227129, 25.182362>,  <29.824076, 31.227581, 24.968342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.715469, 31.227129, 25.182362>,  <29.534460, 31.226374, 25.539062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.715469, 31.227129, 25.182362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885852, -0.115802, 0.449284,
		-0.102418, -0.993270, -0.054075,
		0.452523, 0.001888, -0.891750,
		29.851227, 31.227695, 24.914837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.166054, 30.813892, 25.573391>,  <29.534460, 31.226374, 25.539062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.166054, 30.813892, 25.573391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.235807, 31.038668, 25.249956>,  <30.277660, 31.173532, 25.055895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.235807, 31.038668, 25.249956>,  <30.166054, 30.813892, 25.573391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.235807, 31.038668, 25.249956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921233, 0.196886, 0.335507,
		0.347735, -0.803404, -0.483345,
		0.174384, 0.561941, -0.808587,
		30.288122, 31.207251, 25.007380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<34.773613, 27.436728, 25.594332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.739368, 27.788351, 25.406746>,  <34.718822, 27.999325, 25.294195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.739368, 27.788351, 25.406746>,  <34.773613, 27.436728, 25.594332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739368, 27.788351, 25.406746> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958411, 0.201280, 0.202323,
		0.272247, -0.432137, -0.859732,
		-0.085616, 0.879058, -0.468963,
		34.713684, 28.052069, 25.266056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.214146, 27.358040, 25.061653>,  <34.773613, 27.436728, 25.594332>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.214146, 27.358040, 25.061653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.175045, 27.744049, 25.158955>,  <35.151585, 27.975655, 25.217337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.175045, 27.744049, 25.158955>,  <35.214146, 27.358040, 25.061653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175045, 27.744049, 25.158955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974804, 0.043600, 0.218759,
		0.200502, 0.258510, -0.944972,
		-0.097753, 0.965024, 0.243255,
		35.145718, 28.033556, 25.231932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633682, 27.717985, 24.567616>,  <35.214146, 27.358040, 25.061653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.633682, 27.717985, 24.567616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.579910, 27.973930, 24.870272>,  <35.547646, 28.127497, 25.051867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.579910, 27.973930, 24.870272>,  <35.633682, 27.717985, 24.567616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579910, 27.973930, 24.870272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957487, 0.280556, -0.067138,
		-0.255239, 0.715448, -0.650374,
		-0.134433, 0.639861, 0.756641,
		35.539581, 28.165888, 25.097263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049797, 28.293497, 24.409584>,  <35.633682, 27.717985, 24.567616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049797, 28.293497, 24.409584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.001511, 28.290716, 24.806650>,  <35.972538, 28.289047, 25.044889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.001511, 28.290716, 24.806650>,  <36.049797, 28.293497, 24.409584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.001511, 28.290716, 24.806650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925059, 0.361987, 0.115028,
		-0.360131, 0.932157, -0.037268,
		-0.120715, -0.006950, 0.992663,
		35.965298, 28.288631, 25.104448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529499, 28.825661, 24.607157>,  <36.049797, 28.293497, 24.409584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529499, 28.825661, 24.607157> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.438622, 28.648600, 24.954130>,  <36.384094, 28.542362, 25.162313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.438622, 28.648600, 24.954130>,  <36.529499, 28.825661, 24.607157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438622, 28.648600, 24.954130> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870614, 0.306797, 0.384585,
		-0.436364, 0.842576, 0.315678,
		-0.227193, -0.442653, 0.867434,
		36.370464, 28.515804, 25.214361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612171, 29.388506, 25.125137>,  <36.529499, 28.825661, 24.607157>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612171, 29.388506, 25.125137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.658897, 29.028425, 25.292940>,  <36.686935, 28.812376, 25.393621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.658897, 29.028425, 25.292940>,  <36.612171, 29.388506, 25.125137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658897, 29.028425, 25.292940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839077, 0.315437, 0.443227,
		-0.531323, 0.300222, 0.792189,
		0.116819, -0.900203, 0.419509,
		36.693943, 28.758364, 25.418793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624805, 29.491640, 25.779451>,  <36.612171, 29.388506, 25.125137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624805, 29.491640, 25.779451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.810436, 29.138716, 25.748051>,  <36.921814, 28.926962, 25.729210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.810436, 29.138716, 25.748051>,  <36.624805, 29.491640, 25.779451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810436, 29.138716, 25.748051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730426, 0.331033, 0.597407,
		-0.501112, -0.334581, 0.798086,
		0.464074, -0.882311, -0.078503,
		36.949657, 28.874022, 25.724501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880909, 29.306637, 26.446501>,  <36.624805, 29.491640, 25.779451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880909, 29.306637, 26.446501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.105545, 29.077225, 26.207947>,  <37.240326, 28.939577, 26.064814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.105545, 29.077225, 26.207947>,  <36.880909, 29.306637, 26.446501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105545, 29.077225, 26.207947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772107, 0.104153, 0.626899,
		-0.297431, -0.812536, 0.501320,
		0.561592, -0.573531, -0.596386,
		37.274021, 28.905165, 26.029032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217827, 28.845186, 26.820906>,  <36.880909, 29.306637, 26.446501>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217827, 28.845186, 26.820906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.448429, 28.817137, 26.495274>,  <37.586792, 28.800308, 26.299894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.448429, 28.817137, 26.495274>,  <37.217827, 28.845186, 26.820906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448429, 28.817137, 26.495274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816190, 0.002596, 0.577777,
		-0.038403, -0.997535, 0.058731,
		0.576505, -0.070124, -0.814079,
		37.621380, 28.796101, 26.251049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817493, 28.485655, 27.068020>,  <37.217827, 28.845186, 26.820906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817493, 28.485655, 27.068020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.968845, 28.611214, 26.719700>,  <38.059658, 28.686548, 26.510708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.968845, 28.611214, 26.719700>,  <37.817493, 28.485655, 27.068020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968845, 28.611214, 26.719700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895283, 0.114885, 0.430431,
		0.235153, -0.942481, -0.237557,
		0.378381, 0.313897, -0.870802,
		38.082359, 28.705383, 26.458460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377945, 28.080103, 26.901928>,  <37.817493, 28.485655, 27.068020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377945, 28.080103, 26.901928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.426590, 28.441971, 26.738573>,  <38.455776, 28.659092, 26.640560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.426590, 28.441971, 26.738573>,  <38.377945, 28.080103, 26.901928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426590, 28.441971, 26.738573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857765, 0.111247, 0.501860,
		0.499450, -0.411332, -0.762466,
		0.121610, 0.904671, -0.408388,
		38.463074, 28.713371, 26.616056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002792, 28.089283, 26.639618>,  <38.377945, 28.080103, 26.901928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002792, 28.089283, 26.639618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.945683, 28.483358, 26.677610>,  <38.911419, 28.719803, 26.700407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.945683, 28.483358, 26.677610>,  <39.002792, 28.089283, 26.639618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945683, 28.483358, 26.677610> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968691, 0.119396, 0.217674,
		0.203109, 0.123086, -0.971389,
		-0.142772, 0.985187, 0.094982,
		38.902851, 28.778915, 26.706104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678986, 28.369797, 26.392445>,  <39.002792, 28.089283, 26.639618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.678986, 28.369797, 26.392445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.510025, 28.658243, 26.612104>,  <39.408649, 28.831312, 26.743900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.510025, 28.658243, 26.612104>,  <39.678986, 28.369797, 26.392445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510025, 28.658243, 26.612104> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905105, 0.303091, 0.298195,
		0.048592, 0.622997, -0.780714,
		-0.422401, 0.721118, 0.549150,
		39.383305, 28.874578, 26.776850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945869, 29.027479, 26.286568>,  <39.678986, 28.369797, 26.392445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.945869, 29.027479, 26.286568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.789890, 29.078287, 26.651381>,  <39.696301, 29.108772, 26.870268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.789890, 29.078287, 26.651381>,  <39.945869, 29.027479, 26.286568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789890, 29.078287, 26.651381> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805034, 0.527873, 0.270686,
		-0.447055, 0.839772, -0.308100,
		-0.389952, 0.127019, 0.912033,
		39.672905, 29.116392, 26.924990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.741245, 29.370930, 26.379599>,  <39.945869, 29.027479, 26.286568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.741245, 29.370930, 26.379599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.907211, 29.220968, 26.047985>,  <41.006790, 29.130991, 25.849018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.907211, 29.220968, 26.047985>,  <40.741245, 29.370930, 26.379599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.907211, 29.220968, 26.047985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639343, 0.528164, -0.558822,
		0.647370, 0.761899, -0.020550,
		0.414913, -0.374903, -0.829033,
		41.031685, 29.108498, 25.799274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.904648, 29.930845, 25.894447>,  <40.741245, 29.370930, 26.379599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.904648, 29.930845, 25.894447> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.899075, 29.599377, 25.670622>,  <40.895729, 29.400496, 25.536327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.899075, 29.599377, 25.670622>,  <40.904648, 29.930845, 25.894447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.899075, 29.599377, 25.670622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657699, 0.429114, -0.619107,
		0.753152, 0.359396, -0.550996,
		-0.013935, -0.828671, -0.559563,
		40.894894, 29.350775, 25.502752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.837318, 30.148464, 25.122824>,  <40.904648, 29.930845, 25.894447>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.837318, 30.148464, 25.122824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.727795, 29.763790, 25.117298>,  <40.662079, 29.532986, 25.113983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.727795, 29.763790, 25.117298>,  <40.837318, 30.148464, 25.122824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.727795, 29.763790, 25.117298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622752, 0.188216, -0.759444,
		0.732946, -0.199340, -0.650426,
		-0.273809, -0.961685, -0.013813,
		40.645653, 29.475285, 25.113155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.750565, 30.038973, 24.344439>,  <40.837318, 30.148464, 25.122824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.750565, 30.038973, 24.344439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.563957, 29.754965, 24.555429>,  <40.451992, 29.584560, 24.682024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.563957, 29.754965, 24.555429>,  <40.750565, 30.038973, 24.344439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.563957, 29.754965, 24.555429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802574, 0.089124, -0.589857,
		0.371799, -0.698519, -0.611421,
		-0.466519, -0.710020, 0.527477,
		40.424000, 29.541960, 24.713673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.684174, 29.494184, 23.924248>,  <40.750565, 30.038973, 24.344439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.684174, 29.494184, 23.924248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.392765, 29.436039, 24.192015>,  <40.217918, 29.401152, 24.352674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.392765, 29.436039, 24.192015>,  <40.684174, 29.494184, 23.924248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392765, 29.436039, 24.192015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684576, 0.189673, -0.703832,
		-0.024661, -0.971028, -0.237692,
		-0.728524, -0.145361, 0.669420,
		40.174210, 29.392429, 24.392841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337978, 29.040478, 23.629135>,  <40.684174, 29.494184, 23.924248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.337978, 29.040478, 23.629135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.087990, 29.197052, 23.899302>,  <39.937996, 29.290997, 24.061401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.087990, 29.197052, 23.899302>,  <40.337978, 29.040478, 23.629135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.087990, 29.197052, 23.899302> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741238, -0.026138, -0.670733,
		-0.244897, -0.919833, 0.306484,
		-0.624974, 0.391438, 0.675414,
		39.900497, 29.314484, 24.101927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654018, 28.688025, 23.525518>,  <40.337978, 29.040478, 23.629135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654018, 28.688025, 23.525518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.532845, 29.009779, 23.729948>,  <39.460140, 29.202831, 23.852606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.532845, 29.009779, 23.729948>,  <39.654018, 28.688025, 23.525518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532845, 29.009779, 23.729948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747513, 0.132094, -0.650981,
		-0.591148, -0.579238, 0.561272,
		-0.302932, 0.804385, 0.511075,
		39.441963, 29.251095, 23.883270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945309, 28.624636, 23.520632>,  <39.654018, 28.688025, 23.525518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.945309, 28.624636, 23.520632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.995628, 29.011183, 23.610348>,  <39.025818, 29.243111, 23.664177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.995628, 29.011183, 23.610348>,  <38.945309, 28.624636, 23.520632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995628, 29.011183, 23.610348> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788783, 0.234545, -0.568164,
		-0.601662, -0.105442, 0.791760,
		0.125795, 0.966370, 0.224288,
		39.033367, 29.301094, 23.677633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305618, 28.866634, 23.793711>,  <38.945309, 28.624636, 23.520632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305618, 28.866634, 23.793711> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.492058, 29.206427, 23.694805>,  <38.603920, 29.410301, 23.635462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.492058, 29.206427, 23.694805>,  <38.305618, 28.866634, 23.793711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.492058, 29.206427, 23.694805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820797, 0.310868, -0.479221,
		-0.330222, 0.426317, 0.842144,
		0.466095, 0.849479, -0.247264,
		38.631886, 29.461271, 23.620626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731686, 29.373083, 23.864569>,  <38.305618, 28.866634, 23.793711>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731686, 29.373083, 23.864569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.008392, 29.542181, 23.630392>,  <38.174416, 29.643641, 23.489887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.008392, 29.542181, 23.630392>,  <37.731686, 29.373083, 23.864569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008392, 29.542181, 23.630392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706843, 0.230547, -0.668745,
		-0.147738, 0.876433, 0.458301,
		0.691770, 0.422746, -0.585440,
		38.215923, 29.669004, 23.454760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512413, 30.084324, 23.771059>,  <37.731686, 29.373083, 23.864569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512413, 30.084324, 23.771059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.743607, 29.961081, 23.468800>,  <37.882320, 29.887135, 23.287443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.743607, 29.961081, 23.468800>,  <37.512413, 30.084324, 23.771059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743607, 29.961081, 23.468800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717632, 0.248948, -0.650407,
		0.388512, 0.918202, -0.077220,
		0.577981, -0.308106, -0.755651,
		37.917000, 29.868649, 23.242104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189819, 30.343311, 23.217770>,  <37.512413, 30.084324, 23.771059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189819, 30.343311, 23.217770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.459846, 30.122337, 23.022177>,  <37.621861, 29.989754, 22.904821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.459846, 30.122337, 23.022177>,  <37.189819, 30.343311, 23.217770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.459846, 30.122337, 23.022177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578014, 0.015842, -0.815873,
		0.458464, 0.833405, -0.308621,
		0.675063, -0.552435, -0.488983,
		37.662365, 29.956606, 22.875483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275513, 30.533415, 22.580580>,  <37.189819, 30.343311, 23.217770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275513, 30.533415, 22.580580> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.368305, 30.144661, 22.564463>,  <37.423981, 29.911407, 22.554792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.368305, 30.144661, 22.564463>,  <37.275513, 30.533415, 22.580580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368305, 30.144661, 22.564463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654133, -0.125209, -0.745944,
		0.719928, 0.199398, -0.664789,
		0.231977, -0.971887, -0.040292,
		37.437897, 29.853094, 22.552376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287342, 30.344574, 21.907835>,  <37.275513, 30.533415, 22.580580>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287342, 30.344574, 21.907835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.227966, 29.993746, 22.090576>,  <37.192341, 29.783249, 22.200220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.227966, 29.993746, 22.090576>,  <37.287342, 30.344574, 21.907835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227966, 29.993746, 22.090576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698547, -0.234006, -0.676220,
		0.699998, -0.419509, -0.577940,
		-0.148439, -0.877071, 0.456851,
		37.183434, 29.730625, 22.227631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593555, 30.291008, 21.100094>,  <37.287342, 30.344574, 21.907835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593555, 30.291008, 21.100094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.619701, 30.681534, 21.017597>,  <37.635387, 30.915850, 20.968100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.619701, 30.681534, 21.017597>,  <37.593555, 30.291008, 21.100094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619701, 30.681534, 21.017597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744271, 0.089974, 0.661790,
		0.664672, -0.196755, -0.720762,
		0.065360, 0.976316, -0.206242,
		37.639309, 30.974428, 20.955725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166504, 30.503336, 21.525715>,  <37.593555, 30.291008, 21.100094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166504, 30.503336, 21.525715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.039799, 30.870522, 21.430214>,  <37.963776, 31.090834, 21.372913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.039799, 30.870522, 21.430214>,  <38.166504, 30.503336, 21.525715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039799, 30.870522, 21.430214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593105, 0.388129, 0.705395,
		0.740194, 0.081838, -0.667394,
		-0.316763, 0.917964, -0.238752,
		37.944771, 31.145910, 21.358589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748692, 30.835894, 21.485668>,  <38.166504, 30.503336, 21.525715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.748692, 30.835894, 21.485668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.451614, 31.095743, 21.550650>,  <38.273369, 31.251652, 21.589638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.451614, 31.095743, 21.550650>,  <38.748692, 30.835894, 21.485668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451614, 31.095743, 21.550650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535105, 0.429915, 0.727211,
		0.402572, 0.627027, -0.666913,
		-0.742697, 0.649623, 0.162453,
		38.228806, 31.290630, 21.599386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144772, 31.460295, 21.484184>,  <38.748692, 30.835894, 21.485668>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.144772, 31.460295, 21.484184> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.780807, 31.489559, 21.647507>,  <38.562428, 31.507118, 21.745501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.780807, 31.489559, 21.647507>,  <39.144772, 31.460295, 21.484184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780807, 31.489559, 21.647507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389163, 0.491291, 0.779221,
		-0.143587, 0.867917, -0.475502,
		-0.909909, 0.073162, 0.408304,
		38.507835, 31.511507, 21.769999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033157, 32.111332, 21.513071>,  <39.144772, 31.460295, 21.484184>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033157, 32.111332, 21.513071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.784397, 31.990204, 21.801941>,  <38.635139, 31.917528, 21.975264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.784397, 31.990204, 21.801941>,  <39.033157, 32.111332, 21.513071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784397, 31.990204, 21.801941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478556, 0.583006, 0.656573,
		-0.619853, 0.753927, -0.217660,
		-0.621905, -0.302816, 0.722175,
		38.597824, 31.899359, 22.018593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852047, 32.741230, 21.838840>,  <39.033157, 32.111332, 21.513071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852047, 32.741230, 21.838840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.726944, 32.478210, 22.113010>,  <38.651882, 32.320396, 22.277514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.726944, 32.478210, 22.113010>,  <38.852047, 32.741230, 21.838840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726944, 32.478210, 22.113010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461563, 0.525482, 0.714722,
		-0.830146, 0.539901, 0.139154,
		-0.312756, -0.657552, 0.685426,
		38.633118, 32.280945, 22.318638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453262, 33.102341, 22.344223>,  <38.852047, 32.741230, 21.838840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453262, 33.102341, 22.344223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.592945, 32.773193, 22.523525>,  <38.676754, 32.575703, 22.631107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.592945, 32.773193, 22.523525>,  <38.453262, 33.102341, 22.344223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592945, 32.773193, 22.523525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351742, 0.558504, 0.751233,
		-0.868521, -0.104668, 0.484474,
		0.349211, -0.822872, 0.448257,
		38.697708, 32.526333, 22.658003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480194, 33.253849, 23.059483>,  <38.453262, 33.102341, 22.344223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.480194, 33.253849, 23.059483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.684826, 32.914547, 23.114256>,  <38.807606, 32.710964, 23.147120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.684826, 32.914547, 23.114256>,  <38.480194, 33.253849, 23.059483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.684826, 32.914547, 23.114256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313518, 0.332659, 0.889407,
		-0.799997, -0.412069, 0.436124,
		0.511577, -0.848255, 0.136936,
		38.838299, 32.660069, 23.155336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427307, 33.017307, 23.737309>,  <38.480194, 33.253849, 23.059483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.427307, 33.017307, 23.737309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.747066, 32.806129, 23.622602>,  <38.938923, 32.679420, 23.553778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.747066, 32.806129, 23.622602>,  <38.427307, 33.017307, 23.737309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747066, 32.806129, 23.622602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447346, 0.204420, 0.870686,
		-0.401056, -0.824308, 0.399588,
		0.799397, -0.527948, -0.286767,
		38.986885, 32.647743, 23.536572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498405, 32.450603, 24.200285>,  <38.427307, 33.017307, 23.737309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498405, 32.450603, 24.200285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.865978, 32.486557, 24.046667>,  <39.086521, 32.508129, 23.954496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.865978, 32.486557, 24.046667>,  <38.498405, 32.450603, 24.200285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.865978, 32.486557, 24.046667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348333, 0.271802, 0.897099,
		0.185017, -0.958146, 0.218458,
		0.918931, 0.089882, -0.384043,
		39.141659, 32.513523, 23.931454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880371, 32.307064, 24.750320>,  <38.498405, 32.450603, 24.200285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880371, 32.307064, 24.750320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.147907, 32.484951, 24.512033>,  <39.308430, 32.591682, 24.369061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.147907, 32.484951, 24.512033>,  <38.880371, 32.307064, 24.750320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147907, 32.484951, 24.512033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513754, 0.302679, 0.802771,
		0.537319, -0.842977, -0.026032,
		0.668839, 0.444719, -0.595719,
		39.348560, 32.618366, 24.333319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.499058, 32.088692, 25.040834>,  <38.880371, 32.307064, 24.750320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.499058, 32.088692, 25.040834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.583336, 32.409191, 24.816832>,  <39.633904, 32.601490, 24.682430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.583336, 32.409191, 24.816832>,  <39.499058, 32.088692, 25.040834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.583336, 32.409191, 24.816832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491611, 0.408304, 0.769159,
		0.844941, -0.437363, -0.307876,
		0.210695, 0.801250, -0.560006,
		39.646545, 32.649567, 24.648830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.156025, 30.372034, 18.383640> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069889, 30.696068, 18.601774>,  <35.018208, 30.890488, 18.732655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069889, 30.696068, 18.601774>,  <35.156025, 30.372034, 18.383640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069889, 30.696068, 18.601774> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917392, -0.023578, 0.397287,
		0.334693, 0.585841, -0.738086,
		-0.215344, 0.810083, 0.545337,
		35.005287, 30.939093, 18.765375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667969, 30.880518, 18.162920>,  <35.156025, 30.372034, 18.383640>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667969, 30.880518, 18.162920> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503269, 30.978758, 18.513950>,  <35.404449, 31.037703, 18.724569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503269, 30.978758, 18.513950>,  <35.667969, 30.880518, 18.162920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503269, 30.978758, 18.513950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903549, -0.015268, 0.428213,
		0.118568, 0.969251, -0.215626,
		-0.411753, 0.245601, 0.877576,
		35.379742, 31.052439, 18.777224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135841, 31.374805, 18.382542>,  <35.667969, 30.880518, 18.162920>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.135841, 31.374805, 18.382542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908909, 31.278568, 18.697565>,  <35.772751, 31.220827, 18.886580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908909, 31.278568, 18.697565>,  <36.135841, 31.374805, 18.382542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908909, 31.278568, 18.697565> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817562, -0.050014, 0.573665,
		-0.098630, 0.969337, 0.225073,
		-0.567331, -0.240592, 0.787560,
		35.738708, 31.206390, 18.933834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177528, 31.899826, 18.784182>,  <36.135841, 31.374805, 18.382542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177528, 31.899826, 18.784182> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085625, 31.586845, 19.015690>,  <36.030483, 31.399057, 19.154594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085625, 31.586845, 19.015690>,  <36.177528, 31.899826, 18.784182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.085625, 31.586845, 19.015690> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830292, 0.152672, 0.536010,
		-0.507765, 0.603705, 0.614586,
		-0.229762, -0.782452, 0.578773,
		36.016697, 31.352110, 19.189322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293194, 32.259567, 19.388090>,  <36.177528, 31.899826, 18.784182>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293194, 32.259567, 19.388090> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303959, 31.866213, 19.459890>,  <36.310417, 31.630199, 19.502970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303959, 31.866213, 19.459890>,  <36.293194, 32.259567, 19.388090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303959, 31.866213, 19.459890> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632799, 0.155764, 0.758488,
		-0.773849, 0.093178, 0.626479,
		0.026909, -0.983390, 0.179501,
		36.312031, 31.571196, 19.513741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387592, 32.108429, 20.050007>,  <36.293194, 32.259567, 19.388090>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387592, 32.108429, 20.050007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474705, 31.737568, 19.928053>,  <36.526974, 31.515051, 19.854879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474705, 31.737568, 19.928053>,  <36.387592, 32.108429, 20.050007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474705, 31.737568, 19.928053> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651488, -0.094505, 0.752750,
		-0.726728, -0.362565, 0.583449,
		0.217782, -0.927154, -0.304887,
		36.540039, 31.459421, 19.836586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249107, 31.635595, 20.648005>,  <36.387592, 32.108429, 20.050007>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249107, 31.635595, 20.648005> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500919, 31.454027, 20.395765>,  <36.652004, 31.345087, 20.244423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500919, 31.454027, 20.395765>,  <36.249107, 31.635595, 20.648005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500919, 31.454027, 20.395765> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663042, -0.109258, 0.740566,
		-0.405055, -0.884318, 0.232187,
		0.629528, -0.453920, -0.630596,
		36.689777, 31.317852, 20.206587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470440, 31.031450, 20.897436>,  <36.249107, 31.635595, 20.648005>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470440, 31.031450, 20.897436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769539, 31.132648, 20.651876>,  <36.948997, 31.193367, 20.504539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769539, 31.132648, 20.651876>,  <36.470440, 31.031450, 20.897436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769539, 31.132648, 20.651876> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660846, -0.193729, 0.725087,
		0.064513, -0.947873, -0.312050,
		0.747743, 0.252994, -0.613900,
		36.993862, 31.208548, 20.467707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882019, 30.573193, 21.110428>,  <36.470440, 31.031450, 20.897436>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882019, 30.573193, 21.110428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098289, 30.830235, 20.893274>,  <37.228054, 30.984459, 20.762981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098289, 30.830235, 20.893274>,  <36.882019, 30.573193, 21.110428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098289, 30.830235, 20.893274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680868, 0.044724, 0.731039,
		0.494050, -0.764891, -0.413348,
		0.540679, 0.642605, -0.542886,
		37.260494, 31.023016, 20.730408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070641, 29.897921, 21.374660>,  <36.882019, 30.573193, 21.110428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.070641, 29.897921, 21.374660> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975883, 29.722383, 21.721371>,  <36.919029, 29.617062, 21.929398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975883, 29.722383, 21.721371>,  <37.070641, 29.897921, 21.374660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975883, 29.722383, 21.721371> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812394, -0.399819, -0.424454,
		0.532822, -0.804711, -0.261802,
		-0.236889, -0.438845, 0.866775,
		36.904816, 29.590731, 21.981403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703392, 29.283819, 21.197275>,  <37.070641, 29.897921, 21.374660>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703392, 29.283819, 21.197275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576393, 29.325190, 21.574316>,  <36.500195, 29.350012, 21.800541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576393, 29.325190, 21.574316>,  <36.703392, 29.283819, 21.197275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576393, 29.325190, 21.574316> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883831, -0.392426, -0.254646,
		0.343564, -0.913950, 0.216007,
		-0.317501, 0.103426, 0.942601,
		36.481144, 29.356218, 21.857096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631699, 28.604027, 21.419950>,  <36.703392, 29.283819, 21.197275>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631699, 28.604027, 21.419950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402256, 28.851522, 21.634663>,  <36.264591, 29.000019, 21.763491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402256, 28.851522, 21.634663>,  <36.631699, 28.604027, 21.419950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402256, 28.851522, 21.634663> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769971, -0.630877, -0.095596,
		0.279494, -0.468141, 0.838288,
		-0.573609, 0.618739, 0.536781,
		36.230175, 29.037144, 21.795696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288719, 28.218391, 21.908659>,  <36.631699, 28.604027, 21.419950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288719, 28.218391, 21.908659> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059074, 28.544979, 21.884077>,  <35.921288, 28.740932, 21.869328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059074, 28.544979, 21.884077>,  <36.288719, 28.218391, 21.908659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059074, 28.544979, 21.884077> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746324, -0.552700, -0.370841,
		-0.336747, -0.167037, 0.926661,
		-0.574109, 0.816469, -0.061456,
		35.886841, 28.789919, 21.865641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594753, 28.053467, 22.184326>,  <36.288719, 28.218391, 21.908659>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594753, 28.053467, 22.184326> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520000, 28.400694, 22.000355>,  <35.475151, 28.609030, 21.889971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520000, 28.400694, 22.000355>,  <35.594753, 28.053467, 22.184326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520000, 28.400694, 22.000355> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881122, -0.355132, -0.312258,
		-0.434397, 0.346899, 0.831240,
		-0.186878, 0.868068, -0.459929,
		35.463936, 28.661114, 21.862375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848499, 28.241156, 22.397388>,  <35.594753, 28.053467, 22.184326>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848499, 28.241156, 22.397388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913017, 28.451788, 22.063515>,  <34.951729, 28.578167, 21.863190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913017, 28.451788, 22.063515>,  <34.848499, 28.241156, 22.397388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913017, 28.451788, 22.063515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975456, -0.043394, -0.215878,
		-0.149897, 0.849018, 0.506656,
		0.161298, 0.526579, -0.834684,
		34.961407, 28.609762, 21.813110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.343258, 28.781931, 22.417225>,  <34.848499, 28.241156, 22.397388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.343258, 28.781931, 22.417225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491581, 28.784395, 22.045750>,  <34.580574, 28.785873, 21.822865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491581, 28.784395, 22.045750>,  <34.343258, 28.781931, 22.417225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491581, 28.784395, 22.045750> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927956, 0.042693, -0.370236,
		0.037368, 0.999069, 0.021547,
		0.370811, 0.006159, -0.928688,
		34.602825, 28.786243, 21.767143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931423, 29.327642, 22.129339>,  <34.343258, 28.781931, 22.417225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931423, 29.327642, 22.129339> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067787, 29.083853, 21.843033>,  <34.149605, 28.937578, 21.671249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067787, 29.083853, 21.843033>,  <33.931423, 29.327642, 22.129339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067787, 29.083853, 21.843033> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904591, -0.005402, -0.426245,
		0.255919, 0.792788, -0.553166,
		0.340910, -0.609474, -0.715767,
		34.170059, 28.901011, 21.628304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610146, 29.534334, 21.522076>,  <33.931423, 29.327642, 22.129339>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610146, 29.534334, 21.522076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711514, 29.159889, 21.424530>,  <33.772335, 28.935223, 21.366003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711514, 29.159889, 21.424530>,  <33.610146, 29.534334, 21.522076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711514, 29.159889, 21.424530> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964663, -0.225757, -0.135861,
		0.072127, 0.269678, -0.960246,
		0.253421, -0.936113, -0.243865,
		33.787540, 28.879055, 21.351370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145794, 29.401340, 21.096819>,  <33.610146, 29.534334, 21.522076>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145794, 29.401340, 21.096819> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284206, 29.029892, 21.150372>,  <33.367252, 28.807022, 21.182503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284206, 29.029892, 21.150372>,  <33.145794, 29.401340, 21.096819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.284206, 29.029892, 21.150372> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906984, -0.367599, -0.205549,
		0.240091, -0.050301, -0.969446,
		0.346029, -0.928623, 0.133880,
		33.388016, 28.751305, 21.190535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147820, 29.035147, 20.466064>,  <33.145794, 29.401340, 21.096819>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147820, 29.035147, 20.466064> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118126, 28.788906, 20.779886>,  <33.100311, 28.641163, 20.968180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118126, 28.788906, 20.779886>,  <33.147820, 29.035147, 20.466064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118126, 28.788906, 20.779886> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894306, -0.307014, -0.325513,
		0.441255, -0.725796, -0.527745,
		-0.074231, -0.615600, 0.784555,
		33.095856, 28.604227, 21.015253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837410, 28.470804, 20.143568>,  <33.147820, 29.035147, 20.466064>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837410, 28.470804, 20.143568> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796299, 28.392000, 20.533567>,  <32.771633, 28.344717, 20.767567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796299, 28.392000, 20.533567>,  <32.837410, 28.470804, 20.143568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796299, 28.392000, 20.533567> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916282, -0.362723, -0.169880,
		0.387123, -0.910834, -0.143239,
		-0.102776, -0.197012, 0.974999,
		32.765465, 28.332897, 20.826067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.655293, 27.798847, 20.198671>,  <32.837410, 28.470804, 20.143568>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.655293, 27.798847, 20.198671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.528057, 27.982473, 20.530472>,  <32.451714, 28.092649, 20.729553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.528057, 27.982473, 20.530472>,  <32.655293, 27.798847, 20.198671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528057, 27.982473, 20.530472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904124, -0.410155, -0.119717,
		0.285267, -0.788055, 0.545520,
		-0.318091, 0.459066, 0.829503,
		32.432629, 28.120193, 20.779324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.218891, 27.343691, 20.566284>,  <32.655293, 27.798847, 20.198671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.218891, 27.343691, 20.566284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100380, 27.696424, 20.713032>,  <32.029274, 27.908064, 20.801081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100380, 27.696424, 20.713032>,  <32.218891, 27.343691, 20.566284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.100380, 27.696424, 20.713032> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941619, -0.205369, -0.266791,
		-0.159922, -0.424494, 0.891196,
		-0.296275, 0.881832, 0.366869,
		32.011497, 27.960974, 20.823092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<29.541283, 34.220791, 22.882793> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.758499, 33.952583, 22.680603>,  <29.888828, 33.791656, 22.559288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.758499, 33.952583, 22.680603>,  <29.541283, 34.220791, 22.882793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.758499, 33.952583, 22.680603> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754342, 0.125101, 0.644451,
		-0.368883, -0.731266, 0.573738,
		0.543040, -0.670522, -0.505477,
		29.921412, 33.751427, 22.528959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.957241, 33.833183, 23.458836>,  <29.541283, 34.220791, 22.882793>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.957241, 33.833183, 23.458836> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.141224, 33.750324, 23.113459>,  <30.251614, 33.700607, 22.906233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.141224, 33.750324, 23.113459>,  <29.957241, 33.833183, 23.458836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.141224, 33.750324, 23.113459> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882719, 0.001352, 0.469900,
		-0.096171, -0.978309, 0.183476,
		0.459956, -0.207148, -0.863441,
		30.279211, 33.688179, 22.854425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.322159, 33.295120, 23.665251>,  <29.957241, 33.833183, 23.458836>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.322159, 33.295120, 23.665251> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.494608, 33.464661, 23.346634>,  <30.598078, 33.566387, 23.155464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.494608, 33.464661, 23.346634>,  <30.322159, 33.295120, 23.665251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.494608, 33.464661, 23.346634> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901593, -0.237128, 0.361802,
		-0.035532, -0.874139, -0.484375,
		0.431124, 0.423853, -0.796543,
		30.623945, 33.591816, 23.107672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.854366, 32.980610, 23.625673>,  <30.322159, 33.295120, 23.665251>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.854366, 32.980610, 23.625673> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.933887, 33.297092, 23.394339>,  <30.981600, 33.486980, 23.255537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.933887, 33.297092, 23.394339>,  <30.854366, 32.980610, 23.625673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.933887, 33.297092, 23.394339> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967413, -0.064011, 0.244978,
		0.156808, -0.608193, -0.778146,
		0.198804, 0.791204, -0.578337,
		30.993528, 33.534454, 23.220837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.571371, 32.817009, 23.251513>,  <30.854366, 32.980610, 23.625673>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.571371, 32.817009, 23.251513> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.493919, 33.208782, 23.228819>,  <31.447449, 33.443848, 23.215202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.493919, 33.208782, 23.228819>,  <31.571371, 32.817009, 23.251513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.493919, 33.208782, 23.228819> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970716, 0.199646, 0.133612,
		0.142191, -0.029204, -0.989408,
		-0.193629, 0.979433, -0.056736,
		31.435831, 33.502613, 23.211798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.004753, 33.033176, 22.795324>,  <31.571371, 32.817009, 23.251513>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.004753, 33.033176, 22.795324> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.901768, 33.327030, 23.046410>,  <31.839977, 33.503342, 23.197062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.901768, 33.327030, 23.046410>,  <32.004753, 33.033176, 22.795324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.901768, 33.327030, 23.046410> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923341, -0.004475, 0.383955,
		0.284876, 0.678449, -0.677165,
		-0.257464, 0.734634, 0.627715,
		31.824528, 33.547421, 23.234724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.535801, 33.627342, 22.738586>,  <32.004753, 33.033176, 22.795324>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.535801, 33.627342, 22.738586> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.344322, 33.664707, 23.087786>,  <32.229435, 33.687126, 23.297304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.344322, 33.664707, 23.087786>,  <32.535801, 33.627342, 22.738586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344322, 33.664707, 23.087786> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848957, 0.302794, 0.433113,
		-0.223879, 0.948467, -0.224252,
		-0.478696, 0.093415, 0.872997,
		32.200714, 33.692730, 23.349686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902691, 34.087479, 22.999376>,  <32.535801, 33.627342, 22.738586>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902691, 34.087479, 22.999376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.682537, 33.964142, 23.309731>,  <32.550446, 33.890141, 23.495943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.682537, 33.964142, 23.309731>,  <32.902691, 34.087479, 22.999376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682537, 33.964142, 23.309731> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757267, 0.206992, 0.619437,
		-0.351602, 0.928482, 0.119574,
		-0.550385, -0.308345, 0.775887,
		32.517422, 33.871639, 23.542496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884151, 34.666492, 23.532135>,  <32.902691, 34.087479, 22.999376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884151, 34.666492, 23.532135> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.800777, 34.317822, 23.709557>,  <32.750751, 34.108620, 23.816010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.800777, 34.317822, 23.709557>,  <32.884151, 34.666492, 23.532135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.800777, 34.317822, 23.709557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689465, 0.190699, 0.698765,
		-0.693679, 0.451464, 0.561239,
		-0.208440, -0.871673, 0.443552,
		32.738247, 34.056320, 23.842623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708069, 34.889870, 24.248388>,  <32.884151, 34.666492, 23.532135>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.708069, 34.889870, 24.248388> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.820988, 34.506428, 24.233500>,  <32.888741, 34.276363, 24.224566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.820988, 34.506428, 24.233500>,  <32.708069, 34.889870, 24.248388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.820988, 34.506428, 24.233500> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712356, 0.183476, 0.677411,
		-0.642540, -0.217746, 0.734662,
		0.282297, -0.958605, -0.037222,
		32.905678, 34.218845, 24.222332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030716, 34.828278, 24.958759>,  <32.708069, 34.889870, 24.248388>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.030716, 34.828278, 24.958759> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.161247, 34.516254, 24.745213>,  <33.239567, 34.329041, 24.617085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.161247, 34.516254, 24.745213>,  <33.030716, 34.828278, 24.958759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.161247, 34.516254, 24.745213> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747080, -0.133181, 0.651255,
		-0.579120, -0.611365, 0.539308,
		0.326329, -0.780061, -0.533867,
		33.259148, 34.282234, 24.585052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423550, 34.480583, 25.501966>,  <33.030716, 34.828278, 24.958759>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423550, 34.480583, 25.501966> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.538799, 34.309906, 25.159058>,  <33.607948, 34.207500, 24.953312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.538799, 34.309906, 25.159058>,  <33.423550, 34.480583, 25.501966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538799, 34.309906, 25.159058> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864516, -0.269094, 0.424501,
		-0.411819, -0.863435, 0.291351,
		0.288128, -0.426695, -0.857271,
		33.625237, 34.181896, 24.901876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758327, 33.777020, 25.686180>,  <33.423550, 34.480583, 25.501966>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758327, 33.777020, 25.686180> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.877270, 33.876949, 25.317579>,  <33.948635, 33.936905, 25.096418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.877270, 33.876949, 25.317579>,  <33.758327, 33.777020, 25.686180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877270, 33.876949, 25.317579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903607, -0.385333, 0.187116,
		-0.308340, -0.888317, -0.340321,
		0.297355, 0.249821, -0.921504,
		33.966476, 33.951897, 25.041128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018013, 33.180527, 25.288780>,  <33.758327, 33.777020, 25.686180>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018013, 33.180527, 25.288780> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.198620, 33.497509, 25.124754>,  <34.306984, 33.687698, 25.026339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.198620, 33.497509, 25.124754>,  <34.018013, 33.180527, 25.288780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198620, 33.497509, 25.124754> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891165, -0.423309, 0.163198,
		-0.044258, -0.439123, -0.897336,
		0.451515, 0.792452, -0.410066,
		34.334076, 33.735245, 25.001734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268814, 32.422596, 25.263594>,  <34.018013, 33.180527, 25.288780>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268814, 32.422596, 25.263594> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.177971, 32.237999, 25.606627>,  <34.123466, 32.127239, 25.812447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.177971, 32.237999, 25.606627>,  <34.268814, 32.422596, 25.263594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177971, 32.237999, 25.606627> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973277, 0.076826, -0.216401,
		0.033983, -0.883811, -0.466608,
		-0.227105, -0.461493, 0.857582,
		34.109840, 32.099552, 25.863901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750458, 31.892691, 25.182148>,  <34.268814, 32.422596, 25.263594>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750458, 31.892691, 25.182148> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.692829, 31.879869, 25.577766>,  <33.658253, 31.872177, 25.815138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.692829, 31.879869, 25.577766>,  <33.750458, 31.892691, 25.182148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.692829, 31.879869, 25.577766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965984, -0.212348, -0.147593,
		0.214753, -0.976668, -0.000369,
		-0.144071, -0.032052, 0.989048,
		33.649609, 31.870255, 25.874481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.365612, 31.298256, 25.358629>,  <33.750458, 31.892691, 25.182148>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.365612, 31.298256, 25.358629> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.304409, 31.575544, 25.640348>,  <33.267689, 31.741917, 25.809380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.304409, 31.575544, 25.640348>,  <33.365612, 31.298256, 25.358629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304409, 31.575544, 25.640348> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979572, -0.200496, -0.015469,
		0.130486, -0.692277, 0.709737,
		-0.153008, 0.693220, 0.704297,
		33.258507, 31.783510, 25.851637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693813, 31.013300, 25.557585>,  <33.365612, 31.298256, 25.358629>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.693813, 31.013300, 25.557585> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.729336, 31.377447, 25.719246>,  <32.750648, 31.595936, 25.816242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.729336, 31.377447, 25.719246>,  <32.693813, 31.013300, 25.557585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729336, 31.377447, 25.719246> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979378, 0.153735, -0.131092,
		-0.181475, -0.384178, 0.905248,
		0.088806, 0.910370, 0.404154,
		32.755978, 31.650558, 25.840492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.125221, 31.090857, 26.146679>,  <32.693813, 31.013300, 25.557585>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.125221, 31.090857, 26.146679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.215786, 31.461788, 26.027481>,  <32.270126, 31.684347, 25.955963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.215786, 31.461788, 26.027481>,  <32.125221, 31.090857, 26.146679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.215786, 31.461788, 26.027481> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958013, 0.156755, -0.240079,
		-0.175920, 0.339838, 0.923884,
		0.226412, 0.927328, -0.297993,
		32.283710, 31.739986, 25.938084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.607792, 31.604351, 26.366713>,  <32.125221, 31.090857, 26.146679>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.607792, 31.604351, 26.366713> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.783228, 31.809242, 26.071344>,  <31.888489, 31.932177, 25.894123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.783228, 31.809242, 26.071344>,  <31.607792, 31.604351, 26.366713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.783228, 31.809242, 26.071344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878764, 0.072383, -0.471736,
		-0.188187, 0.855795, 0.481872,
		0.438589, 0.512226, -0.738420,
		31.914804, 31.962910, 25.849819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.278608, 32.139774, 26.230579>,  <31.607792, 31.604351, 26.366713>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.278608, 32.139774, 26.230579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.468363, 32.057663, 25.888159>,  <31.582214, 32.008396, 25.682707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.468363, 32.057663, 25.888159>,  <31.278608, 32.139774, 26.230579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.468363, 32.057663, 25.888159> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876867, -0.024172, -0.480124,
		0.077865, 0.978406, -0.191466,
		0.474384, -0.205275, -0.856050,
		31.610678, 31.996080, 25.631344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.828276, 32.407440, 25.758587>,  <31.278608, 32.139774, 26.230579>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.828276, 32.407440, 25.758587> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.073446, 32.174969, 25.544462>,  <31.220549, 32.035488, 25.415987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.073446, 32.174969, 25.544462>,  <30.828276, 32.407440, 25.758587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.073446, 32.174969, 25.544462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778350, -0.327490, -0.535651,
		0.135999, 0.744973, -0.653085,
		0.612924, -0.581177, -0.535311,
		31.257324, 32.000614, 25.383869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.526348, 32.508305, 25.093893>,  <30.828276, 32.407440, 25.758587>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.526348, 32.508305, 25.093893> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.754089, 32.179581, 25.085276>,  <30.890734, 31.982346, 25.080105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.754089, 32.179581, 25.085276>,  <30.526348, 32.508305, 25.093893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.754089, 32.179581, 25.085276> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759444, -0.515754, -0.396538,
		0.314769, 0.242130, -0.917765,
		0.569355, -0.821809, -0.021541,
		30.924896, 31.933039, 25.078814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.613091, 32.279530, 24.421972>,  <30.526348, 32.508305, 25.093893>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.613091, 32.279530, 24.421972> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.663513, 31.951181, 24.644783>,  <30.693768, 31.754171, 24.778469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.663513, 31.951181, 24.644783>,  <30.613091, 32.279530, 24.421972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.663513, 31.951181, 24.644783> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774995, -0.432006, -0.461252,
		0.619268, -0.373548, -0.690630,
		0.126057, -0.820873, 0.557025,
		30.701330, 31.704920, 24.811892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.688463, 31.784332, 23.912493>,  <30.613091, 32.279530, 24.421972>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.688463, 31.784332, 23.912493> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.542961, 31.620661, 24.247217>,  <30.455660, 31.522459, 24.448051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.542961, 31.620661, 24.247217>,  <30.688463, 31.784332, 23.912493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.542961, 31.620661, 24.247217> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867485, -0.178462, -0.464351,
		0.339341, -0.894832, -0.290038,
		-0.363756, -0.409177, 0.836813,
		30.433834, 31.497908, 24.498260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.409002, 31.205252, 23.729445>,  <30.688463, 31.784332, 23.912493>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.409002, 31.205252, 23.729445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.229637, 31.244978, 24.084761>,  <30.122017, 31.268814, 24.297951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.229637, 31.244978, 24.084761>,  <30.409002, 31.205252, 23.729445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.229637, 31.244978, 24.084761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823240, -0.432970, -0.367168,
		0.348138, -0.895920, 0.275912,
		-0.448415, 0.099317, 0.888291,
		30.095112, 31.274773, 24.351248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.977053, 30.540028, 23.811211>,  <30.409002, 31.205252, 23.729445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.977053, 30.540028, 23.811211> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.796774, 30.792711, 24.063501>,  <29.688606, 30.944321, 24.214876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.796774, 30.792711, 24.063501>,  <29.977053, 30.540028, 23.811211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.796774, 30.792711, 24.063501> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888121, -0.246008, -0.388229,
		-0.090084, -0.735135, 0.671909,
		-0.450696, 0.631710, 0.630727,
		29.661566, 30.982224, 24.252720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.464209, 29.994438, 24.008223>,  <29.977053, 30.540028, 23.811211>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.464209, 29.994438, 24.008223> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.373070, 30.377298, 24.079721>,  <29.318386, 30.607014, 24.122620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.373070, 30.377298, 24.079721>,  <29.464209, 29.994438, 24.008223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.373070, 30.377298, 24.079721> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853654, -0.108059, -0.509509,
		-0.468362, -0.268675, 0.841695,
		-0.227845, 0.957151, 0.178745,
		29.304716, 30.664444, 24.133345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.939749, 29.450190, 24.358345>,  <29.464209, 29.994438, 24.008223>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.939749, 29.450190, 24.358345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.089952, 29.144100, 24.149185>,  <29.180075, 28.960447, 24.023689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.089952, 29.144100, 24.149185>,  <28.939749, 29.450190, 24.358345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.089952, 29.144100, 24.149185> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823782, 0.017035, 0.566650,
		-0.424707, -0.643539, 0.636775,
		0.375509, -0.765224, -0.522901,
		29.202604, 28.914534, 23.992315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.273516, 29.071976, 24.827105>,  <28.939749, 29.450190, 24.358345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.273516, 29.071976, 24.827105> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.427099, 28.961800, 24.474581>,  <29.519249, 28.895695, 24.263065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.427099, 28.961800, 24.474581>,  <29.273516, 29.071976, 24.827105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.427099, 28.961800, 24.474581> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921726, 0.057729, 0.383522,
		-0.054760, -0.959584, 0.276045,
		0.383957, -0.275439, -0.881311,
		29.542286, 28.879168, 24.210188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.637690, 28.402010, 24.916834>,  <29.273516, 29.071976, 24.827105>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.637690, 28.402010, 24.916834> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.791246, 28.571297, 24.588562>,  <29.883381, 28.672869, 24.391600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.791246, 28.571297, 24.588562>,  <29.637690, 28.402010, 24.916834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.791246, 28.571297, 24.588562> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918125, -0.080297, 0.388069,
		0.098340, -0.902463, -0.419392,
		0.383894, 0.423217, -0.820678,
		29.906414, 28.698261, 24.342358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.162443, 28.053864, 24.788628>,  <29.637690, 28.402010, 24.916834>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.162443, 28.053864, 24.788628> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.244179, 28.363127, 24.548471>,  <30.293221, 28.548685, 24.404377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.244179, 28.363127, 24.548471>,  <30.162443, 28.053864, 24.788628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.244179, 28.363127, 24.548471> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975544, -0.110098, 0.190242,
		0.080985, -0.624583, -0.776748,
		0.204340, 0.773159, -0.600392,
		30.305481, 28.595074, 24.368353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631374, 27.843519, 24.373674>,  <30.162443, 28.053864, 24.788628>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631374, 27.843519, 24.373674> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.696358, 28.236610, 24.338228>,  <30.735348, 28.472466, 24.316961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.696358, 28.236610, 24.338228>,  <30.631374, 27.843519, 24.373674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.696358, 28.236610, 24.338228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971837, -0.143824, 0.186675,
		0.170706, -0.116445, -0.978417,
		0.162457, 0.982729, -0.088614,
		30.745094, 28.531429, 24.311644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.299999, 27.838846, 24.186352>,  <30.631374, 27.843519, 24.373674>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.299999, 27.838846, 24.186352> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.247272, 28.220230, 24.294825>,  <31.215637, 28.449060, 24.359909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.247272, 28.220230, 24.294825>,  <31.299999, 27.838846, 24.186352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.247272, 28.220230, 24.294825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990586, 0.136893, 0.000198,
		-0.036934, 0.268656, -0.962528,
		-0.131817, 0.953459, 0.271183,
		31.207727, 28.506268, 24.376179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.717028, 28.272795, 23.723475>,  <31.299999, 27.838846, 24.186352>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.717028, 28.272795, 23.723475> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.647013, 28.473806, 24.062138>,  <31.605003, 28.594414, 24.265335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.647013, 28.473806, 24.062138>,  <31.717028, 28.272795, 23.723475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.647013, 28.473806, 24.062138> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968737, 0.241465, 0.056956,
		-0.175816, 0.830156, -0.529084,
		-0.175038, 0.502529, 0.846656,
		31.594501, 28.624565, 24.316133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223385, 28.844973, 23.646614>,  <31.717028, 28.272795, 23.723475>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223385, 28.844973, 23.646614> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.117413, 28.848486, 24.032305>,  <32.053829, 28.850594, 24.263720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.117413, 28.848486, 24.032305>,  <32.223385, 28.844973, 23.646614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.117413, 28.848486, 24.032305> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955442, 0.137379, 0.261262,
		-0.130170, 0.990480, -0.044787,
		-0.264927, 0.008783, 0.964228,
		32.037933, 28.851120, 24.321573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656681, 29.209440, 23.952051>,  <32.223385, 28.844973, 23.646614>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656681, 29.209440, 23.952051> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.525127, 29.013178, 24.274813>,  <32.446198, 28.895420, 24.468470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.525127, 29.013178, 24.274813>,  <32.656681, 29.209440, 23.952051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.525127, 29.013178, 24.274813> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937130, -0.063953, 0.343071,
		-0.116726, 0.869003, 0.480842,
		-0.328881, -0.490657, 0.806903,
		32.426464, 28.865980, 24.516884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.893238, 29.439854, 24.604795>,  <32.656681, 29.209440, 23.952051>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.893238, 29.439854, 24.604795> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.835083, 29.051277, 24.679800>,  <32.800190, 28.818130, 24.724802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.835083, 29.051277, 24.679800>,  <32.893238, 29.439854, 24.604795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835083, 29.051277, 24.679800> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916085, -0.060592, 0.396380,
		-0.373699, 0.229404, 0.898734,
		-0.145387, -0.971444, 0.187510,
		32.791466, 28.759844, 24.736053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191807, 29.438166, 25.209221>,  <32.893238, 29.439854, 24.604795>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191807, 29.438166, 25.209221> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.180454, 29.066095, 25.062815>,  <33.173641, 28.842854, 24.974970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.180454, 29.066095, 25.062815>,  <33.191807, 29.438166, 25.209221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180454, 29.066095, 25.062815> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956695, -0.131403, 0.259745,
		-0.289703, -0.342793, 0.893624,
		-0.028386, -0.930175, -0.366017,
		33.171940, 28.787043, 24.953011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356083, 28.953636, 25.751713>,  <33.191807, 29.438166, 25.209221>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356083, 28.953636, 25.751713> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.441998, 28.772034, 25.405823>,  <33.493546, 28.663073, 25.198290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.441998, 28.772034, 25.405823>,  <33.356083, 28.953636, 25.751713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441998, 28.772034, 25.405823> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895123, -0.262651, 0.360235,
		-0.390669, -0.851407, 0.349978,
		0.214784, -0.454006, -0.864723,
		33.506432, 28.635832, 25.146406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576191, 28.308622, 25.936743>,  <33.356083, 28.953636, 25.751713>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576191, 28.308622, 25.936743> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.706364, 28.375193, 25.564421>,  <33.784466, 28.415134, 25.341028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.706364, 28.375193, 25.564421>,  <33.576191, 28.308622, 25.936743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706364, 28.375193, 25.564421> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942178, -0.140328, 0.304316,
		-0.079973, -0.976018, -0.202468,
		0.325430, 0.166424, -0.930806,
		33.803993, 28.425119, 25.285179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953632, 27.759222, 25.805111>,  <33.576191, 28.308622, 25.936743>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953632, 27.759222, 25.805111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.105694, 28.037622, 25.561451>,  <34.196930, 28.204662, 25.415255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.105694, 28.037622, 25.561451>,  <33.953632, 27.759222, 25.805111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105694, 28.037622, 25.561451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913438, -0.179039, 0.365480,
		0.145313, -0.695360, -0.703817,
		0.380150, 0.696003, -0.609152,
		34.219738, 28.246424, 25.378706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.648998, 27.180727, 20.998463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.603695, 27.573257, 20.936270>,  <31.576513, 27.808775, 20.898954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.603695, 27.573257, 20.936270>,  <31.648998, 27.180727, 20.998463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.603695, 27.573257, 20.936270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966989, -0.144824, -0.209662,
		-0.228264, 0.126601, 0.965333,
		-0.113260, 0.981325, -0.155480,
		31.569717, 27.867655, 20.889626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.023285, 27.321398, 21.284655>,  <31.648998, 27.180727, 20.998463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.023285, 27.321398, 21.284655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.060257, 27.658688, 21.072832>,  <31.082439, 27.861061, 20.945740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.060257, 27.658688, 21.072832>,  <31.023285, 27.321398, 21.284655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.060257, 27.658688, 21.072832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991816, 0.030918, -0.123879,
		-0.088085, 0.536671, 0.839182,
		0.092428, 0.843225, -0.529555,
		31.087986, 27.911655, 20.913965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.419205, 27.887949, 21.488535>,  <31.023285, 27.321398, 21.284655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.419205, 27.887949, 21.488535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.558725, 28.011251, 21.134514>,  <30.642437, 28.085234, 20.922102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.558725, 28.011251, 21.134514>,  <30.419205, 27.887949, 21.488535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.558725, 28.011251, 21.134514> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913235, -0.100384, -0.394873,
		-0.210567, 0.945992, 0.246498,
		0.348802, 0.308258, -0.885050,
		30.663366, 28.103729, 20.868999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.908588, 28.351999, 21.269709>,  <30.419205, 27.887949, 21.488535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.908588, 28.351999, 21.269709> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.103241, 28.233438, 20.940992>,  <30.220032, 28.162302, 20.743763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.103241, 28.233438, 20.940992>,  <29.908588, 28.351999, 21.269709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.103241, 28.233438, 20.940992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866230, -0.041716, -0.497900,
		0.113296, 0.954152, -0.277051,
		0.486630, -0.296400, -0.821790,
		30.249229, 28.144518, 20.694456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.669022, 28.784502, 20.828108>,  <29.908588, 28.351999, 21.269709>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.669022, 28.784502, 20.828108> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.828671, 28.489372, 20.610369>,  <29.924459, 28.312294, 20.479725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.828671, 28.489372, 20.610369>,  <29.669022, 28.784502, 20.828108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.828671, 28.489372, 20.610369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764885, 0.059463, -0.641417,
		0.505622, 0.672367, -0.540619,
		0.399121, -0.737826, -0.544349,
		29.948406, 28.268024, 20.447063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.599525, 28.964874, 20.077581>,  <29.669022, 28.784502, 20.828108>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.599525, 28.964874, 20.077581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.673113, 28.572203, 20.057724>,  <29.717266, 28.336599, 20.045809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.673113, 28.572203, 20.057724>,  <29.599525, 28.964874, 20.077581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.673113, 28.572203, 20.057724> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810824, -0.123013, -0.572217,
		0.555626, 0.145525, -0.818598,
		0.183970, -0.981677, -0.049646,
		29.728304, 28.277699, 20.042830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.532621, 28.834940, 19.391064>,  <29.599525, 28.964874, 20.077581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.532621, 28.834940, 19.391064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.498835, 28.477770, 19.567947>,  <29.478563, 28.263468, 19.674078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.498835, 28.477770, 19.567947>,  <29.532621, 28.834940, 19.391064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.498835, 28.477770, 19.567947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766795, -0.225157, -0.601107,
		0.636310, -0.389858, -0.665672,
		-0.084466, -0.892925, 0.442211,
		29.473495, 28.209892, 19.700611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.287819, 28.459581, 18.896236>,  <29.532621, 28.834940, 19.391064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.287819, 28.459581, 18.896236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.212378, 28.230608, 19.215422>,  <29.167112, 28.093224, 19.406933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.212378, 28.230608, 19.215422>,  <29.287819, 28.459581, 18.896236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.212378, 28.230608, 19.215422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882293, -0.258056, -0.393658,
		0.431263, -0.778284, -0.456384,
		-0.188605, -0.572435, 0.797964,
		29.155796, 28.058878, 19.454811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.040569, 27.610582, 18.823393>,  <29.287819, 28.459581, 18.896236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.040569, 27.610582, 18.823393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.899935, 27.774681, 19.159985>,  <28.815554, 27.873140, 19.361938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.899935, 27.774681, 19.159985>,  <29.040569, 27.610582, 18.823393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.899935, 27.774681, 19.159985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934351, -0.209551, -0.288230,
		0.058087, -0.887573, 0.456990,
		-0.351588, 0.410247, 0.841477,
		28.794458, 27.897755, 19.412428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.467396, 27.069582, 19.051247>,  <29.040569, 27.610582, 18.823393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.467396, 27.069582, 19.051247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.402948, 27.433287, 19.204758>,  <28.364279, 27.651510, 19.296864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.402948, 27.433287, 19.204758>,  <28.467396, 27.069582, 19.051247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.402948, 27.433287, 19.204758> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963864, -0.061382, -0.259227,
		-0.212149, -0.411674, 0.886294,
		-0.161119, 0.909261, 0.383776,
		28.354612, 27.706066, 19.319891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.698914, 27.138229, 19.116398>,  <28.467396, 27.069582, 19.051247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.698914, 27.138229, 19.116398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.764727, 27.522583, 19.205513>,  <27.804214, 27.753195, 19.258982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.764727, 27.522583, 19.205513>,  <27.698914, 27.138229, 19.116398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.764727, 27.522583, 19.205513> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876338, 0.246069, -0.414104,
		-0.452726, -0.127102, 0.882544,
		0.164533, 0.960882, 0.222786,
		27.814087, 27.810848, 19.272348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.009954, 27.379492, 19.285402>,  <27.698914, 27.138229, 19.116398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.009954, 27.379492, 19.285402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.231453, 27.707521, 19.227657>,  <27.364351, 27.904339, 19.193010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.231453, 27.707521, 19.227657>,  <27.009954, 27.379492, 19.285402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.231453, 27.707521, 19.227657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767249, 0.435135, -0.471155,
		-0.323564, 0.371663, 0.870157,
		0.553747, 0.820075, -0.144364,
		27.397577, 27.953545, 19.184349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.604597, 27.877497, 19.524174>,  <27.009954, 27.379492, 19.285402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.604597, 27.877497, 19.524174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.861462, 28.035204, 19.261211>,  <27.015581, 28.129827, 19.103434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.861462, 28.035204, 19.261211>,  <26.604597, 27.877497, 19.524174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.861462, 28.035204, 19.261211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753991, 0.479575, -0.448894,
		0.138290, 0.783940, 0.605240,
		0.642163, 0.394268, -0.657404,
		27.054111, 28.153484, 19.063990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.906479, 28.126976, 19.078959>,  <26.604597, 27.877497, 19.524174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.906479, 28.126976, 19.078959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.704592, 28.391518, 19.300903>,  <25.583460, 28.550243, 19.434071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.704592, 28.391518, 19.300903>,  <25.906479, 28.126976, 19.078959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.704592, 28.391518, 19.300903> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670073, -0.105124, 0.734814,
		0.544301, 0.742671, -0.390097,
		-0.504717, 0.661353, 0.554863,
		25.553177, 28.589924, 19.467361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.269032, 28.687731, 19.332361>,  <25.906479, 28.126976, 19.078959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.269032, 28.687731, 19.332361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.964252, 28.657721, 19.589672>,  <25.781385, 28.639713, 19.744059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.964252, 28.657721, 19.589672>,  <26.269032, 28.687731, 19.332361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.964252, 28.657721, 19.589672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646703, -0.034788, 0.761948,
		-0.034788, 0.996575, 0.075027,
		-0.761948, -0.075027, 0.643277,
		25.735668, 28.635212, 19.782656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.399731, 29.274782, 19.860567>,  <26.269032, 28.687731, 19.332361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.399731, 29.274782, 19.860567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.159664, 28.984802, 19.995771>,  <26.015625, 28.810814, 20.076893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.159664, 28.984802, 19.995771>,  <26.399731, 29.274782, 19.860567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.159664, 28.984802, 19.995771> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436148, 0.057632, 0.898028,
		-0.670506, 0.686386, 0.281597,
		-0.600164, -0.724950, 0.338009,
		25.979614, 28.767317, 20.097174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.328527, 29.451010, 20.489395>,  <26.399731, 29.274782, 19.860567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.328527, 29.451010, 20.489395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.167904, 29.092205, 20.563282>,  <26.071529, 28.876923, 20.607613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.167904, 29.092205, 20.563282>,  <26.328527, 29.451010, 20.489395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.167904, 29.092205, 20.563282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483626, -0.036418, 0.874517,
		-0.777725, 0.440502, 0.448443,
		-0.401558, -0.897012, 0.184715,
		26.047436, 28.823101, 20.618696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.286449, 29.412767, 21.216957>,  <26.328527, 29.451010, 20.489395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.286449, 29.412767, 21.216957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.235199, 29.035894, 21.093102>,  <26.204449, 28.809771, 21.018787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.235199, 29.035894, 21.093102>,  <26.286449, 29.412767, 21.216957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.235199, 29.035894, 21.093102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399326, -0.334796, 0.853493,
		-0.907812, -0.014291, 0.419134,
		-0.128127, -0.942182, -0.309639,
		26.196760, 28.753241, 21.000210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.871611, 29.035934, 21.778051>,  <26.286449, 29.412767, 21.216957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.871611, 29.035934, 21.778051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.084549, 28.759005, 21.583199>,  <26.212313, 28.592848, 21.466288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.084549, 28.759005, 21.583199>,  <25.871611, 29.035934, 21.778051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.084549, 28.759005, 21.583199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440158, -0.265168, 0.857874,
		-0.723098, -0.671100, 0.163570,
		0.532345, -0.692323, -0.487132,
		26.244253, 28.551308, 21.437059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.833052, 28.411207, 22.204700>,  <25.871611, 29.035934, 21.778051>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.833052, 28.411207, 22.204700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.140718, 28.368771, 21.952629>,  <26.325319, 28.343307, 21.801386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.140718, 28.368771, 21.952629>,  <25.833052, 28.411207, 22.204700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.140718, 28.368771, 21.952629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599742, -0.220657, 0.769169,
		-0.220657, -0.969564, -0.106094,
		-0.769169, 0.106094, 0.630178,
		26.371469, 28.336943, 21.763577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.178562, 27.796471, 22.433010>,  <25.833052, 28.411207, 22.204700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.178562, 27.796471, 22.433010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.436501, 28.013536, 22.217718>,  <26.591263, 28.143776, 22.088543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.436501, 28.013536, 22.217718>,  <26.178562, 27.796471, 22.433010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.436501, 28.013536, 22.217718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723691, -0.206986, 0.658353,
		0.245860, -0.814046, -0.526196,
		0.644844, 0.542666, -0.538228,
		26.629953, 28.176336, 22.056250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.825144, 27.361078, 22.483027>,  <26.178562, 27.796471, 22.433010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.825144, 27.361078, 22.483027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.902899, 27.745462, 22.404266>,  <26.949553, 27.976093, 22.357010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.902899, 27.745462, 22.404266>,  <26.825144, 27.361078, 22.483027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.902899, 27.745462, 22.404266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755277, -0.018541, 0.655143,
		0.625916, -0.276067, -0.729395,
		0.194387, 0.960960, -0.196902,
		26.961214, 28.033751, 22.345196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.421701, 27.323412, 22.276308>,  <26.825144, 27.361078, 22.483027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.421701, 27.323412, 22.276308> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.386185, 27.708485, 22.378567>,  <27.364874, 27.939529, 22.439922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.386185, 27.708485, 22.378567>,  <27.421701, 27.323412, 22.276308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.386185, 27.708485, 22.378567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871471, -0.049205, 0.487973,
		0.482343, 0.266118, -0.834582,
		-0.088793, 0.962684, 0.255648,
		27.359547, 27.997290, 22.455261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.013659, 27.721880, 22.047199>,  <27.421701, 27.323412, 22.276308>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.013659, 27.721880, 22.047199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.870403, 27.956057, 22.338127>,  <27.784451, 28.096561, 22.512684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.870403, 27.956057, 22.338127>,  <28.013659, 27.721880, 22.047199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.870403, 27.956057, 22.338127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933668, 0.223581, 0.279777,
		0.001177, 0.779276, -0.626680,
		-0.358137, 0.585441, 0.727322,
		27.762962, 28.131689, 22.556324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.483141, 28.197775, 22.137711>,  <28.013659, 27.721880, 22.047199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.483141, 28.197775, 22.137711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.273582, 28.262367, 22.472244>,  <28.147848, 28.301123, 22.672964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.273582, 28.262367, 22.472244>,  <28.483141, 28.197775, 22.137711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.273582, 28.262367, 22.472244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831627, 0.309305, 0.461223,
		-0.184204, 0.937152, -0.296337,
		-0.523895, 0.161482, 0.836336,
		28.116413, 28.310812, 22.723145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.815359, 28.777050, 22.402441>,  <28.483141, 28.197775, 22.137711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.815359, 28.777050, 22.402441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.600250, 28.635138, 22.708363>,  <28.471184, 28.549990, 22.891916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.600250, 28.635138, 22.708363>,  <28.815359, 28.777050, 22.402441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.600250, 28.635138, 22.708363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667080, 0.375675, 0.643329,
		-0.515561, 0.856153, 0.034641,
		-0.537774, -0.354783, 0.764806,
		28.438917, 28.528702, 22.937805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.798456, 29.283264, 22.857489>,  <28.815359, 28.777050, 22.402441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.798456, 29.283264, 22.857489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.735107, 28.966160, 23.092928>,  <28.697098, 28.775898, 23.234192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.735107, 28.966160, 23.092928>,  <28.798456, 29.283264, 22.857489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.735107, 28.966160, 23.092928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630187, 0.377762, 0.678351,
		-0.760121, 0.478359, 0.439761,
		-0.158370, -0.792760, 0.588600,
		28.687595, 28.728333, 23.269508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.016596, 29.575003, 23.533894>,  <28.798456, 29.283264, 22.857489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.016596, 29.575003, 23.533894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.980419, 29.182756, 23.603424>,  <28.958714, 28.947409, 23.645144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.980419, 29.182756, 23.603424>,  <29.016596, 29.575003, 23.533894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.980419, 29.182756, 23.603424> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743357, 0.049684, 0.667048,
		-0.662753, 0.189547, 0.724452,
		-0.090443, -0.980614, 0.173829,
		28.953287, 28.888573, 23.655573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.705851, 30.027803, 23.966171>,  <29.016596, 29.575003, 23.533894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.705851, 30.027803, 23.966171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.796301, 30.417267, 23.954485>,  <28.850571, 30.650946, 23.947474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.796301, 30.417267, 23.954485>,  <28.705851, 30.027803, 23.966171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.796301, 30.417267, 23.954485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782614, 0.163734, -0.600588,
		-0.579984, 0.158675, 0.799025,
		0.226126, 0.973660, -0.029218,
		28.864140, 30.709364, 23.945719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.029316, 30.423544, 24.132833>,  <28.705851, 30.027803, 23.966171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.029316, 30.423544, 24.132833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.277317, 30.661434, 23.928129>,  <28.426117, 30.804169, 23.805305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.277317, 30.661434, 23.928129>,  <28.029316, 30.423544, 24.132833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.277317, 30.661434, 23.928129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707383, 0.141536, -0.692515,
		-0.339424, 0.791372, 0.508451,
		0.620001, 0.594726, -0.511762,
		28.463318, 30.839851, 23.774601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.617262, 30.928041, 23.946602>,  <28.029316, 30.423544, 24.132833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.617262, 30.928041, 23.946602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.918428, 30.990662, 23.690910>,  <28.099129, 31.028234, 23.537497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.918428, 30.990662, 23.690910>,  <27.617262, 30.928041, 23.946602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.918428, 30.990662, 23.690910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650870, 0.320892, -0.688039,
		0.097410, 0.934088, 0.343498,
		0.752914, 0.156551, -0.639228,
		28.144302, 31.037626, 23.499142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.414064, 31.518703, 23.676548>,  <27.617262, 30.928041, 23.946602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.414064, 31.518703, 23.676548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.656734, 31.364574, 23.398420>,  <27.802338, 31.272097, 23.231544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.656734, 31.364574, 23.398420>,  <27.414064, 31.518703, 23.676548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.656734, 31.364574, 23.398420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708290, 0.135116, -0.692870,
		0.360928, 0.912836, -0.190948,
		0.606677, -0.385323, -0.695320,
		27.838737, 31.248978, 23.189825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.384161, 31.915564, 23.111200>,  <27.414064, 31.518703, 23.676548>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.384161, 31.915564, 23.111200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.535061, 31.594154, 22.927011>,  <27.625601, 31.401308, 22.816498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.535061, 31.594154, 22.927011>,  <27.384161, 31.915564, 23.111200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.535061, 31.594154, 22.927011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666680, 0.109494, -0.737257,
		0.642822, 0.585116, -0.494387,
		0.377249, -0.803523, -0.460471,
		27.648235, 31.353098, 22.788870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.534727, 32.044678, 22.387531>,  <27.384161, 31.915564, 23.111200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.534727, 32.044678, 22.387531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.464220, 31.655989, 22.450386>,  <27.421917, 31.422775, 22.488100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.464220, 31.655989, 22.450386>,  <27.534727, 32.044678, 22.387531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.464220, 31.655989, 22.450386> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766128, 0.035199, -0.641723,
		0.618043, -0.233502, -0.750666,
		-0.176266, -0.971719, 0.157138,
		27.411341, 31.364473, 22.497528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.558464, 31.862658, 21.722336>,  <27.534727, 32.044678, 22.387531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.558464, 31.862658, 21.722336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.379932, 31.582169, 21.944715>,  <27.272814, 31.413876, 22.078144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.379932, 31.582169, 21.944715>,  <27.558464, 31.862658, 21.722336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.379932, 31.582169, 21.944715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684074, -0.133165, -0.717154,
		0.576916, -0.700397, -0.420251,
		-0.446329, -0.701221, 0.555949,
		27.246033, 31.371803, 22.111500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.873783, 31.804480, 20.981834>,  <27.558464, 31.862658, 21.722336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.873783, 31.804480, 20.981834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.863937, 32.204227, 20.971607>,  <27.858030, 32.444077, 20.965471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.863937, 32.204227, 20.971607>,  <27.873783, 31.804480, 20.981834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.863937, 32.204227, 20.971607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823755, 0.034767, 0.565879,
		0.566412, -0.007134, -0.824092,
		-0.024614, 0.999370, -0.025569,
		27.856554, 32.504040, 20.963936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.562733, 31.970034, 21.132719>,  <27.873783, 31.804480, 20.981834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.562733, 31.970034, 21.132719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.385094, 32.326683, 21.168011>,  <28.278509, 32.540672, 21.189186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.385094, 32.326683, 21.168011>,  <28.562733, 31.970034, 21.132719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.385094, 32.326683, 21.168011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740977, 0.310126, 0.595631,
		0.503716, 0.329895, -0.798398,
		-0.444099, 0.891623, 0.088229,
		28.251863, 32.594170, 21.194479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.014441, 32.401005, 20.938408>,  <28.562733, 31.970034, 21.132719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.014441, 32.401005, 20.938408> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.776678, 32.651592, 21.140087>,  <28.634020, 32.801945, 21.261095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.776678, 32.651592, 21.140087>,  <29.014441, 32.401005, 20.938408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.776678, 32.651592, 21.140087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798930, 0.388634, 0.458992,
		0.091597, 0.675647, -0.731513,
		-0.594407, 0.626471, 0.504197,
		28.598356, 32.839535, 21.291346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.180992, 33.019573, 20.756897>,  <29.014441, 32.401005, 20.938408>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.180992, 33.019573, 20.756897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.991463, 33.075867, 21.104618>,  <28.877745, 33.109642, 21.313250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.991463, 33.075867, 21.104618>,  <29.180992, 33.019573, 20.756897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.991463, 33.075867, 21.104618> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816932, 0.438832, 0.374232,
		-0.328809, 0.887479, -0.322901,
		-0.473822, 0.140737, 0.869302,
		28.849316, 33.118088, 21.365408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.340588, 33.700531, 20.957569>,  <29.180992, 33.019573, 20.756897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.340588, 33.700531, 20.957569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.217806, 33.524399, 21.295063>,  <29.144136, 33.418720, 21.497559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.217806, 33.524399, 21.295063>,  <29.340588, 33.700531, 20.957569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.217806, 33.524399, 21.295063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778742, 0.393436, 0.488640,
		-0.547118, 0.807042, 0.222137,
		-0.306956, -0.440331, 0.843734,
		29.125719, 33.392300, 21.548183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.357401, 34.189339, 21.477945>,  <29.340588, 33.700531, 20.957569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.357401, 34.189339, 21.477945> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.373293, 33.847267, 21.684669>,  <29.382828, 33.642025, 21.808704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.373293, 33.847267, 21.684669>,  <29.357401, 34.189339, 21.477945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.373293, 33.847267, 21.684669> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815793, 0.326422, 0.477421,
		-0.576978, 0.402644, 0.710615,
		0.039729, -0.855176, 0.516813,
		29.385212, 33.590714, 21.839714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.450384, 34.505871, 22.203041>,  <29.357401, 34.189339, 21.477945>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.450384, 34.505871, 22.203041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.582024, 34.129093, 22.176411>,  <29.661007, 33.903027, 22.160433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.582024, 34.129093, 22.176411>,  <29.450384, 34.505871, 22.203041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.582024, 34.129093, 22.176411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802489, 0.241822, 0.545466,
		-0.497699, -0.232939, 0.835485,
		0.329099, -0.941946, -0.066577,
		29.680754, 33.846508, 22.156437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.509113, 31.317890, 17.714077> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.450068, 30.964643, 17.892206>,  <28.414640, 30.752695, 17.999083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.450068, 30.964643, 17.892206>,  <28.509113, 31.317890, 17.714077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.450068, 30.964643, 17.892206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934486, 0.022940, 0.355260,
		-0.323952, 0.468588, 0.821876,
		-0.147617, -0.883119, 0.445321,
		28.405783, 30.699707, 18.025803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.928246, 31.384220, 18.404118>,  <28.509113, 31.317890, 17.714077>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.928246, 31.384220, 18.404118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.891582, 31.000687, 18.296612>,  <28.869585, 30.770567, 18.232109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.891582, 31.000687, 18.296612>,  <28.928246, 31.384220, 18.404118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.891582, 31.000687, 18.296612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869571, -0.208584, 0.447592,
		-0.485227, -0.192686, 0.852893,
		-0.091656, -0.958835, -0.268765,
		28.864086, 30.713036, 18.215982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.124113, 31.000425, 19.023628>,  <28.928246, 31.384220, 18.404118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.124113, 31.000425, 19.023628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.150335, 30.747345, 18.714981>,  <29.166069, 30.595497, 18.529793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.150335, 30.747345, 18.714981>,  <29.124113, 31.000425, 19.023628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.150335, 30.747345, 18.714981> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917912, -0.265025, 0.295295,
		-0.391331, -0.727634, 0.563391,
		0.065554, -0.632701, -0.771616,
		29.170002, 30.557535, 18.483496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.512751, 30.498920, 19.320715>,  <29.124113, 31.000425, 19.023628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.512751, 30.498920, 19.320715> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.539606, 30.418543, 18.929794>,  <29.555719, 30.370316, 18.695242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.539606, 30.418543, 18.929794>,  <29.512751, 30.498920, 19.320715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.539606, 30.418543, 18.929794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965931, -0.232282, 0.114119,
		-0.249940, -0.951665, 0.178502,
		0.067140, -0.200944, -0.977299,
		29.559748, 30.358259, 18.636604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.944294, 29.832485, 19.209600>,  <29.512751, 30.498920, 19.320715>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.944294, 29.832485, 19.209600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.953278, 30.061520, 18.881786>,  <29.958668, 30.198940, 18.685099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.953278, 30.061520, 18.881786>,  <29.944294, 29.832485, 19.209600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.953278, 30.061520, 18.881786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996389, -0.079956, -0.028559,
		-0.081879, -0.815935, -0.572316,
		0.022458, 0.572588, -0.819536,
		29.960014, 30.233295, 18.635925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.581545, 29.577703, 18.848015>,  <29.944294, 29.832485, 19.209600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.581545, 29.577703, 18.848015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.491131, 29.913933, 18.651098>,  <30.436882, 30.115669, 18.532949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.491131, 29.913933, 18.651098>,  <30.581545, 29.577703, 18.848015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.491131, 29.913933, 18.651098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943983, 0.064279, -0.323674,
		-0.240427, -0.537874, -0.808014,
		-0.226034, 0.840571, -0.492289,
		30.423321, 30.166103, 18.503412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.854345, 29.556866, 18.172869>,  <30.581545, 29.577703, 18.848015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.854345, 29.556866, 18.172869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.809271, 29.945694, 18.255213>,  <30.782227, 30.178991, 18.304619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.809271, 29.945694, 18.255213>,  <30.854345, 29.556866, 18.172869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.809271, 29.945694, 18.255213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931074, 0.175651, -0.319764,
		-0.346992, 0.155637, -0.924864,
		-0.112686, 0.972072, 0.205859,
		30.775465, 30.237316, 18.316971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.198318, 29.766863, 17.672470>,  <30.854345, 29.556866, 18.172869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.198318, 29.766863, 17.672470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.178690, 30.091364, 17.905523>,  <31.166912, 30.286064, 18.045355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.178690, 30.091364, 17.905523>,  <31.198318, 29.766863, 17.672470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.178690, 30.091364, 17.905523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921255, 0.262116, -0.287374,
		-0.385850, 0.522652, -0.760234,
		-0.049073, 0.811253, 0.582633,
		31.163969, 30.334740, 18.080313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.475039, 30.246872, 17.201859>,  <31.198318, 29.766863, 17.672470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.475039, 30.246872, 17.201859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.489935, 30.372087, 17.581463>,  <31.498873, 30.447218, 17.809225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.489935, 30.372087, 17.581463>,  <31.475039, 30.246872, 17.201859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.489935, 30.372087, 17.581463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915160, 0.370746, -0.158205,
		-0.401366, 0.874387, -0.272676,
		0.037239, 0.313041, 0.949009,
		31.501106, 30.466000, 17.866165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.716990, 30.863203, 17.240440>,  <31.475039, 30.246872, 17.201859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.716990, 30.863203, 17.240440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.776424, 30.770144, 17.624897>,  <31.812086, 30.714308, 17.855572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.776424, 30.770144, 17.624897>,  <31.716990, 30.863203, 17.240440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.776424, 30.770144, 17.624897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852040, 0.523453, -0.005017,
		-0.501946, 0.819678, 0.276004,
		0.148588, -0.232648, 0.961143,
		31.821001, 30.700350, 17.913240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.928686, 31.441658, 17.643116>,  <31.716990, 30.863203, 17.240440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.928686, 31.441658, 17.643116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.059414, 31.153185, 17.887438>,  <32.137852, 30.980101, 18.034031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.059414, 31.153185, 17.887438>,  <31.928686, 31.441658, 17.643116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.059414, 31.153185, 17.887438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779812, 0.570906, 0.256826,
		-0.533932, 0.392378, 0.748970,
		0.326818, -0.721183, 0.610806,
		32.157459, 30.936831, 18.070681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154408, 31.842880, 18.182301>,  <31.928686, 31.441658, 17.643116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154408, 31.842880, 18.182301> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.313965, 31.477039, 18.208792>,  <32.409698, 31.257536, 18.224686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.313965, 31.477039, 18.208792>,  <32.154408, 31.842880, 18.182301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.313965, 31.477039, 18.208792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887327, 0.403205, 0.223777,
		-0.231370, -0.030500, 0.972388,
		0.398897, -0.914601, 0.066226,
		32.433636, 31.202660, 18.228659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.067707, 32.294441, 18.768604>,  <32.154408, 31.842880, 18.182301>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.067707, 32.294441, 18.768604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.050980, 32.691864, 18.810747>,  <32.040943, 32.930317, 18.836033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.050980, 32.691864, 18.810747>,  <32.067707, 32.294441, 18.768604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050980, 32.691864, 18.810747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652846, 0.052655, -0.755659,
		-0.756336, -0.100382, 0.646436,
		-0.041816, 0.993554, 0.105359,
		32.038433, 32.989929, 18.842356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.355804, 32.416157, 18.910124>,  <32.067707, 32.294441, 18.768604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.355804, 32.416157, 18.910124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.492281, 32.767368, 18.775867>,  <31.574167, 32.978096, 18.695312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.492281, 32.767368, 18.775867>,  <31.355804, 32.416157, 18.910124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.492281, 32.767368, 18.775867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880123, 0.173002, -0.442102,
		-0.330111, 0.446248, 0.831799,
		0.341190, 0.878028, -0.335643,
		31.594639, 33.030777, 18.675175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.746113, 32.757465, 18.929121>,  <31.355804, 32.416157, 18.910124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.746113, 32.757465, 18.929121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.988161, 32.990826, 18.712429>,  <31.133390, 33.130844, 18.582413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.988161, 32.990826, 18.712429>,  <30.746113, 32.757465, 18.929121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.988161, 32.990826, 18.712429> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795544, 0.416872, -0.439691,
		-0.030685, 0.697036, 0.716379,
		0.605119, 0.583403, -0.541731,
		31.169697, 33.165848, 18.549910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.591576, 33.502495, 19.154770>,  <30.746113, 32.757465, 18.929121>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.591576, 33.502495, 19.154770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.754503, 33.480721, 18.790106>,  <30.852261, 33.467655, 18.571306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.754503, 33.480721, 18.790106>,  <30.591576, 33.502495, 19.154770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.754503, 33.480721, 18.790106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790959, 0.478029, -0.381933,
		0.456591, 0.876656, 0.151655,
		0.407319, -0.054434, -0.911662,
		30.876699, 33.464390, 18.516607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.456413, 34.154694, 18.926893>,  <30.591576, 33.502495, 19.154770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.456413, 34.154694, 18.926893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.528227, 33.919266, 18.611591>,  <30.571316, 33.778008, 18.422409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.528227, 33.919266, 18.611591>,  <30.456413, 34.154694, 18.926893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.528227, 33.919266, 18.611591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789016, 0.392419, -0.472717,
		0.587555, 0.706816, -0.393942,
		0.179534, -0.588573, -0.788257,
		30.582087, 33.742695, 18.375114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.351217, 34.639984, 18.414953>,  <30.456413, 34.154694, 18.926893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.351217, 34.639984, 18.414953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.306120, 34.277939, 18.250977>,  <30.279062, 34.060711, 18.152592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.306120, 34.277939, 18.250977>,  <30.351217, 34.639984, 18.414953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.306120, 34.277939, 18.250977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795877, 0.329262, -0.508100,
		0.594868, 0.268977, -0.757485,
		-0.112744, -0.905118, -0.409940,
		30.272297, 34.006405, 18.127995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.049433, 34.780609, 17.891928>,  <30.351217, 34.639984, 18.414953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.049433, 34.780609, 17.891928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.981817, 34.386433, 17.884609>,  <29.941248, 34.149925, 17.880219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.981817, 34.386433, 17.884609>,  <30.049433, 34.780609, 17.891928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.981817, 34.386433, 17.884609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886051, 0.160068, -0.435076,
		0.431670, -0.057334, -0.900208,
		-0.169039, -0.985439, -0.018296,
		29.931105, 34.090801, 17.879120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.917179, 34.564384, 17.168776>,  <30.049433, 34.780609, 17.891928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.917179, 34.564384, 17.168776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.769445, 34.275761, 17.403023>,  <29.680805, 34.102585, 17.543571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.769445, 34.275761, 17.403023>,  <29.917179, 34.564384, 17.168776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.769445, 34.275761, 17.403023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851053, 0.009533, -0.524994,
		0.373231, -0.692288, -0.617605,
		-0.369334, -0.721558, 0.585616,
		29.658646, 34.059292, 17.578707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.587595, 34.045582, 16.700510>,  <29.917179, 34.564384, 17.168776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.587595, 34.045582, 16.700510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.416712, 33.959045, 17.051666>,  <29.314182, 33.907124, 17.262360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.416712, 33.959045, 17.051666>,  <29.587595, 34.045582, 16.700510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.416712, 33.959045, 17.051666> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844633, -0.250975, -0.472870,
		0.322629, -0.943509, -0.075508,
		-0.427207, -0.216338, 0.877891,
		29.288549, 33.894142, 17.315033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.207806, 33.423641, 16.558943>,  <29.587595, 34.045582, 16.700510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.207806, 33.423641, 16.558943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.064606, 33.562157, 16.905796>,  <28.978685, 33.645267, 17.113907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.064606, 33.562157, 16.905796>,  <29.207806, 33.423641, 16.558943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.064606, 33.562157, 16.905796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933376, -0.157962, -0.322267,
		0.025376, -0.924732, 0.379772,
		-0.358000, 0.346292, 0.867131,
		28.957205, 33.666046, 17.165936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.908121, 32.776928, 16.866669>,  <29.207806, 33.423641, 16.558943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.908121, 32.776928, 16.866669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.743250, 33.123039, 16.980791>,  <28.644327, 33.330708, 17.049265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.743250, 33.123039, 16.980791>,  <28.908121, 32.776928, 16.866669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.743250, 33.123039, 16.980791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889612, -0.314604, -0.331081,
		-0.196718, -0.390278, 0.899436,
		-0.412179, 0.865279, 0.285308,
		28.619596, 33.382622, 17.066383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.256739, 32.578407, 17.138975>,  <28.908121, 32.776928, 16.866669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.256739, 32.578407, 17.138975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.203644, 32.967556, 17.063190>,  <28.171787, 33.201046, 17.017719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.203644, 32.967556, 17.063190>,  <28.256739, 32.578407, 17.138975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.203644, 32.967556, 17.063190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927372, -0.189368, -0.322679,
		-0.349804, 0.132872, 0.927352,
		-0.132736, 0.972874, -0.189464,
		28.163822, 33.259418, 17.006351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.524734, 32.678314, 17.258129>,  <28.256739, 32.578407, 17.138975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.524734, 32.678314, 17.258129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.611629, 33.023895, 17.076408>,  <27.663767, 33.231243, 16.967377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.611629, 33.023895, 17.076408>,  <27.524734, 32.678314, 17.258129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.611629, 33.023895, 17.076408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913089, 0.015325, -0.407473,
		-0.345076, 0.503334, 0.792198,
		0.217236, 0.863956, -0.454300,
		27.676800, 33.283081, 16.940119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.965506, 33.197109, 17.374180>,  <27.524734, 32.678314, 17.258129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.965506, 33.197109, 17.374180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.144373, 33.278198, 17.025709>,  <27.251694, 33.326851, 16.816628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.144373, 33.278198, 17.025709>,  <26.965506, 33.197109, 17.374180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.144373, 33.278198, 17.025709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880741, -0.070078, -0.468386,
		-0.156001, 0.976726, 0.147206,
		0.447169, 0.202719, -0.871175,
		27.278524, 33.339012, 16.764357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.061939, 33.021824, 18.118059>,  <26.965506, 33.197109, 17.374180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.061939, 33.021824, 18.118059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.754902, 32.837563, 18.296316>,  <26.570679, 32.727005, 18.403271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.754902, 32.837563, 18.296316>,  <27.061939, 33.021824, 18.118059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.754902, 32.837563, 18.296316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414968, 0.172717, 0.893292,
		-0.488466, 0.870615, 0.058578,
		-0.767595, -0.460650, 0.445644,
		26.524624, 32.699368, 18.430010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.868301, 33.356289, 18.646183>,  <27.061939, 33.021824, 18.118059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.868301, 33.356289, 18.646183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.675938, 33.036175, 18.789440>,  <26.560520, 32.844105, 18.875395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.675938, 33.036175, 18.789440>,  <26.868301, 33.356289, 18.646183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.675938, 33.036175, 18.789440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384666, 0.174483, 0.906415,
		-0.787883, 0.573667, 0.223934,
		-0.480907, -0.800289, 0.358142,
		26.531666, 32.796089, 18.896883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.652555, 33.581429, 19.298210>,  <26.868301, 33.356289, 18.646183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.652555, 33.581429, 19.298210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.646889, 33.181610, 19.308819>,  <26.643490, 32.941719, 19.315184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.646889, 33.181610, 19.308819>,  <26.652555, 33.581429, 19.298210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.646889, 33.181610, 19.308819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213279, 0.022895, 0.976723,
		-0.976889, 0.019493, 0.212858,
		-0.014166, -0.999548, 0.026523,
		26.642639, 32.881744, 19.316776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.234531, 33.333599, 19.998522>,  <26.652555, 33.581429, 19.298210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.234531, 33.333599, 19.998522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.487787, 33.056210, 19.860985>,  <26.639740, 32.889774, 19.778463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.487787, 33.056210, 19.860985>,  <26.234531, 33.333599, 19.998522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.487787, 33.056210, 19.860985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387405, -0.100672, 0.916396,
		-0.670113, -0.713413, 0.204917,
		0.633140, -0.693475, -0.343841,
		26.677729, 32.848167, 19.757832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.238932, 32.975960, 20.581797>,  <26.234531, 33.333599, 19.998522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.238932, 32.975960, 20.581797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.559935, 32.865585, 20.370197>,  <26.752537, 32.799362, 20.243238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.559935, 32.865585, 20.370197>,  <26.238932, 32.975960, 20.581797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.559935, 32.865585, 20.370197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457234, -0.285161, 0.842389,
		-0.383297, -0.917900, -0.102676,
		0.802509, -0.275938, -0.528997,
		26.800688, 32.782803, 20.211498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.605955, 32.602280, 21.044201>,  <26.238932, 32.975960, 20.581797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.605955, 32.602280, 21.044201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.881935, 32.626762, 20.755695>,  <27.047523, 32.641453, 20.582592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.881935, 32.626762, 20.755695>,  <26.605955, 32.602280, 21.044201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.881935, 32.626762, 20.755695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722527, -0.118592, 0.681095,
		-0.043848, -0.991055, -0.126047,
		0.689951, 0.061208, -0.721264,
		27.088921, 32.645123, 20.539316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.092680, 32.021107, 21.218925>,  <26.605955, 32.602280, 21.044201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.092680, 32.021107, 21.218925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.278162, 32.310986, 21.015045>,  <27.389452, 32.484913, 20.892717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.278162, 32.310986, 21.015045>,  <27.092680, 32.021107, 21.218925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.278162, 32.310986, 21.015045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760507, -0.030427, 0.648616,
		0.454540, -0.688398, -0.565245,
		0.463705, 0.724694, -0.509701,
		27.417274, 32.528393, 20.862135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.311192, 31.236263, 21.254116>,  <27.092680, 32.021107, 21.218925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.311192, 31.236263, 21.254116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.094049, 31.180044, 21.585310>,  <26.963764, 31.146313, 21.784025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.094049, 31.180044, 21.585310>,  <27.311192, 31.236263, 21.254116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.094049, 31.180044, 21.585310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783587, -0.269948, -0.559570,
		0.302159, -0.952562, 0.036412,
		-0.542855, -0.140547, 0.827983,
		26.931192, 31.137880, 21.833704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.883923, 30.716702, 21.044052>,  <27.311192, 31.236263, 21.254116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.883923, 30.716702, 21.044052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.723852, 30.871943, 21.376133>,  <26.627810, 30.965086, 21.575382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.723852, 30.871943, 21.376133>,  <26.883923, 30.716702, 21.044052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.723852, 30.871943, 21.376133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916426, -0.164687, -0.364749,
		-0.004835, -0.906784, 0.421568,
		-0.400175, 0.388099, 0.830204,
		26.603800, 30.988373, 21.625195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.381582, 30.261299, 21.286230>,  <26.883923, 30.716702, 21.044052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.381582, 30.261299, 21.286230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.283646, 30.620367, 21.432785>,  <26.224884, 30.835808, 21.520718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.283646, 30.620367, 21.432785>,  <26.381582, 30.261299, 21.286230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.283646, 30.620367, 21.432785> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894610, -0.063473, -0.442316,
		-0.373798, -0.436072, 0.818606,
		-0.244841, 0.897670, 0.366389,
		26.210194, 30.889668, 21.542702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.691710, 30.206282, 21.512896>,  <26.381582, 30.261299, 21.286230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.691710, 30.206282, 21.512896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.754873, 30.600630, 21.490536>,  <25.792770, 30.837238, 21.477119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.754873, 30.600630, 21.490536>,  <25.691710, 30.206282, 21.512896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.754873, 30.600630, 21.490536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902176, 0.121026, -0.414043,
		-0.401428, 0.115811, 0.908539,
		0.157908, 0.985870, -0.055898,
		25.802246, 30.896391, 21.473766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.045345, 30.437859, 21.665438>,  <25.691710, 30.206282, 21.512896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.045345, 30.437859, 21.665438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.253685, 30.734735, 21.496740>,  <25.378689, 30.912863, 21.395523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.253685, 30.734735, 21.496740>,  <25.045345, 30.437859, 21.665438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.253685, 30.734735, 21.496740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839917, 0.357301, -0.408503,
		-0.152499, 0.566996, 0.809481,
		0.520848, 0.742194, -0.421742,
		25.409939, 30.957394, 21.370218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.631542, 31.053440, 21.783962>,  <25.045345, 30.437859, 21.665438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.631542, 31.053440, 21.783962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.850718, 31.086140, 21.450956>,  <24.982224, 31.105761, 21.251152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.850718, 31.086140, 21.450956>,  <24.631542, 31.053440, 21.783962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.850718, 31.086140, 21.450956> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836372, 0.072169, -0.543390,
		0.015659, 0.994037, 0.107917,
		0.547938, 0.081750, -0.832515,
		25.015099, 31.110664, 21.201202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.228903, 31.332788, 21.342413>,  <24.631542, 31.053440, 21.783962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.228903, 31.332788, 21.342413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.507706, 31.227201, 21.075729>,  <24.674988, 31.163849, 20.915718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.507706, 31.227201, 21.075729>,  <24.228903, 31.332788, 21.342413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.507706, 31.227201, 21.075729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625742, 0.230157, -0.745301,
		0.350184, 0.936669, -0.004755,
		0.697006, -0.263968, -0.666711,
		24.716808, 31.148010, 20.875715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.257051, 31.910774, 20.896204>,  <24.228903, 31.332788, 21.342413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.257051, 31.910774, 20.896204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.420359, 31.606367, 20.694542>,  <24.518343, 31.423723, 20.573545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.420359, 31.606367, 20.694542>,  <24.257051, 31.910774, 20.896204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.420359, 31.606367, 20.694542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636317, 0.158744, -0.754917,
		0.654537, 0.629008, -0.419439,
		0.408266, -0.761018, -0.504153,
		24.542839, 31.378061, 20.543297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.360155, 32.128105, 20.170685>,  <24.257051, 31.910774, 20.896204>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.360155, 32.128105, 20.170685> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.317039, 31.730831, 20.188440>,  <24.291170, 31.492468, 20.199095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.317039, 31.730831, 20.188440>,  <24.360155, 32.128105, 20.170685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.317039, 31.730831, 20.188440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671877, 0.039861, -0.739589,
		0.732778, -0.109543, -0.671593,
		-0.107787, -0.993183, 0.044390,
		24.284704, 31.432877, 20.201757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.983822, 31.579403, 26.753448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.882599, 31.209682, 26.639164>,  <38.821865, 30.987850, 26.570593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.882599, 31.209682, 26.639164>,  <38.983822, 31.579403, 26.753448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882599, 31.209682, 26.639164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965694, 0.223530, 0.132172,
		-0.058302, 0.309356, -0.949157,
		-0.253053, -0.924301, -0.285711,
		38.806683, 30.932392, 26.553450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669628, 31.557793, 26.101801>,  <38.983822, 31.579403, 26.753448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669628, 31.557793, 26.101801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.515873, 31.226118, 26.264133>,  <38.423622, 31.027113, 26.361532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.515873, 31.226118, 26.264133>,  <38.669628, 31.557793, 26.101801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515873, 31.226118, 26.264133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917614, 0.391342, -0.069542,
		-0.101156, -0.399128, -0.911298,
		-0.384385, -0.829185, 0.405832,
		38.400558, 30.977362, 26.385883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108459, 31.454531, 25.728146>,  <38.669628, 31.557793, 26.101801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108459, 31.454531, 25.728146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.059380, 31.223873, 26.051237>,  <38.029934, 31.085478, 26.245092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.059380, 31.223873, 26.051237>,  <38.108459, 31.454531, 25.728146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059380, 31.223873, 26.051237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983338, 0.180635, -0.020414,
		-0.134133, -0.796775, -0.589201,
		-0.122695, -0.576646, 0.807728,
		38.022572, 31.050879, 26.293556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565319, 30.947056, 25.549068>,  <38.108459, 31.454531, 25.728146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565319, 30.947056, 25.549068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.535816, 30.947111, 25.947979>,  <37.518116, 30.947145, 26.187325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.535816, 30.947111, 25.947979>,  <37.565319, 30.947056, 25.549068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535816, 30.947111, 25.947979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980153, 0.184505, -0.072512,
		-0.184014, -0.982832, -0.013455,
		-0.073750, 0.000155, 0.997277,
		37.513691, 30.947153, 26.247162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924053, 30.631790, 25.694122>,  <37.565319, 30.947056, 25.549068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924053, 30.631790, 25.694122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.996181, 30.827169, 26.035625>,  <37.039459, 30.944397, 26.240528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.996181, 30.827169, 26.035625>,  <36.924053, 30.631790, 25.694122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996181, 30.827169, 26.035625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983567, 0.097444, 0.151986,
		-0.008956, -0.867135, 0.497992,
		0.180319, 0.488447, 0.853759,
		37.050278, 30.973703, 26.291754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457645, 30.418564, 26.207949>,  <36.924053, 30.631790, 25.694122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457645, 30.418564, 26.207949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.581146, 30.785221, 26.309488>,  <36.655247, 31.005215, 26.370413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.581146, 30.785221, 26.309488>,  <36.457645, 30.418564, 26.207949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581146, 30.785221, 26.309488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945831, 0.267727, 0.183643,
		0.100372, -0.296799, 0.949650,
		0.308752, 0.916642, 0.253850,
		36.673771, 31.060213, 26.385643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148331, 30.543242, 26.835104>,  <36.457645, 30.418564, 26.207949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148331, 30.543242, 26.835104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.228809, 30.889194, 26.651148>,  <36.277096, 31.096766, 26.540775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.228809, 30.889194, 26.651148>,  <36.148331, 30.543242, 26.835104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228809, 30.889194, 26.651148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942769, 0.298421, 0.148766,
		0.265905, 0.403637, 0.875426,
		0.201198, 0.864883, -0.459888,
		36.289169, 31.148659, 26.513182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805798, 31.090406, 27.195726>,  <36.148331, 30.543242, 26.835104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805798, 31.090406, 27.195726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.888622, 31.271681, 26.848913>,  <35.938316, 31.380445, 26.640825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.888622, 31.271681, 26.848913>,  <35.805798, 31.090406, 27.195726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888622, 31.271681, 26.848913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868299, 0.493459, 0.050558,
		0.450758, 0.742376, 0.495676,
		0.207063, 0.453184, -0.867034,
		35.950741, 31.407637, 26.588802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557369, 31.751213, 27.273766>,  <35.805798, 31.090406, 27.195726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557369, 31.751213, 27.273766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.591488, 31.710482, 26.877310>,  <35.611961, 31.686043, 26.639437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.591488, 31.710482, 26.877310>,  <35.557369, 31.751213, 27.273766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591488, 31.710482, 26.877310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863251, 0.489168, -0.124549,
		0.497516, 0.866225, -0.046178,
		0.085299, -0.101828, -0.991138,
		35.617077, 31.679934, 26.579967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396156, 32.403988, 27.004305>,  <35.557369, 31.751213, 27.273766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396156, 32.403988, 27.004305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.329720, 32.153774, 26.699379>,  <35.289860, 32.003647, 26.516424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.329720, 32.153774, 26.699379>,  <35.396156, 32.403988, 27.004305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329720, 32.153774, 26.699379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870480, 0.456228, -0.184714,
		0.463334, 0.632900, -0.620290,
		-0.166089, -0.625535, -0.762313,
		35.279892, 31.966114, 26.470684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132877, 32.758690, 26.437996>,  <35.396156, 32.403988, 27.004305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132877, 32.758690, 26.437996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.019875, 32.388199, 26.338161>,  <34.952072, 32.165905, 26.278261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.019875, 32.388199, 26.338161>,  <35.132877, 32.758690, 26.437996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019875, 32.388199, 26.338161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869813, 0.357048, -0.340502,
		0.404496, 0.120899, -0.906513,
		-0.282503, -0.926229, -0.249584,
		34.935123, 32.110329, 26.263287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783951, 32.817699, 25.778824>,  <35.132877, 32.758690, 26.437996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783951, 32.817699, 25.778824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.663452, 32.473736, 25.943655>,  <34.591152, 32.267357, 26.042553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.663452, 32.473736, 25.943655>,  <34.783951, 32.817699, 25.778824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663452, 32.473736, 25.943655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942544, 0.203068, -0.265283,
		0.144439, -0.468318, -0.871674,
		-0.301246, -0.859908, 0.412079,
		34.573078, 32.215763, 26.067278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858318, 32.925053, 24.994953>,  <34.783951, 32.817699, 25.778824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.858318, 32.925053, 24.994953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.818462, 33.317680, 25.060173>,  <34.794548, 33.553257, 25.099304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.818462, 33.317680, 25.060173>,  <34.858318, 32.925053, 24.994953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818462, 33.317680, 25.060173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911733, 0.024436, 0.410056,
		0.398516, 0.189515, -0.897368,
		-0.099640, 0.981574, 0.163049,
		34.788570, 33.612152, 25.109087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463211, 33.199795, 24.707233>,  <34.858318, 32.925053, 24.994953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463211, 33.199795, 24.707233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.329277, 33.490837, 24.946724>,  <35.248917, 33.665462, 25.090418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.329277, 33.490837, 24.946724>,  <35.463211, 33.199795, 24.707233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329277, 33.490837, 24.946724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934030, 0.172409, 0.312831,
		0.124392, 0.663975, -0.737336,
		-0.334835, 0.727607, 0.598726,
		35.228825, 33.709118, 25.126341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003723, 33.674057, 24.641111>,  <35.463211, 33.199795, 24.707233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003723, 33.674057, 24.641111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.794037, 33.802780, 24.956488>,  <35.668224, 33.880016, 25.145714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.794037, 33.802780, 24.956488>,  <36.003723, 33.674057, 24.641111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794037, 33.802780, 24.956488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839382, 0.351450, 0.414634,
		-0.143665, 0.879159, -0.454356,
		-0.524212, 0.321810, 0.788441,
		35.636772, 33.899323, 25.193020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205971, 34.289207, 24.778563>,  <36.003723, 33.674057, 24.641111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205971, 34.289207, 24.778563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.045815, 34.213451, 25.137186>,  <35.949722, 34.167999, 25.352360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.045815, 34.213451, 25.137186>,  <36.205971, 34.289207, 24.778563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045815, 34.213451, 25.137186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781103, 0.441044, 0.441993,
		-0.479131, 0.877275, -0.028656,
		-0.400388, -0.189389, 0.896561,
		35.925697, 34.156635, 25.406155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298996, 34.843960, 25.260767>,  <36.205971, 34.289207, 24.778563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298996, 34.843960, 25.260767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.224899, 34.555286, 25.527557>,  <36.180443, 34.382084, 25.687632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.224899, 34.555286, 25.527557>,  <36.298996, 34.843960, 25.260767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224899, 34.555286, 25.527557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665739, 0.407076, 0.625364,
		-0.722826, 0.559875, 0.405047,
		-0.185241, -0.721685, 0.666976,
		36.169327, 34.338779, 25.727650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226261, 35.180107, 25.865633>,  <36.298996, 34.843960, 25.260767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226261, 35.180107, 25.865633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.322895, 34.799145, 25.939987>,  <36.380875, 34.570568, 25.984600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.322895, 34.799145, 25.939987>,  <36.226261, 35.180107, 25.865633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322895, 34.799145, 25.939987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710210, 0.304075, 0.634933,
		-0.661238, -0.021376, 0.749871,
		0.241589, -0.952408, 0.185885,
		36.395370, 34.513424, 25.995752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281517, 35.128021, 26.567373>,  <36.226261, 35.180107, 25.865633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281517, 35.128021, 26.567373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.479305, 34.802197, 26.446054>,  <36.597980, 34.606701, 26.373262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.479305, 34.802197, 26.446054>,  <36.281517, 35.128021, 26.567373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479305, 34.802197, 26.446054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722220, 0.190887, 0.664800,
		-0.483624, -0.547774, 0.682680,
		0.494475, -0.814559, -0.303296,
		36.627647, 34.557827, 26.355066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635754, 34.917805, 27.161694>,  <36.281517, 35.128021, 26.567373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635754, 34.917805, 27.161694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.836483, 34.699455, 26.893305>,  <36.956921, 34.568447, 26.732271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.836483, 34.699455, 26.893305>,  <36.635754, 34.917805, 27.161694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836483, 34.699455, 26.893305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850160, 0.168332, 0.498891,
		-0.159385, -0.820786, 0.548550,
		0.501822, -0.545871, -0.670969,
		36.987030, 34.535694, 26.692015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080608, 34.404419, 27.488829>,  <36.635754, 34.917805, 27.161694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080608, 34.404419, 27.488829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.220444, 34.514305, 27.130541>,  <37.304344, 34.580238, 26.915567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.220444, 34.514305, 27.130541>,  <37.080608, 34.404419, 27.488829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220444, 34.514305, 27.130541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877124, 0.240063, 0.415961,
		0.329301, -0.931075, -0.157038,
		0.349592, 0.274718, -0.895721,
		37.325321, 34.596722, 26.861824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670788, 34.014709, 27.528658>,  <37.080608, 34.404419, 27.488829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670788, 34.014709, 27.528658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.723309, 34.295006, 27.248167>,  <37.754822, 34.463184, 27.079872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.723309, 34.295006, 27.248167>,  <37.670788, 34.014709, 27.528658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723309, 34.295006, 27.248167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898558, 0.214665, 0.382770,
		0.418752, -0.680350, -0.601474,
		0.131302, 0.700745, -0.701225,
		37.762699, 34.505230, 27.037800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270252, 33.922882, 27.292431>,  <37.670788, 34.014709, 27.528658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270252, 33.922882, 27.292431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.191406, 34.298004, 27.178127>,  <38.144100, 34.523079, 27.109545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.191406, 34.298004, 27.178127>,  <38.270252, 33.922882, 27.292431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191406, 34.298004, 27.178127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938199, 0.265021, 0.222589,
		0.284479, -0.224224, -0.932092,
		-0.197114, 0.937810, -0.285760,
		38.132271, 34.579346, 27.092400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.911930, 34.245182, 27.029062>,  <38.270252, 33.922882, 27.292431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.911930, 34.245182, 27.029062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.686447, 34.565319, 27.110727>,  <38.551155, 34.757401, 27.159727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.686447, 34.565319, 27.110727>,  <38.911930, 34.245182, 27.029062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686447, 34.565319, 27.110727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788472, 0.447785, 0.421665,
		0.246055, 0.398673, -0.883468,
		-0.563710, 0.800343, 0.204163,
		38.517334, 34.805424, 27.171976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313568, 34.905045, 26.733757>,  <38.911930, 34.245182, 27.029062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.313568, 34.905045, 26.733757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.063385, 35.014397, 27.026077>,  <38.913277, 35.080009, 27.201469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.063385, 35.014397, 27.026077>,  <39.313568, 34.905045, 26.733757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063385, 35.014397, 27.026077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724321, 0.551676, 0.413538,
		-0.290111, 0.787982, -0.543065,
		-0.625456, 0.273381, 0.730799,
		38.875748, 35.096413, 27.245317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414436, 35.606213, 26.747709>,  <39.313568, 34.905045, 26.733757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414436, 35.606213, 26.747709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.265553, 35.544167, 27.113749>,  <39.176224, 35.506939, 27.333372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.265553, 35.544167, 27.113749>,  <39.414436, 35.606213, 26.747709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265553, 35.544167, 27.113749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755787, 0.521638, 0.395829,
		-0.538749, 0.838948, -0.076921,
		-0.372205, -0.155116, 0.915097,
		39.153893, 35.497631, 27.388277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.568386, 35.913986, 26.020370>,  <39.414436, 35.606213, 26.747709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.568386, 35.913986, 26.020370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.746719, 36.269470, 26.063126>,  <39.853718, 36.482761, 26.088779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.746719, 36.269470, 26.063126>,  <39.568386, 35.913986, 26.020370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.746719, 36.269470, 26.063126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796014, -0.448247, 0.406739,
		0.409387, -0.096252, -0.907270,
		0.445831, 0.888713, 0.106888,
		39.880470, 36.536083, 26.095192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119686, 35.820415, 25.619778>,  <39.568386, 35.913986, 26.020370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.119686, 35.820415, 25.619778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.171055, 36.120430, 25.879301>,  <40.201878, 36.300438, 26.035015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.171055, 36.120430, 25.879301>,  <40.119686, 35.820415, 25.619778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.171055, 36.120430, 25.879301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939476, -0.301552, 0.162641,
		0.317636, 0.588653, -0.743368,
		0.128425, 0.750037, 0.648808,
		40.209583, 36.345440, 26.073944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675556, 36.201443, 25.390623>,  <40.119686, 35.820415, 25.619778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.675556, 36.201443, 25.390623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.629059, 36.192280, 25.787806>,  <40.601162, 36.186783, 26.026115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.629059, 36.192280, 25.787806>,  <40.675556, 36.201443, 25.390623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.629059, 36.192280, 25.787806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970448, -0.215476, 0.108635,
		0.211470, 0.976240, 0.047274,
		-0.116240, -0.022904, 0.992957,
		40.594185, 36.185410, 26.085693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.063961, 36.109936, 24.919508>,  <40.675556, 36.201443, 25.390623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.063961, 36.109936, 24.919508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.946770, 35.727608, 24.909916>,  <39.876457, 35.498211, 24.904161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.946770, 35.727608, 24.909916>,  <40.063961, 36.109936, 24.919508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.946770, 35.727608, 24.909916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464418, 0.164184, -0.870264,
		0.835752, -0.243830, -0.492002,
		-0.292975, -0.955819, -0.023978,
		39.858875, 35.440861, 24.902723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155319, 35.862110, 24.265827>,  <40.063961, 36.109936, 24.919508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.155319, 35.862110, 24.265827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.887787, 35.602608, 24.411034>,  <39.727268, 35.446907, 24.498158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.887787, 35.602608, 24.411034>,  <40.155319, 35.862110, 24.265827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887787, 35.602608, 24.411034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508471, 0.042976, -0.860006,
		0.542337, -0.759778, -0.358620,
		-0.668826, -0.648760, 0.363018,
		39.687138, 35.407978, 24.519939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076153, 35.330696, 23.770042>,  <40.155319, 35.862110, 24.265827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.076153, 35.330696, 23.770042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.752720, 35.290863, 24.002001>,  <39.558659, 35.266964, 24.141176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.752720, 35.290863, 24.002001>,  <40.076153, 35.330696, 23.770042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752720, 35.290863, 24.002001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578166, -0.048390, -0.814483,
		0.109173, -0.993852, -0.018451,
		-0.808582, -0.099587, 0.579894,
		39.510143, 35.260986, 24.175968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741894, 34.656410, 23.664473>,  <40.076153, 35.330696, 23.770042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741894, 34.656410, 23.664473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.440250, 34.870678, 23.816458>,  <39.259262, 34.999241, 23.907650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.440250, 34.870678, 23.816458>,  <39.741894, 34.656410, 23.664473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.440250, 34.870678, 23.816458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597585, -0.319694, -0.735315,
		-0.272412, -0.781572, 0.561192,
		-0.754112, 0.535668, 0.379967,
		39.214016, 35.031380, 23.930447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092056, 34.242153, 23.563438>,  <39.741894, 34.656410, 23.664473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.092056, 34.242153, 23.563438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.973839, 34.621307, 23.611052>,  <38.902908, 34.848801, 23.639620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.973839, 34.621307, 23.611052>,  <39.092056, 34.242153, 23.563438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.973839, 34.621307, 23.611052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803171, -0.179074, -0.568198,
		-0.517271, -0.263531, 0.814238,
		-0.295546, 0.947884, 0.119031,
		38.885174, 34.905674, 23.646761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292973, 34.209095, 23.737949>,  <39.092056, 34.242153, 23.563438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292973, 34.209095, 23.737949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.369408, 34.582916, 23.617880>,  <38.415268, 34.807209, 23.545837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.369408, 34.582916, 23.617880>,  <38.292973, 34.209095, 23.737949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.369408, 34.582916, 23.617880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887965, 0.034250, -0.458633,
		-0.418334, 0.354183, 0.836392,
		0.191086, 0.934549, -0.300174,
		38.426735, 34.863281, 23.527828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608028, 34.625957, 23.791843>,  <38.292973, 34.209095, 23.737949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608028, 34.625957, 23.791843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.852299, 34.820744, 23.542061>,  <37.998859, 34.937614, 23.392191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.852299, 34.820744, 23.542061>,  <37.608028, 34.625957, 23.791843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.852299, 34.820744, 23.542061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780456, 0.236640, -0.578696,
		-0.134033, 0.840754, 0.524564,
		0.610674, 0.486964, -0.624455,
		38.035500, 34.966831, 23.354725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133484, 35.071823, 23.501322>,  <37.608028, 34.625957, 23.791843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133484, 35.071823, 23.501322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.438900, 35.064392, 23.243126>,  <37.622150, 35.059933, 23.088209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.438900, 35.064392, 23.243126>,  <37.133484, 35.071823, 23.501322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.438900, 35.064392, 23.243126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640224, 0.108774, -0.760448,
		0.084340, 0.993893, 0.071159,
		0.763544, -0.018579, -0.645488,
		37.667965, 35.058819, 23.049479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954647, 35.585167, 23.055824>,  <37.133484, 35.071823, 23.501322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954647, 35.585167, 23.055824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.213757, 35.335838, 22.880621>,  <37.369225, 35.186241, 22.775497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.213757, 35.335838, 22.880621>,  <36.954647, 35.585167, 23.055824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213757, 35.335838, 22.880621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640124, -0.133595, -0.756567,
		0.413071, 0.770467, -0.485544,
		0.647776, -0.623324, -0.438011,
		37.408089, 35.148842, 22.749218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990749, 35.711082, 22.352909>,  <36.954647, 35.585167, 23.055824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990749, 35.711082, 22.352909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.149796, 35.344128, 22.345823>,  <37.245224, 35.123955, 22.341572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.149796, 35.344128, 22.345823>,  <36.990749, 35.711082, 22.352909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149796, 35.344128, 22.345823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719135, -0.299580, -0.626974,
		0.569868, 0.262032, -0.778839,
		0.397612, -0.917383, -0.017715,
		37.269077, 35.068913, 22.340509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061131, 35.602367, 21.639452>,  <36.990749, 35.711082, 22.352909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061131, 35.602367, 21.639452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.056282, 35.245407, 21.819881>,  <37.053375, 35.031231, 21.928139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.056282, 35.245407, 21.819881>,  <37.061131, 35.602367, 21.639452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056282, 35.245407, 21.819881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778473, -0.274700, -0.564376,
		0.627562, -0.357988, -0.691384,
		-0.012117, -0.892404, 0.451074,
		37.052647, 34.977684, 21.955204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946266, 35.088737, 21.092884>,  <37.061131, 35.602367, 21.639452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946266, 35.088737, 21.092884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.843983, 34.878582, 21.417496>,  <36.782612, 34.752487, 21.612263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.843983, 34.878582, 21.417496>,  <36.946266, 35.088737, 21.092884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843983, 34.878582, 21.417496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850936, -0.276083, -0.446862,
		0.458826, -0.804826, -0.376476,
		-0.255708, -0.525389, 0.811529,
		36.767269, 34.720966, 21.660955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665539, 34.590355, 20.789387>,  <36.946266, 35.088737, 21.092884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665539, 34.590355, 20.789387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.514820, 34.559490, 21.158617>,  <36.424389, 34.540974, 21.380156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.514820, 34.559490, 21.158617>,  <36.665539, 34.590355, 20.789387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514820, 34.559490, 21.158617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765270, -0.535542, -0.357151,
		0.521903, -0.840977, 0.142745,
		-0.376801, -0.077159, 0.923075,
		36.401779, 34.536343, 21.435539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313446, 34.029278, 20.721401>,  <36.665539, 34.590355, 20.789387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313446, 34.029278, 20.721401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.169338, 34.185104, 21.060446>,  <36.082874, 34.278603, 21.263872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.169338, 34.185104, 21.060446>,  <36.313446, 34.029278, 20.721401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169338, 34.185104, 21.060446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860128, -0.490440, -0.140176,
		0.361094, -0.779554, 0.511769,
		-0.360266, 0.389570, 0.847611,
		36.061260, 34.301975, 21.314730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051094, 33.459679, 21.095284>,  <36.313446, 34.029278, 20.721401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051094, 33.459679, 21.095284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.857086, 33.794010, 21.198156>,  <35.740681, 33.994610, 21.259880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.857086, 33.794010, 21.198156>,  <36.051094, 33.459679, 21.095284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.857086, 33.794010, 21.198156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850134, -0.381704, -0.362732,
		-0.205015, -0.394572, 0.895702,
		-0.485017, 0.835832, 0.257184,
		35.711582, 34.044762, 21.275312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344982, 33.188492, 21.349827>,  <36.051094, 33.459679, 21.095284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344982, 33.188492, 21.349827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.294365, 33.581463, 21.294960>,  <35.263992, 33.817245, 21.262041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.294365, 33.581463, 21.294960>,  <35.344982, 33.188492, 21.349827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294365, 33.581463, 21.294960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928265, -0.166035, -0.332802,
		-0.349730, 0.085210, 0.932967,
		-0.126547, 0.982432, -0.137165,
		35.256401, 33.876194, 21.253811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638382, 33.266647, 21.581423>,  <35.344982, 33.188492, 21.349827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638382, 33.266647, 21.581423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.734840, 33.586658, 21.361675>,  <34.792717, 33.778664, 21.229828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.734840, 33.586658, 21.361675>,  <34.638382, 33.266647, 21.581423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734840, 33.586658, 21.361675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856905, -0.090214, -0.507520,
		-0.455590, 0.593143, 0.663792,
		0.241148, 0.800027, -0.549367,
		34.807186, 33.826668, 21.196865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134266, 33.726486, 21.598852>,  <34.638382, 33.266647, 21.581423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134266, 33.726486, 21.598852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.299358, 33.831436, 21.249952>,  <34.398415, 33.894405, 21.040613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.299358, 33.831436, 21.249952>,  <34.134266, 33.726486, 21.598852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299358, 33.831436, 21.249952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852894, -0.224820, -0.471197,
		-0.319728, 0.938412, 0.130986,
		0.412729, 0.262372, -0.872248,
		34.423176, 33.910149, 20.988277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579056, 34.163368, 21.341982>,  <34.134266, 33.726486, 21.598852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579056, 34.163368, 21.341982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.826256, 34.105114, 21.032951>,  <33.974575, 34.070160, 20.847534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.826256, 34.105114, 21.032951>,  <33.579056, 34.163368, 21.341982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826256, 34.105114, 21.032951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784939, -0.059070, -0.616751,
		0.044186, 0.987573, -0.150821,
		0.617996, -0.145636, -0.772574,
		34.011654, 34.061424, 20.801180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334084, 34.569374, 20.783768>,  <33.579056, 34.163368, 21.341982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334084, 34.569374, 20.783768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.551823, 34.276154, 20.620634>,  <33.682465, 34.100220, 20.522755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.551823, 34.276154, 20.620634>,  <33.334084, 34.569374, 20.783768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551823, 34.276154, 20.620634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688521, -0.112705, -0.716405,
		0.479196, 0.670772, -0.566071,
		0.544344, -0.733050, -0.407833,
		33.715126, 34.056240, 20.498283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287975, 34.704479, 20.090164>,  <33.334084, 34.569374, 20.783768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287975, 34.704479, 20.090164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.390331, 34.317879, 20.082108>,  <33.451744, 34.085918, 20.077272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.390331, 34.317879, 20.082108>,  <33.287975, 34.704479, 20.090164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390331, 34.317879, 20.082108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604020, -0.143580, -0.783929,
		0.754773, 0.212764, -0.620524,
		0.255887, -0.966497, -0.020144,
		33.467098, 34.027931, 20.076065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405159, 34.481781, 19.369282>,  <33.287975, 34.704479, 20.090164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405159, 34.481781, 19.369282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.344921, 34.135677, 19.560547>,  <33.308777, 33.928013, 19.675306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.344921, 34.135677, 19.560547>,  <33.405159, 34.481781, 19.369282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344921, 34.135677, 19.560547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705636, -0.244676, -0.664989,
		0.692386, -0.437553, -0.573715,
		-0.150593, -0.865263, 0.478164,
		33.299744, 33.876099, 19.703997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430431, 33.857483, 18.855633>,  <33.405159, 34.481781, 19.369282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430431, 33.857483, 18.855633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.237465, 33.734264, 19.183628>,  <33.121685, 33.660332, 19.380424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.237465, 33.734264, 19.183628>,  <33.430431, 33.857483, 18.855633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237465, 33.734264, 19.183628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743980, -0.350018, -0.569193,
		0.462348, -0.884644, -0.060324,
		-0.482419, -0.308046, 0.819988,
		33.092739, 33.641850, 19.429625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161411, 33.271252, 18.604563>,  <33.430431, 33.857483, 18.855633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161411, 33.271252, 18.604563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.949055, 33.316315, 18.940529>,  <32.821640, 33.343353, 19.142109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.949055, 33.316315, 18.940529>,  <33.161411, 33.271252, 18.604563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.949055, 33.316315, 18.940529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739048, -0.546541, -0.393829,
		0.414680, -0.829819, 0.373417,
		-0.530895, 0.112661, 0.839916,
		32.789787, 33.350113, 19.192503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845078, 32.661842, 18.701056>,  <33.161411, 33.271252, 18.604563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845078, 32.661842, 18.701056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.634613, 32.943535, 18.891722>,  <32.508335, 33.112549, 19.006123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.634613, 32.943535, 18.891722>,  <32.845078, 32.661842, 18.701056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634613, 32.943535, 18.891722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819807, -0.271108, -0.504398,
		-0.225983, -0.656173, 0.719979,
		-0.526164, 0.704229, 0.476669,
		32.476765, 33.154804, 19.034721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.650398, 31.881874, 18.699669>,  <32.845078, 32.661842, 18.701056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.650398, 31.881874, 18.699669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.749432, 31.544926, 18.508205>,  <32.808853, 31.342756, 18.393328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.749432, 31.544926, 18.508205>,  <32.650398, 31.881874, 18.699669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749432, 31.544926, 18.508205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966704, 0.181791, 0.180098,
		-0.064693, -0.507310, 0.859332,
		0.247584, -0.842371, -0.478658,
		32.823708, 31.292215, 18.364609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103733, 31.613026, 19.167831>,  <32.650398, 31.881874, 18.699669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103733, 31.613026, 19.167831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.185009, 31.465475, 18.805033>,  <33.233776, 31.376945, 18.587353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.185009, 31.465475, 18.805033>,  <33.103733, 31.613026, 19.167831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.185009, 31.465475, 18.805033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966444, -0.073116, 0.246249,
		-0.157152, -0.926598, 0.341642,
		0.203194, -0.368877, -0.906996,
		33.245968, 31.354813, 18.532934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479584, 30.998764, 19.350267>,  <33.103733, 31.613026, 19.167831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479584, 30.998764, 19.350267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.591793, 31.094841, 18.978544>,  <33.659119, 31.152487, 18.755510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.591793, 31.094841, 18.978544>,  <33.479584, 30.998764, 19.350267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.591793, 31.094841, 18.978544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947641, -0.223220, 0.228364,
		-0.152589, -0.944712, -0.290235,
		0.280525, 0.240192, -0.929308,
		33.675949, 31.166899, 18.699751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057987, 30.505747, 19.239605>,  <33.479584, 30.998764, 19.350267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057987, 30.505747, 19.239605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.116909, 30.818033, 18.996695>,  <34.152264, 31.005405, 18.850948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.116909, 30.818033, 18.996695>,  <34.057987, 30.505747, 19.239605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116909, 30.818033, 18.996695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984420, -0.175319, 0.013402,
		-0.096004, -0.599787, -0.794380,
		0.147308, 0.780717, -0.607274,
		34.161102, 31.052248, 18.814512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508194, 30.238199, 18.775860>,  <34.057987, 30.505747, 19.239605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508194, 30.238199, 18.775860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.536228, 30.636644, 18.754503>,  <34.553051, 30.875711, 18.741690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.536228, 30.636644, 18.754503>,  <34.508194, 30.238199, 18.775860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536228, 30.636644, 18.754503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969320, -0.055366, 0.239486,
		0.235599, -0.068539, -0.969431,
		0.070088, 0.996111, -0.053392,
		34.557255, 30.935478, 18.738485>
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
